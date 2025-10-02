; ModuleID = './toast.ll'
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
@str = private unnamed_addr constant [53 x i8] c" -f  force     Replace existing files without asking\00", align 1
@str.1 = private unnamed_addr constant [59 x i8] c" -c  cat       Write to stdout, do not remove source files\00", align 1
@str.2 = private unnamed_addr constant [47 x i8] c" -d  decode    Decode data (default is encode)\00", align 1
@str.3 = private unnamed_addr constant [40 x i8] c" -p  precious  Do not delete the source\00", align 1
@str.4 = private unnamed_addr constant [56 x i8] c" -u  u-law     Force 8 kHz/8 bit u-law in/output format\00", align 1
@str.5 = private unnamed_addr constant [52 x i8] c" -s  sun .au   Force Sun .au u-law in/output format\00", align 1
@str.6 = private unnamed_addr constant [56 x i8] c" -a  A-law     Force 8 kHz/8 bit A-law in/output format\00", align 1
@str.7 = private unnamed_addr constant [52 x i8] c" -l  linear    Force 16 bit linear in/output format\00", align 1
@str.8 = private unnamed_addr constant [52 x i8] c" -F  fast      Sacrifice conformance to performance\00", align 1
@str.9 = private unnamed_addr constant [40 x i8] c" -v  version   Show version information\00", align 1
@str.10 = private unnamed_addr constant [31 x i8] c" -h  help      Print this text\00", align 1

declare dso_local i32 @audio_init_input() #0

declare dso_local i32 @audio_init_output() #0

declare dso_local i32 @ulaw_input(i16* noundef) #0

declare dso_local i32 @ulaw_output(i16* noundef) #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @generic_init() #1 {
  ret i32 0
}

declare dso_local i32 @alaw_input(i16* noundef) #0

declare dso_local i32 @alaw_output(i16* noundef) #0

declare dso_local i32 @linear_input(i16* noundef) #0

declare dso_local i32 @linear_output(i16* noundef) #0

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #2 {
  %3 = load i8*, i8** %1, align 8
  call void @parse_argv0(i8* noundef %3)
  br label %4

4:                                                ; preds = %23, %2
  %5 = call i32 @getopt(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)) #15
  %.not = icmp eq i32 %5, -1
  br i1 %.not, label %24, label %6

6:                                                ; preds = %4
  switch i32 %5, label %19 [
    i32 100, label %7
    i32 102, label %8
    i32 99, label %9
    i32 112, label %10
    i32 70, label %11
    i32 86, label %12
    i32 117, label %13
    i32 108, label %14
    i32 97, label %15
    i32 115, label %16
    i32 118, label %17
    i32 104, label %18
  ]

7:                                                ; preds = %6
  store i32 1, i32* @f_decode, align 4
  br label %23

8:                                                ; preds = %6
  store i32 1, i32* @f_force, align 4
  br label %23

9:                                                ; preds = %6
  store i32 1, i32* @f_cat, align 4
  br label %23

10:                                               ; preds = %6
  store i32 1, i32* @f_precious, align 4
  br label %23

11:                                               ; preds = %6
  store i32 1, i32* @f_fast, align 4
  br label %23

12:                                               ; preds = %6
  store i32 1, i32* @f_verbose, align 4
  br label %23

13:                                               ; preds = %6
  call void @set_format(%struct.fmtdesc* noundef nonnull @f_ulaw)
  br label %23

14:                                               ; preds = %6
  call void @set_format(%struct.fmtdesc* noundef nonnull @f_linear)
  br label %23

15:                                               ; preds = %6
  call void @set_format(%struct.fmtdesc* noundef nonnull @f_alaw)
  br label %23

16:                                               ; preds = %6
  call void @set_format(%struct.fmtdesc* noundef nonnull @f_audio)
  br label %23

17:                                               ; preds = %6
  call void @version()
  call void @exit(i32 noundef 0) #16
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %6
  call void @help()
  call void @exit(i32 noundef 0) #16
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %6
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** @progname, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* noundef %21) #17
  call void @exit(i32 noundef 1) #16
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  br label %4, !llvm.loop !4

24:                                               ; preds = %4
  %25 = load i32, i32* @f_cat, align 4
  %26 = load i32, i32* @f_precious, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @f_precious, align 4
  %28 = load i32, i32* @optind, align 4
  %29 = sub nsw i32 %0, %28
  call void @catch_signals(void (...)* noundef bitcast (void ()* @onintr to void (...)*))
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 @process(i8* noundef null)
  br label %43

33:                                               ; preds = %24
  %34 = sext i32 %28 to i64
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34
  br label %36

36:                                               ; preds = %37, %33
  %.01 = phi i32 [ %29, %33 ], [ %38, %37 ]
  %.0 = phi i8** [ %35, %33 ], [ %39, %37 ]
  %.not2 = icmp eq i32 %.01, 0
  br i1 %.not2, label %42, label %37

37:                                               ; preds = %36
  %38 = add nsw i32 %.01, -1
  %39 = getelementptr inbounds i8*, i8** %.0, i64 1
  %40 = load i8*, i8** %.0, align 8
  %41 = call i32 @process(i8* noundef %40)
  br label %36, !llvm.loop !6

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %31
  call void @exit(i32 noundef 0) #16
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %43, %19, %18, %17
  unreachable
}

; Function Attrs: mustprogress nofree noinline nounwind uwtable willreturn
define internal void @parse_argv0(i8* noundef %0) #3 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %2
  %5 = phi i8* [ %0, %2 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %3 ]
  %6 = call i8* @endname(i8* noundef %5)
  store i8* %6, i8** @progname, align 8
  %7 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i64 noundef 2) #18
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %8, label %9

8:                                                ; preds = %4
  store i32 1, i32* @f_decode, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %6) #18
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %sext = shl i64 %10, 32
  %14 = ashr exact i64 %sext, 32
  %15 = getelementptr inbounds i8, i8* %6, i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 -3
  %17 = call i32 @strcmp(i8* noundef nonnull %16, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0)) #18
  %.not2 = icmp eq i32 %17, 0
  br i1 %.not2, label %18, label %19

18:                                               ; preds = %13
  store i32 1, i32* @f_decode, align 4
  store i32 1, i32* @f_cat, align 4
  br label %19

19:                                               ; preds = %18, %13, %9
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32 noundef, i8** noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal void @set_format(%struct.fmtdesc* noundef %0) #5 {
  %2 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8
  %.not = icmp eq %struct.fmtdesc* %2, null
  br i1 %.not, label %9, label %3

3:                                                ; preds = %1
  %4 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8
  %.not1 = icmp eq %struct.fmtdesc* %4, %0
  br i1 %.not1, label %9, label %5

5:                                                ; preds = %3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** @progname, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0), i8* noundef %7, i8* noundef %7) #17
  call void @exit(i32 noundef 1) #16
  unreachable

9:                                                ; preds = %3, %1
  store %struct.fmtdesc* %0, %struct.fmtdesc** @f_format, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @version() #5 {
  %1 = load i8*, i8** @progname, align 8
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* noundef %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #15
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #6

; Function Attrs: noinline nounwind uwtable
define internal void @help() #5 {
  %1 = load i8*, i8** @progname, align 8
  %2 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #15
  %putchar = call i32 @putchar(i32 10)
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([53 x i8], [53 x i8]* @str, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @str.1, i64 0, i64 0))
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @str.2, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @str.3, i64 0, i64 0))
  %putchar4 = call i32 @putchar(i32 10)
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str.4, i64 0, i64 0))
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @str.5, i64 0, i64 0))
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str.6, i64 0, i64 0))
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @str.7, i64 0, i64 0))
  %putchar9 = call i32 @putchar(i32 10)
  %puts10 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @str.8, i64 0, i64 0))
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @str.9, i64 0, i64 0))
  %puts12 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @str.10, i64 0, i64 0))
  %putchar13 = call i32 @putchar(i32 10)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
define internal void @catch_signals(void (...)* noundef %0) #5 {
  %2 = bitcast void (...)* %0 to void (i32)*
  %3 = call void (i32)* @signal(i32 noundef 1, void (i32)* noundef %2) #15
  %4 = bitcast void (...)* %0 to void (i32)*
  %5 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef %4) #15
  %6 = bitcast void (...)* %0 to void (i32)*
  %7 = call void (i32)* @signal(i32 noundef 13, void (i32)* noundef %6) #15
  %8 = bitcast void (...)* %0 to void (i32)*
  %9 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef %8) #15
  %10 = bitcast void (...)* %0 to void (i32)*
  %11 = call void (i32)* @signal(i32 noundef 25, void (i32)* noundef %10) #15
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @onintr() #2 {
  %1 = load i8*, i8** @outname, align 8
  store i8* null, i8** @outname, align 8
  %.not = icmp eq i8* %1, null
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  %3 = call i32 @unlink(i8* noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %2, %0
  call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process(i8* noundef %0) #5 {
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @in, align 8
  store i8* null, i8** @outname, align 8
  store i8* null, i8** @inname, align 8
  %2 = call i32 @open_input(i8* noundef %0, %struct.stat* noundef nonnull @instat)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = call i32 @open_output(i8* noundef %0)
  %.not11 = icmp eq i32 %4, 0
  br i1 %.not11, label %5, label %6

5:                                                ; preds = %3, %1
  br label %107

6:                                                ; preds = %3
  %7 = load i32, i32* @f_decode, align 4
  %.not12 = icmp eq i32 %7, 0
  br i1 %.not12, label %9, label %8

8:                                                ; preds = %6
  br label %10

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %8
  %.in = phi i32 ()** [ @init_output, %8 ], [ @init_input, %9 ]
  %11 = load i32 ()*, i32 ()** %.in, align 8
  %12 = call i32 %11() #15
  %.not13 = icmp eq i32 %12, 0
  br i1 %.not13, label %35, label %13

13:                                               ; preds = %10
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8*, i8** @progname, align 8
  %16 = load i32, i32* @f_decode, align 4
  %.not25 = icmp eq i32 %16, 0
  %17 = select i1 %.not25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0)
  %.not26 = icmp eq i32 %16, 0
  br i1 %.not26, label %25, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** @outname, align 8
  %.not28 = icmp eq i8* %19, null
  br i1 %.not28, label %22, label %20

20:                                               ; preds = %18
  %21 = load i8*, i8** @outname, align 8
  br label %23

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i8* [ %21, %20 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %22 ]
  br label %32

25:                                               ; preds = %13
  %26 = load i8*, i8** @inname, align 8
  %.not27 = icmp eq i8* %26, null
  br i1 %.not27, label %29, label %27

27:                                               ; preds = %25
  %28 = load i8*, i8** @inname, align 8
  br label %30

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %29 ]
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i8* [ %24, %23 ], [ %31, %30 ]
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8* noundef %15, i8* noundef %17, i8* noundef %33) #17
  br label %107

35:                                               ; preds = %10
  %36 = load i32, i32* @f_decode, align 4
  %.not14 = icmp eq i32 %36, 0
  %37 = select i1 %.not14, i32 ()* @process_encode, i32 ()* @process_decode
  %38 = call i32 %37() #15
  %.not15 = icmp eq i32 %38, 0
  br i1 %.not15, label %40, label %39

39:                                               ; preds = %35
  br label %107

40:                                               ; preds = %35
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %42 = call i32 @fflush(%struct._IO_FILE* noundef %41) #15
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %46 = call i32 @ferror(%struct._IO_FILE* noundef %45) #15
  %.not16 = icmp eq i32 %46, 0
  br i1 %.not16, label %63, label %47

47:                                               ; preds = %44, %40
  %48 = load i8*, i8** @outname, align 8
  %.not23 = icmp eq i8* %48, null
  br i1 %.not23, label %51, label %49

49:                                               ; preds = %47
  %50 = load i8*, i8** @outname, align 8
  br label %52

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %51 ]
  call void @perror(i8* noundef %53) #17
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i8*, i8** @progname, align 8
  %56 = load i8*, i8** @outname, align 8
  %.not24 = icmp eq i8* %56, null
  br i1 %.not24, label %59, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** @outname, align 8
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i8* [ %58, %57 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %59 ]
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0), i8* noundef %55, i8* noundef %61) #17
  br label %107

63:                                               ; preds = %44
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %.not17 = icmp eq %struct._IO_FILE* %64, %65
  br i1 %.not17, label %81, label %66

66:                                               ; preds = %63
  call void @update_times()
  call void @update_mode()
  call void @update_own()
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %68 = call i32 @fclose(%struct._IO_FILE* noundef %67) #15
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i8*, i8** @outname, align 8
  call void @perror(i8* noundef %71) #17
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = load i8*, i8** @progname, align 8
  %74 = load i8*, i8** @outname, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0), i8* noundef %73, i8* noundef %74) #17
  br label %107

76:                                               ; preds = %66
  %77 = load i8*, i8** @outname, align 8
  %.not22 = icmp eq i8* %77, %0
  br i1 %.not22, label %80, label %78

78:                                               ; preds = %76
  %79 = load i8*, i8** @outname, align 8
  call void @free(i8* noundef %79) #15
  br label %80

80:                                               ; preds = %78, %76
  store i8* null, i8** @outname, align 8
  br label %81

81:                                               ; preds = %80, %63
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %.not18 = icmp eq %struct._IO_FILE* %82, %83
  br i1 %.not18, label %106, label %84

84:                                               ; preds = %81
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %86 = call i32 @fclose(%struct._IO_FILE* noundef %85) #15
  store %struct._IO_FILE* null, %struct._IO_FILE** @in, align 8
  %87 = load i32, i32* @f_cat, align 4
  %.not19 = icmp eq i32 %87, 0
  br i1 %.not19, label %88, label %101

88:                                               ; preds = %84
  %89 = load i32, i32* @f_precious, align 4
  %.not20 = icmp eq i32 %89, 0
  br i1 %.not20, label %90, label %101

90:                                               ; preds = %88
  %91 = load i8*, i8** @inname, align 8
  %92 = call i32 @unlink(i8* noundef %91) #15
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i8*, i8** @inname, align 8
  call void @perror(i8* noundef %95) #17
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %97 = load i8*, i8** @progname, align 8
  %98 = load i8*, i8** @inname, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %96, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0), i8* noundef %97, i8* noundef %98) #17
  br label %100

100:                                              ; preds = %94, %90
  br label %107

101:                                              ; preds = %88, %84
  %102 = load i8*, i8** @inname, align 8
  %.not21 = icmp eq i8* %102, %0
  br i1 %.not21, label %105, label %103

103:                                              ; preds = %101
  %104 = load i8*, i8** @inname, align 8
  call void @free(i8* noundef %104) #15
  br label %105

105:                                              ; preds = %103, %101
  store i8* null, i8** @inname, align 8
  br label %106

106:                                              ; preds = %105, %81
  br label %152

107:                                              ; preds = %100, %70, %60, %39, %32, %5
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %.not1 = icmp eq %struct._IO_FILE* %108, null
  br i1 %.not1, label %131, label %109

109:                                              ; preds = %107
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %.not8 = icmp eq %struct._IO_FILE* %110, %111
  br i1 %.not8, label %131, label %112

112:                                              ; preds = %109
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %114 = call i32 @fclose(%struct._IO_FILE* noundef %113) #15
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  %115 = load i8*, i8** @outname, align 8
  %116 = call i32 @unlink(i8* noundef %115) #15
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = call i32* @__errno_location() #19
  %120 = load i32, i32* %119, align 4
  %.not9 = icmp eq i32 %120, 2
  br i1 %.not9, label %130, label %121

121:                                              ; preds = %118
  %122 = call i32* @__errno_location() #19
  %123 = load i32, i32* %122, align 4
  %.not10 = icmp eq i32 %123, 4
  br i1 %.not10, label %130, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** @outname, align 8
  call void @perror(i8* noundef %125) #17
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %127 = load i8*, i8** @progname, align 8
  %128 = load i8*, i8** @outname, align 8
  %129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %126, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0), i8* noundef %127, i8* noundef %128) #17
  br label %130

130:                                              ; preds = %124, %121, %118, %112
  br label %131

131:                                              ; preds = %130, %109, %107
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %.not2 = icmp eq %struct._IO_FILE* %132, null
  br i1 %.not2, label %139, label %133

133:                                              ; preds = %131
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %.not7 = icmp eq %struct._IO_FILE* %134, %135
  br i1 %.not7, label %139, label %136

136:                                              ; preds = %133
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %138 = call i32 @fclose(%struct._IO_FILE* noundef %137) #15
  store %struct._IO_FILE* null, %struct._IO_FILE** @in, align 8
  br label %139

139:                                              ; preds = %136, %133, %131
  %140 = load i8*, i8** @inname, align 8
  %.not3 = icmp eq i8* %140, null
  br i1 %.not3, label %145, label %141

141:                                              ; preds = %139
  %142 = load i8*, i8** @inname, align 8
  %.not6 = icmp eq i8* %142, %0
  br i1 %.not6, label %145, label %143

143:                                              ; preds = %141
  %144 = load i8*, i8** @inname, align 8
  call void @free(i8* noundef %144) #15
  br label %145

145:                                              ; preds = %143, %141, %139
  %146 = load i8*, i8** @outname, align 8
  %.not4 = icmp eq i8* %146, null
  br i1 %.not4, label %151, label %147

147:                                              ; preds = %145
  %148 = load i8*, i8** @outname, align 8
  %.not5 = icmp eq i8* %148, %0
  br i1 %.not5, label %151, label %149

149:                                              ; preds = %147
  %150 = load i8*, i8** @outname, align 8
  call void @free(i8* noundef %150) #15
  br label %151

151:                                              ; preds = %149, %147, %145
  br label %152

152:                                              ; preds = %151, %106
  %.0 = phi i32 [ -1, %151 ], [ 0, %106 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i8* @endname(i8* noundef readonly %0) #7 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %10, label %2

2:                                                ; preds = %1
  %3 = call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #18
  %.not1 = icmp eq i8* %3, null
  br i1 %.not1, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, i8* %3, i64 1
  %6 = load i8, i8* %5, align 1
  %.not2 = icmp eq i8 %6, 0
  br i1 %.not2, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %3, i64 1
  br label %9

9:                                                ; preds = %7, %4, %2
  %.0 = phi i8* [ %8, %7 ], [ %0, %4 ], [ %0, %2 ]
  br label %10

10:                                               ; preds = %9, %1
  %.1 = phi i8* [ %.0, %9 ], [ %0, %1 ]
  ret i8* %.1
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #8

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #8

declare dso_local i32 @printf(i8* noundef, ...) #0

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @open_input(i8* noundef %0, %struct.stat* noundef %1) #5 {
  %3 = load %struct.fmtdesc*, %struct.fmtdesc** @f_format, align 8
  %4 = getelementptr inbounds %struct.stat, %struct.stat* %1, i64 0, i32 2
  store i64 0, i64* %4, align 8
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %5, label %7

5:                                                ; preds = %2
  store i8* null, i8** @inname, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** @in, align 8
  br label %42

7:                                                ; preds = %2
  %8 = load i32, i32* @f_decode, align 4
  %.not3 = icmp eq i32 %8, 0
  br i1 %.not3, label %11, label %9

9:                                                ; preds = %7
  %10 = call i8* @codename(i8* noundef nonnull %0)
  br label %24

11:                                               ; preds = %7
  %12 = load i32, i32* @f_cat, align 4
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %13, label %19

13:                                               ; preds = %11
  %14 = call i8* @suffix(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  %.not5 = icmp eq i8* %14, null
  br i1 %.not5, label %19, label %15

15:                                               ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** @progname, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i64 0, i64 0), i8* noundef %17, i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #17
  br label %47

19:                                               ; preds = %13, %11
  %20 = call i64 @strlen(i8* noundef nonnull %0) #18
  %21 = add i64 %20, 1
  %22 = call i8* @emalloc(i64 noundef %21)
  %23 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %22, i8* noundef nonnull %0) #15
  br label %24

24:                                               ; preds = %19, %9
  %storemerge = phi i8* [ %23, %19 ], [ %10, %9 ]
  store i8* %storemerge, i8** @inname, align 8
  %25 = call noalias %struct._IO_FILE* @fopen(i8* noundef %storemerge, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0)) #15
  store %struct._IO_FILE* %25, %struct._IO_FILE** @in, align 8
  %.not6 = icmp eq %struct._IO_FILE* %25, null
  br i1 %.not6, label %26, label %32

26:                                               ; preds = %24
  %27 = load i8*, i8** @inname, align 8
  call void @perror(i8* noundef %27) #17
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i8*, i8** @progname, align 8
  %30 = load i8*, i8** @inname, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i64 0, i64 0), i8* noundef %29, i8* noundef %30) #17
  br label %47

32:                                               ; preds = %24
  %33 = load i8*, i8** @inname, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %35 = call i32 @okay_as_input(i8* noundef %33, %struct._IO_FILE* noundef %34, %struct.stat* noundef %1)
  %.not7 = icmp eq i32 %35, 0
  br i1 %.not7, label %36, label %37

36:                                               ; preds = %32
  br label %47

37:                                               ; preds = %32
  %.not8 = icmp eq %struct.fmtdesc* %3, null
  br i1 %.not8, label %38, label %41

38:                                               ; preds = %37
  %39 = load i8*, i8** @inname, align 8
  %40 = call %struct.fmtdesc* @grok_format(i8* noundef %39)
  br label %41

41:                                               ; preds = %38, %37
  %.01 = phi %struct.fmtdesc* [ %3, %37 ], [ %40, %38 ]
  br label %42

42:                                               ; preds = %41, %5
  %.1 = phi %struct.fmtdesc* [ %.01, %41 ], [ %3, %5 ]
  %.not2 = icmp eq %struct.fmtdesc* %.1, null
  br i1 %.not2, label %44, label %43

43:                                               ; preds = %42
  br label %45

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %43
  %46 = phi %struct.fmtdesc* [ %.1, %43 ], [ @f_ulaw, %44 ]
  call void @prepare_io(%struct.fmtdesc* noundef nonnull %46)
  br label %47

47:                                               ; preds = %45, %36, %26, %15
  %.0 = phi i32 [ 1, %45 ], [ 0, %36 ], [ 0, %26 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @open_output(i8* noundef %0) #5 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %4, label %2

2:                                                ; preds = %1
  %3 = load i32, i32* @f_cat, align 4
  %.not1 = icmp eq i32 %3, 0
  br i1 %.not1, label %6, label %4

4:                                                ; preds = %2, %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %5, %struct._IO_FILE** @out, align 8
  br label %39

6:                                                ; preds = %2
  %7 = load i32, i32* @f_decode, align 4
  %.not2 = icmp eq i32 %7, 0
  %8 = select i1 %.not2, i8* (i8*)* @codename, i8* (i8*)* @plainname
  %9 = call i8* %8(i8* noundef nonnull %0) #15
  %10 = call i32 @length_okay(i8* noundef %9)
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %11, label %12

11:                                               ; preds = %6
  br label %40

12:                                               ; preds = %6
  %13 = call i32 (i8*, i32, ...) @open(i8* noundef %9, i32 noundef 193, i32 noundef 438) #15
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #15
  store %struct._IO_FILE* %16, %struct._IO_FILE** @out, align 8
  br label %28

17:                                               ; preds = %12
  %18 = call i32* @__errno_location() #19
  %19 = load i32, i32* %18, align 4
  %.not4 = icmp eq i32 %19, 17
  br i1 %.not4, label %21, label %20

20:                                               ; preds = %17
  store %struct._IO_FILE* null, %struct._IO_FILE** @out, align 8
  br label %27

21:                                               ; preds = %17
  %22 = call i32 @ok_to_replace(i8* noundef %9)
  %.not5 = icmp eq i32 %22, 0
  br i1 %.not5, label %25, label %23

23:                                               ; preds = %21
  %24 = call noalias %struct._IO_FILE* @fopen(i8* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #15
  store %struct._IO_FILE* %24, %struct._IO_FILE** @out, align 8
  br label %26

25:                                               ; preds = %21
  br label %40

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %20
  br label %28

28:                                               ; preds = %27, %15
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %.not6 = icmp eq %struct._IO_FILE* %29, null
  br i1 %.not6, label %30, label %38

30:                                               ; preds = %28
  call void @perror(i8* noundef %9) #17
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i8*, i8** @progname, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0), i8* noundef %32, i8* noundef %9) #17
  %34 = icmp sgt i32 %13, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @close(i32 noundef %13) #15
  br label %37

37:                                               ; preds = %35, %30
  br label %40

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %4
  %storemerge = phi i8* [ null, %4 ], [ %9, %38 ]
  store i8* %storemerge, i8** @outname, align 8
  br label %40

40:                                               ; preds = %39, %37, %25, %11
  %.0 = phi i32 [ 1, %39 ], [ 0, %37 ], [ 0, %25 ], [ 0, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_decode() #5 {
  %1 = alloca [33 x i8], align 16
  %2 = alloca [160 x i16], align 16
  %3 = call %struct.gsm_state* @gsm_create() #15
  %.not = icmp eq %struct.gsm_state* %3, null
  br i1 %.not, label %4, label %6

4:                                                ; preds = %0
  %5 = load i8*, i8** @progname, align 8
  call void @perror(i8* noundef %5) #17
  br label %81

6:                                                ; preds = %0
  %7 = call i32 @gsm_option(%struct.gsm_state* noundef nonnull %3, i32 noundef 2, i32* noundef nonnull @f_fast) #15
  %8 = call i32 @gsm_option(%struct.gsm_state* noundef nonnull %3, i32 noundef 1, i32* noundef nonnull @f_verbose) #15
  br label %9

9:                                                ; preds = %61, %6
  %10 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %12 = call i64 @fread(i8* noundef nonnull %10, i64 noundef 1, i64 noundef 33, %struct._IO_FILE* noundef %11) #15
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %sext.mask = and i64 %12, 4294967295
  %.not6 = icmp eq i64 %sext.mask, 33
  br i1 %.not6, label %35, label %16

16:                                               ; preds = %15
  %17 = icmp sgt i32 %13, -1
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8*, i8** @progname, align 8
  %sext = shl i64 %12, 32
  %21 = ashr exact i64 %sext, 32
  %22 = sub nsw i64 33, %21
  %sext9.mask = and i64 %12, 4294967295
  %23 = icmp eq i64 %sext9.mask, 32
  %24 = zext i1 %23 to i64
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.50, i64 0, i64 %24
  %26 = load i8*, i8** @inname, align 8
  %.not10 = icmp eq i8* %26, null
  br i1 %.not10, label %29, label %27

27:                                               ; preds = %18
  %28 = load i8*, i8** @inname, align 8
  br label %30

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %29 ]
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.56, i64 0, i64 0), i8* noundef %20, i64 noundef %22, i8* noundef nonnull %25, i8* noundef %31) #17
  br label %33

33:                                               ; preds = %30, %16
  call void @gsm_destroy(%struct.gsm_state* noundef nonnull %3) #15
  %34 = call i32* @__errno_location() #19
  store i32 0, i32* %34, align 4
  br label %81

35:                                               ; preds = %15
  %36 = getelementptr inbounds [33 x i8], [33 x i8]* %1, i64 0, i64 0
  %37 = getelementptr inbounds [160 x i16], [160 x i16]* %2, i64 0, i64 0
  %38 = call i32 @gsm_decode(%struct.gsm_state* noundef nonnull %3, i8* noundef nonnull %36, i16* noundef nonnull %37) #15
  %.not7 = icmp eq i32 %38, 0
  br i1 %.not7, label %50, label %39

39:                                               ; preds = %35
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i8*, i8** @progname, align 8
  %42 = load i8*, i8** @inname, align 8
  %.not8 = icmp eq i8* %42, null
  br i1 %.not8, label %45, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** @inname, align 8
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i8* [ %44, %43 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %45 ]
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0), i8* noundef %41, i8* noundef %47) #17
  call void @gsm_destroy(%struct.gsm_state* noundef nonnull %3) #15
  %49 = call i32* @__errno_location() #19
  store i32 0, i32* %49, align 4
  br label %81

50:                                               ; preds = %35
  %51 = load i32 (i16*)*, i32 (i16*)** @output, align 8
  %52 = getelementptr inbounds [160 x i16], [160 x i16]* %2, i64 0, i64 0
  %53 = call i32 %51(i16* noundef nonnull %52) #15
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** @outname, align 8
  call void @perror(i8* noundef %56) #17
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = load i8*, i8** @progname, align 8
  %59 = load i8*, i8** @outname, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0), i8* noundef %58, i8* noundef %59) #17
  call void @gsm_destroy(%struct.gsm_state* noundef nonnull %3) #15
  br label %81

61:                                               ; preds = %50
  br label %9, !llvm.loop !7

62:                                               ; preds = %9
  %63 = icmp slt i32 %13, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %62
  %65 = load i8*, i8** @inname, align 8
  %.not4 = icmp eq i8* %65, null
  br i1 %.not4, label %68, label %66

66:                                               ; preds = %64
  %67 = load i8*, i8** @inname, align 8
  br label %69

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i8* [ %67, %66 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %68 ]
  call void @perror(i8* noundef %70) #17
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = load i8*, i8** @progname, align 8
  %73 = load i8*, i8** @inname, align 8
  %.not5 = icmp eq i8* %73, null
  br i1 %.not5, label %76, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** @inname, align 8
  br label %77

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i8* [ %75, %74 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %76 ]
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i8* noundef %72, i8* noundef %78) #17
  call void @gsm_destroy(%struct.gsm_state* noundef nonnull %3) #15
  br label %81

80:                                               ; preds = %62
  call void @gsm_destroy(%struct.gsm_state* noundef nonnull %3) #15
  br label %81

81:                                               ; preds = %80, %77, %55, %46, %33, %4
  %.0 = phi i32 [ -1, %33 ], [ -1, %46 ], [ -1, %55 ], [ -1, %77 ], [ 0, %80 ], [ -1, %4 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_encode() #5 {
  %1 = alloca [160 x i16], align 16
  %2 = alloca [33 x i8], align 16
  %3 = call %struct.gsm_state* @gsm_create() #15
  %.not = icmp eq %struct.gsm_state* %3, null
  br i1 %.not, label %4, label %6

4:                                                ; preds = %0
  %5 = load i8*, i8** @progname, align 8
  call void @perror(i8* noundef %5) #17
  br label %64

6:                                                ; preds = %0
  %7 = call i32 @gsm_option(%struct.gsm_state* noundef nonnull %3, i32 noundef 2, i32* noundef nonnull @f_fast) #15
  %8 = call i32 @gsm_option(%struct.gsm_state* noundef nonnull %3, i32 noundef 1, i32* noundef nonnull @f_verbose) #15
  br label %9

9:                                                ; preds = %44, %6
  %10 = load i32 (i16*)*, i32 (i16*)** @input, align 8
  %11 = getelementptr inbounds [160 x i16], [160 x i16]* %1, i64 0, i64 0
  %12 = call i32 %10(i16* noundef nonnull %11) #15
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %9
  %15 = icmp ult i32 %12, 160
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds [160 x i16], [160 x i16]* %1, i64 0, i64 %17
  %19 = bitcast i16* %18 to i8*
  %20 = sext i32 %12 to i64
  %.neg = mul nsw i64 %20, -2
  %21 = add nsw i64 %.neg, 320
  call void @llvm.memset.p0i8.i64(i8* nonnull align 2 %19, i8 0, i64 %21, i1 false)
  br label %22

22:                                               ; preds = %16, %14
  %23 = getelementptr inbounds [160 x i16], [160 x i16]* %1, i64 0, i64 0
  %24 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  call void @gsm_encode(%struct.gsm_state* noundef nonnull %3, i16* noundef nonnull %23, i8* noundef nonnull %24) #15
  %25 = getelementptr inbounds [33 x i8], [33 x i8]* %2, i64 0, i64 0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %27 = call i64 @fwrite(i8* noundef nonnull %25, i64 noundef 33, i64 noundef 1, %struct._IO_FILE* noundef %26) #15
  %.not4 = icmp eq i64 %27, 1
  br i1 %.not4, label %44, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** @outname, align 8
  %.not5 = icmp eq i8* %29, null
  br i1 %.not5, label %32, label %30

30:                                               ; preds = %28
  %31 = load i8*, i8** @outname, align 8
  br label %33

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %32 ]
  call void @perror(i8* noundef %34) #17
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i8*, i8** @progname, align 8
  %37 = load i8*, i8** @outname, align 8
  %.not6 = icmp eq i8* %37, null
  br i1 %.not6, label %40, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** @outname, align 8
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8* [ %39, %38 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), %40 ]
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.58, i64 0, i64 0), i8* noundef %36, i8* noundef %42) #17
  call void @gsm_destroy(%struct.gsm_state* noundef nonnull %3) #15
  br label %64

44:                                               ; preds = %22
  br label %9, !llvm.loop !8

45:                                               ; preds = %9
  %46 = icmp slt i32 %12, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %45
  %48 = load i8*, i8** @inname, align 8
  %.not2 = icmp eq i8* %48, null
  br i1 %.not2, label %51, label %49

49:                                               ; preds = %47
  %50 = load i8*, i8** @inname, align 8
  br label %52

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %51 ]
  call void @perror(i8* noundef %53) #17
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i8*, i8** @progname, align 8
  %56 = load i8*, i8** @inname, align 8
  %.not3 = icmp eq i8* %56, null
  br i1 %.not3, label %59, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** @inname, align 8
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i8* [ %58, %57 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), %59 ]
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i8* noundef %55, i8* noundef %61) #17
  call void @gsm_destroy(%struct.gsm_state* noundef nonnull %3) #15
  br label %64

63:                                               ; preds = %45
  call void @gsm_destroy(%struct.gsm_state* noundef nonnull %3) #15
  br label %64

64:                                               ; preds = %63, %60, %41, %4
  %.0 = phi i32 [ -1, %41 ], [ -1, %60 ], [ 0, %63 ], [ -1, %4 ]
  ret i32 %.0
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #0

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #4

declare dso_local void @perror(i8* noundef) #0

; Function Attrs: noinline nounwind uwtable
define internal void @update_times() #5 {
  %1 = alloca [2 x i64], align 16
  %2 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i64 0, i32 2), align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %0
  br label %14

4:                                                ; preds = %0
  %5 = load i8*, i8** @outname, align 8
  %.not1 = icmp eq i8* %5, null
  br i1 %.not1, label %14, label %6

6:                                                ; preds = %4
  %7 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i64 0, i32 11, i32 0), align 8
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 0
  store i64 %7, i64* %8, align 16
  %9 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i64 0, i32 12, i32 0), align 8
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 1
  store i64 %9, i64* %10, align 8
  %11 = load i8*, i8** @outname, align 8
  %12 = bitcast [2 x i64]* %1 to %struct.utimbuf*
  %13 = call i32 @utime(i8* noundef %11, %struct.utimbuf* noundef nonnull %12) #15
  br label %14

14:                                               ; preds = %6, %4, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @update_mode() #5 {
  %1 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i64 0, i32 2), align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %0
  br label %15

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %5 = call i32 @fileno(%struct._IO_FILE* noundef %4) #15
  %6 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i64 0, i32 3), align 8
  %7 = and i32 %6, 4095
  %8 = call i32 @fchmod(i32 noundef %5, i32 noundef %7) #15
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %15, label %9

9:                                                ; preds = %3
  %10 = load i8*, i8** @outname, align 8
  call void @perror(i8* noundef %10) #17
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i8*, i8** @progname, align 8
  %13 = load i8*, i8** @outname, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.60, i64 0, i64 0), i8* noundef %12, i8* noundef %13) #17
  br label %15

15:                                               ; preds = %9, %3, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @update_own() #5 {
  %1 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i64 0, i32 2), align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %0
  br label %9

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %5 = call i32 @fileno(%struct._IO_FILE* noundef %4) #15
  %6 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i64 0, i32 4), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @instat, i64 0, i32 5), align 8
  %8 = call i32 @fchown(i32 noundef %5, i32 noundef %6, i32 noundef %7) #15
  br label %9

9:                                                ; preds = %3, %2
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #0

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #9

; Function Attrs: noinline nounwind uwtable
define internal i8* @codename(i8* noundef %0) #5 {
  %2 = call i8* @normalname(i8* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i64 0, i64 0))
  ret i8* %2
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i8* @suffix(i8* noundef %0, i8* noundef %1) #7 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #18
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #18
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %2
  %.not1 = icmp ugt i64 %3, %4
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5, %2
  br label %14

7:                                                ; preds = %5
  %8 = sub i64 %3, %4
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %bcmp = call i32 @bcmp(i8* %9, i8* %1, i64 %4)
  %.not2 = icmp eq i32 %bcmp, 0
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %10
  %13 = phi i8* [ null, %10 ], [ %9, %11 ]
  br label %14

14:                                               ; preds = %12, %6
  %.0 = phi i8* [ null, %6 ], [ %13, %12 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @emalloc(i64 noundef %0) #5 {
  %2 = call noalias i8* @malloc(i64 noundef %0) #15
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %3, label %7

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @progname, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i64 0, i64 0), i8* noundef %5, i64 noundef %0) #17
  call void @onintr()
  call void @exit(i32 noundef 1) #16
  unreachable

7:                                                ; preds = %1
  ret i8* %2
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #0

; Function Attrs: noinline nounwind uwtable
define internal i32 @okay_as_input(i8* noundef %0, %struct._IO_FILE* noundef %1, %struct.stat* noundef %2) #5 {
  %4 = call i32 @fileno(%struct._IO_FILE* noundef %1) #15
  %5 = call i32 @fstat(i32 noundef %4, %struct.stat* noundef %2) #15
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  call void @perror(i8* noundef %0) #17
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** @progname, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i8* noundef %9, i8* noundef %0) #17
  br label %39

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 61440
  %15 = icmp eq i32 %14, 32768
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8*, i8** @progname, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i64 0, i64 0), i8* noundef %18, i8* noundef %0) #17
  br label %39

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ugt i64 %22, 1
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32, i32* @f_cat, align 4
  %.not = icmp eq i32 %25, 0
  br i1 %.not, label %26, label %38

26:                                               ; preds = %24
  %27 = load i32, i32* @f_precious, align 4
  %.not1 = icmp eq i32 %27, 0
  br i1 %.not1, label %28, label %38

28:                                               ; preds = %26
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load i8*, i8** @progname, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, -1
  %34 = icmp ult i64 %32, 3
  %35 = zext i1 %34 to i64
  %36 = getelementptr inbounds [2 x i8], [2 x i8]* @.str.50, i64 0, i64 %35
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i64 0, i64 0), i8* noundef %30, i8* noundef %0, i64 noundef %33, i8* noundef nonnull %36) #17
  br label %39

38:                                               ; preds = %26, %24, %20
  br label %39

39:                                               ; preds = %38, %28, %16, %7
  %.0 = phi i32 [ 0, %7 ], [ 1, %38 ], [ 0, %28 ], [ 0, %16 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.fmtdesc* @grok_format(i8* noundef %0) #5 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %26, label %2

2:                                                ; preds = %1
  %3 = call i8* @plainname(i8* noundef nonnull %0)
  br label %4

4:                                                ; preds = %23, %2
  %.01 = phi %struct.fmtdesc** [ getelementptr inbounds ([5 x %struct.fmtdesc*], [5 x %struct.fmtdesc*]* @alldescs, i64 0, i64 0), %2 ], [ %24, %23 ]
  %5 = load %struct.fmtdesc*, %struct.fmtdesc** %.01, align 8
  %.not3 = icmp eq %struct.fmtdesc* %5, null
  br i1 %.not3, label %25, label %6

6:                                                ; preds = %4
  %7 = load %struct.fmtdesc*, %struct.fmtdesc** %.01, align 8
  %8 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %7, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %.not4 = icmp eq i8* %9, null
  br i1 %.not4, label %22, label %10

10:                                               ; preds = %6
  %11 = load %struct.fmtdesc*, %struct.fmtdesc** %.01, align 8
  %12 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %11, i64 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %.not5 = icmp eq i8 %14, 0
  br i1 %.not5, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.fmtdesc*, %struct.fmtdesc** %.01, align 8
  %17 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %16, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @suffix(i8* noundef %3, i8* noundef %18)
  %.not6 = icmp eq i8* %19, null
  br i1 %.not6, label %22, label %20

20:                                               ; preds = %15
  call void @free(i8* noundef %3) #15
  %21 = load %struct.fmtdesc*, %struct.fmtdesc** %.01, align 8
  br label %27

22:                                               ; preds = %15, %10, %6
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.fmtdesc*, %struct.fmtdesc** %.01, i64 1
  br label %4, !llvm.loop !9

25:                                               ; preds = %4
  call void @free(i8* noundef %3) #15
  br label %26

26:                                               ; preds = %25, %1
  br label %27

27:                                               ; preds = %26, %20
  %.0 = phi %struct.fmtdesc* [ %21, %20 ], [ null, %26 ]
  ret %struct.fmtdesc* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @prepare_io(%struct.fmtdesc* nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %0, i64 0, i32 6
  %3 = load i32 (i16*)*, i32 (i16*)** %2, align 8
  store i32 (i16*)* %3, i32 (i16*)** @output, align 8
  %4 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %0, i64 0, i32 5
  %5 = load i32 (i16*)*, i32 (i16*)** %4, align 8
  store i32 (i16*)* %5, i32 (i16*)** @input, align 8
  %6 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %0, i64 0, i32 3
  %7 = load i32 ()*, i32 ()** %6, align 8
  store i32 ()* %7, i32 ()** @init_input, align 8
  %8 = getelementptr inbounds %struct.fmtdesc, %struct.fmtdesc* %0, i64 0, i32 4
  %9 = load i32 ()*, i32 ()** %8, align 8
  store i32 ()* %9, i32 ()** @init_output, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @normalname(i8* noundef %0, i8* noundef %1, i8* noundef %2) #5 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  br label %25

5:                                                ; preds = %3
  %6 = call i64 @strlen(i8* noundef nonnull %0) #18
  %7 = add i64 %6, 1
  %8 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #18
  %9 = add i64 %7, %8
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #18
  %11 = add i64 %9, %10
  %12 = call i8* @emalloc(i64 noundef %11)
  %13 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %12, i8* noundef nonnull %0) #15
  %14 = call i8* @suffix(i8* noundef %13, i8* noundef %2)
  %.not1 = icmp eq i8* %14, null
  br i1 %.not1, label %17, label %15

15:                                               ; preds = %5
  %16 = call i8* @strcpy(i8* noundef nonnull %14, i8* noundef nonnull dereferenceable(1) %1) #15
  br label %24

17:                                               ; preds = %5
  %18 = load i8, i8* %1, align 1
  %.not2 = icmp eq i8 %18, 0
  br i1 %.not2, label %23, label %19

19:                                               ; preds = %17
  %20 = call i8* @suffix(i8* noundef %13, i8* noundef nonnull %1)
  %.not3 = icmp eq i8* %20, null
  br i1 %.not3, label %21, label %23

21:                                               ; preds = %19
  %22 = call i8* @strcat(i8* noundef nonnull dereferenceable(1) %13, i8* noundef nonnull %1) #15
  br label %23

23:                                               ; preds = %21, %19, %17
  br label %24

24:                                               ; preds = %23, %15
  br label %25

25:                                               ; preds = %24, %4
  %.0 = phi i8* [ %13, %24 ], [ null, %4 ]
  ret i8* %.0
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8* noundef, i8* noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #8

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32 noundef, %struct.stat* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i8* @plainname(i8* noundef %0) #5 {
  %2 = call i8* @normalname(i8* noundef %0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  ret i8* %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @length_okay(i8* noundef %0) #5 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %7

3:                                                ; preds = %1
  br i1 false, label %4, label %6

4:                                                ; preds = %3
  br i1 undef, label %5, label %6

5:                                                ; preds = %4
  br label %7

6:                                                ; preds = %4, %3
  br label %7

7:                                                ; preds = %6, %5, %2
  %.0 = phi i32 [ 0, %5 ], [ 1, %6 ], [ 0, %2 ]
  ret i32 %.0
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #0

; Function Attrs: nounwind
declare dso_local noalias %struct._IO_FILE* @fdopen(i32 noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @ok_to_replace(i8* noundef %0) #5 {
  %2 = load i32, i32* @f_force, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %29

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 @fileno(%struct._IO_FILE* noundef %5) #15
  %7 = call i32 @isatty(i32 noundef %6) #15
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %8, label %9

8:                                                ; preds = %4
  br label %29

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.54, i64 0, i64 0), i8* noundef %0, i8* noundef %0) #17
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 @fflush(%struct._IO_FILE* noundef %12) #15
  %14 = call i32 @getchar() #15
  br label %15

15:                                               ; preds = %21, %9
  %.01 = phi i32 [ %14, %9 ], [ %22, %21 ]
  %.not3 = icmp eq i32 %.01, 10
  br i1 %.not3, label %18, label %16

16:                                               ; preds = %15
  %17 = icmp ne i32 %.01, -1
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i1 [ false, %15 ], [ %17, %16 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = call i32 @getchar() #15
  br label %15, !llvm.loop !10

23:                                               ; preds = %18
  %24 = icmp eq i32 %14, 121
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  br label %29

26:                                               ; preds = %23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %27) #20
  br label %29

29:                                               ; preds = %26, %25, %8, %3
  %.0 = phi i32 [ 1, %3 ], [ 1, %25 ], [ 0, %26 ], [ 0, %8 ]
  ret i32 %.0
}

declare dso_local i32 @close(i32 noundef) #0

; Function Attrs: nounwind
declare dso_local i32 @isatty(i32 noundef) #4

declare dso_local i32 @getchar() #0

declare dso_local %struct.gsm_state* @gsm_create() #0

declare dso_local i32 @gsm_option(%struct.gsm_state* noundef, i32 noundef, i32* noundef) #0

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #0

declare dso_local void @gsm_destroy(%struct.gsm_state* noundef) #0

declare dso_local i32 @gsm_decode(%struct.gsm_state* noundef, i8* noundef, i16* noundef) #0

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #11

declare dso_local void @gsm_encode(%struct.gsm_state* noundef, i16* noundef, i8* noundef) #0

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #12

; Function Attrs: nounwind
declare dso_local i32 @utime(i8* noundef, %struct.utimbuf* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @fchmod(i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @fchown(i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #14

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #12 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { cold }

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
