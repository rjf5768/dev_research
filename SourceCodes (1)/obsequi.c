; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/obsequi/obsequi.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getline_llvm(i8** noundef %0, i64* noundef %1, %struct._IO_FILE* noundef %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 4096, i1 false)
  store i64 0, i64* %8, align 8
  %10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %12 = call i8* @fgets(i8* noundef %10, i32 noundef 4095, %struct._IO_FILE* noundef %11)
  %13 = icmp eq i8* null, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i64 -1, i64* %8, align 8
  br label %18

15:                                               ; preds = %3
  %16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %17 = call i64 @strlen(i8* noundef %16) #7
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %15, %14
  %19 = load i64, i64* %8, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %26, 1
  %28 = call noalias i8* @malloc(i64 noundef %27) #8
  %29 = load i8**, i8*** %4, align 8
  store i8* %28, i8** %29, align 8
  br label %37

30:                                               ; preds = %21
  %31 = load i8**, i8*** %4, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i8* @realloc(i8* noundef %32, i64 noundef %34) #8
  %36 = load i8**, i8*** %4, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 16 %40, i64 %42, i1 false)
  br label %43

43:                                               ; preds = %37, %18
  %44 = load i64, i64* %8, align 8
  ret i64 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  call void @decode_switches(i32 noundef %12, i8** noundef %13)
  %14 = load i8*, i8** @lock_file, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  call void @get_solve_command_from_lock_file()
  %17 = load i64, i64* @stop_minutes, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @stop_minutes, align 8
  call void @set_stop_alrm(i64 noundef %20)
  br label %21

21:                                               ; preds = %19, %16
  br label %23

22:                                               ; preds = %2
  call void @get_solve_command()
  br label %23

23:                                               ; preds = %22, %21
  call void @sig_int_setup()
  %24 = load i8, i8* @main_whos_turn, align 1
  %25 = call i32 @search_for_move(i8 noundef signext %24, i32* noundef %6, i32* noundef %7, i64* noundef %8)
  store i32 %25, i32* %9, align 4
  call void @sig_block()
  %26 = load i64, i64* %8, align 8
  %27 = call i8* @u64bit_to_string(i64 noundef %26)
  store i8* %27, i8** %10, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp sge i32 %28, 5000
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i8, i8* @main_whos_turn, align 1
  %32 = sext i8 %31 to i32
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef %32, i32 noundef %33, i32 noundef %34, i8* noundef %35)
  br label %55

37:                                               ; preds = %23
  %38 = load i32, i32* %9, align 4
  %39 = icmp sle i32 %38, 5000
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i8, i8* @main_whos_turn, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 86
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 72, i32 86
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 noundef %45, i32 noundef %46, i32 noundef %47, i8* noundef %48)
  br label %54

50:                                               ; preds = %37
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 noundef %51, i8* noundef %52)
  br label %54

54:                                               ; preds = %50, %40
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %57 = call i32 @fflush(%struct._IO_FILE* noundef %56)
  %58 = load i8*, i8** @lock_file, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  store i8 0, i8* %11, align 1
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %61, 5000
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i8, i8* @main_whos_turn, align 1
  store i8 %64, i8* %11, align 1
  br label %77

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = icmp sle i32 %66, -5000
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i8, i8* @main_whos_turn, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 86
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 72, i32 86
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %11, align 1
  br label %76

75:                                               ; preds = %65
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 149, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %75, %68
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i8, i8* %11, align 1
  %79 = load i8*, i8** %10, align 8
  call void @write_to_lock_file(i8 noundef signext %78, i8* noundef %79)
  br label %80

80:                                               ; preds = %77, %55
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef 0, i32 noundef 4, i32 noundef 0)
  %82 = load i32, i32* @main_batch, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %88, %84
  %86 = call i32 @getchar()
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %85, !llvm.loop !4

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %80
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @decode_switches(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %29, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 noundef %7, i8** noundef %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)) #8
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %27 [
    i32 101, label %13
    i32 104, label %15
    i32 108, label %17
    i32 116, label %20
    i32 118, label %24
    i32 119, label %26
  ]

13:                                               ; preds = %11
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @option_string, i64 0, i64 0))
  call void @exit(i32 noundef 0) #9
  unreachable

15:                                               ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  call void @exit(i32 noundef 0) #9
  unreachable

17:                                               ; preds = %11
  %18 = load i8*, i8** @optarg, align 8
  %19 = call noalias i8* @strdup(i8* noundef %18) #8
  store i8* %19, i8** @lock_file, align 8
  br label %29

20:                                               ; preds = %11
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @atoi(i8* noundef %21) #7
  %23 = sext i32 %22 to i64
  store i64 %23, i64* @stop_minutes, align 8
  br label %29

24:                                               ; preds = %11
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  call void @exit(i32 noundef 0) #9
  unreachable

26:                                               ; preds = %11
  store i32 0, i32* @main_batch, align 4
  br label %29

27:                                               ; preds = %11
  %28 = load i32, i32* %5, align 4
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 378, i32 noundef 1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 noundef %28)
  br label %29

29:                                               ; preds = %27, %26, %20, %17
  br label %6, !llvm.loop !6

30:                                               ; preds = %6
  %31 = load i32, i32* @optind, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 383, i32 noundef 1, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0))
  br label %35

35:                                               ; preds = %34, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_stop_alrm(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sigaction, align 8
  %4 = alloca %struct.itimerval, align 8
  store i64 %0, i64* %2, align 8
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  %6 = call i32 @sigfillset(%struct.__sigset_t* noundef %5) #8
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to void (i32)**
  store void (i32)* @stop_alrm_handler, void (i32)** %9, align 8
  %10 = call i32 @sigaction(i32 noundef 26, %struct.sigaction* noundef %3, %struct.sigaction* noundef null) #8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 449, i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i64, i64* %2, align 8
  %15 = mul nsw i64 %14, 60
  %16 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %2, align 8
  %21 = mul nsw i64 %20, 60
  %22 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 1
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 1
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = call i32 @setitimer(i32 noundef 1, %struct.itimerval* noundef %4, %struct.itimerval* noundef null) #8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 457, i32 noundef 1, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0))
  br label %29

29:                                               ; preds = %28, %13
  ret void
}

declare dso_local i32 @search_for_move(i8 noundef signext, i32* noundef, i32* noundef, i64* noundef) #2

declare dso_local i8* @u64bit_to_string(i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local void @_fatal_error_aux(i8* noundef, i32 noundef, i32 noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @write_to_lock_file(i8 noundef signext %0, i8* noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i8 %0, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 8
  %6 = load i8*, i8** @lock_file, align 8
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  store %struct._IO_FILE* %7, %struct._IO_FILE** %5, align 8
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 530, i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i8*, i8** @lock_file, align 8
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef %11)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %14 = load i32, i32* @lock_file_offset, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 @fseek(%struct._IO_FILE* noundef %13, i64 noundef %15, i32 noundef 0)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %18 = load i8, i8* %3, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 noundef %19, i8* noundef %20)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %23 = call i32 @fflush(%struct._IO_FILE* noundef %22)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %25 = call i32 @fclose(%struct._IO_FILE* noundef %24)
  ret void
}

declare dso_local i32 @fcntl(i32 noundef, i32 noundef, ...) #2

declare dso_local i32 @getchar() #2

; Function Attrs: noinline nounwind uwtable
define internal void @get_solve_command() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [30 x [30 x i32]], align 16
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  store i8* null, i8** %2, align 8
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %166, %150, %108, %69, %60, %53, %46, %32, %0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %16 = call i64 @getline_llvm(i8** noundef %1, i64* noundef %3, %struct._IO_FILE* noundef %15)
  store i64 %16, i64* %4, align 8
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %18, label %175

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i8*, i8** %2, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i8*, i8** %2, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i8* @realloc(i8* noundef %25, i64 noundef %26) #8
  store i8* %27, i8** %2, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load i64, i64* %3, align 8
  %30 = call noalias i8* @malloc(i64 noundef %29) #8
  store i8* %30, i8** %2, align 8
  br label %31

31:                                               ; preds = %28, %24
  br label %33

32:                                               ; preds = %18
  br label %14, !llvm.loop !7

33:                                               ; preds = %31
  %34 = load i8*, i8** %1, align 8
  %35 = load i64, i64* %4, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %1, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %38, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* noundef %5, i32* noundef %6, i8* noundef %8, i8* noundef %39, i8* noundef %9) #8
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 5
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = load i8*, i8** %1, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* noundef %48)
  br label %14, !llvm.loop !7

50:                                               ; preds = %43, %33
  %51 = load i32, i32* %5, align 4
  %52 = icmp ugt i32 %51, 30
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 noundef %55)
  br label %14, !llvm.loop !7

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = icmp ugt i32 %58, 30
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 noundef %62)
  br label %14, !llvm.loop !7

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = mul i32 %65, %66
  %68 = icmp ugt i32 %67, 256
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = mul i32 %71, %72
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 noundef %73)
  br label %14, !llvm.loop !7

75:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %94, %75
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 30
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %90, %79
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 30
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %7, i64 0, i64 %85
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [30 x i32], [30 x i32]* %86, i64 0, i64 %88
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %80, !llvm.loop !8

93:                                               ; preds = %80
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %76, !llvm.loop !9

97:                                               ; preds = %76
  %98 = load i32, i32* %12, align 4
  %99 = icmp eq i32 %98, 5
  br i1 %99, label %100, label %152

100:                                              ; preds = %97
  %101 = load i8, i8* %8, align 1
  %102 = sext i8 %101 to i32
  %103 = call i32 @toupper(i32 noundef %102) #7
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %8, align 1
  %105 = load i8, i8* %8, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 66
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %110 = load i8*, i8** %1, align 8
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %109, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* noundef %110)
  br label %14, !llvm.loop !7

112:                                              ; preds = %100
  %113 = load i8*, i8** %2, align 8
  %114 = call i8* @strtok(i8* noundef %113, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #8
  store i8* %114, i8** %13, align 8
  br label %115

115:                                              ; preds = %138, %112
  %116 = load i8*, i8** %13, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %146

118:                                              ; preds = %115
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %119, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* noundef %10, i32* noundef %11) #8
  %121 = icmp ne i32 %120, 2
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %123, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* noundef %124)
  store i8 0, i8* %8, align 1
  br label %146

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp uge i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp uge i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130, %126
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* noundef %136)
  store i8 0, i8* %8, align 1
  br label %146

138:                                              ; preds = %130
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %7, i64 0, i64 %140
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [30 x i32], [30 x i32]* %141, i64 0, i64 %143
  store i32 1, i32* %144, align 4
  %145 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #8
  store i8* %145, i8** %13, align 8
  br label %115, !llvm.loop !10

146:                                              ; preds = %134, %122, %115
  %147 = load i8, i8* %8, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %14, !llvm.loop !7

151:                                              ; preds = %146
  br label %154

152:                                              ; preds = %97
  %153 = load i8, i8* %8, align 1
  store i8 %153, i8* %9, align 1
  br label %154

154:                                              ; preds = %152, %151
  %155 = load i8, i8* %9, align 1
  %156 = sext i8 %155 to i32
  %157 = call i32 @toupper(i32 noundef %156) #7
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %9, align 1
  %159 = load i8, i8* %9, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 86
  br i1 %161, label %162, label %171

162:                                              ; preds = %154
  %163 = load i8, i8* %9, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 72
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %168 = load i8, i8* %9, align 1
  %169 = sext i8 %168 to i32
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %167, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 noundef %169)
  br label %14, !llvm.loop !7

171:                                              ; preds = %162, %154
  %172 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %174 = call i32 @fflush(%struct._IO_FILE* noundef %173)
  br label %175

175:                                              ; preds = %171, %14
  %176 = load i64, i64* %4, align 8
  %177 = icmp eq i64 %176, -1
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 275, i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %179

179:                                              ; preds = %178, %175
  %180 = load i8, i8* %9, align 1
  store i8 %180, i8* @main_whos_turn, align 1
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* %6, align 4
  %183 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %7, i64 0, i64 0
  call void @initialize_board(i32 noundef %181, i32 noundef %182, [30 x i32]* noundef %183)
  %184 = load i8*, i8** %1, align 8
  call void @free(i8* noundef %184) #8
  %185 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %185) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
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

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @sig_int_setup() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %3 = call i32 @sigfillset(%struct.__sigset_t* noundef %2) #8
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  store i32 0, i32* %4, align 8
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  %6 = bitcast %union.anon* %5 to void (i32)**
  store void (i32)* @sig_int_handler, void (i32)** %6, align 8
  %7 = call i32 @sigaction(i32 noundef 2, %struct.sigaction* noundef %1, %struct.sigaction* noundef null) #8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 418, i32 noundef 1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %10

10:                                               ; preds = %9, %0
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sigfillset(%struct.__sigset_t* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal void @sig_int_handler(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* (...) @current_search_state()
  store i8* %4, i8** %3, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef %6)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 @fflush(%struct._IO_FILE* noundef %8)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sigaction(i32 noundef, %struct.sigaction* noundef, %struct.sigaction* noundef) #4

declare dso_local i8* @current_search_state(...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @stop_alrm_handler(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @exit(i32 noundef 0) #9
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @setitimer(i32 noundef, %struct.itimerval* noundef, %struct.itimerval* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal void @sig_block() #0 {
  %1 = alloca %struct.__sigset_t, align 8
  %2 = call i32 @sigemptyset(%struct.__sigset_t* noundef %1) #8
  %3 = call i32 @sigaddset(%struct.__sigset_t* noundef %1, i32 noundef 14) #8
  %4 = call i32 @sigaddset(%struct.__sigset_t* noundef %1, i32 noundef 2) #8
  %5 = call i32 @sigprocmask(i32 noundef 0, %struct.__sigset_t* noundef %1, %struct.__sigset_t* noundef null) #8
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
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [30 x [30 x i32]], align 16
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %1, align 8
  store i8* null, i8** %2, align 8
  store i64 0, i64* %3, align 8
  store i8 0, i8* %9, align 1
  %13 = load i8*, i8** @lock_file, align 8
  %14 = call noalias %struct._IO_FILE* @fopen(i8* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %1, align 8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 563, i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i8*, i8** @lock_file, align 8
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* noundef %18)
  br label %20

20:                                               ; preds = %33, %17
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %22 = call i64 @ftell(%struct._IO_FILE* noundef %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @lock_file_offset, align 4
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %25 = call i64 @getline_llvm(i8** noundef %2, i64* noundef %3, %struct._IO_FILE* noundef %24)
  store i64 %25, i64* %4, align 8
  %26 = icmp ne i64 %25, -1
  br i1 %26, label %27, label %197

27:                                               ; preds = %20
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 65
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %20, !llvm.loop !11

34:                                               ; preds = %27
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* noundef %35)
  %37 = load i64, i64* %4, align 8
  %38 = icmp ule i64 %37, 18
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i8*, i8** %2, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 577, i32 noundef 1, i8* noundef %40)
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 18
  %44 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %43, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i32* noundef %6, i32* noundef %7) #8
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i8*, i8** %2, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 580, i32 noundef 1, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* noundef %47)
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* %6, align 4
  %50 = icmp ugt i32 %49, 30
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 583, i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 noundef %52)
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i32, i32* %7, align 4
  %55 = icmp ugt i32 %54, 30
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 585, i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 noundef %57)
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = mul i32 %59, %60
  %62 = icmp ugt i32 %61, 128
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul i32 %64, %65
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 587, i32 noundef 1, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 noundef %66)
  br label %67

67:                                               ; preds = %63, %58
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 30
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %82, %71
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 30
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %8, i64 0, i64 %77
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [30 x i32], [30 x i32]* %78, i64 0, i64 %80
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %72, !llvm.loop !12

85:                                               ; preds = %72
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %68, !llvm.loop !13

89:                                               ; preds = %68
  store i64 18, i64* %5, align 8
  br label %90

90:                                               ; preds = %89, %192
  %91 = load i8*, i8** %2, align 8
  %92 = load i64, i64* %5, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 @next_valid_pos(i8* noundef %91, i32 noundef %93)
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* %4, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %193

100:                                              ; preds = %90
  %101 = load i8*, i8** %2, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %103, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* noundef %9, i32* noundef %12, i32* noundef %10, i32* noundef %11) #8
  %105 = icmp ne i32 %104, 4
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  br label %193

107:                                              ; preds = %100
  %108 = load i8, i8* %9, align 1
  %109 = sext i8 %108 to i32
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32 noundef %109, i32 noundef %110, i32 noundef %111)
  %113 = load i8, i8* %9, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 86
  br i1 %115, label %116, label %151

116:                                              ; preds = %107
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %8, i64 0, i64 %118
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [30 x i32], [30 x i32]* %119, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %135, label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %8, i64 0, i64 %128
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [30 x i32], [30 x i32]* %129, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %137

135:                                              ; preds = %125, %116
  %136 = load i8*, i8** %2, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 609, i32 noundef 1, i8* noundef %136)
  br label %137

137:                                              ; preds = %135, %125
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %8, i64 0, i64 %140
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [30 x i32], [30 x i32]* %141, i64 0, i64 %143
  store i32 1, i32* %144, align 4
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %8, i64 0, i64 %146
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [30 x i32], [30 x i32]* %147, i64 0, i64 %149
  store i32 1, i32* %150, align 4
  br label %192

151:                                              ; preds = %107
  %152 = load i8, i8* %9, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 72
  br i1 %154, label %155, label %190

155:                                              ; preds = %151
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %8, i64 0, i64 %157
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [30 x i32], [30 x i32]* %158, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %174, label %164

164:                                              ; preds = %155
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %8, i64 0, i64 %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [30 x i32], [30 x i32]* %167, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %176

174:                                              ; preds = %164, %155
  %175 = load i8*, i8** %2, align 8
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 613, i32 noundef 1, i8* noundef %175)
  br label %176

176:                                              ; preds = %174, %164
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %8, i64 0, i64 %178
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [30 x i32], [30 x i32]* %179, i64 0, i64 %182
  store i32 1, i32* %183, align 4
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %8, i64 0, i64 %185
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [30 x i32], [30 x i32]* %186, i64 0, i64 %188
  store i32 1, i32* %189, align 4
  br label %191

190:                                              ; preds = %151
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 615, i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  br label %191

191:                                              ; preds = %190, %176
  br label %192

192:                                              ; preds = %191, %137
  br label %90

193:                                              ; preds = %106, %99
  %194 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %196 = call i32 @fflush(%struct._IO_FILE* noundef %195)
  br label %197

197:                                              ; preds = %193, %20
  %198 = load i64, i64* %4, align 8
  %199 = icmp eq i64 %198, -1
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 624, i32 noundef 1, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %201

201:                                              ; preds = %200, %197
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %203 = load i32, i32* @lock_file_offset, align 4
  %204 = sext i32 %203 to i64
  %205 = call i32 @fseek(%struct._IO_FILE* noundef %202, i64 noundef %204, i32 noundef 0)
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %206, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %209 = call i32 @fflush(%struct._IO_FILE* noundef %208)
  %210 = load i8, i8* %9, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 86
  br i1 %212, label %213, label %214

213:                                              ; preds = %201
  store i8 72, i8* @main_whos_turn, align 1
  br label %221

214:                                              ; preds = %201
  %215 = load i8, i8* %9, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 72
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i8 86, i8* @main_whos_turn, align 1
  br label %220

219:                                              ; preds = %214
  call void (i8*, i32, i32, i8*, ...) @_fatal_error_aux(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 noundef 632, i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  br label %220

220:                                              ; preds = %219, %218
  br label %221

221:                                              ; preds = %220, %213
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %7, align 4
  %224 = getelementptr inbounds [30 x [30 x i32]], [30 x [30 x i32]]* %8, i64 0, i64 0
  call void @initialize_board(i32 noundef %222, i32 noundef %223, [30 x i32]* noundef %224)
  %225 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %225) #8
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %227 = call i32 @fclose(%struct._IO_FILE* noundef %226)
  ret void
}

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @next_valid_pos(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %35, %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 2, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %34

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %38

33:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %28
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %8, !llvm.loop !14

38:                                               ; preds = %32, %8
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
