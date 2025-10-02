; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdjpgcom.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdjpgcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@progname = internal global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"rdjpgcom\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@infile = internal global %struct._IO_FILE* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"rdjpgcom displays any textual comments in a JPEG file.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Usage: %s [switches] [inputfile]\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"  -verbose    Also display dimensions of JPEG image\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Expected SOI marker first\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Not a JPEG file\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Warning: garbage data found in JPEG file\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Premature EOF in JPEG file\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"Baseline\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Extended sequential\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Progressive\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Lossless\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Differential sequential\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Differential progressive\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Differential lossless\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"Extended sequential, arithmetic coding\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Progressive, arithmetic coding\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Lossless, arithmetic coding\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"Differential sequential, arithmetic coding\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"Differential progressive, arithmetic coding\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"Differential lossless, arithmetic coding\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"JPEG image is %uw * %uh, %d color components, %d bits per sample\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"JPEG process: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Bogus SOF marker length\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"Erroneous JPEG marker length\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.34 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  %12 = load i8*, i8** @progname, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** @progname, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  br label %21

21:                                               ; preds = %20, %14
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 45
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %52

38:                                               ; preds = %26
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @keymatch(i8* noundef %41, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %48

47:                                               ; preds = %38
  call void @usage()
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %22, !llvm.loop !4

52:                                               ; preds = %37, %22
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = load i8*, i8** @progname, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* noundef %59)
  call void @usage()
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load i8**, i8*** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call noalias %struct._IO_FILE* @fopen(i8* noundef %70, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %71, %struct._IO_FILE** @infile, align 8
  %72 = icmp eq %struct._IO_FILE* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %75 = load i8*, i8** @progname, align 8
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %75, i8* noundef %80)
  call void @exit(i32 noundef 1) #5
  unreachable

82:                                               ; preds = %65
  br label %85

83:                                               ; preds = %61
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %84, %struct._IO_FILE** @infile, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @scan_JPEG_header(i32 noundef %86)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @keymatch(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %42, %3
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %5, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  %20 = load i8, i8* %18, align 1
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %51

24:                                               ; preds = %17
  %25 = call i16** @__ctype_b_loc() #6
  %26 = load i16*, i16** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %26, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 256
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @tolower(i32 noundef %35) #7
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %24
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %51

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %11, !llvm.loop !6

45:                                               ; preds = %11
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %51

50:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %49, %41, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progname, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef %4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @scan_JPEG_header(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 @first_marker()
  %6 = icmp ne i32 %5, 216
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %27, %10
  %12 = call i32 @next_marker()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %26 [
    i32 192, label %14
    i32 193, label %14
    i32 194, label %14
    i32 195, label %14
    i32 197, label %14
    i32 198, label %14
    i32 199, label %14
    i32 201, label %14
    i32 202, label %14
    i32 203, label %14
    i32 205, label %14
    i32 206, label %14
    i32 207, label %14
    i32 218, label %21
    i32 217, label %23
    i32 254, label %25
  ]

14:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  call void @process_SOFn(i32 noundef %18)
  br label %20

19:                                               ; preds = %14
  call void @skip_variable()
  br label %20

20:                                               ; preds = %19, %17
  br label %27

21:                                               ; preds = %11
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %11
  call void @process_COM()
  br label %27

26:                                               ; preds = %11
  call void @skip_variable()
  br label %27

27:                                               ; preds = %26, %25, %20
  br label %11

28:                                               ; preds = %23, %21
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @first_marker() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3)
  store i32 %4, i32* %1, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %6 = call i32 @getc(%struct._IO_FILE* noundef %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 255
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 216
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @next_marker() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @read_1_byte()
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %7, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp ne i32 %5, 255
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  %10 = call i32 @read_1_byte()
  store i32 %10, i32* %1, align 4
  br label %4, !llvm.loop !7

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %14, %11
  %13 = call i32 @read_1_byte()
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %12
  %15 = load i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 255
  br i1 %16, label %12, label %17, !llvm.loop !8

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_SOFn(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = call i32 @read_2_bytes()
  store i32 %10, i32* %3, align 4
  %11 = call i32 @read_1_byte()
  store i32 %11, i32* %6, align 4
  %12 = call i32 @read_2_bytes()
  store i32 %12, i32* %4, align 4
  %13 = call i32 @read_2_bytes()
  store i32 %13, i32* %5, align 4
  %14 = call i32 @read_1_byte()
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %2, align 4
  switch i32 %15, label %29 [
    i32 192, label %16
    i32 193, label %17
    i32 194, label %18
    i32 195, label %19
    i32 197, label %20
    i32 198, label %21
    i32 199, label %22
    i32 201, label %23
    i32 202, label %24
    i32 203, label %25
    i32 205, label %26
    i32 206, label %27
    i32 207, label %28
  ]

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %8, align 8
  br label %30

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  br label %30

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8** %8, align 8
  br label %30

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %8, align 8
  br label %30

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8** %8, align 8
  br label %30

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8** %8, align 8
  br label %30

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8** %8, align 8
  br label %30

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), i8** %8, align 8
  br label %30

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8** %8, align 8
  br label %30

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8** %8, align 8
  br label %30

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i8** %8, align 8
  br label %30

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0), i8** %8, align 8
  br label %30

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), i8** %8, align 8
  br label %30

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8** %8, align 8
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i64 0, i64 0), i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* noundef %36)
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 3
  %41 = add nsw i32 8, %40
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

46:                                               ; preds = %30
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %55, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = call i32 @read_1_byte()
  %53 = call i32 @read_1_byte()
  %54 = call i32 @read_1_byte()
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %47, !llvm.loop !9

58:                                               ; preds = %47
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @skip_variable() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @read_2_bytes()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = sub i32 %9, 2
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %14, %8
  %12 = load i32, i32* %1, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = call i32 @read_1_byte()
  %16 = load i32, i32* %1, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %1, align 4
  br label %11, !llvm.loop !10

18:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_COM() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @read_2_bytes()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = sub i32 %11, 2
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %56, %10
  %14 = load i32, i32* %1, align 4
  %15 = icmp ugt i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = call i32 @read_1_byte()
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  br label %56

22:                                               ; preds = %16
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 13
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  br label %55

31:                                               ; preds = %22
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0))
  br label %54

36:                                               ; preds = %31
  %37 = call i16** @__ctype_b_loc() #6
  %38 = load i16*, i16** %37, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 16384
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* %2, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = call i32 @putc(i32 noundef %47, %struct._IO_FILE* noundef %48)
  br label %53

50:                                               ; preds = %36
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32 noundef %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i32, i32* %2, align 4
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %1, align 4
  %59 = add i32 %58, -1
  store i32 %59, i32* %1, align 4
  br label %13, !llvm.loop !11

60:                                               ; preds = %13
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_1_byte() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %3 = call i32 @getc(%struct._IO_FILE* noundef %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_2_bytes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

10:                                               ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %12 = call i32 @getc(%struct._IO_FILE* noundef %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

18:                                               ; preds = %10
  %19 = load i32, i32* %1, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %2, align 4
  %22 = add i32 %20, %21
  ret i32 %22
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind readonly willreturn }

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
