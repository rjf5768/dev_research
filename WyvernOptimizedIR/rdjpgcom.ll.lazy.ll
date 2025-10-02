; ModuleID = './rdjpgcom.ll'
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

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = load i8*, i8** %1, align 8
  store i8* %3, i8** @progname, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load i8*, i8** @progname, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  br label %10

10:                                               ; preds = %9, %5
  br label %11

11:                                               ; preds = %26, %10
  %.01 = phi i32 [ 1, %10 ], [ %27, %26 ]
  %.0 = phi i32 [ 0, %10 ], [ %.1, %26 ]
  %12 = icmp slt i32 %.01, %0
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %11
  %14 = zext i32 %.01 to i64
  %15 = getelementptr inbounds i8*, i8** %1, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %.not = icmp eq i8 %17, 45
  br i1 %.not, label %19, label %18

18:                                               ; preds = %13
  br label %28

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, i8* %16, i64 1
  %21 = call i32 @keymatch(i8* noundef nonnull %20, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 1)
  %.not6 = icmp eq i32 %21, 0
  br i1 %.not6, label %24, label %22

22:                                               ; preds = %19
  %23 = add nsw i32 %.0, 1
  br label %25

24:                                               ; preds = %19
  call void @usage()
  br label %25

25:                                               ; preds = %24, %22
  %.1 = phi i32 [ %23, %22 ], [ %.0, %24 ]
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.01, 1
  br label %11, !llvm.loop !4

.loopexit:                                        ; preds = %11
  br label %28

28:                                               ; preds = %.loopexit, %18
  %29 = add nsw i32 %0, -1
  %30 = icmp slt i32 %.01, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8*, i8** @progname, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* noundef %33) #8
  call void @usage()
  br label %35

35:                                               ; preds = %31, %28
  %36 = icmp slt i32 %.01, %0
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = zext i32 %.01 to i64
  %39 = getelementptr inbounds i8*, i8** %1, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call noalias %struct._IO_FILE* @fopen(i8* noundef %40, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #9
  store %struct._IO_FILE* %41, %struct._IO_FILE** @infile, align 8
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load i8*, i8** @progname, align 8
  %46 = zext i32 %.01 to i64
  %47 = getelementptr inbounds i8*, i8** %1, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %45, i8* noundef %48) #8
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %37
  br label %53

51:                                               ; preds = %35
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %52, %struct._IO_FILE** @infile, align 8
  br label %53

53:                                               ; preds = %51, %50
  %54 = call i32 @scan_JPEG_header(i32 noundef %.0)
  call void @exit(i32 noundef 0) #10
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %53, %43
  unreachable
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define internal i32 @keymatch(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %25, %3
  %.03 = phi i32 [ 0, %3 ], [ %26, %25 ]
  %.02 = phi i8* [ %1, %3 ], [ %9, %25 ]
  %.01 = phi i8* [ %0, %3 ], [ %5, %25 ]
  %5 = getelementptr inbounds i8, i8* %.01, i64 1
  %6 = load i8, i8* %.01, align 1
  %7 = sext i8 %6 to i32
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, i8* %.02, i64 1
  %10 = load i8, i8* %.02, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %31

14:                                               ; preds = %8
  %15 = call i16** @__ctype_b_loc() #11
  %16 = load i16*, i16** %15, align 8
  %17 = sext i8 %6 to i64
  %18 = getelementptr inbounds i16, i16* %16, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = and i16 %19, 256
  %.not7 = icmp eq i16 %20, 0
  br i1 %.not7, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 @tolower(i32 noundef %7) #12
  br label %23

23:                                               ; preds = %21, %14
  %.04 = phi i32 [ %22, %21 ], [ %7, %14 ]
  %.not8 = icmp eq i32 %.04, %11
  br i1 %.not8, label %25, label %24

24:                                               ; preds = %23
  br label %31

25:                                               ; preds = %23
  %26 = add nuw nsw i32 %.03, 1
  br label %4, !llvm.loop !6

27:                                               ; preds = %4
  %28 = icmp slt i32 %.03, %2
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %29, %24, %13
  %.0 = phi i32 [ 0, %13 ], [ 0, %24 ], [ 0, %29 ], [ 1, %30 ]
  ret i32 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %1) #13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progname, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef %4) #8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %6) #13
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %8) #13
  call void @exit(i32 noundef 1) #10
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @scan_JPEG_header(i32 noundef %0) #4 {
  %2 = call i32 @first_marker()
  %.not = icmp eq i32 %2, 216
  br i1 %.not, label %6, label %3

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #8
  call void @exit(i32 noundef 1) #10
  unreachable

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %17, %6
  %8 = call i32 @next_marker()
  switch i32 %8, label %16 [
    i32 192, label %9
    i32 193, label %9
    i32 194, label %9
    i32 195, label %9
    i32 197, label %9
    i32 198, label %9
    i32 199, label %9
    i32 201, label %9
    i32 202, label %9
    i32 203, label %9
    i32 205, label %9
    i32 206, label %9
    i32 207, label %9
    i32 218, label %13
    i32 217, label %14
    i32 254, label %15
  ]

9:                                                ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %.not2 = icmp eq i32 %0, 0
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %9
  call void @process_SOFn(i32 noundef %8)
  br label %12

11:                                               ; preds = %9
  call void @skip_variable()
  br label %12

12:                                               ; preds = %11, %10
  br label %17

13:                                               ; preds = %7
  br label %18

14:                                               ; preds = %7
  br label %18

15:                                               ; preds = %7
  call void @process_COM()
  br label %17

16:                                               ; preds = %7
  call void @skip_variable()
  br label %17

17:                                               ; preds = %16, %15, %12
  br label %7

18:                                               ; preds = %14, %13
  ret i32 %8
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @first_marker() #4 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %2 = call i32 @getc(%struct._IO_FILE* noundef %1) #9
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %4 = call i32 @getc(%struct._IO_FILE* noundef %3) #9
  %.not = icmp eq i32 %2, 255
  br i1 %.not, label %5, label %6

5:                                                ; preds = %0
  %.not1 = icmp eq i32 %4, 216
  br i1 %.not1, label %9, label %6

6:                                                ; preds = %5, %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #8
  call void @exit(i32 noundef 1) #10
  unreachable

9:                                                ; preds = %5
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @next_marker() #4 {
  %1 = call i32 @read_1_byte()
  br label %2

2:                                                ; preds = %3, %0
  %.01 = phi i32 [ 0, %0 ], [ %4, %3 ]
  %.0 = phi i32 [ %1, %0 ], [ %5, %3 ]
  %.not = icmp eq i32 %.0, 255
  br i1 %.not, label %6, label %3

3:                                                ; preds = %2
  %4 = add nuw nsw i32 %.01, 1
  %5 = call i32 @read_1_byte()
  br label %2, !llvm.loop !7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %9, %6
  %8 = call i32 @read_1_byte()
  br label %9

9:                                                ; preds = %7
  %10 = icmp eq i32 %8, 255
  br i1 %10, label %7, label %11, !llvm.loop !8

11:                                               ; preds = %9
  %.not2 = icmp eq i32 %.01, 0
  br i1 %.not2, label %15, label %12

12:                                               ; preds = %11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %13) #13
  br label %15

15:                                               ; preds = %12, %11
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_SOFn(i32 noundef %0) #4 {
  %2 = call i32 @read_2_bytes()
  %3 = call i32 @read_1_byte()
  %4 = call i32 @read_2_bytes()
  %5 = call i32 @read_2_bytes()
  %6 = call i32 @read_1_byte()
  switch i32 %0, label %20 [
    i32 192, label %7
    i32 193, label %8
    i32 194, label %9
    i32 195, label %10
    i32 197, label %11
    i32 198, label %12
    i32 199, label %13
    i32 201, label %14
    i32 202, label %15
    i32 203, label %16
    i32 205, label %17
    i32 206, label %18
    i32 207, label %19
  ]

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  br label %21

10:                                               ; preds = %1
  br label %21

11:                                               ; preds = %1
  br label %21

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  br label %21

14:                                               ; preds = %1
  br label %21

15:                                               ; preds = %1
  br label %21

16:                                               ; preds = %1
  br label %21

17:                                               ; preds = %1
  br label %21

18:                                               ; preds = %1
  br label %21

19:                                               ; preds = %1
  br label %21

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %.01 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), %20 ], [ getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0), %19 ], [ getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i64 0, i64 0), %18 ], [ getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), %17 ], [ getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), %16 ], [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), %15 ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0), %14 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), %13 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), %12 ], [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), %11 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), %10 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %9 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), %8 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), %7 ]
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i64 0, i64 0), i32 noundef %5, i32 noundef %4, i32 noundef %6, i32 noundef %3) #9
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8* noundef %.01) #9
  %24 = mul nsw i32 %6, 3
  %25 = add nsw i32 %24, 8
  %.not = icmp eq i32 %2, %25
  br i1 %.not, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0)) #8
  call void @exit(i32 noundef 1) #10
  unreachable

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %36, %29
  %.0 = phi i32 [ 0, %29 ], [ %37, %36 ]
  %31 = icmp slt i32 %.0, %6
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = call i32 @read_1_byte()
  %34 = call i32 @read_1_byte()
  %35 = call i32 @read_1_byte()
  br label %36

36:                                               ; preds = %32
  %37 = add nuw nsw i32 %.0, 1
  br label %30, !llvm.loop !9

38:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @skip_variable() #4 {
  %1 = call i32 @read_2_bytes()
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0)) #8
  call void @exit(i32 noundef 1) #10
  unreachable

6:                                                ; preds = %0
  %7 = add i32 %1, -2
  br label %8

8:                                                ; preds = %9, %6
  %.0 = phi i32 [ %7, %6 ], [ %11, %9 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %12, label %9

9:                                                ; preds = %8
  %10 = call i32 @read_1_byte()
  %11 = add i32 %.0, -1
  br label %8, !llvm.loop !10

12:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_COM() #4 {
  %1 = call i32 @read_2_bytes()
  %2 = icmp ult i32 %1, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0)) #8
  call void @exit(i32 noundef 1) #10
  unreachable

6:                                                ; preds = %0
  %7 = add i32 %1, -2
  br label %8

8:                                                ; preds = %37, %6
  %.01 = phi i32 [ 0, %6 ], [ %10, %37 ]
  %.0 = phi i32 [ %7, %6 ], [ %38, %37 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %39, label %9

9:                                                ; preds = %8
  %10 = call i32 @read_1_byte()
  %11 = icmp eq i32 %10, 13
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  %putchar5 = call i32 @putchar(i32 10)
  br label %37

13:                                               ; preds = %9
  %14 = icmp eq i32 %10, 10
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %.not3 = icmp eq i32 %.01, 13
  br i1 %.not3, label %17, label %16

16:                                               ; preds = %15
  %putchar4 = call i32 @putchar(i32 10)
  br label %17

17:                                               ; preds = %16, %15
  br label %36

18:                                               ; preds = %13
  %19 = icmp eq i32 %10, 92
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)) #9
  br label %35

22:                                               ; preds = %18
  %23 = call i16** @__ctype_b_loc() #11
  %24 = load i16*, i16** %23, align 8
  %25 = sext i32 %10 to i64
  %26 = getelementptr inbounds i16, i16* %24, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = and i16 %27, 16384
  %.not2 = icmp eq i16 %28, 0
  br i1 %.not2, label %32, label %29

29:                                               ; preds = %22
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = call i32 @putc(i32 noundef %10, %struct._IO_FILE* noundef %30) #9
  br label %34

32:                                               ; preds = %22
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32 noundef %10) #9
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35, %17
  br label %37

37:                                               ; preds = %36, %12
  %38 = add i32 %.0, -1
  br label %8, !llvm.loop !11

39:                                               ; preds = %8
  %putchar = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_1_byte() #4 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %2 = call i32 @getc(%struct._IO_FILE* noundef %1) #9
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #8
  call void @exit(i32 noundef 1) #10
  unreachable

7:                                                ; preds = %0
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_2_bytes() #4 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %2 = call i32 @getc(%struct._IO_FILE* noundef %1) #9
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #8
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @infile, align 8
  %9 = call i32 @getc(%struct._IO_FILE* noundef %8) #9
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #8
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %7
  %15 = shl i32 %2, 8
  %16 = add i32 %15, %9
  ret i32 %16

UnifiedUnreachableBlock:                          ; preds = %11, %4
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @putc(i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #7

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { cold }

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
