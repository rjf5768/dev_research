; ModuleID = './timeit.ll'
source_filename = "/project/test/llvm-test-suite/tools/timeit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }
%struct.__sigset_t = type { [16 x i64] }
%struct.rlimit = type { i64, i64 }

@g_program_name = internal global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--posix\00", align 1
@g_posix_mode = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"--timeout\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"error: %s argument requires an option\0A\00", align 1
@g_timeout_in_seconds = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"--summary\00", align 1
@g_summary_file = internal global i8* null, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"--redirect-input\00", align 1
@g_target_redirect_input = internal global i8* null, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"--redirect-output\00", align 1
@g_target_redirect_stdout = internal global i8* null, align 8
@g_target_redirect_stderr = internal global i8* null, align 8
@.str.10 = private unnamed_addr constant [18 x i8] c"--redirect-stdout\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"--redirect-stderr\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"--append-exitstatus\00", align 1
@g_append_exitstats = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"--chdir\00", align 1
@g_target_exec_directory = internal global i8* null, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"--limit-\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"--limit-cpu\00", align 1
@g_target_cpu_limit = internal global i64 -1, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"--limit-stack-size\00", align 1
@g_target_stack_size_limit = internal global i64 -1, align 8
@.str.18 = private unnamed_addr constant [18 x i8] c"--limit-data-size\00", align 1
@g_target_data_size_limit = internal global i64 -1, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"--limit-rss-size\00", align 1
@g_target_rss_size_limit = internal global i64 -1, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"--limit-file-size\00", align 1
@g_target_file_size_limit = internal global i64 -1, align 8
@.str.21 = private unnamed_addr constant [13 x i8] c"--limit-core\00", align 1
@g_target_core_limit = internal global i64 -1, align 8
@.str.22 = private unnamed_addr constant [19 x i8] c"--limit-file-count\00", align 1
@g_target_file_count_limit = internal global i64 -1, align 8
@.str.23 = private unnamed_addr constant [25 x i8] c"--limit-subprocess-count\00", align 1
@g_target_subprocess_count_limit = internal global i64 -1, align 8
@.str.24 = private unnamed_addr constant [36 x i8] c"error: invalid limit argument '%s'\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"error: invalid argument '%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"error: no command (or arguments) was given\0A\00", align 1
@g_target_program = internal global i8* null, align 8
@.str.27 = private unnamed_addr constant [47 x i8] c"usage: %s [options] command ... arguments ...\0A\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"  %-20s %s\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"-h, --help\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Show this help text.\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"-p, --posix\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"Report time in /usr/bin/time POSIX format.\0A\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"-t, --timeout <N>\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"Execute the subprocess with a timeout of N seconds.\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"-c, --chdir <PATH>\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"Execute the subprocess in the given working directory.\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"--summary <PATH>\00", align 1
@.str.39 = private unnamed_addr constant [63 x i8] c"Write monitored process summary (exit code and time) to PATH.\0A\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"--redirect-output <PATH>\00", align 1
@.str.41 = private unnamed_addr constant [76 x i8] c"\0A                       Redirect stdout and stderr for the target to PATH.\0A\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"--redirect-stdout <PATH>\00", align 1
@.str.43 = private unnamed_addr constant [65 x i8] c"\0A                       Redirect stdout for the target to PATH.\0A\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"--redirect-stderr <PATH>\00", align 1
@.str.45 = private unnamed_addr constant [65 x i8] c"\0A                       Redirect stderr for the target to PATH.\0A\00", align 1
@.str.46 = private unnamed_addr constant [24 x i8] c"--redirect-input <PATH>\00", align 1
@.str.47 = private unnamed_addr constant [64 x i8] c"\0A                       Redirect stdin for the target to PATH.\0A\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"--limit-cpu <N>\00", align 1
@.str.49 = private unnamed_addr constant [68 x i8] c"\0A                       Limit the target to N seconds of CPU time.\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"--limit-stack-size <N>\00", align 1
@.str.51 = private unnamed_addr constant [69 x i8] c"\0A                       Limit the target to N bytes of stack space.\0A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"--limit-data-size <N>\00", align 1
@.str.53 = private unnamed_addr constant [62 x i8] c"\0A                       Limit the target to N bytes of data.\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"--limit-rss-size <N>\00", align 1
@.str.55 = private unnamed_addr constant [73 x i8] c"\0A                       Limit the target to N bytes of resident memory.\0A\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"--limit-file-size <N>\00", align 1
@.str.57 = private unnamed_addr constant [82 x i8] c"\0A                       Limit the target to creating files no more than N bytes.\0A\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"--limit-core <N>\00", align 1
@.str.59 = private unnamed_addr constant [80 x i8] c"\0A                       Limit the size for which core files will be generated.\0A\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"--limit-file-count <N>\00", align 1
@.str.61 = private unnamed_addr constant [85 x i8] c"\0A                       Limit the maximum number of open files the target can have.\0A\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"--limit-subprocess-count <N>\00", align 1
@.str.63 = private unnamed_addr constant [96 x i8] c"\0A                       Limit the maximum number of simultaneous processes the target can use.\0A\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@g_monitored_pid = internal global i32 0, align 4
@.str.65 = private unnamed_addr constant [66 x i8] c"%s: error: received signal %d. killing monitored process(es): %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [41 x i8] c"%s: error: received signal %d. exiting.\0A\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"%s: TIMING OUT PROCESS: %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"dup2\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"RLIMIT_CPU\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"RLIMIT_STACK\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"RLIMIT_DATA\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"RLIMIT_RSS\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"RLIMIT_FSIZE\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"RLIMIT_CORE\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"RLIMIT_NOFILE\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"RLIMIT_NPROC\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"execv\00", align 1
@.str.82 = private unnamed_addr constant [57 x i8] c"%s: warning: unable to set limit for %s (to {%lu, %lu})\0A\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"getrusage\00", align 1
@.str.85 = private unnamed_addr constant [42 x i8] c"%s: error: child terminated by signal %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [37 x i8] c"real %12.4f\0Auser %12.4f\0Asys  %12.4f\0A\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"%12.4f real %12.4f user %12.4f sys\0A\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"exit %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"%-10s %.4f\0A\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = load i8*, i8** %1, align 8
  store i8* %3, i8** @g_program_name, align 8
  br label %4

4:                                                ; preds = %173, %2
  %.0 = phi i32 [ 1, %2 ], [ %174, %173 ]
  %.not = icmp eq i32 %.0, %0
  br i1 %.not, label %.loopexit, label %5

5:                                                ; preds = %4
  %6 = sext i32 %.0 to i64
  %7 = getelementptr inbounds i8*, i8** %1, i64 %6
  %8 = load i8*, i8** %7, align 8
  %9 = load i8, i8* %8, align 1
  %.not3 = icmp eq i8 %9, 45
  br i1 %.not3, label %11, label %10

10:                                               ; preds = %5
  br label %175

11:                                               ; preds = %5
  %12 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %.not4 = icmp eq i32 %12, 0
  br i1 %.not4, label %13, label %15

13:                                               ; preds = %11
  %14 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %.not5 = icmp eq i32 %14, 0
  br i1 %.not5, label %16, label %15

15:                                               ; preds = %13, %11
  call void @usage(i32 noundef 0)
  br label %16

16:                                               ; preds = %15, %13
  %17 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %.not6 = icmp eq i32 %17, 0
  br i1 %.not6, label %18, label %20

18:                                               ; preds = %16
  %19 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %.not7 = icmp eq i32 %19, 0
  br i1 %.not7, label %21, label %20

20:                                               ; preds = %18, %16
  store i32 1, i32* @g_posix_mode, align 4
  br label %173

21:                                               ; preds = %18
  %22 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %.not8 = icmp eq i32 %22, 0
  br i1 %.not8, label %23, label %25

23:                                               ; preds = %21
  %24 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %.not9 = icmp eq i32 %24, 0
  br i1 %.not9, label %37, label %25

25:                                               ; preds = %23, %21
  %26 = add nsw i32 %.0, 1
  %27 = icmp eq i32 %26, %0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %8) #10
  call void @usage(i32 noundef 1)
  br label %31

31:                                               ; preds = %28, %25
  %32 = add nsw i32 %.0, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %1, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @atoi(i8* noundef %35) #11
  store i32 %36, i32* @g_timeout_in_seconds, align 4
  br label %173

37:                                               ; preds = %23
  %38 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %.not10 = icmp eq i32 %38, 0
  br i1 %.not10, label %50, label %39

39:                                               ; preds = %37
  %40 = add nsw i32 %.0, 1
  %41 = icmp eq i32 %40, %0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %8) #10
  call void @usage(i32 noundef 1)
  br label %45

45:                                               ; preds = %42, %39
  %46 = add nsw i32 %.0, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %1, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** @g_summary_file, align 8
  br label %173

50:                                               ; preds = %37
  %51 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %.not11 = icmp eq i32 %51, 0
  br i1 %.not11, label %63, label %52

52:                                               ; preds = %50
  %53 = add nsw i32 %.0, 1
  %54 = icmp eq i32 %53, %0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %8) #10
  call void @usage(i32 noundef 1)
  br label %58

58:                                               ; preds = %55, %52
  %59 = add nsw i32 %.0, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %1, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** @g_target_redirect_input, align 8
  br label %173

63:                                               ; preds = %50
  %64 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %.not12 = icmp eq i32 %64, 0
  br i1 %.not12, label %76, label %65

65:                                               ; preds = %63
  %66 = add nsw i32 %.0, 1
  %67 = icmp eq i32 %66, %0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %8) #10
  call void @usage(i32 noundef 1)
  br label %71

71:                                               ; preds = %68, %65
  %72 = add nsw i32 %.0, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %1, i64 %73
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** @g_target_redirect_stdout, align 8
  store i8* %75, i8** @g_target_redirect_stderr, align 8
  br label %173

76:                                               ; preds = %63
  %77 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %.not13 = icmp eq i32 %77, 0
  br i1 %.not13, label %89, label %78

78:                                               ; preds = %76
  %79 = add nsw i32 %.0, 1
  %80 = icmp eq i32 %79, %0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %8) #10
  call void @usage(i32 noundef 1)
  br label %84

84:                                               ; preds = %81, %78
  %85 = add nsw i32 %.0, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %1, i64 %86
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** @g_target_redirect_stdout, align 8
  br label %173

89:                                               ; preds = %76
  %90 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %.not14 = icmp eq i32 %90, 0
  br i1 %.not14, label %102, label %91

91:                                               ; preds = %89
  %92 = add nsw i32 %.0, 1
  %93 = icmp eq i32 %92, %0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %95, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %8) #10
  call void @usage(i32 noundef 1)
  br label %97

97:                                               ; preds = %94, %91
  %98 = add nsw i32 %.0, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %1, i64 %99
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** @g_target_redirect_stderr, align 8
  br label %173

102:                                              ; preds = %89
  %103 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %.not15 = icmp eq i32 %103, 0
  br i1 %.not15, label %105, label %104

104:                                              ; preds = %102
  store i32 1, i32* @g_append_exitstats, align 4
  br label %173

105:                                              ; preds = %102
  %106 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %.not16 = icmp eq i32 %106, 0
  br i1 %.not16, label %107, label %109

107:                                              ; preds = %105
  %108 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %.not17 = icmp eq i32 %108, 0
  br i1 %.not17, label %120, label %109

109:                                              ; preds = %107, %105
  %110 = add nsw i32 %.0, 1
  %111 = icmp eq i32 %110, %0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %113, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %8) #10
  call void @usage(i32 noundef 1)
  br label %115

115:                                              ; preds = %112, %109
  %116 = add nsw i32 %.0, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %1, i64 %117
  %119 = load i8*, i8** %118, align 8
  store i8* %119, i8** @g_target_exec_directory, align 8
  br label %173

120:                                              ; preds = %107
  %121 = call i32 @strncmp(i8* noundef nonnull %8, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 noundef 8) #11
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %170

123:                                              ; preds = %120
  %124 = add nsw i32 %.0, 1
  %125 = icmp eq i32 %124, %0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %8) #10
  call void @usage(i32 noundef 1)
  br label %129

129:                                              ; preds = %126, %123
  %130 = add nsw i32 %.0, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %1, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @atoi(i8* noundef %133) #11
  %135 = sext i32 %134 to i64
  %136 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %.not18 = icmp eq i32 %136, 0
  br i1 %.not18, label %138, label %137

137:                                              ; preds = %129
  store i64 %135, i64* @g_target_cpu_limit, align 8
  br label %169

138:                                              ; preds = %129
  %139 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %.not19 = icmp eq i32 %139, 0
  br i1 %.not19, label %141, label %140

140:                                              ; preds = %138
  store i64 %135, i64* @g_target_stack_size_limit, align 8
  br label %168

141:                                              ; preds = %138
  %142 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %.not20 = icmp eq i32 %142, 0
  br i1 %.not20, label %144, label %143

143:                                              ; preds = %141
  store i64 %135, i64* @g_target_data_size_limit, align 8
  br label %167

144:                                              ; preds = %141
  %145 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %.not21 = icmp eq i32 %145, 0
  br i1 %.not21, label %147, label %146

146:                                              ; preds = %144
  store i64 %135, i64* @g_target_rss_size_limit, align 8
  br label %166

147:                                              ; preds = %144
  %148 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %.not22 = icmp eq i32 %148, 0
  br i1 %.not22, label %150, label %149

149:                                              ; preds = %147
  store i64 %135, i64* @g_target_file_size_limit, align 8
  br label %165

150:                                              ; preds = %147
  %151 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %.not23 = icmp eq i32 %151, 0
  br i1 %.not23, label %153, label %152

152:                                              ; preds = %150
  store i64 %135, i64* @g_target_core_limit, align 8
  br label %164

153:                                              ; preds = %150
  %154 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %.not24 = icmp eq i32 %154, 0
  br i1 %.not24, label %156, label %155

155:                                              ; preds = %153
  store i64 %135, i64* @g_target_file_count_limit, align 8
  br label %163

156:                                              ; preds = %153
  %157 = call i32 @streq(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  %.not25 = icmp eq i32 %157, 0
  br i1 %.not25, label %159, label %158

158:                                              ; preds = %156
  store i64 %135, i64* @g_target_subprocess_count_limit, align 8
  br label %162

159:                                              ; preds = %156
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %160, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* noundef nonnull %8) #10
  call void @usage(i32 noundef 1)
  br label %162

162:                                              ; preds = %159, %158
  br label %163

163:                                              ; preds = %162, %155
  br label %164

164:                                              ; preds = %163, %152
  br label %165

165:                                              ; preds = %164, %149
  br label %166

166:                                              ; preds = %165, %146
  br label %167

167:                                              ; preds = %166, %143
  br label %168

168:                                              ; preds = %167, %140
  br label %169

169:                                              ; preds = %168, %137
  br label %173

170:                                              ; preds = %120
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %171, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), i8* noundef nonnull %8) #10
  call void @usage(i32 noundef 1)
  br label %173

173:                                              ; preds = %170, %169, %115, %104, %97, %84, %71, %58, %45, %31, %20
  %.1 = phi i32 [ %.0, %20 ], [ %32, %31 ], [ %46, %45 ], [ %59, %58 ], [ %72, %71 ], [ %85, %84 ], [ %98, %97 ], [ %.0, %104 ], [ %116, %115 ], [ %130, %169 ], [ %.0, %170 ]
  %174 = add nsw i32 %.1, 1
  br label %4, !llvm.loop !4

.loopexit:                                        ; preds = %4
  br label %175

175:                                              ; preds = %.loopexit, %10
  %176 = icmp eq i32 %.0, %0
  br i1 %176, label %177, label %180

177:                                              ; preds = %175
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %179 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %178) #12
  call void @usage(i32 noundef 1)
  br label %180

180:                                              ; preds = %177, %175
  %181 = sext i32 %.0 to i64
  %182 = getelementptr inbounds i8*, i8** %1, i64 %181
  %183 = load i8*, i8** %182, align 8
  store i8* %183, i8** @g_target_program, align 8
  %184 = sext i32 %.0 to i64
  %185 = getelementptr inbounds i8*, i8** %1, i64 %184
  %186 = call i32 @execute(i8** noundef nonnull %185)
  ret i32 %186
}

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @streq(i8* noundef readonly %0, i8* noundef readonly %1) #1 {
  %3 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %1) #11
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @usage(i32 noundef %0) #2 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** @g_program_name, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i8* noundef %3) #10
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i64 9, i64 1, %struct._IO_FILE* %5) #12
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0)) #10
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i64 0, i64 0)) #10
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i64 0, i64 0)) #10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i64 0, i64 0)) #10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.39, i64 0, i64 0)) #10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.41, i64 0, i64 0)) #10
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.43, i64 0, i64 0)) #10
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.45, i64 0, i64 0)) #10
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.47, i64 0, i64 0)) #10
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i64 0, i64 0)) #10
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.51, i64 0, i64 0)) #10
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.53, i64 0, i64 0)) #10
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.55, i64 0, i64 0)) #10
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.57, i64 0, i64 0)) #10
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.59, i64 0, i64 0)) #10
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.61, i64 0, i64 0)) #10
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.63, i64 0, i64 0)) #10
  call void @_exit(i32 noundef %0) #13
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @execute(i8** noundef %0) #0 {
  %2 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef nonnull @terminate_handler) #14
  %3 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef nonnull @terminate_handler) #14
  %4 = call void (i32)* @signal(i32 noundef 14, void (i32)* noundef nonnull @timeout_handler) #14
  %5 = call double @sample_wall_time()
  %6 = call i32 @fork() #14
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0)) #10
  br label %15

9:                                                ; preds = %1
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = call i32 @execute_target_process(i8** noundef %0)
  br label %15

13:                                               ; preds = %9
  store i32 %6, i32* @g_monitored_pid, align 4
  %14 = call i32 @monitor_child_process(double noundef %5)
  br label %15

15:                                               ; preds = %13, %11, %8
  %.0 = phi i32 [ 66, %8 ], [ %12, %11 ], [ %14, %13 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

; Function Attrs: noreturn
declare dso_local void @_exit(i32 noundef) #5

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #6

; Function Attrs: noinline nounwind uwtable
define internal void @terminate_handler(i32 noundef %0) #0 {
  %2 = load i32, i32* @g_monitored_pid, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %11, label %3

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @g_program_name, align 8
  %6 = load i8*, i8** @g_target_program, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.65, i64 0, i64 0), i8* noundef %5, i32 noundef %0, i8* noundef %6) #10
  %8 = load i32, i32* @g_monitored_pid, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32 @kill(i32 noundef %9, i32 noundef 9) #14
  ret void

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** @g_program_name, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.66, i64 0, i64 0), i8* noundef %13, i32 noundef %0) #10
  call void @_exit(i32 noundef 68) #13
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @timeout_handler(i32 noundef %0) #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** @g_program_name, align 8
  %4 = load i8*, i8** @g_target_program, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i64 0, i64 0), i8* noundef %3, i8* noundef %4) #10
  %6 = load i32, i32* @g_monitored_pid, align 4
  %7 = sub nsw i32 0, %6
  %8 = call i32 @kill(i32 noundef %7, i32 noundef 9) #14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @sample_wall_time() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef nonnull %1, i8* noundef null) #14
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sitofp i64 %4 to double
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to double
  %9 = call double @llvm.fmuladd.f64(double %8, double 0x3EB0C6F7A0B5ED8D, double %5)
  ret double %9
}

; Function Attrs: nounwind
declare dso_local i32 @fork() #6

declare dso_local void @perror(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @execute_target_process(i8** noundef %0) #0 {
  %2 = call i32 @setpgid(i32 noundef 0, i32 noundef 0) #14
  %3 = load i8*, i8** @g_target_redirect_input, align 8
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %15, label %4

4:                                                ; preds = %1
  %5 = load i8*, i8** @g_target_redirect_input, align 8
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #14
  %.not20 = icmp eq %struct._IO_FILE* %6, null
  br i1 %.not20, label %7, label %8

7:                                                ; preds = %4
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0)) #10
  br label %106

8:                                                ; preds = %4
  %9 = call i32 @fileno(%struct._IO_FILE* noundef nonnull %6) #14
  %10 = call i32 @dup2(i32 noundef %9, i32 noundef 0) #14
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0)) #10
  br label %106

13:                                               ; preds = %8
  %14 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #14
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i8*, i8** @g_target_redirect_stdout, align 8
  %.not4 = icmp eq i8* %16, null
  br i1 %.not4, label %27, label %17

17:                                               ; preds = %15
  %18 = load i8*, i8** @g_target_redirect_stdout, align 8
  %19 = call noalias %struct._IO_FILE* @fopen(i8* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #14
  %.not19 = icmp eq %struct._IO_FILE* %19, null
  br i1 %.not19, label %20, label %21

20:                                               ; preds = %17
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0)) #10
  br label %106

21:                                               ; preds = %17
  %22 = call i32 @fileno(%struct._IO_FILE* noundef nonnull %19) #14
  %23 = call i32 @dup2(i32 noundef %22, i32 noundef 1) #14
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0)) #10
  br label %106

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %15
  %.03 = phi %struct._IO_FILE* [ %19, %26 ], [ null, %15 ]
  %28 = load i8*, i8** @g_target_redirect_stderr, align 8
  %.not5 = icmp eq i8* %28, null
  br i1 %.not5, label %49, label %29

29:                                               ; preds = %27
  %30 = load i8*, i8** @g_target_redirect_stdout, align 8
  %31 = load i8*, i8** @g_target_redirect_stderr, align 8
  %32 = call i32 @streq(i8* noundef %30, i8* noundef %31)
  %.not16 = icmp eq i32 %32, 0
  br i1 %.not16, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 @fileno(%struct._IO_FILE* noundef %.03) #14
  br label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** @g_target_redirect_stderr, align 8
  %37 = call noalias %struct._IO_FILE* @fopen(i8* noundef %36, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #14
  %.not17 = icmp eq %struct._IO_FILE* %37, null
  br i1 %.not17, label %38, label %39

38:                                               ; preds = %35
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0)) #10
  br label %106

39:                                               ; preds = %35
  %40 = call i32 @fileno(%struct._IO_FILE* noundef nonnull %37) #14
  br label %41

41:                                               ; preds = %39, %33
  %.02 = phi %struct._IO_FILE* [ null, %33 ], [ %37, %39 ]
  %.01 = phi i32 [ %34, %33 ], [ %40, %39 ]
  %42 = call i32 @dup2(i32 noundef %.01, i32 noundef 2) #14
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0)) #10
  br label %106

45:                                               ; preds = %41
  %.not18 = icmp eq %struct._IO_FILE* %.02, null
  br i1 %.not18, label %48, label %46

46:                                               ; preds = %45
  %47 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %.02) #14
  br label %48

48:                                               ; preds = %46, %45
  br label %49

49:                                               ; preds = %48, %27
  %.not6 = icmp eq %struct._IO_FILE* %.03, null
  br i1 %.not6, label %52, label %50

50:                                               ; preds = %49
  %51 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %.03) #14
  br label %52

52:                                               ; preds = %50, %49
  %53 = load i64, i64* @g_target_cpu_limit, align 8
  %.not7 = icmp eq i64 %53, -1
  br i1 %.not7, label %56, label %54

54:                                               ; preds = %52
  %55 = load i64, i64* @g_target_cpu_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0), i32 noundef 0, i64 noundef %55)
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i64, i64* @g_target_stack_size_limit, align 8
  %.not8 = icmp eq i64 %57, -1
  br i1 %.not8, label %60, label %58

58:                                               ; preds = %56
  %59 = load i64, i64* @g_target_stack_size_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i64 0, i64 0), i32 noundef 3, i64 noundef %59)
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i64, i64* @g_target_data_size_limit, align 8
  %.not9 = icmp eq i64 %61, -1
  br i1 %.not9, label %64, label %62

62:                                               ; preds = %60
  %63 = load i64, i64* @g_target_data_size_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i32 noundef 2, i64 noundef %63)
  br label %64

64:                                               ; preds = %62, %60
  %65 = load i64, i64* @g_target_rss_size_limit, align 8
  %.not10 = icmp eq i64 %65, -1
  br i1 %.not10, label %68, label %66

66:                                               ; preds = %64
  %67 = load i64, i64* @g_target_rss_size_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0), i32 noundef 5, i64 noundef %67)
  br label %68

68:                                               ; preds = %66, %64
  %69 = load i64, i64* @g_target_file_size_limit, align 8
  %.not11 = icmp eq i64 %69, -1
  br i1 %.not11, label %72, label %70

70:                                               ; preds = %68
  %71 = load i64, i64* @g_target_file_size_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i64 0, i64 0), i32 noundef 1, i64 noundef %71)
  br label %72

72:                                               ; preds = %70, %68
  %73 = load i64, i64* @g_target_core_limit, align 8
  %.not12 = icmp eq i64 %73, -1
  br i1 %.not12, label %76, label %74

74:                                               ; preds = %72
  %75 = load i64, i64* @g_target_core_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 noundef 4, i64 noundef %75)
  br label %76

76:                                               ; preds = %74, %72
  %77 = load i64, i64* @g_target_file_count_limit, align 8
  %.not13 = icmp eq i64 %77, -1
  br i1 %.not13, label %80, label %78

78:                                               ; preds = %76
  %79 = load i64, i64* @g_target_file_count_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0), i32 noundef 7, i64 noundef %79)
  br label %80

80:                                               ; preds = %78, %76
  %81 = load i64, i64* @g_target_subprocess_count_limit, align 8
  %.not14 = icmp eq i64 %81, -1
  br i1 %.not14, label %84, label %82

82:                                               ; preds = %80
  %83 = load i64, i64* @g_target_subprocess_count_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i64 0, i64 0), i32 noundef 6, i64 noundef %83)
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i8*, i8** @g_target_exec_directory, align 8
  %.not15 = icmp eq i8* %85, null
  br i1 %.not15, label %92, label %86

86:                                               ; preds = %84
  %87 = load i8*, i8** @g_target_exec_directory, align 8
  %88 = call i32 @chdir(i8* noundef %87) #14
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0)) #10
  br label %106

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %84
  %93 = load i8*, i8** %0, align 8
  %94 = call i32 @execvp(i8* noundef %93, i8** noundef nonnull %0) #14
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0)) #10
  %95 = call i32* @__errno_location() #15
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %106

99:                                               ; preds = %92
  %100 = call i32* @__errno_location() #15
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 13
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %106

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %103, %98, %90, %44, %38, %25, %20, %12, %7
  %.0 = phi i32 [ 66, %12 ], [ 66, %25 ], [ 66, %44 ], [ 66, %90 ], [ 127, %98 ], [ 126, %103 ], [ 67, %105 ], [ 66, %38 ], [ 66, %20 ], [ 66, %7 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @monitor_child_process(double noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rusage, align 8
  %4 = alloca %struct.__sigset_t, align 8
  %5 = load i32, i32* @g_timeout_in_seconds, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %11, label %6

6:                                                ; preds = %1
  %7 = call i32 @sigemptyset(%struct.__sigset_t* noundef nonnull %4) #14
  %8 = call i32 @sigaddset(%struct.__sigset_t* noundef nonnull %4, i32 noundef 14) #14
  %9 = load i32, i32* @g_timeout_in_seconds, align 4
  %10 = call i32 @alarm(i32 noundef %9) #14
  br label %11

11:                                               ; preds = %6, %1
  br label %12

12:                                               ; preds = %21, %11
  %13 = load i32, i32* @g_monitored_pid, align 4
  %14 = call i32 @waitpid(i32 noundef %13, i32* noundef nonnull %2, i32 noundef 0) #14
  br label %15

15:                                               ; preds = %12
  %16 = icmp slt i32 %14, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = call i32* @__errno_location() #15
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i1 [ false, %15 ], [ %20, %17 ]
  br i1 %22, label %12, label %23, !llvm.loop !6

23:                                               ; preds = %21
  %24 = icmp slt i32 %14, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  call void @perror(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0)) #10
  br label %108

26:                                               ; preds = %23
  %27 = call double @sample_wall_time()
  %28 = fsub double %27, %0
  %29 = load i32, i32* @g_monitored_pid, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @kill(i32 noundef %30, i32 noundef 9) #14
  %32 = call i32 @getrusage(i32 noundef -1, %struct.rusage* noundef nonnull %3) #14
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0)) #10
  br label %108

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.rusage, %struct.rusage* %3, i64 0, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to double
  %39 = getelementptr inbounds %struct.rusage, %struct.rusage* %3, i64 0, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sitofp i64 %40 to double
  %42 = fdiv double %41, 1.000000e+06
  %43 = fadd double %42, %38
  %44 = getelementptr inbounds %struct.rusage, %struct.rusage* %3, i64 0, i32 1, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sitofp i64 %45 to double
  %47 = getelementptr inbounds %struct.rusage, %struct.rusage* %3, i64 0, i32 1, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sitofp i64 %48 to double
  %50 = fdiv double %49, 1.000000e+06
  %51 = fadd double %50, %46
  %52 = load i32, i32* %2, align 4
  %53 = shl i32 %52, 24
  %54 = and i32 %53, 2130706432
  %sext = add nuw i32 %54, 16777216
  %55 = icmp sgt i32 %sext, 33554431
  br i1 %55, label %56, label %65

56:                                               ; preds = %35
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = load i8*, i8** @g_program_name, align 8
  %59 = load i32, i32* %2, align 4
  %60 = and i32 %59, 127
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i64 0, i64 0), i8* noundef %58, i32 noundef %60) #10
  %62 = load i32, i32* %2, align 4
  %63 = and i32 %62, 127
  %64 = or i32 %63, 128
  br label %75

65:                                               ; preds = %35
  %66 = load i32, i32* %2, align 4
  %67 = and i32 %66, 127
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %2, align 4
  %71 = lshr i32 %70, 8
  %72 = and i32 %71, 255
  br label %74

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %69
  %.01 = phi i32 [ %72, %69 ], [ 66, %73 ]
  br label %75

75:                                               ; preds = %74, %56
  %.1 = phi i32 [ %64, %56 ], [ %.01, %74 ]
  %76 = load i8*, i8** @g_summary_file, align 8
  %.not2 = icmp eq i8* %76, null
  br i1 %.not2, label %77, label %86

77:                                               ; preds = %75
  %78 = load i32, i32* @g_posix_mode, align 4
  %.not3 = icmp eq i32 %78, 0
  br i1 %.not3, label %82, label %79

79:                                               ; preds = %77
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.86, i64 0, i64 0), double noundef %28, double noundef %43, double noundef %51) #10
  br label %85

82:                                               ; preds = %77
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), double noundef %28, double noundef %43, double noundef %51) #10
  br label %85

85:                                               ; preds = %82, %79
  br label %96

86:                                               ; preds = %75
  %87 = load i8*, i8** @g_summary_file, align 8
  %88 = call noalias %struct._IO_FILE* @fopen(i8* noundef %87, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0)) #14
  %.not7 = icmp eq %struct._IO_FILE* %88, null
  br i1 %.not7, label %89, label %90

89:                                               ; preds = %86
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0)) #10
  br label %108

90:                                               ; preds = %86
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %88, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), i32 noundef %.1) #14
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %88, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i64 0, i64 0), double noundef %28) #14
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %88, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0), double noundef %43) #14
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %88, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0), double noundef %51) #14
  %95 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %88) #14
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* @g_append_exitstats, align 4
  %.not4 = icmp eq i32 %97, 0
  br i1 %.not4, label %107, label %98

98:                                               ; preds = %96
  %99 = load i8*, i8** @g_target_program, align 8
  %.not5 = icmp eq i8* %99, null
  br i1 %.not5, label %107, label %100

100:                                              ; preds = %98
  %101 = load i8*, i8** @g_target_redirect_stdout, align 8
  %102 = call noalias %struct._IO_FILE* @fopen(i8* noundef %101, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0)) #14
  %.not6 = icmp eq %struct._IO_FILE* %102, null
  br i1 %.not6, label %103, label %104

103:                                              ; preds = %100
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0)) #10
  br label %108

104:                                              ; preds = %100
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %102, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), i32 noundef %.1) #14
  %106 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %102) #14
  br label %107

107:                                              ; preds = %104, %98, %96
  %.2 = phi i32 [ 0, %104 ], [ %.1, %98 ], [ %.1, %96 ]
  br label %108

108:                                              ; preds = %107, %103, %89, %34, %25
  %.0 = phi i32 [ 66, %25 ], [ 66, %34 ], [ %.2, %107 ], [ 66, %103 ], [ 66, %89 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @kill(i32 noundef, i32 noundef) #6

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nounwind
declare dso_local i32 @setpgid(i32 noundef, i32 noundef) #6

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* noundef) #6

; Function Attrs: nounwind
declare dso_local i32 @dup2(i32 noundef, i32 noundef) #6

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @set_resource_limit_actual(i8* noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.rlimit, align 8
  %5 = alloca %struct.rlimit, align 8
  %6 = call i32 @getrlimit(i32 noundef %1, %struct.rlimit* noundef nonnull %4) #14
  %7 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ugt i64 %8, %2
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %4, i64 0, i32 1
  %13 = load i64, i64* %12, align 8
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i64 [ %2, %10 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i64 0, i32 1
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i64 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = call i32 @setrlimit(i32 noundef %1, %struct.rlimit* noundef nonnull %5) #14
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = load i8*, i8** @g_program_name, align 8
  %23 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i64 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %5, i64 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.82, i64 0, i64 0), i8* noundef %22, i8* noundef %0, i64 noundef %24, i64 noundef %26) #10
  br label %28

28:                                               ; preds = %20, %14
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @chdir(i8* noundef) #6

; Function Attrs: nounwind
declare dso_local i32 @execvp(i8* noundef, i8** noundef) #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #8

; Function Attrs: nounwind
declare dso_local i32 @getrlimit(i32 noundef, %struct.rlimit* noundef) #6

; Function Attrs: nounwind
declare dso_local i32 @setrlimit(i32 noundef, %struct.rlimit* noundef) #6

; Function Attrs: nounwind
declare dso_local i32 @sigemptyset(%struct.__sigset_t* noundef) #6

; Function Attrs: nounwind
declare dso_local i32 @sigaddset(%struct.__sigset_t* noundef, i32 noundef) #6

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32 noundef) #6

declare dso_local i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @getrusage(i32 noundef, %struct.rusage* noundef) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
