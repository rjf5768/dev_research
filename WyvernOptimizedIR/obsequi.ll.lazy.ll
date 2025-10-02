; ModuleID = './obsequi.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/obsequi/obsequi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, void ()* }
%union.anon = type { void (i32)* }
%struct.__sigset_t = type { [16 x i64] }
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }

@option_string = dso_local global [97 x i8] c"-Wall -O2\0A-DCOUNTBITS16\0A-DLASTBIT16\0A-DCOUNTMOVES_TABLE\0A-DHASHCODEBITS=23\0A-DTWO_STAGE_GENERATION\0A\00", align 16
@lock_file = internal global i8* null, align 8
@stop_minutes = internal global i64 0, align 8
@main_whos_turn = internal global i8 0, align 1
@.str = private unnamed_addr constant [36 x i8] c"winner %c, move (%d,%d), nodes %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Undecided, Best score: %d, nodes %s.\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"/project/test/llvm-test-suite/MultiSource/Applications/obsequi/obsequi.c\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Undecided.\0A\00", align 1
@main_batch = internal global i32 1, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"solve rows %u cols %u %c%s %c\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"Invalid command: '%s'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Too many rows: %u > 30.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Too many cols: %u > 30.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Search space too large: %u > 256.\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%u,%u\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Invalid block string: '%s'.\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Invalid players turn: %c.\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Starting\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"No valid command given.\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"wehl:t:v\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"No help available in this version.\0A\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.17 = private unnamed_addr constant [28 x i8] c"No version info available.\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Invalid option: '-%c'.\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [40 x i8] c"Extra unknown options on command line.\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"`sigaction' failed.\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"`setitimer' failed.\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"Can't open file.\0A\00", align 1
@lock_file_offset = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"%c %15s\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"(%d,%d)\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Invalid row and columns.\0A%s\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c":%c:%d(%d,%d)\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%c %d %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Invalid player.\0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@str = private unnamed_addr constant [27 x i8] c"No version info available.\00", align 1
@str.1 = private unnamed_addr constant [35 x i8] c"No help available in this version.\00", align 1
@str.2 = private unnamed_addr constant [9 x i8] c"Starting\00", align 1
@str.3 = private unnamed_addr constant [9 x i8] c"Starting\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getline_llvm(i8** nocapture noundef %0, i64* nocapture noundef readnone %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(4096) %5, i8 0, i64 4096, i1 false)
  %6 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %7 = call i8* @fgets(i8* noundef nonnull %6, i32 noundef 4095, %struct._IO_FILE* noundef %2) #10
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %12 = call i64 @strlen(i8* noundef nonnull %11) #11
  br label %13

13:                                               ; preds = %10, %9
  %.0 = phi i64 [ -1, %9 ], [ %12, %10 ]
  %14 = icmp sgt i64 %.0, -1
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %16 = load i8*, i8** %0, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = add nsw i64 %.0, 1
  %20 = call noalias i8* @malloc(i64 noundef %19) #10
  br label %25

21:                                               ; preds = %15
  %22 = load i8*, i8** %0, align 8
  %23 = add nsw i64 %.0, 1
  %24 = call i8* @realloc(i8* noundef %22, i64 noundef %23) #10
  br label %25

25:                                               ; preds = %21, %18
  %storemerge = phi i8* [ %24, %21 ], [ %20, %18 ]
  store i8* %storemerge, i8** %0, align 8
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0
  %27 = add nsw i64 %.0, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %storemerge, i8* nonnull align 16 %26, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %25, %13
  ret i64 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  call void @decode_switches(i32 noundef %0, i8** noundef %1)
  %6 = load i8*, i8** @lock_file, align 8
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %12, label %7

7:                                                ; preds = %2
  call void @get_solve_command_from_lock_file()
  %8 = load i64, i64* @stop_minutes, align 8
  %.not4 = icmp eq i64 %8, 0
  br i1 %.not4, label %11, label %9

9:                                                ; preds = %7
  %10 = load i64, i64* @stop_minutes, align 8
  call void @set_stop_alrm(i64 noundef %10)
  br label %11

11:                                               ; preds = %9, %7
  br label %13

12:                                               ; preds = %2
  call void @get_solve_command()
  br label %13

13:                                               ; preds = %12, %11
  call void @sig_int_setup()
  %14 = load i8, i8* @main_whos_turn, align 1
  %15 = call i32 @search_for_move(i8 noundef signext %14, i32* noundef nonnull %3, i32* noundef nonnull %4, i64* noundef nonnull %5) #10
  call void @sig_block()
  %16 = load i64, i64* %5, align 8
  %17 = call i8* @u64bit_to_string(i64 noundef %16) #10
  %18 = icmp sgt i32 %15, 4999
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i8, i8* @main_whos_turn, align 1
  %21 = sext i8 %20 to i32
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef %21, i32 noundef %22, i32 noundef %23, i8* noundef %17) #10
  br label %35

25:                                               ; preds = %13
  br i1 true, label %26, label %33

26:                                               ; preds = %25
  %27 = load i8, i8* @main_whos_turn, align 1
  %28 = icmp eq i8 %27, 86
  %29 = select i1 %28, i32 72, i32 86
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef %29, i32 noundef %30, i32 noundef %31, i8* noundef %17) #10
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %26
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = call i32 @fflush(%struct._IO_FILE* noundef %36) #10
  %38 = load i8*, i8** @lock_file, align 8
  %.not1 = icmp eq i8* %38, null
  br i1 %.not1, label %52, label %39

39:                                               ; preds = %35
  %40 = icmp sgt i32 %15, 4999
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = load i8, i8* @main_whos_turn, align 1
  br label %51

43:                                               ; preds = %39
  %44 = icmp slt i32 %15, -4999
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  %46 = load i8, i8* @main_whos_turn, align 1
  %47 = icmp eq i8 %46, 86
  %48 = select i1 %47, i8 72, i8 86
  br label %50

49:                                               ; preds = %43
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 149, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %50

50:                                               ; preds = %49, %45
  %.0 = phi i8 [ %48, %45 ], [ 0, %49 ]
  br label %51

51:                                               ; preds = %50, %41
  %.1 = phi i8 [ %42, %41 ], [ %.0, %50 ]
  call void @write_to_lock_file(i8 noundef signext %.1, i8* noundef %17)
  br label %52

52:                                               ; preds = %51, %35
  %53 = call i32 (i32, i32, ...) @fcntl(i32 noundef 0, i32 noundef 4, i32 noundef 0) #10
  %54 = load i32, i32* @main_batch, align 4
  %.not2 = icmp eq i32 %54, 0
  br i1 %.not2, label %55, label %60

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %58, %55
  %57 = call i32 @getchar() #10
  %.not3 = icmp eq i32 %57, -1
  br i1 %.not3, label %59, label %58

58:                                               ; preds = %56
  br label %56, !llvm.loop !4

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %52
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @decode_switches(i32 noundef %0, i8** noundef %1) #0 {
  br label %3

3:                                                ; preds = %19, %2
  %4 = call i32 @getopt(i32 noundef %0, i8** noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)) #10
  %.not = icmp eq i32 %4, -1
  br i1 %.not, label %20, label %5

5:                                                ; preds = %3
  switch i32 %4, label %18 [
    i32 101, label %6
    i32 104, label %8
    i32 108, label %9
    i32 116, label %12
    i32 118, label %16
    i32 119, label %17
  ]

6:                                                ; preds = %5
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([97 x i8], [97 x i8]* @option_string, i64 0, i64 0)) #10
  call void @exit(i32 noundef 0) #12
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @str.1, i64 0, i64 0))
  call void @exit(i32 noundef 0) #12
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %5
  %10 = load i8*, i8** @optarg, align 8
  %11 = call noalias i8* @strdup(i8* noundef %10) #10
  store i8* %11, i8** @lock_file, align 8
  br label %19

12:                                               ; preds = %5
  %13 = load i8*, i8** @optarg, align 8
  %14 = call i32 @atoi(i8* noundef %13) #11
  %15 = sext i32 %14 to i64
  store i64 %15, i64* @stop_minutes, align 8
  br label %19

16:                                               ; preds = %5
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 0) #12
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %5
  store i32 0, i32* @main_batch, align 4
  br label %19

18:                                               ; preds = %5
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 378, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 noundef %4) #10
  br label %19

19:                                               ; preds = %18, %17, %12, %9
  br label %3, !llvm.loop !6

20:                                               ; preds = %3
  %21 = load i32, i32* @optind, align 4
  %22 = icmp slt i32 %21, %0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 383, i32 noundef 1, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0)) #10
  br label %24

24:                                               ; preds = %23, %20
  ret void

UnifiedUnreachableBlock:                          ; preds = %16, %8, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_stop_alrm(i64 noundef %0) #0 {
  %2 = alloca %struct.sigaction, align 8
  %3 = alloca %struct.itimerval, align 8
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 1
  %5 = call i32 @sigfillset(%struct.__sigset_t* noundef nonnull %4) #10
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 2
  store i32 0, i32* %6, align 8
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 0, i32 0
  store void (i32)* @stop_alrm_handler, void (i32)** %7, align 8
  %8 = call i32 @sigaction(i32 noundef 26, %struct.sigaction* noundef nonnull %2, %struct.sigaction* noundef null) #10
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %1
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 449, i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0)) #10
  br label %10

10:                                               ; preds = %9, %1
  %11 = mul nsw i64 %0, 60
  %12 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i64 0, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i64 0, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = mul nsw i64 %0, 60
  %15 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i64 0, i32 1, i32 0
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i64 0, i32 1, i32 1
  store i64 0, i64* %16, align 8
  %17 = call i32 @setitimer(i32 noundef 1, %struct.itimerval* noundef nonnull %3, %struct.itimerval* noundef null) #10
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %19, label %18

18:                                               ; preds = %10
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 457, i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0)) #10
  br label %19

19:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @search_for_move(i8 noundef signext, i32* noundef, i32* noundef, i64* noundef) #2

declare dso_local i8* @u64bit_to_string(i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local void @_fatal_error_aux(i8* noundef, i32 noundef, i32 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @write_to_lock_file(i8 noundef signext %0, i8* noundef %1) #0 {
  %3 = load i8*, i8** @lock_file, align 8
  %4 = call noalias %struct._IO_FILE* @fopen(i8* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #10
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 530, i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0)) #10
  br label %7

7:                                                ; preds = %6, %2
  %8 = load i8*, i8** @lock_file, align 8
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) %8)
  %9 = load i32, i32* @lock_file_offset, align 4
  %10 = sext i32 %9 to i64
  %11 = call i32 @fseek(%struct._IO_FILE* noundef %4, i64 noundef %10, i32 noundef 0) #10
  %12 = sext i8 %0 to i32
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 noundef %12, i8* noundef %1) #10
  %14 = call i32 @fflush(%struct._IO_FILE* noundef %4) #10
  %15 = call i32 @fclose(%struct._IO_FILE* noundef %4) #10
  ret void
}

declare dso_local i32 @fcntl(i32 noundef, i32 noundef, ...) #2

declare dso_local i32 @getchar() #2

; Function Attrs: noinline nounwind uwtable
define internal void @get_solve_command() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [30 x [30 x i32]], align 16
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i64 0, i64* %2, align 8
  br label %10

10:                                               ; preds = %.backedge, %0
  %.0 = phi i8* [ null, %0 ], [ %.0.be, %.backedge ]
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %12 = call i64 @getline_llvm(i8** noundef nonnull %1, i64* noundef nonnull %2, %struct._IO_FILE* noundef %11)
  %.not = icmp eq i64 %12, -1
  br i1 %.not, label %.loopexit2, label %13

13:                                               ; preds = %10
  %.not7 = icmp eq i64 %12, 0
  br i1 %.not7, label %22, label %14

14:                                               ; preds = %13
  %.not8 = icmp eq i8* %.0, null
  br i1 %.not8, label %18, label %15

15:                                               ; preds = %14
  %16 = load i64, i64* %2, align 8
  %17 = call i8* @realloc(i8* noundef nonnull %.0, i64 noundef %16) #10
  br label %21

18:                                               ; preds = %14
  %19 = load i64, i64* %2, align 8
  %20 = call noalias i8* @malloc(i64 noundef %19) #10
  br label %21

21:                                               ; preds = %18, %15
  %.1 = phi i8* [ %17, %15 ], [ %20, %18 ]
  br label %23

22:                                               ; preds = %13
  br label %.backedge

.backedge:                                        ; preds = %22, %29, %36, %43, %52, %84, %115, %126
  %.0.be = phi i8* [ %.1, %29 ], [ %.1, %36 ], [ %.1, %43 ], [ %.1, %52 ], [ %.1, %84 ], [ %.1, %115 ], [ %.1, %126 ], [ %.0, %22 ]
  br label %10, !llvm.loop !7

23:                                               ; preds = %21
  %24 = load i8*, i8** %1, align 8
  %25 = add i64 %12, -1
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8 0, i8* %26, align 1
  %27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %24, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %3, i32* noundef nonnull %4, i8* noundef nonnull %6, i8* noundef %.1, i8* noundef nonnull %7) #10
  %.not9 = icmp eq i32 %27, 3
  br i1 %.not9, label %33, label %28

28:                                               ; preds = %23
  %.not19 = icmp eq i32 %27, 5
  br i1 %.not19, label %33, label %29

29:                                               ; preds = %28
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i8*, i8** %1, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* noundef %31) #13
  br label %.backedge

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %3, align 4
  %35 = icmp ugt i32 %34, 30
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 noundef %38) #13
  br label %.backedge

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp ugt i32 %41, 30
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 noundef %45) #13
  br label %.backedge

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = mul i32 %48, %49
  %51 = icmp ugt i32 %50, 256
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = mul i32 %54, %55
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 noundef %56) #13
  br label %.backedge

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %74, %58
  %storemerge = phi i32 [ 0, %58 ], [ %76, %74 ]
  store i32 %storemerge, i32* %8, align 4
  %60 = icmp slt i32 %storemerge, 30
  br i1 %60, label %61, label %77

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %70, %61
  %storemerge18 = phi i32 [ 0, %61 ], [ %72, %70 ]
  store i32 %storemerge18, i32* %9, align 4
  %63 = icmp slt i32 %storemerge18, 30
  br i1 %63, label %64, label %73

64:                                               ; preds = %62
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %66, i64 %68
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  br label %62, !llvm.loop !8

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  br label %59, !llvm.loop !9

77:                                               ; preds = %59
  %78 = icmp eq i32 %27, 5
  br i1 %78, label %79, label %117

79:                                               ; preds = %77
  %80 = load i8, i8* %6, align 1
  %81 = sext i8 %80 to i32
  %82 = call i32 @toupper(i32 noundef %81) #11
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %6, align 1
  %sext.mask13 = and i32 %82, 255
  %.not12 = icmp eq i32 %sext.mask13, 66
  br i1 %.not12, label %88, label %84

84:                                               ; preds = %79
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %86 = load i8*, i8** %1, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* noundef %86) #13
  br label %.backedge

88:                                               ; preds = %79
  %89 = call i8* @strtok(i8* noundef %.1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #10
  br label %90

90:                                               ; preds = %105, %88
  %.01 = phi i8* [ %89, %88 ], [ %111, %105 ]
  %.not14 = icmp eq i8* %.01, null
  br i1 %.not14, label %.loopexit, label %91

91:                                               ; preds = %90
  %92 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %.01, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %8, i32* noundef nonnull %9) #10
  %.not15 = icmp eq i32 %92, 2
  br i1 %.not15, label %96, label %93

93:                                               ; preds = %91
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %.01) #13
  store i8 0, i8* %6, align 1
  br label %112

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %3, align 4
  %.not16 = icmp ult i32 %97, %98
  br i1 %.not16, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %4, align 4
  %.not17 = icmp ult i32 %100, %101
  br i1 %.not17, label %105, label %102

102:                                              ; preds = %99, %96
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %103, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* noundef nonnull %.01) #13
  store i8 0, i8* %6, align 1
  br label %112

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %107, i64 %109
  store i32 1, i32* %110, align 4
  %111 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #10
  br label %90, !llvm.loop !10

.loopexit:                                        ; preds = %90
  br label %112

112:                                              ; preds = %.loopexit, %102, %93
  %113 = load i8, i8* %6, align 1
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %.backedge

116:                                              ; preds = %112
  br label %119

117:                                              ; preds = %77
  %118 = load i8, i8* %6, align 1
  store i8 %118, i8* %7, align 1
  br label %119

119:                                              ; preds = %117, %116
  %120 = load i8, i8* %7, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 @toupper(i32 noundef %121) #11
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %7, align 1
  %sext.mask = and i32 %122, 255
  %.not10 = icmp eq i32 %sext.mask, 86
  br i1 %.not10, label %131, label %124

124:                                              ; preds = %119
  %125 = load i8, i8* %7, align 1
  %.not11 = icmp eq i8 %125, 72
  br i1 %.not11, label %131, label %126

126:                                              ; preds = %124
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %128 = load i8, i8* %7, align 1
  %129 = sext i8 %128 to i32
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 noundef %129) #13
  br label %.backedge

131:                                              ; preds = %124, %119
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.2, i64 0, i64 0))
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %133 = call i32 @fflush(%struct._IO_FILE* noundef %132) #10
  br label %134

.loopexit2:                                       ; preds = %10
  br label %134

134:                                              ; preds = %.loopexit2, %131
  %.2 = phi i8* [ %.1, %131 ], [ %.0, %.loopexit2 ]
  %135 = icmp eq i64 %12, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 275, i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0)) #10
  br label %137

137:                                              ; preds = %136, %134
  %138 = load i8, i8* %7, align 1
  store i8 %138, i8* @main_whos_turn, align 1
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* %4, align 4
  %141 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 0
  call void @initialize_board(i32 noundef %139, i32 noundef %140, [30 x i32]* noundef nonnull %141) #10
  %142 = load i8*, i8** %1, align 8
  call void @free(i8* noundef %142) #10
  call void @free(i8* noundef %.2) #10
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @toupper(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) #4

declare dso_local void @initialize_board(i32 noundef, i32 noundef, [30 x i32]* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32 noundef, i8** noundef, i8* noundef) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #6

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @sig_int_setup() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i64 0, i32 1
  %3 = call i32 @sigfillset(%struct.__sigset_t* noundef nonnull %2) #10
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i64 0, i32 2
  store i32 0, i32* %4, align 8
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i64 0, i32 0, i32 0
  store void (i32)* @sig_int_handler, void (i32)** %5, align 8
  %6 = call i32 @sigaction(i32 noundef 2, %struct.sigaction* noundef nonnull %1, %struct.sigaction* noundef null) #10
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %0
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 418, i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0)) #10
  br label %8

8:                                                ; preds = %7, %0
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sigfillset(%struct.__sigset_t* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal void @sig_int_handler(i32 noundef %0) #0 {
  %2 = call i8* (...) @current_search_state() #10
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef %2) #13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5) #10
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sigaction(i32 noundef, %struct.sigaction* noundef, %struct.sigaction* noundef) #4

declare dso_local i8* @current_search_state(...) #2

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @stop_alrm_handler(i32 noundef %0) #7 {
  call void @exit(i32 noundef 0) #12
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @setitimer(i32 noundef, %struct.itimerval* noundef, %struct.itimerval* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal void @sig_block() #0 {
  %1 = alloca %struct.__sigset_t, align 8
  %2 = call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull %1) #10
  %3 = call i32 @sigaddset(%struct.__sigset_t* noundef nonnull %1, i32 noundef 14) #10
  %4 = call i32 @sigaddset(%struct.__sigset_t* noundef nonnull %1, i32 noundef 2) #10
  %5 = call i32 @sigprocmask(i32 noundef 0, %struct.__sigset_t* noundef nonnull %1, %struct.__sigset_t* noundef null) #10
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sigemptyset(%struct.__sigset_t* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @sigaddset(%struct.__sigset_t* noundef, i32 noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @sigprocmask(i32 noundef, %struct.__sigset_t* noundef, %struct.__sigset_t* noundef) #4

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @get_solve_command_from_lock_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [30 x [30 x i32]], align 16
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* null, i8** %1, align 8
  store i64 0, i64* %2, align 8
  store i8 0, i8* %6, align 1
  %10 = load i8*, i8** @lock_file, align 8
  %11 = call noalias %struct._IO_FILE* @fopen(i8* noundef %10, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #10
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 563, i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0)) #10
  br label %14

14:                                               ; preds = %13, %0
  %15 = load i8*, i8** @lock_file, align 8
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) %15)
  br label %16

16:                                               ; preds = %23, %14
  %17 = call i64 @ftell(%struct._IO_FILE* noundef %11) #10
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @lock_file_offset, align 4
  %19 = call i64 @getline_llvm(i8** noundef nonnull %1, i64* noundef nonnull %2, %struct._IO_FILE* noundef %11)
  %.not = icmp eq i64 %19, -1
  br i1 %.not, label %.loopexit, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %1, align 8
  %22 = load i8, i8* %21, align 1
  %.not2 = icmp eq i8 %22, 65
  br i1 %.not2, label %24, label %23

23:                                               ; preds = %20
  br label %16, !llvm.loop !11

24:                                               ; preds = %20
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* noundef %25) #10
  %27 = icmp ult i64 %19, 19
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i8*, i8** %1, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 577, i32 noundef 1, i8* noundef %29) #10
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i8*, i8** %1, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 18
  %33 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32* noundef nonnull %3, i32* noundef nonnull %4) #10
  %.not3 = icmp eq i32 %33, 2
  br i1 %.not3, label %36, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %1, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 580, i32 noundef 1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* noundef %35) #10
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %3, align 4
  %38 = icmp ugt i32 %37, 30
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 583, i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 noundef %40) #10
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* %4, align 4
  %43 = icmp ugt i32 %42, 30
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 585, i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 noundef %45) #10
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %3, align 4
  %49 = mul i32 %47, %48
  %50 = icmp ugt i32 %49, 128
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %3, align 4
  %54 = mul i32 %52, %53
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 587, i32 noundef 1, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 noundef %54) #10
  br label %55

55:                                               ; preds = %51, %46
  br label %56

56:                                               ; preds = %71, %55
  %storemerge = phi i32 [ 0, %55 ], [ %73, %71 ]
  store i32 %storemerge, i32* %7, align 4
  %57 = icmp slt i32 %storemerge, 30
  br i1 %57, label %58, label %74

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %67, %58
  %storemerge7 = phi i32 [ 0, %58 ], [ %69, %67 ]
  store i32 %storemerge7, i32* %8, align 4
  %60 = icmp slt i32 %storemerge7, 30
  br i1 %60, label %61, label %70

61:                                               ; preds = %59
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %63, i64 %65
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  br label %59, !llvm.loop !12

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  br label %56, !llvm.loop !13

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %159, %74
  %.0 = phi i32 [ 18, %74 ], [ %77, %159 ]
  %76 = load i8*, i8** %1, align 8
  %77 = call i32 @next_valid_pos(i8* noundef %76, i32 noundef %.0)
  %78 = sext i32 %77 to i64
  %.not4 = icmp ugt i64 %19, %78
  br i1 %.not4, label %80, label %79

79:                                               ; preds = %75
  br label %160

80:                                               ; preds = %75
  %81 = load i8*, i8** %1, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %78
  %83 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %82, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %6, i32* noundef nonnull %9, i32* noundef nonnull %7, i32* noundef nonnull %8) #10
  %.not5 = icmp eq i32 %83, 4
  br i1 %.not5, label %85, label %84

84:                                               ; preds = %80
  br label %160

85:                                               ; preds = %80
  %86 = load i8, i8* %6, align 1
  %87 = sext i8 %86 to i32
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32 noundef %87, i32 noundef %88, i32 noundef %89) #10
  %91 = load i8, i8* %6, align 1
  %92 = icmp eq i8 %91, 86
  br i1 %92, label %93, label %123

93:                                               ; preds = %85
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %110, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %112

110:                                              ; preds = %101, %93
  %111 = load i8*, i8** %1, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 609, i32 noundef 1, i8* noundef %111) #10
  br label %112

112:                                              ; preds = %110, %101
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %115, i64 %117
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = sext i32 %116 to i64
  %122 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %120, i64 %121
  store i32 1, i32* %122, align 4
  br label %159

123:                                              ; preds = %85
  %124 = load i8, i8* %6, align 1
  %125 = icmp eq i8 %124, 72
  br i1 %125, label %126, label %157

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %143, label %134

134:                                              ; preds = %126
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %145

143:                                              ; preds = %134, %126
  %144 = load i8*, i8** %1, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 613, i32 noundef 1, i8* noundef %144) #10
  br label %145

145:                                              ; preds = %143, %134
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %147, i64 %150
  store i32 1, i32* %151, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 %153, i64 %155
  store i32 1, i32* %156, align 4
  br label %158

157:                                              ; preds = %123
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 615, i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0)) #10
  br label %158

158:                                              ; preds = %157, %145
  br label %159

159:                                              ; preds = %158, %112
  br label %75

160:                                              ; preds = %84, %79
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.3, i64 0, i64 0))
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %162 = call i32 @fflush(%struct._IO_FILE* noundef %161) #10
  br label %163

.loopexit:                                        ; preds = %16
  br label %163

163:                                              ; preds = %.loopexit, %160
  %164 = icmp eq i64 %19, -1
  br i1 %164, label %165, label %166

165:                                              ; preds = %163
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 624, i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0)) #10
  br label %166

166:                                              ; preds = %165, %163
  %167 = load i32, i32* @lock_file_offset, align 4
  %168 = sext i32 %167 to i64
  %169 = call i32 @fseek(%struct._IO_FILE* noundef %11, i64 noundef %168, i32 noundef 0) #10
  %fputc = call i32 @fputc(i32 87, %struct._IO_FILE* %11)
  %170 = call i32 @fflush(%struct._IO_FILE* noundef %11) #10
  %171 = load i8, i8* %6, align 1
  %172 = icmp eq i8 %171, 86
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  store i8 72, i8* @main_whos_turn, align 1
  br label %180

174:                                              ; preds = %166
  %175 = load i8, i8* %6, align 1
  %176 = icmp eq i8 %175, 72
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  store i8 86, i8* @main_whos_turn, align 1
  br label %179

178:                                              ; preds = %174
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 632, i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0)) #10
  br label %179

179:                                              ; preds = %178, %177
  br label %180

180:                                              ; preds = %179, %173
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* %4, align 4
  %183 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %5, i64 0, i64 0
  call void @initialize_board(i32 noundef %181, i32 noundef %182, [30 x i32]* noundef nonnull %183) #10
  %184 = load i8*, i8** %1, align 8
  call void @free(i8* noundef %184) #10
  %185 = call i32 @fclose(%struct._IO_FILE* noundef %11) #10
  ret void
}

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal i32 @next_valid_pos(i8* nocapture noundef readonly %0, i32 noundef %1) #8 {
  br label %3

3:                                                ; preds = %20, %2
  %.01 = phi i32 [ %1, %2 ], [ %21, %20 ]
  %.0 = phi i32 [ 0, %2 ], [ %.2, %20 ]
  %4 = sext i32 %.01 to i64
  %5 = getelementptr inbounds i8, i8* %0, i64 %4
  %6 = load i8, i8* %5, align 1
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %.loopexit, label %7

7:                                                ; preds = %3
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds i8, i8* %0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = icmp eq i8 %10, 32
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %.not4 = icmp eq i32 %.0, 0
  br i1 %.not4, label %14, label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13, %12
  %.1 = phi i32 [ 2, %13 ], [ %.0, %12 ]
  br label %19

15:                                               ; preds = %7
  %16 = icmp eq i32 %.0, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %22

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %14
  %.2 = phi i32 [ %.1, %14 ], [ 1, %18 ]
  br label %20

20:                                               ; preds = %19
  %21 = add nsw i32 %.01, 1
  br label %3, !llvm.loop !14

.loopexit:                                        ; preds = %3
  br label %22

22:                                               ; preds = %.loopexit, %17
  ret i32 %.01
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { cold nounwind }

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
