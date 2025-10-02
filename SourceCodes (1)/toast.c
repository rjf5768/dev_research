; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/toast.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/toast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmtdesc = type { i8*, i8*, i8*, i32 ()*, i32 ()*, i32 (i16*)*, i32 (i16*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.gsm_state = type opaque
%struct.utimbuf = type { i64, i64 }

@f_decode = dso_local global i32 0, align 4
@f_cat = dso_local global i32 0, align 4
@f_force = dso_local global i32 0, align 4
@f_precious = dso_local global i32 0, align 4
@f_fast = dso_local global i32 0, align 4
@f_verbose = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"8 kHz, 8 bit u-law encoding with Sun audio header\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".au\00", align 1
@f_audio = dso_local global %struct.fmtdesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 ()* @audio_init_input, i32 ()* @audio_init_output, i32 (i16*)* @ulaw_input, i32 (i16*)* @ulaw_output }, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"u-law\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"plain 8 kHz, 8 bit u-law encoding\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".u\00", align 1
@f_ulaw = dso_local global %struct.fmtdesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 ()* @generic_init, i32 ()* @generic_init, i32 (i16*)* @ulaw_input, i32 (i16*)* @ulaw_output }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"A-law\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"8 kHz, 8 bit A-law encoding\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c".A\00", align 1
@f_alaw = dso_local global %struct.fmtdesc { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i32 ()* @generic_init, i32 ()* @generic_init, i32 (i16*)* @alaw_input, i32 (i16*)* @alaw_output }, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"16 bit (13 significant) signed 8 kHz signal\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".l\00", align 1
@f_linear = dso_local global %struct.fmtdesc { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 ()* @generic_init, i32 ()* @generic_init, i32 (i16*)* @linear_input, i32 (i16*)* @linear_output }, align 8
@alldescs = dso_local global [5 x %struct.fmtdesc*] [%struct.fmtdesc* @f_audio, %struct.fmtdesc* @f_alaw, %struct.fmtdesc* @f_ulaw, %struct.fmtdesc* @f_linear, %struct.fmtdesc* null], align 16
@f_format = dso_local global %struct.fmtdesc* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"fcdpvhuaslVF\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [51 x i8] c"Usage: %s [-fcpdhvuaslF] [files...] (-h for help)\0A\00", align 1
@progname = dso_local global i8* null, align 8
@optind = external dso_local global i32, align 4
@instat = dso_local global %struct.stat zeroinitializer, align 8
@in = dso_local global %struct._IO_FILE* null, align 8
@out = dso_local global %struct._IO_FILE* null, align 8
@inname = dso_local global i8* null, align 8
@outname = dso_local global i8* null, align 8
@output = dso_local global i32 (i16*)* null, align 8
@input = dso_local global i32 (i16*)* null, align 8
@init_input = dso_local global i32 ()* null, align 8
@init_output = dso_local global i32 ()* null, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"toast\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"%s: only one of -[uals] is possible (%s -h for help)\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%s 1.0, version %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"$Id$\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Usage: %s [-fcpdhvaulsF] [files...]\0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c" -f  force     Replace existing files without asking\0A\00", align 1
@.str.23 = private unnamed_addr constant [60 x i8] c" -c  cat       Write to stdout, do not remove source files\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c" -d  decode    Decode data (default is encode)\0A\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c" -p  precious  Do not delete the source\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c" -u  u-law     Force 8 kHz/8 bit u-law in/output format\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c" -s  sun .au   Force Sun .au u-law in/output format\0A\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c" -a  A-law     Force 8 kHz/8 bit A-law in/output format\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c" -l  linear    Force 16 bit linear in/output format\0A\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c" -F  fast      Sacrifice conformance to performance\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c" -v  version   Show version information\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c" -h  help      Print this text\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"%s: error %s %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"writing header to\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"reading header from\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"%s: error writing \22%s\22\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.39 = private unnamed_addr constant [30 x i8] c"%s: source \22%s\22 not deleted.\0A\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"%s: could not unlink \22%s\22\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c".gsm\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"%s: %s already has \22%s\22 suffix -- unchanged.\0A\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"%s: cannot open \22%s\22 for reading\0A\00", align 1
@.str.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"%s: failed to malloc %d bytes -- abort\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"%s: cannot stat \22%s\22\0A\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"%s: \22%s\22 is not a regular file -- unchanged.\0A\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"%s: \22%s\22 has %s other link%s -- unchanged.\0A\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"%s: can't open \22%s\22 for writing\0A\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"%s: filename \22%s\22 is too long (maximum is %ld)\0A\00", align 1
@.str.54 = private unnamed_addr constant [58 x i8] c"%s already exists; do you wish to overwrite %s (y or n)? \00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"\09not overwritten\0A\00", align 1
@.str.56 = private unnamed_addr constant [50 x i8] c"%s: incomplete frame (%d byte%s missing) from %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"%s: bad frame in %s\0A\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"%s: error writing to %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"%s: error reading from %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"%s: could not change file mode of \22%s\22\0A\00", align 1

declare dso_local i32 @audio_init_input() #0

declare dso_local i32 @audio_init_output() #0

declare dso_local i32 @ulaw_input(i16* noundef) #0

declare dso_local i32 @ulaw_output(i16* noundef) #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @generic_init() #1 {
  ret i32 0
}

declare dso_local i32 @alaw_input(i16* noundef) #0

declare dso_local i32 @alaw_output(i16* noundef) #0

declare dso_local i32 @linear_input(i16* noundef) #0

declare dso_local i32 @linear_output(i16* noundef) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = load i8*, i8** %7, align 8
  call void @parse_argv0(i8* noundef %8)
  br label %9

9:                                                ; preds = %32, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 noundef %10, i8** noundef %11, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #7
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %33

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %28 [
    i32 100, label %16
    i32 102, label %17
    i32 99, label %18
    i32 112, label %19
    i32 70, label %20
    i32 86, label %21
    i32 117, label %22
    i32 108, label %23
    i32 97, label %24
    i32 115, label %25
    i32 118, label %26
    i32 104, label %27
  ]

16:                                               ; preds = %14
  store i32 1, i32* @f_decode, align 4
  br label %32

17:                                               ; preds = %14
  store i32 1, i32* @f_force, align 4
  br label %32

18:                                               ; preds = %14
  store i32 1, i32* @f_cat, align 4
  br label %32

19:                                               ; preds = %14
  store i32 1, i32* @f_precious, align 4
  br label %32

20:                                               ; preds = %14
  store i32 1, i32* @f_fast, align 4
  br label %32

21:                                               ; preds = %14
  store i32 1, i32* @f_verbose, align 4
  br label %32

22:                                               ; preds = %14
  call void @set_format(%struct.fmtdesc* noundef @f_ulaw)
  br label %32

23:                                               ; preds = %14
  call void @set_format(%struct.fmtdesc* noundef @f_linear)
  br label %32

24:                                               ; preds = %14
  call void @set_format(%struct.fmtdesc* noundef @f_alaw)
  br label %32

25:                                               ; preds = %14
  call void @set_format(%struct.fmtdesc* noundef @f_audio)
  br label %32

26:                                               ; preds = %14
  call void @version()
  call void @exit(i32 noundef 0) #8
  unreachable

27:                                               ; preds = %14
  call void @help()
  call void @exit(i32 noundef 0) #8
  unreachable

28:                                               ; preds = %14
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i8*, i8** @progname, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* noundef %30)
  call void @exit(i32 noundef 1) #8
  unreachable

32:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16
  br label %9, !llvm.loop !4

33:                                               ; preds = %9
  %34 = load i32, i32* @f_cat, align 4
  %35 = load i32, i32* @f_precious, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* @f_precious, align 4
  %37 = load i32, i32* @optind, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  store i8** %40, i8*** %5, align 8
  %41 = load i32, i32* @optind, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %4, align 4
  call void @catch_signals(void (...)* noundef bitcast (void ()* @onintr to void (...)*))
  %44 = load i32, i32* %4, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = call i32 @process(i8* noundef null)
  br label %59

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %53, %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %5, align 8
  %56 = load i8*, i8** %54, align 8
  %57 = call i32 @process(i8* noundef %56)
  br label %49, !llvm.loop !6

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %46
  call void @exit(i32 noundef 0) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @parse_argv0(i8* noundef %0) #1 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i8* [ %7, %6 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %8 ]
  %11 = call i8* @endname(i8* noundef %10)
  store i8* %11, i8** %2, align 8
  store i8* %11, i8** @progname, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strncmp(i8* noundef %12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2) #9
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i32 1, i32* @f_decode, align 4
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @strlen(i8* noundef %17) #9
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = icmp sge i32 %19, 3
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i8*, i8** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 -3
  %27 = call i32 @strcmp(i8* noundef %26, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #9
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 1, i32* @f_decode, align 4
  store i32 1, i32* @f_cat, align 4
  br label %30

30:                                               ; preds = %29, %21, %16
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32 noundef, i8** noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @set_format(%struct.fmtdesc* noundef %0) #1 {
  %2 = alloca %struct.fmtdesc*, align 8
  store %struct.fmtdesc* %0, %struct.fmtdesc** %2, align 8
  %3 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8
  %4 = icmp ne %struct.fmtdesc* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8
  %7 = load %struct.fmtdesc*, %struct.fmtdesc** %2, align 8
  %8 = icmp ne %struct.fmtdesc* %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** @progname, align 8
  %12 = load i8*, i8** @progname, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0), i8* noundef %11, i8* noundef %12)
  call void @exit(i32 noundef 1) #8
  unreachable

14:                                               ; preds = %5, %1
  %15 = load %struct.fmtdesc*, %struct.fmtdesc** %2, align 8
  store %struct.fmtdesc* %15, %struct.fmtdesc** @f_format, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @version() #1 {
  %1 = load i8*, i8** @progname, align 8
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @help() #1 {
  %1 = load i8*, i8** @progname, align 8
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1)
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.23, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.25, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.28, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
define internal void @catch_signals(void (...)* noundef %0) #1 {
  %2 = alloca void (...)*, align 8
  store void (...)* %0, void (...)** %2, align 8
  %3 = load void (...)*, void (...)** %2, align 8
  %4 = bitcast void (...)* %3 to void (i32)*
  %5 = call void (i32)* @signal(i32 noundef 1, void (i32)* noundef %4) #7
  %6 = load void (...)*, void (...)** %2, align 8
  %7 = bitcast void (...)* %6 to void (i32)*
  %8 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef %7) #7
  %9 = load void (...)*, void (...)** %2, align 8
  %10 = bitcast void (...)* %9 to void (i32)*
  %11 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef %10) #7
  %12 = load void (...)*, void (...)** %2, align 8
  %13 = bitcast void (...)* %12 to void (i32)*
  %14 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef %13) #7
  %15 = load void (...)*, void (...)** %2, align 8
  %16 = bitcast void (...)* %15 to void (i32)*
  %17 = call void (i32)* @signal(i32 noundef 25, void (i32)* noundef %16) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @onintr() #1 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @outname, align 8
  store i8* %2, i8** %1, align 8
  store i8* null, i8** @outname, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @unlink(i8* noundef %6) #7
  br label %8

8:                                                ; preds = %5, %0
  call void @exit(i32 noundef 1) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process(i8* noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @in, align 8
  store i8* null, i8** @outname, align 8
  store i8* null, i8** @inname, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @open_input(i8* noundef %5, %struct.stat* noundef @instat)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @open_output(i8* noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %1
  br label %138

13:                                               ; preds = %8
  %14 = load i32, i32* @f_decode, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32 ()*, i32 ()** @init_output, align 8
  br label %20

18:                                               ; preds = %13
  %19 = load i32 ()*, i32 ()** @init_input, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 ()* [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 %21()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %20
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i8*, i8** @progname, align 8
  %27 = load i32, i32* @f_decode, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0)
  %31 = load i32, i32* @f_decode, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i8*, i8** @outname, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i8*, i8** @outname, align 8
  br label %39

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %38 ]
  br label %49

41:                                               ; preds = %24
  %42 = load i8*, i8** @inname, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8*, i8** @inname, align 8
  br label %47

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i8* [ %45, %44 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %46 ]
  br label %49

49:                                               ; preds = %47, %39
  %50 = phi i8* [ %40, %39 ], [ %48, %47 ]
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8* noundef %26, i8* noundef %30, i8* noundef %50)
  br label %138

52:                                               ; preds = %20
  %53 = load i32, i32* @f_decode, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 ()* @process_decode, i32 ()* @process_encode
  %57 = call i32 %56()
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %138

60:                                               ; preds = %52
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %62 = call i32 @fflush(%struct._IO_FILE* noundef %61)
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %66 = call i32 @ferror(%struct._IO_FILE* noundef %65) #7
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %64, %60
  %69 = load i8*, i8** @outname, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i8*, i8** @outname, align 8
  br label %74

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i8* [ %72, %71 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %73 ]
  call void @perror(i8* noundef %75)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = load i8*, i8** @progname, align 8
  %78 = load i8*, i8** @outname, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i8*, i8** @outname, align 8
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i8* [ %81, %80 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %82 ]
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0), i8* noundef %77, i8* noundef %84)
  br label %138

86:                                               ; preds = %64
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = icmp ne %struct._IO_FILE* %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %86
  call void @update_times()
  call void @update_mode()
  call void @update_own()
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %92 = call i32 @fclose(%struct._IO_FILE* noundef %91)
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i8*, i8** @outname, align 8
  call void @perror(i8* noundef %95)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %97 = load i8*, i8** @progname, align 8
  %98 = load i8*, i8** @outname, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %96, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0), i8* noundef %97, i8* noundef %98)
  br label %138

100:                                              ; preds = %90
  %101 = load i8*, i8** @outname, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = icmp ne i8* %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i8*, i8** @outname, align 8
  call void @free(i8* noundef %105) #7
  br label %106

106:                                              ; preds = %104, %100
  store i8* null, i8** @outname, align 8
  br label %107

107:                                              ; preds = %106, %86
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %110 = icmp ne %struct._IO_FILE* %108, %109
  br i1 %110, label %111, label %137

111:                                              ; preds = %107
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %113 = call i32 @fclose(%struct._IO_FILE* noundef %112)
  store %struct._IO_FILE* null, %struct._IO_FILE** @in, align 8
  %114 = load i32, i32* @f_cat, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @f_precious, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** @inname, align 8
  %121 = call i32 @unlink(i8* noundef %120) #7
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i8*, i8** @inname, align 8
  call void @perror(i8* noundef %124)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %126 = load i8*, i8** @progname, align 8
  %127 = load i8*, i8** @inname, align 8
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %125, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0), i8* noundef %126, i8* noundef %127)
  br label %129

129:                                              ; preds = %123, %119
  br label %138

130:                                              ; preds = %116, %111
  %131 = load i8*, i8** @inname, align 8
  %132 = load i8*, i8** %3, align 8
  %133 = icmp ne i8* %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i8*, i8** @inname, align 8
  call void @free(i8* noundef %135) #7
  br label %136

136:                                              ; preds = %134, %130
  store i8* null, i8** @inname, align 8
  br label %137

137:                                              ; preds = %136, %107
  store i32 0, i32* %2, align 4
  br label %195

138:                                              ; preds = %129, %94, %83, %59, %49, %12
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %140 = icmp ne %struct._IO_FILE* %139, null
  br i1 %140, label %141, label %166

141:                                              ; preds = %138
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %144 = icmp ne %struct._IO_FILE* %142, %143
  br i1 %144, label %145, label %166

145:                                              ; preds = %141
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %147 = call i32 @fclose(%struct._IO_FILE* noundef %146)
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  %148 = load i8*, i8** @outname, align 8
  %149 = call i32 @unlink(i8* noundef %148) #7
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %145
  %152 = call i32* @__errno_location() #10
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 2
  br i1 %154, label %155, label %165

155:                                              ; preds = %151
  %156 = call i32* @__errno_location() #10
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 4
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load i8*, i8** @outname, align 8
  call void @perror(i8* noundef %160)
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %162 = load i8*, i8** @progname, align 8
  %163 = load i8*, i8** @outname, align 8
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %161, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i8* noundef %162, i8* noundef %163)
  br label %165

165:                                              ; preds = %159, %155, %151, %145
  br label %166

166:                                              ; preds = %165, %141, %138
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %168 = icmp ne %struct._IO_FILE* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %172 = icmp ne %struct._IO_FILE* %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %175 = call i32 @fclose(%struct._IO_FILE* noundef %174)
  store %struct._IO_FILE* null, %struct._IO_FILE** @in, align 8
  br label %176

176:                                              ; preds = %173, %169, %166
  %177 = load i8*, i8** @inname, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i8*, i8** @inname, align 8
  %181 = load i8*, i8** %3, align 8
  %182 = icmp ne i8* %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = load i8*, i8** @inname, align 8
  call void @free(i8* noundef %184) #7
  br label %185

185:                                              ; preds = %183, %179, %176
  %186 = load i8*, i8** @outname, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load i8*, i8** @outname, align 8
  %190 = load i8*, i8** %3, align 8
  %191 = icmp ne i8* %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i8*, i8** @outname, align 8
  call void @free(i8* noundef %193) #7
  br label %194

194:                                              ; preds = %192, %188, %185
  store i32 -1, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %137
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @endname(i8* noundef %0) #1 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strrchr(i8* noundef %7, i32 noundef 47) #9
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %17, %11, %6
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #0

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @open_input(i8* noundef %0, %struct.stat* noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca %struct.fmtdesc*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %7 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8
  store %struct.fmtdesc* %7, %struct.fmtdesc** %6, align 8
  %8 = load %struct.stat*, %struct.stat** %5, align 8
  %9 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  store i8* null, i8** @inname, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %13, %struct._IO_FILE** @in, align 8
  br label %63

14:                                               ; preds = %2
  %15 = load i32, i32* @f_decode, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @codename(i8* noundef %18)
  store i8* %19, i8** @inname, align 8
  br label %39

20:                                               ; preds = %14
  %21 = load i32, i32* @f_cat, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @suffix(i8* noundef %24, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i8*, i8** @progname, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i64 0, i64 0), i8* noundef %29, i8* noundef %30, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %71

32:                                               ; preds = %23, %20
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strlen(i8* noundef %33) #9
  %35 = add i64 %34, 1
  %36 = call i8* @emalloc(i64 noundef %35)
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @strcpy(i8* noundef %36, i8* noundef %37) #7
  store i8* %38, i8** @inname, align 8
  br label %39

39:                                               ; preds = %32, %17
  %40 = load i8*, i8** @inname, align 8
  %41 = call noalias %struct._IO_FILE* @fopen(i8* noundef %40, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0))
  store %struct._IO_FILE* %41, %struct._IO_FILE** @in, align 8
  %42 = icmp ne %struct._IO_FILE* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** @inname, align 8
  call void @perror(i8* noundef %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i8*, i8** @progname, align 8
  %47 = load i8*, i8** @inname, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i64 0, i64 0), i8* noundef %46, i8* noundef %47)
  store i32 0, i32* %3, align 4
  br label %71

49:                                               ; preds = %39
  %50 = load i8*, i8** @inname, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %52 = load %struct.stat*, %struct.stat** %5, align 8
  %53 = call i32 @okay_as_input(i8* noundef %50, %struct._IO_FILE* noundef %51, %struct.stat* noundef %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %71

56:                                               ; preds = %49
  %57 = load %struct.fmtdesc*, %struct.fmtdesc** %6, align 8
  %58 = icmp ne %struct.fmtdesc* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** @inname, align 8
  %61 = call %struct.fmtdesc* @grok_format(i8* noundef %60)
  store %struct.fmtdesc* %61, %struct.fmtdesc** %6, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %12
  %64 = load %struct.fmtdesc*, %struct.fmtdesc** %6, align 8
  %65 = icmp ne %struct.fmtdesc* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load %struct.fmtdesc*, %struct.fmtdesc** %6, align 8
  br label %69

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi %struct.fmtdesc* [ %67, %66 ], [ @f_ulaw, %68 ]
  call void @prepare_io(%struct.fmtdesc* noundef %70)
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %55, %43, %27
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @open_output(i8* noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @f_cat, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %12, %struct._IO_FILE** @out, align 8
  store i8* null, i8** @outname, align 8
  br label %63

13:                                               ; preds = %8
  store i32 -1, i32* %4, align 4
  %14 = load i32, i32* @f_decode, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* (i8*)* @plainname, i8* (i8*)* @codename
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* %17(i8* noundef %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @length_okay(i8* noundef %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %64

24:                                               ; preds = %13
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i8*, i32, ...) @open(i8* noundef %25, i32 noundef 193, i32 noundef 438)
  store i32 %26, i32* %4, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %29, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #7
  store %struct._IO_FILE* %30, %struct._IO_FILE** @out, align 8
  br label %46

31:                                               ; preds = %24
  %32 = call i32* @__errno_location() #10
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 17
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  br label %45

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @ok_to_replace(i8* noundef %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = call noalias %struct._IO_FILE* @fopen(i8* noundef %41, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0))
  store %struct._IO_FILE* %42, %struct._IO_FILE** @out, align 8
  br label %44

43:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %64

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %35
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %48 = icmp ne %struct._IO_FILE* %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %5, align 8
  call void @perror(i8* noundef %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i8*, i8** @progname, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0), i8* noundef %52, i8* noundef %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @close(i32 noundef %58)
  br label %60

60:                                               ; preds = %57, %49
  store i32 0, i32* %2, align 4
  br label %64

61:                                               ; preds = %46
  %62 = load i8*, i8** %5, align 8
  store i8* %62, i8** @outname, align 8
  br label %63

63:                                               ; preds = %61, %11
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %60, %43, %23
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_decode() #1 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.gsm_state*, align 8
  %3 = alloca [33 x i8], align 16
  %4 = alloca [160 x i16], align 16
  %5 = alloca i32, align 4
  %6 = call %struct.gsm_state* @gsm_create()
  store %struct.gsm_state* %6, %struct.gsm_state** %2, align 8
  %7 = icmp ne %struct.gsm_state* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i8*, i8** @progname, align 8
  call void @perror(i8* noundef %9)
  store i32 -1, i32* %1, align 4
  br label %108

10:                                               ; preds = %0
  %11 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  %12 = call i32 @gsm_option(%struct.gsm_state* noundef %11, i32 noundef 2, i32* noundef @f_fast)
  %13 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  %14 = call i32 @gsm_option(%struct.gsm_state* noundef %13, i32 noundef 1, i32* noundef @f_verbose)
  br label %15

15:                                               ; preds = %83, %10
  %16 = getelementptr inbounds [33 x i8], [33 x i8]* %3, i64 0, i64 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %18 = call i64 @fread(i8* noundef %16, i64 noundef 1, i64 noundef 33, %struct._IO_FILE* noundef %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 33
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i8*, i8** @progname, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 33, %32
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 33, %35
  %37 = icmp eq i64 %36, 1
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), i64 %39
  %41 = load i8*, i8** @inname, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i8*, i8** @inname, align 8
  br label %46

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i8* [ %44, %43 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %45 ]
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.56, i64 0, i64 0), i8* noundef %30, i64 noundef %33, i8* noundef %40, i8* noundef %47)
  br label %49

49:                                               ; preds = %46, %25
  %50 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  call void @gsm_destroy(%struct.gsm_state* noundef %50)
  %51 = call i32* @__errno_location() #10
  store i32 0, i32* %51, align 4
  store i32 -1, i32* %1, align 4
  br label %108

52:                                               ; preds = %21
  %53 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  %54 = getelementptr inbounds [33 x i8], [33 x i8]* %3, i64 0, i64 0
  %55 = getelementptr inbounds [160 x i16], [160 x i16]* %4, i64 0, i64 0
  %56 = call i32 @gsm_decode(%struct.gsm_state* noundef %53, i8* noundef %54, i16* noundef %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = load i8*, i8** @progname, align 8
  %61 = load i8*, i8** @inname, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i8*, i8** @inname, align 8
  br label %66

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i8* [ %64, %63 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %65 ]
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0), i8* noundef %60, i8* noundef %67)
  %69 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  call void @gsm_destroy(%struct.gsm_state* noundef %69)
  %70 = call i32* @__errno_location() #10
  store i32 0, i32* %70, align 4
  store i32 -1, i32* %1, align 4
  br label %108

71:                                               ; preds = %52
  %72 = load i32 (i16*)*, i32 (i16*)** @output, align 8
  %73 = getelementptr inbounds [160 x i16], [160 x i16]* %4, i64 0, i64 0
  %74 = call i32 %72(i16* noundef %73)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i8*, i8** @outname, align 8
  call void @perror(i8* noundef %77)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = load i8*, i8** @progname, align 8
  %80 = load i8*, i8** @outname, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0), i8* noundef %79, i8* noundef %80)
  %82 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  call void @gsm_destroy(%struct.gsm_state* noundef %82)
  store i32 -1, i32* %1, align 4
  br label %108

83:                                               ; preds = %71
  br label %15, !llvm.loop !7

84:                                               ; preds = %15
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load i8*, i8** @inname, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i8*, i8** @inname, align 8
  br label %93

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i8* [ %91, %90 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %92 ]
  call void @perror(i8* noundef %94)
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %96 = load i8*, i8** @progname, align 8
  %97 = load i8*, i8** @inname, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i8*, i8** @inname, align 8
  br label %102

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i8* [ %100, %99 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %101 ]
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %95, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i8* noundef %96, i8* noundef %103)
  %105 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  call void @gsm_destroy(%struct.gsm_state* noundef %105)
  store i32 -1, i32* %1, align 4
  br label %108

106:                                              ; preds = %84
  %107 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  call void @gsm_destroy(%struct.gsm_state* noundef %107)
  store i32 0, i32* %1, align 4
  br label %108

108:                                              ; preds = %106, %102, %76, %66, %49, %8
  %109 = load i32, i32* %1, align 4
  ret i32 %109
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_encode() #1 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.gsm_state*, align 8
  %3 = alloca [160 x i16], align 16
  %4 = alloca [33 x i8], align 16
  %5 = alloca i32, align 4
  %6 = call %struct.gsm_state* @gsm_create()
  store %struct.gsm_state* %6, %struct.gsm_state** %2, align 8
  %7 = icmp ne %struct.gsm_state* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i8*, i8** @progname, align 8
  call void @perror(i8* noundef %9)
  store i32 -1, i32* %1, align 4
  br label %86

10:                                               ; preds = %0
  %11 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  %12 = call i32 @gsm_option(%struct.gsm_state* noundef %11, i32 noundef 2, i32* noundef @f_fast)
  %13 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  %14 = call i32 @gsm_option(%struct.gsm_state* noundef %13, i32 noundef 1, i32* noundef @f_verbose)
  br label %15

15:                                               ; preds = %61, %10
  %16 = load i32 (i16*)*, i32 (i16*)** @input, align 8
  %17 = getelementptr inbounds [160 x i16], [160 x i16]* %3, i64 0, i64 0
  %18 = call i32 %16(i16* noundef %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 160
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = getelementptr inbounds [160 x i16], [160 x i16]* %3, i64 0, i64 0
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  %29 = bitcast i16* %28 to i8*
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 2
  %33 = sub i64 320, %32
  call void @llvm.memset.p0i8.i64(i8* align 1 %29, i8 0, i64 %33, i1 false)
  br label %34

34:                                               ; preds = %24, %20
  %35 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  %36 = getelementptr inbounds [160 x i16], [160 x i16]* %3, i64 0, i64 0
  %37 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  call void @gsm_encode(%struct.gsm_state* noundef %35, i16* noundef %36, i8* noundef %37)
  %38 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %40 = call i64 @fwrite(i8* noundef %38, i64 noundef 33, i64 noundef 1, %struct._IO_FILE* noundef %39)
  %41 = icmp ne i64 %40, 1
  br i1 %41, label %42, label %61

42:                                               ; preds = %34
  %43 = load i8*, i8** @outname, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i8*, i8** @outname, align 8
  br label %48

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %47 ]
  call void @perror(i8* noundef %49)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i8*, i8** @progname, align 8
  %52 = load i8*, i8** @outname, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i8*, i8** @outname, align 8
  br label %57

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i8* [ %55, %54 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %56 ]
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0), i8* noundef %51, i8* noundef %58)
  %60 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  call void @gsm_destroy(%struct.gsm_state* noundef %60)
  store i32 -1, i32* %1, align 4
  br label %86

61:                                               ; preds = %34
  br label %15, !llvm.loop !8

62:                                               ; preds = %15
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load i8*, i8** @inname, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i8*, i8** @inname, align 8
  br label %71

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i8* [ %69, %68 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %70 ]
  call void @perror(i8* noundef %72)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = load i8*, i8** @progname, align 8
  %75 = load i8*, i8** @inname, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i8*, i8** @inname, align 8
  br label %80

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i8* [ %78, %77 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %79 ]
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i8* noundef %74, i8* noundef %81)
  %83 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  call void @gsm_destroy(%struct.gsm_state* noundef %83)
  store i32 -1, i32* %1, align 4
  br label %86

84:                                               ; preds = %62
  %85 = load %struct.gsm_state*, %struct.gsm_state** %2, align 8
  call void @gsm_destroy(%struct.gsm_state* noundef %85)
  store i32 0, i32* %1, align 4
  br label %86

86:                                               ; preds = %84, %80, %57, %8
  %87 = load i32, i32* %1, align 4
  ret i32 %87
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #0

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #2

declare dso_local void @perror(i8* noundef) #0

; Function Attrs: noinline nounwind uwtable
define internal void @update_times() #1 {
  %1 = alloca [2 x i64], align 16
  %2 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 2), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %17

5:                                                ; preds = %0
  %6 = load i8*, i8** @outname, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 11, i32 0), align 8
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 0
  store i64 %9, i64* %10, align 16
  %11 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 12, i32 0), align 8
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 1
  store i64 %11, i64* %12, align 8
  %13 = load i8*, i8** @outname, align 8
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 0
  %15 = bitcast i64* %14 to %struct.utimbuf*
  %16 = call i32 @utime(i8* noundef %13, %struct.utimbuf* noundef %15) #7
  br label %17

17:                                               ; preds = %4, %8, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @update_mode() #1 {
  %1 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 2), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %17

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %6 = call i32 @fileno(%struct._IO_FILE* noundef %5) #7
  %7 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 3), align 8
  %8 = and i32 %7, 4095
  %9 = call i32 @fchmod(i32 noundef %6, i32 noundef %8) #7
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load i8*, i8** @outname, align 8
  call void @perror(i8* noundef %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8*, i8** @progname, align 8
  %15 = load i8*, i8** @outname, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i64 0, i64 0), i8* noundef %14, i8* noundef %15)
  br label %17

17:                                               ; preds = %3, %11, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @update_own() #1 {
  %1 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 2), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %10

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %6 = call i32 @fileno(%struct._IO_FILE* noundef %5) #7
  %7 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 4), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i32 0, i32 5), align 8
  %9 = call i32 @fchown(i32 noundef %6, i32 noundef %7, i32 noundef %8) #7
  br label %10

10:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #0

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

; Function Attrs: noinline nounwind uwtable
define internal i8* @codename(i8* noundef %0) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @normalname(i8* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i64 0, i64 0))
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @suffix(i8* noundef %0, i8* noundef %1) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* noundef %8) #9
  store i64 %9, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* noundef %10) #9
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  store i8* null, i8** %3, align 8
  br label %35

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %20, %21
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @memcmp(i8* noundef %25, i8* noundef %26, i64 noundef %27) #9
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %33

31:                                               ; preds = %19
  %32 = load i8*, i8** %4, align 8
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i8* [ null, %30 ], [ %32, %31 ]
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %33, %18
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @emalloc(i64 noundef %0) #1 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 noundef %4) #7
  store i8* %5, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** @progname, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0), i8* noundef %9, i64 noundef %10)
  call void @onintr()
  call void @exit(i32 noundef 1) #8
  unreachable

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  ret i8* %13
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @okay_as_input(i8* noundef %0, %struct._IO_FILE* noundef %1, %struct.stat* noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.stat*, align 8
  store i8* %0, i8** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %9 = call i32 @fileno(%struct._IO_FILE* noundef %8) #7
  %10 = load %struct.stat*, %struct.stat** %7, align 8
  %11 = call i32 @fstat(i32 noundef %9, %struct.stat* noundef %10) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  call void @perror(i8* noundef %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** @progname, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i8* noundef %16, i8* noundef %17)
  store i32 0, i32* %4, align 4
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.stat*, %struct.stat** %7, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 61440
  %24 = icmp eq i32 %23, 32768
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** @progname, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i64 0, i64 0), i8* noundef %27, i8* noundef %28)
  store i32 0, i32* %4, align 4
  br label %58

30:                                               ; preds = %19
  %31 = load %struct.stat*, %struct.stat** %7, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %33, 1
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load i32, i32* @f_cat, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @f_precious, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i8*, i8** @progname, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.stat*, %struct.stat** %7, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %47, 1
  %49 = load %struct.stat*, %struct.stat** %7, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ule i64 %51, 2
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0), i64 %54
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i64 0, i64 0), i8* noundef %43, i8* noundef %44, i64 noundef %48, i8* noundef %55)
  store i32 0, i32* %4, align 4
  br label %58

57:                                               ; preds = %38, %35, %30
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %41, %25, %13
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.fmtdesc* @grok_format(i8* noundef %0) #1 {
  %2 = alloca %struct.fmtdesc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fmtdesc**, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %47

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @plainname(i8* noundef %9)
  store i8* %10, i8** %4, align 8
  store %struct.fmtdesc** getelementptr inbounds ([5 x %struct.fmtdesc*], [5 x %struct.fmtdesc*]* @alldescs, i64 0, i64 0), %struct.fmtdesc*** %5, align 8
  br label %11

11:                                               ; preds = %42, %8
  %12 = load %struct.fmtdesc**, %struct.fmtdesc*** %5, align 8
  %13 = load %struct.fmtdesc*, %struct.fmtdesc** %12, align 8
  %14 = icmp ne %struct.fmtdesc* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load %struct.fmtdesc**, %struct.fmtdesc*** %5, align 8
  %17 = load %struct.fmtdesc*, %struct.fmtdesc** %16, align 8
  %18 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load %struct.fmtdesc**, %struct.fmtdesc*** %5, align 8
  %23 = load %struct.fmtdesc*, %struct.fmtdesc** %22, align 8
  %24 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.fmtdesc**, %struct.fmtdesc*** %5, align 8
  %32 = load %struct.fmtdesc*, %struct.fmtdesc** %31, align 8
  %33 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @suffix(i8* noundef %30, i8* noundef %34)
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %38) #7
  %39 = load %struct.fmtdesc**, %struct.fmtdesc*** %5, align 8
  %40 = load %struct.fmtdesc*, %struct.fmtdesc** %39, align 8
  store %struct.fmtdesc* %40, %struct.fmtdesc** %2, align 8
  br label %48

41:                                               ; preds = %29, %21, %15
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.fmtdesc**, %struct.fmtdesc*** %5, align 8
  %44 = getelementptr inbounds %struct.fmtdesc*, %struct.fmtdesc** %43, i32 1
  store %struct.fmtdesc** %44, %struct.fmtdesc*** %5, align 8
  br label %11, !llvm.loop !9

45:                                               ; preds = %11
  %46 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %46) #7
  br label %47

47:                                               ; preds = %45, %1
  store %struct.fmtdesc* null, %struct.fmtdesc** %2, align 8
  br label %48

48:                                               ; preds = %47, %37
  %49 = load %struct.fmtdesc*, %struct.fmtdesc** %2, align 8
  ret %struct.fmtdesc* %49
}

; Function Attrs: noinline nounwind uwtable
define internal void @prepare_io(%struct.fmtdesc* noundef %0) #1 {
  %2 = alloca %struct.fmtdesc*, align 8
  store %struct.fmtdesc* %0, %struct.fmtdesc** %2, align 8
  %3 = load %struct.fmtdesc*, %struct.fmtdesc** %2, align 8
  %4 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %3, i32 0, i32 6
  %5 = load i32 (i16*)*, i32 (i16*)** %4, align 8
  store i32 (i16*)* %5, i32 (i16*)** @output, align 8
  %6 = load %struct.fmtdesc*, %struct.fmtdesc** %2, align 8
  %7 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %6, i32 0, i32 5
  %8 = load i32 (i16*)*, i32 (i16*)** %7, align 8
  store i32 (i16*)* %8, i32 (i16*)** @input, align 8
  %9 = load %struct.fmtdesc*, %struct.fmtdesc** %2, align 8
  %10 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %9, i32 0, i32 3
  %11 = load i32 ()*, i32 ()** %10, align 8
  store i32 ()* %11, i32 ()** @init_input, align 8
  %12 = load %struct.fmtdesc*, %struct.fmtdesc** %2, align 8
  %13 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %12, i32 0, i32 4
  %14 = load i32 ()*, i32 ()** %13, align 8
  store i32 ()* %14, i32 ()** @init_output, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @normalname(i8* noundef %0, i8* noundef %1, i8* noundef %2) #1 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %10, align 8
  store i8* %14, i8** %4, align 8
  br label %54

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* noundef %16) #9
  %18 = add i64 %17, 1
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strlen(i8* noundef %19) #9
  %21 = add i64 %18, %20
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strlen(i8* noundef %22) #9
  %24 = add i64 %21, %23
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i8* @emalloc(i64 noundef %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strcpy(i8* noundef %26, i8* noundef %27) #7
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @suffix(i8* noundef %29, i8* noundef %30)
  store i8* %31, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %15
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @strcpy(i8* noundef %34, i8* noundef %35) #7
  br label %52

37:                                               ; preds = %15
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @suffix(i8* noundef %43, i8* noundef %44)
  %46 = icmp ne i8* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i8* @strcat(i8* noundef %48, i8* noundef %49) #7
  br label %51

51:                                               ; preds = %47, %42, %37
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %52, %13
  %55 = load i8*, i8** %4, align 8
  ret i8* %55
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32 noundef, %struct.stat* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @plainname(i8* noundef %0) #1 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @normalname(i8* noundef %3, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @length_okay(i8* noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i8* @endname(i8* noundef %10)
  store i8* %11, i8** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* noundef %15) #9
  %17 = load i64, i64* %4, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** @progname, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @endname(i8* noundef %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.53, i64 0, i64 0), i8* noundef %21, i8* noundef %23, i64 noundef %24)
  store i32 0, i32* %2, align 4
  br label %27

26:                                               ; preds = %14, %9
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %19, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #0

; Function Attrs: nounwind
declare dso_local noalias %struct._IO_FILE* @fdopen(i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ok_to_replace(i8* noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @f_force, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %41

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 @fileno(%struct._IO_FILE* noundef %10) #7
  %12 = call i32 @isatty(i32 noundef %11) #7
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %41

15:                                               ; preds = %9
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.54, i64 0, i64 0), i8* noundef %17, i8* noundef %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 @fflush(%struct._IO_FILE* noundef %20)
  %22 = call i32 @getchar()
  store i32 %22, i32* %4, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %32, %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, -1
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = call i32 @getchar()
  store i32 %33, i32* %5, align 4
  br label %23, !llvm.loop !10

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 121
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %41

38:                                               ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %37, %14, %8
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @close(i32 noundef) #0

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32 noundef) #2

declare dso_local i32 @getchar() #0

declare dso_local %struct.gsm_state* @gsm_create() #0

declare dso_local i32 @gsm_option(%struct.gsm_state* noundef, i32 noundef, i32* noundef) #0

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #0

declare dso_local void @gsm_destroy(%struct.gsm_state* noundef) #0

declare dso_local i32 @gsm_decode(%struct.gsm_state* noundef, i8* noundef, i16* noundef) #0

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare dso_local void @gsm_encode(%struct.gsm_state* noundef, i16* noundef, i8* noundef) #0

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #0

; Function Attrs: nounwind
declare dso_local i32 @utime(i8* noundef, %struct.utimbuf* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @fchmod(i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @fchown(i32 noundef, i32 noundef, i32 noundef) #2

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }

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
