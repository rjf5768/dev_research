; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/18-imp/pgm.c'
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
define dso_local void @PGM_InitImage(%struct.ImgT* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.ImgT*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.ImgT* %0, %struct.ImgT** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strlen(i8* noundef %6) #4
  %8 = add i64 %7, 1
  %9 = mul i64 %8, 1
  %10 = call noalias i8* @malloc(i64 noundef %9) #5
  %11 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %12 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %14 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strcpy(i8* noundef %15, i8* noundef %16) #5
  %18 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %19 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call noalias i8* @strdup(i8* noundef %20) #5
  %22 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %23 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %25 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %45, %2
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %40 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i8* @strcpy(i8* noundef %41, i8* noundef %43) #5
  br label %45

45:                                               ; preds = %38, %33
  br label %27, !llvm.loop !4

46:                                               ; preds = %27
  %47 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %48 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %5, align 8
  br label %50

50:                                               ; preds = %63, %46
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 46
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i8*, i8** %5, align 8
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %61, %56
  br label %50, !llvm.loop !6

64:                                               ; preds = %50
  %65 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %66 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %65, i32 0, i32 0
  store i8 0, i8* %66, align 8
  %67 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %68 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %67, i32 0, i32 11
  store float* null, float** %68, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PGM_FreeImage(%struct.ImgT* noundef %0) #0 {
  %2 = alloca %struct.ImgT*, align 8
  store %struct.ImgT* %0, %struct.ImgT** %2, align 8
  %3 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %4 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %3, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %5) #5
  %6 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %7 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %8) #5
  %9 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %10 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %9, i32 0, i32 8
  %11 = load i8*, i8** %10, align 8
  call void @free(i8* noundef %11) #5
  %12 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %13 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %12, i32 0, i32 12
  %14 = load float*, float** %13, align 8
  %15 = bitcast float* %14 to i8*
  call void @free(i8* noundef %15) #5
  %16 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %17 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %16, i32 0, i32 0
  store i8 0, i8* %17, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PGM_PrintInfo(%struct.ImgT* noundef %0) #0 {
  %2 = alloca %struct.ImgT*, align 8
  store %struct.ImgT* %0, %struct.ImgT** %2, align 8
  %3 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %4 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 8
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %9 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @mybasename(i8* noundef %10)
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef %11)
  %13 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %14 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15)
  %17 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %18 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef %19)
  %21 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %22 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 noundef %23)
  br label %25

25:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal i8* @mybasename(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strrchr(i8* noundef %4, i32 noundef 47) #4
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  br label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %10, %8 ], [ %12, %11 ]
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGM_GetValue(%struct.ImgT* noundef %0) #0 {
  %2 = alloca %struct.ImgT*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.ImgT* %0, %struct.ImgT** %2, align 8
  br label %5

5:                                                ; preds = %29, %1
  %6 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %7 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %6, i32 0, i32 3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %13 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %12, i32 0, i32 3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* noundef %3)
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %27, %18
  %20 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %21 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %20, i32 0, i32 3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %23 = call i32 @fgetc(%struct._IO_FILE* noundef %22)
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %4, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 10
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %19, !llvm.loop !7

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %11
  %30 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %31 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %30, i32 0, i32 3
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %5, !llvm.loop !8

34:                                               ; preds = %5
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGM_Open(%struct.ImgT* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ImgT*, align 8
  %4 = alloca [2 x i8], align 1
  store %struct.ImgT* %0, %struct.ImgT** %3, align 8
  %5 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %6 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %5, i32 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = call noalias %struct._IO_FILE* @fopen(i8* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %9 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %10 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %9, i32 0, i32 3
  store %struct._IO_FILE* %8, %struct._IO_FILE** %10, align 8
  %11 = icmp eq %struct._IO_FILE* %8, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %15 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %16 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %15, i32 0, i32 3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = call i64 @fread(i8* noundef %14, i64 noundef 1, i64 noundef 2, %struct._IO_FILE* noundef %17)
  %19 = icmp ne i64 %18, 2
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %22 = call i32 @strncmp(i8* noundef %21, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 noundef 2) #4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %13
  store i32 -2, i32* %2, align 4
  br label %40

25:                                               ; preds = %20
  %26 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %27 = call i32 @PGM_GetValue(%struct.ImgT* noundef %26)
  %28 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %29 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %31 = call i32 @PGM_GetValue(%struct.ImgT* noundef %30)
  %32 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %33 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %35 = call i32 @PGM_GetValue(%struct.ImgT* noundef %34)
  %36 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %37 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %39 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %38, i32 0, i32 0
  store i8 1, i8* %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %25, %24, %12
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @PGM_Close(%struct.ImgT* noundef %0) #0 {
  %2 = alloca %struct.ImgT*, align 8
  store %struct.ImgT* %0, %struct.ImgT** %2, align 8
  %3 = load %struct.ImgT*, %struct.ImgT** %2, align 8
  %4 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %3, i32 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 @fclose(%struct._IO_FILE* noundef %5)
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGM_LoadImage(%struct.ImgT* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ImgT*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ImgT* %0, %struct.ImgT** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %10 = call i32 @PGM_Open(%struct.ImgT* noundef %9)
  store i32 %10, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %149

14:                                               ; preds = %1
  %15 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %16 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %21 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %14
  %25 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  call void @PGM_Close(%struct.ImgT* noundef %25)
  store i32 -3, i32* %2, align 4
  br label %149

26:                                               ; preds = %19
  %27 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %28 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %31 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 1
  %36 = call noalias i8* @malloc(i64 noundef %35) #5
  %37 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %38 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %37, i32 0, i32 8
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %40 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = call noalias i8* @calloc(i64 noundef %43, i64 noundef 4) #5
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %47 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %46, i32 0, i32 16
  store i32* %45, i32** %47, align 8
  %48 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %49 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = call noalias i8* @calloc(i64 noundef %52, i64 noundef 8) #5
  %54 = bitcast i8* %53 to double*
  %55 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %56 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %55, i32 0, i32 17
  store double* %54, double** %56, align 8
  %57 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %58 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %57, i32 0, i32 11
  store float* null, float** %58, align 8
  %59 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %60 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %59, i32 0, i32 3
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %60, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* noundef %6)
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %26
  br label %66

66:                                               ; preds = %72, %65
  %67 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %68 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %67, i32 0, i32 3
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %68, align 8
  %70 = call i32 @fgetc(%struct._IO_FILE* noundef %69)
  store i32 %70, i32* %7, align 4
  %71 = icmp ne i32 %70, 10
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %66, !llvm.loop !9

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %26
  %75 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %76 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %75, i32 0, i32 3
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %76, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %109, %74
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %82 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %85 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %83, %86
  %88 = icmp slt i32 %80, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %79
  %90 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %91 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %90, i32 0, i32 3
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %91, align 8
  %93 = call i64 @fread(i8* noundef %5, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %92)
  %94 = load i8, i8* %5, align 1
  %95 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %96 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %95, i32 0, i32 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 %94, i8* %100, align 1
  %101 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %102 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %101, i32 0, i32 16
  %103 = load i32*, i32** %102, align 8
  %104 = load i8, i8* %5, align 1
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %89
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %79, !llvm.loop !10

112:                                              ; preds = %79
  store i8 0, i8* %5, align 1
  br label %113

113:                                              ; preds = %144, %112
  %114 = load i8, i8* %5, align 1
  %115 = zext i8 %114 to i32
  %116 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %117 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %147

120:                                              ; preds = %113
  %121 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %122 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %121, i32 0, i32 16
  %123 = load i32*, i32** %122, align 8
  %124 = load i8, i8* %5, align 1
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sitofp i32 %127 to double
  %129 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %130 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %133 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %131, %134
  %136 = sitofp i32 %135 to double
  %137 = fdiv double %128, %136
  %138 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %139 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %138, i32 0, i32 17
  %140 = load double*, double** %139, align 8
  %141 = load i8, i8* %5, align 1
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds double, double* %140, i64 %142
  store double %137, double* %143, align 8
  br label %144

144:                                              ; preds = %120
  %145 = load i8, i8* %5, align 1
  %146 = add i8 %145, 1
  store i8 %146, i8* %5, align 1
  br label %113, !llvm.loop !11

147:                                              ; preds = %113
  %148 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  call void @PGM_Close(%struct.ImgT* noundef %148)
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %147, %24, %12
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGM_WriteBinary(%struct.ImgT* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ImgT*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.ImgT* %0, %struct.ImgT** %3, align 8
  %8 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %9 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 8
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %14 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %19 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12, %1
  store i32 -3, i32* %2, align 4
  br label %95

23:                                               ; preds = %17
  %24 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %25 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strlen(i8* noundef %26) #4
  %28 = add i64 %27, 7
  %29 = add i64 %28, 1
  %30 = mul i64 %29, 1
  %31 = call noalias i8* @malloc(i64 noundef %30) #5
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %34 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %32, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef %35) #5
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %37, %struct._IO_FILE** %5, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %41 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %42 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %45 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 noundef %43, i32 noundef %46)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %49 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %50 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 noundef %51)
  store i64 0, i64* %6, align 8
  br label %53

53:                                               ; preds = %90, %23
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %56 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %59 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %54, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %53
  %65 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %66 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %65, i32 0, i32 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %73 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = trunc i32 %74 to i8
  %76 = zext i8 %75 to i32
  %77 = icmp sgt i32 %71, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %64
  %79 = load %struct.ImgT*, %struct.ImgT** %3, align 8
  %80 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = trunc i32 %81 to i8
  %83 = zext i8 %82 to i32
  br label %85

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84, %78
  %86 = phi i32 [ %83, %78 ], [ 0, %84 ]
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %7, align 1
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %89 = call i64 @fwrite(i8* noundef %7, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %88)
  br label %90

90:                                               ; preds = %85
  %91 = load i64, i64* %6, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %53, !llvm.loop !12

93:                                               ; preds = %53
  %94 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %94) #5
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %22
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGM_WriteImage(%struct.ImgT* noundef %0, i8 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ImgT*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.ImgT* %0, %struct.ImgT** %4, align 8
  store i8 %1, i8* %5, align 1
  %10 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %11 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 8
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %16 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %21 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14, %2
  store i32 -3, i32* %3, align 4
  br label %208

25:                                               ; preds = %19
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  switch i32 %27, label %207 [
    i32 0, label %28
    i32 1, label %88
    i32 2, label %89
    i32 3, label %148
  ]

28:                                               ; preds = %25
  %29 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %30 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %29, i32 0, i32 8
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -3, i32* %3, align 4
  br label %208

34:                                               ; preds = %28
  %35 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %36 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strlen(i8* noundef %37) #4
  %39 = add i64 %38, 8
  %40 = add i64 %39, 1
  %41 = mul i64 %40, 1
  %42 = call noalias i8* @malloc(i64 noundef %41) #5
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %45 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %43, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef %46) #5
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %48, %struct._IO_FILE** %7, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %52 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %53 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %56 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 noundef %54, i32 noundef %57)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %60 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %61 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 noundef %62)
  store i64 0, i64* %8, align 8
  br label %64

64:                                               ; preds = %83, %34
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %67 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %70 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %65, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %64
  %76 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %77 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %76, i32 0, i32 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %82 = call i64 @fwrite(i8* noundef %80, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i64, i64* %8, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %64, !llvm.loop !13

86:                                               ; preds = %64
  %87 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %87) #5
  br label %207

88:                                               ; preds = %25
  store i32 -3, i32* %3, align 4
  br label %208

89:                                               ; preds = %25
  %90 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %91 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %90, i32 0, i32 12
  %92 = load float*, float** %91, align 8
  %93 = icmp eq float* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 -3, i32* %3, align 4
  br label %208

95:                                               ; preds = %89
  %96 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %97 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strlen(i8* noundef %98) #4
  %100 = add i64 %99, 10
  %101 = add i64 %100, 1
  %102 = mul i64 %101, 1
  %103 = call noalias i8* @malloc(i64 noundef %102) #5
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %106 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %104, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef %107) #5
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %109, %struct._IO_FILE** %7, align 8
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %110, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %113 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %114 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %117 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %112, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 noundef %115, i32 noundef %118)
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %120, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %122

122:                                              ; preds = %143, %95
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %125 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %128 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %123, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %122
  %134 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %135 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %134, i32 0, i32 12
  %136 = load float*, float** %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds float, float* %136, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fptoui float %139 to i8
  store i8 %140, i8* %9, align 1
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %142 = call i64 @fwrite(i8* noundef %9, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %141)
  br label %143

143:                                              ; preds = %133
  %144 = load i64, i64* %8, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %8, align 8
  br label %122, !llvm.loop !14

146:                                              ; preds = %122
  %147 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %147) #5
  br label %207

148:                                              ; preds = %25
  %149 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %150 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %149, i32 0, i32 11
  %151 = load float*, float** %150, align 8
  %152 = icmp eq float* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i32 -3, i32* %3, align 4
  br label %208

154:                                              ; preds = %148
  %155 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %156 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strlen(i8* noundef %157) #4
  %159 = add i64 %158, 9
  %160 = add i64 %159, 1
  %161 = mul i64 %160, 1
  %162 = call noalias i8* @malloc(i64 noundef %161) #5
  store i8* %162, i8** %6, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %165 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %163, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* noundef %166) #5
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %168, %struct._IO_FILE** %7, align 8
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %169, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %172 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %173 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %176 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %171, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 noundef %174, i32 noundef %177)
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %179, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %181

181:                                              ; preds = %202, %154
  %182 = load i64, i64* %8, align 8
  %183 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %184 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %187 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = icmp slt i64 %182, %190
  br i1 %191, label %192, label %205

192:                                              ; preds = %181
  %193 = load %struct.ImgT*, %struct.ImgT** %4, align 8
  %194 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %193, i32 0, i32 11
  %195 = load float*, float** %194, align 8
  %196 = load i64, i64* %8, align 8
  %197 = getelementptr inbounds float, float* %195, i64 %196
  %198 = load float, float* %197, align 4
  %199 = fptoui float %198 to i8
  store i8 %199, i8* %9, align 1
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %201 = call i64 @fwrite(i8* noundef %9, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %200)
  br label %202

202:                                              ; preds = %192
  %203 = load i64, i64* %8, align 8
  %204 = add nsw i64 %203, 1
  store i64 %204, i64* %8, align 8
  br label %181, !llvm.loop !15

205:                                              ; preds = %181
  %206 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %206) #5
  br label %207

207:                                              ; preds = %25, %205, %146, %86
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %207, %153, %94, %88, %33, %24
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
