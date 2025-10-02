; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/dump.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.flagent = type { i8*, i8*, i16, i16, i16, i16, i16, [228 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@hashheader = external dso_local global %struct.hashheader, align 4
@.str = private unnamed_addr constant [16 x i8] c"flagmarker \\%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"flagmarker \\%3.3o\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"flagmarker %c\0A\00", align 1
@numpflags = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"prefixes\0A\00", align 1
@pflaglist = external dso_local global %struct.flagent*, align 8
@numsflags = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"suffixes\0A\00", align 1
@sflaglist = external dso_local global %struct.flagent*, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"  flag %s%c: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"\09> \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"-%s,\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"[^\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%c-%c\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dumpmode() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %2 = sext i8 %1 to i32
  %3 = icmp eq i32 %2, 92
  br i1 %3, label %28, label %4

4:                                                ; preds = %0
  %5 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 62
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 58
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 44
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 91
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %20, %16, %12, %8, %4, %0
  %29 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %30 = sext i8 %29 to i32
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 noundef %30)
  br label %50

32:                                               ; preds = %24
  %33 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %34 = sext i8 %33 to i32
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %38 = sext i8 %37 to i32
  %39 = icmp sge i32 %38, 127
  br i1 %39, label %40, label %45

40:                                               ; preds = %36, %32
  %41 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %42 = sext i8 %41 to i32
  %43 = and i32 %42, 255
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 noundef %43)
  br label %49

45:                                               ; preds = %36
  %46 = load i8, i8* getelementptr inbounds (%struct.hashheader, %struct.hashheader* @hashheader, i32 0, i32 19), align 4
  %47 = sext i8 %46 to i32
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef %47)
  br label %49

49:                                               ; preds = %45, %40
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* @numpflags, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.flagent*, %struct.flagent** @pflaglist, align 8
  %56 = load i32, i32* @numpflags, align 4
  call void @tbldump(%struct.flagent* noundef %55, i32 noundef %56)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* @numsflags, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %62 = load %struct.flagent*, %struct.flagent** @sflaglist, align 8
  %63 = load i32, i32* @numsflags, align 4
  call void @tbldump(%struct.flagent* noundef %62, i32 noundef %63)
  br label %64

64:                                               ; preds = %60, %57
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @tbldump(%struct.flagent* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.flagent*, align 8
  %4 = alloca i32, align 4
  store %struct.flagent* %0, %struct.flagent** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load %struct.flagent*, %struct.flagent** %3, align 8
  %11 = getelementptr inbounds %struct.flagent, %struct.flagent* %10, i32 1
  store %struct.flagent* %11, %struct.flagent** %3, align 8
  call void @entdump(%struct.flagent* noundef %10)
  br label %5, !llvm.loop !4

12:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @entdump(%struct.flagent* noundef %0) #0 {
  %2 = alloca %struct.flagent*, align 8
  %3 = alloca i32, align 4
  store %struct.flagent* %0, %struct.flagent** %2, align 8
  %4 = load %struct.flagent*, %struct.flagent** %2, align 8
  %5 = getelementptr inbounds %struct.flagent, %struct.flagent* %4, i32 0, i32 6
  %6 = load i16, i16* %5, align 8
  %7 = sext i16 %6 to i32
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %12 = load %struct.flagent*, %struct.flagent** %2, align 8
  %13 = getelementptr inbounds %struct.flagent, %struct.flagent* %12, i32 0, i32 2
  %14 = load i16, i16* %13, align 8
  %15 = sext i16 %14 to i32
  %16 = add nsw i32 %15, 65
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* noundef %11, i32 noundef %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %42, %1
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.flagent*, %struct.flagent** %2, align 8
  %21 = getelementptr inbounds %struct.flagent, %struct.flagent* %20, i32 0, i32 5
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load %struct.flagent*, %struct.flagent** %2, align 8
  %27 = getelementptr inbounds %struct.flagent, %struct.flagent* %26, i32 0, i32 7
  %28 = getelementptr inbounds [228 x i8], [228 x i8]* %27, i64 0, i64 0
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 1, %29
  call void @setdump(i8* noundef %28, i32 noundef %30)
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.flagent*, %struct.flagent** %2, align 8
  %33 = getelementptr inbounds %struct.flagent, %struct.flagent* %32, i32 0, i32 5
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = sub nsw i32 %35, 1
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = call i32 @putc(i32 noundef 32, %struct._IO_FILE* noundef %39)
  br label %41

41:                                               ; preds = %38, %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %18, !llvm.loop !6

45:                                               ; preds = %18
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = call i32 @putc(i32 noundef 46, %struct._IO_FILE* noundef %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = call i32 @putc(i32 noundef 9, %struct._IO_FILE* noundef %53)
  %55 = load %struct.flagent*, %struct.flagent** %2, align 8
  %56 = getelementptr inbounds %struct.flagent, %struct.flagent* %55, i32 0, i32 3
  %57 = load i16, i16* %56, align 2
  %58 = icmp ne i16 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.flagent*, %struct.flagent** %2, align 8
  %61 = getelementptr inbounds %struct.flagent, %struct.flagent* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @ichartosstr(i8* noundef %62, i32 noundef 1)
  %64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* noundef %63)
  br label %65

65:                                               ; preds = %59, %51
  %66 = load %struct.flagent*, %struct.flagent** %2, align 8
  %67 = getelementptr inbounds %struct.flagent, %struct.flagent* %66, i32 0, i32 4
  %68 = load i16, i16* %67, align 4
  %69 = sext i16 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.flagent*, %struct.flagent** %2, align 8
  %73 = getelementptr inbounds %struct.flagent, %struct.flagent* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @ichartosstr(i8* noundef %74, i32 noundef 1)
  br label %77

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i8* [ %75, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %76 ]
  %79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %78)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @setdump(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 128, i32* %5, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %12
  br label %8, !llvm.loop !7

27:                                               ; preds = %8
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = call i32 @putc(i32 noundef %31, %struct._IO_FILE* noundef %32)
  br label %59

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = call i32 @putc(i32 noundef 46, %struct._IO_FILE* noundef %38)
  br label %58

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 64
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %4, align 4
  call void @subsetdump(i8* noundef %45, i32 noundef %46, i32 noundef 0)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 @putc(i32 noundef 93, %struct._IO_FILE* noundef %47)
  br label %57

49:                                               ; preds = %40
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %51 = call i32 @putc(i32 noundef 91, %struct._IO_FILE* noundef %50)
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  call void @subsetdump(i8* noundef %52, i32 noundef %53, i32 noundef %54)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = call i32 @putc(i32 noundef 93, %struct._IO_FILE* noundef %55)
  br label %57

57:                                               ; preds = %49, %43
  br label %58

58:                                               ; preds = %57, %37
  br label %59

59:                                               ; preds = %58, %30
  ret void
}

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i8* @ichartosstr(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @subsetdump(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %76, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 128
  br i1 %11, label %12, label %81

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i32, i32* %6, align 4
  %17 = xor i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %37, %21
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 128
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = xor i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %42

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %23, !llvm.loop !8

42:                                               ; preds = %35, %23
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %50 = call i32 @putc(i32 noundef %48, %struct._IO_FILE* noundef %49)
  br label %74

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 3
  %55 = icmp sle i32 %52, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %64 = call i32 @putc(i32 noundef %62, %struct._IO_FILE* noundef %63)
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %57, !llvm.loop !9

67:                                               ; preds = %57
  br label %73

68:                                               ; preds = %51
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 1
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 noundef %69, i32 noundef %71)
  br label %73

73:                                               ; preds = %68, %67
  br label %74

74:                                               ; preds = %73, %47
  br label %75

75:                                               ; preds = %74, %12
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %9, !llvm.loop !10

81:                                               ; preds = %9
  ret void
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
