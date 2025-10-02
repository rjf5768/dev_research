; ModuleID = '/project/test/llvm-test-suite/tools/timeit.c'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @g_program_name, align 8
  store i32 1, i32* %6, align 4
  br label %12

12:                                               ; preds = %286, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %289

16:                                               ; preds = %12
  %17 = load i8**, i8*** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 45
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %289

28:                                               ; preds = %16
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @streq(i8* noundef %29, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @streq(i8* noundef %33, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28
  call void @usage(i32 noundef 0)
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @streq(i8* noundef %38, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @streq(i8* noundef %42, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  store i32 1, i32* @g_posix_mode, align 4
  br label %286

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @streq(i8* noundef %47, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @streq(i8* noundef %51, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %50, %46
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef %61)
  call void @usage(i32 noundef 1)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i8**, i8*** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @atoi(i8* noundef %69) #7
  store i32 %70, i32* @g_timeout_in_seconds, align 4
  br label %286

71:                                               ; preds = %50
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @streq(i8* noundef %72, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %81, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef %82)
  call void @usage(i32 noundef 1)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** @g_summary_file, align 8
  br label %286

91:                                               ; preds = %71
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @streq(i8* noundef %92, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef %102)
  call void @usage(i32 noundef 1)
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i8**, i8*** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** @g_target_redirect_input, align 8
  br label %286

111:                                              ; preds = %91
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @streq(i8* noundef %112, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* %4, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef %122)
  call void @usage(i32 noundef 1)
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i8**, i8*** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %125, i64 %128
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** @g_target_redirect_stdout, align 8
  %131 = load i8*, i8** @g_target_redirect_stdout, align 8
  store i8* %131, i8** @g_target_redirect_stderr, align 8
  br label %286

132:                                              ; preds = %111
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @streq(i8* noundef %133, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  %139 = load i32, i32* %4, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %142, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef %143)
  call void @usage(i32 noundef 1)
  br label %145

145:                                              ; preds = %141, %136
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %146, i64 %149
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** @g_target_redirect_stdout, align 8
  br label %286

152:                                              ; preds = %132
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 @streq(i8* noundef %153, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i32, i32* %4, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %162, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef %163)
  call void @usage(i32 noundef 1)
  br label %165

165:                                              ; preds = %161, %156
  %166 = load i8**, i8*** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %166, i64 %169
  %171 = load i8*, i8** %170, align 8
  store i8* %171, i8** @g_target_redirect_stderr, align 8
  br label %286

172:                                              ; preds = %152
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @streq(i8* noundef %173, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 1, i32* @g_append_exitstats, align 4
  br label %286

177:                                              ; preds = %172
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @streq(i8* noundef %178, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %7, align 8
  %183 = call i32 @streq(i8* noundef %182, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %181, %177
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  %188 = load i32, i32* %4, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %192 = load i8*, i8** %7, align 8
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %191, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef %192)
  call void @usage(i32 noundef 1)
  br label %194

194:                                              ; preds = %190, %185
  %195 = load i8**, i8*** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %195, i64 %198
  %200 = load i8*, i8** %199, align 8
  store i8* %200, i8** @g_target_exec_directory, align 8
  br label %286

201:                                              ; preds = %181
  %202 = load i8*, i8** %7, align 8
  %203 = call i32 @strncmp(i8* noundef %202, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i64 noundef 8) #7
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %282

205:                                              ; preds = %201
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  %208 = load i32, i32* %4, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %212 = load i8*, i8** %7, align 8
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %211, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef %212)
  call void @usage(i32 noundef 1)
  br label %214

214:                                              ; preds = %210, %205
  %215 = load i8**, i8*** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %215, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @atoi(i8* noundef %220) #7
  %222 = sext i32 %221 to i64
  store i64 %222, i64* %8, align 8
  %223 = load i8*, i8** %7, align 8
  %224 = call i32 @streq(i8* noundef %223, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %214
  %227 = load i64, i64* %8, align 8
  store i64 %227, i64* @g_target_cpu_limit, align 8
  br label %281

228:                                              ; preds = %214
  %229 = load i8*, i8** %7, align 8
  %230 = call i32 @streq(i8* noundef %229, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i64, i64* %8, align 8
  store i64 %233, i64* @g_target_stack_size_limit, align 8
  br label %280

234:                                              ; preds = %228
  %235 = load i8*, i8** %7, align 8
  %236 = call i32 @streq(i8* noundef %235, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = load i64, i64* %8, align 8
  store i64 %239, i64* @g_target_data_size_limit, align 8
  br label %279

240:                                              ; preds = %234
  %241 = load i8*, i8** %7, align 8
  %242 = call i32 @streq(i8* noundef %241, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = load i64, i64* %8, align 8
  store i64 %245, i64* @g_target_rss_size_limit, align 8
  br label %278

246:                                              ; preds = %240
  %247 = load i8*, i8** %7, align 8
  %248 = call i32 @streq(i8* noundef %247, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = load i64, i64* %8, align 8
  store i64 %251, i64* @g_target_file_size_limit, align 8
  br label %277

252:                                              ; preds = %246
  %253 = load i8*, i8** %7, align 8
  %254 = call i32 @streq(i8* noundef %253, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = load i64, i64* %8, align 8
  store i64 %257, i64* @g_target_core_limit, align 8
  br label %276

258:                                              ; preds = %252
  %259 = load i8*, i8** %7, align 8
  %260 = call i32 @streq(i8* noundef %259, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i64, i64* %8, align 8
  store i64 %263, i64* @g_target_file_count_limit, align 8
  br label %275

264:                                              ; preds = %258
  %265 = load i8*, i8** %7, align 8
  %266 = call i32 @streq(i8* noundef %265, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = load i64, i64* %8, align 8
  store i64 %269, i64* @g_target_subprocess_count_limit, align 8
  br label %274

270:                                              ; preds = %264
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %271, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* noundef %272)
  call void @usage(i32 noundef 1)
  br label %274

274:                                              ; preds = %270, %268
  br label %275

275:                                              ; preds = %274, %262
  br label %276

276:                                              ; preds = %275, %256
  br label %277

277:                                              ; preds = %276, %250
  br label %278

278:                                              ; preds = %277, %244
  br label %279

279:                                              ; preds = %278, %238
  br label %280

280:                                              ; preds = %279, %232
  br label %281

281:                                              ; preds = %280, %226
  br label %286

282:                                              ; preds = %201
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %284 = load i8*, i8** %7, align 8
  %285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %283, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0), i8* noundef %284)
  call void @usage(i32 noundef 1)
  br label %286

286:                                              ; preds = %282, %281, %194, %176, %165, %145, %124, %104, %84, %63, %45
  %287 = load i32, i32* %6, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %6, align 4
  br label %12, !llvm.loop !4

289:                                              ; preds = %27, %12
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* %4, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %294, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i64 0, i64 0))
  call void @usage(i32 noundef 1)
  br label %296

296:                                              ; preds = %293, %289
  %297 = load i8**, i8*** %5, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8*, i8** %297, i64 %299
  %301 = load i8*, i8** %300, align 8
  store i8* %301, i8** @g_target_program, align 8
  %302 = load i8**, i8*** %5, align 8
  %303 = load i32, i32* %6, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %302, i64 %304
  %306 = call i32 @execute(i8** noundef %305)
  ret i32 %306
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @streq(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* noundef %5, i8* noundef %6) #7
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal void @usage(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @g_program_name, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i8* noundef %4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.35, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.37, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.39, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.41, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.43, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.45, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.47, i64 0, i64 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.49, i64 0, i64 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.51, i64 0, i64 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.53, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.55, i64 0, i64 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.57, i64 0, i64 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.59, i64 0, i64 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i64 0, i64 0), i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.61, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.63, i64 0, i64 0))
  %42 = load i32, i32* %2, align 4
  call void @_exit(i32 noundef %42) #8
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @execute(i8** noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %6 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef @terminate_handler) #9
  %7 = call void (i32)* @signal(i32 noundef 15, void (i32)* noundef @terminate_handler) #9
  %8 = call void (i32)* @signal(i32 noundef 14, void (i32)* noundef @timeout_handler) #9
  %9 = call double @sample_wall_time()
  store double %9, double* %4, align 8
  %10 = call i32 @fork() #9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8**, i8*** %3, align 8
  %19 = call i32 @execute_target_process(i8** noundef %18)
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* @g_monitored_pid, align 4
  %22 = load double, double* %4, align 8
  %23 = call i32 @monitor_child_process(double noundef %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %17, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noreturn
declare dso_local void @_exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal void @terminate_handler(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @g_monitored_pid, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** @g_program_name, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load i8*, i8** @g_target_program, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.65, i64 0, i64 0), i8* noundef %7, i32 noundef %8, i8* noundef %9)
  %11 = load i32, i32* @g_monitored_pid, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @kill(i32 noundef %12, i32 noundef 9) #9
  ret void

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** @g_program_name, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.66, i64 0, i64 0), i8* noundef %16, i32 noundef %17)
  call void @_exit(i32 noundef 68) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @timeout_handler(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @g_program_name, align 8
  %6 = load i8*, i8** @g_target_program, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.67, i64 0, i64 0), i8* noundef %5, i8* noundef %6)
  %8 = load i32, i32* @g_monitored_pid, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32 @kill(i32 noundef %9, i32 noundef 9) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @sample_wall_time() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* noundef %1, i8* noundef null) #9
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sitofp i64 %4 to double
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to double
  %9 = call double @llvm.fmuladd.f64(double %8, double 0x3EB0C6F7A0B5ED8D, double %5)
  ret double %9
}

; Function Attrs: nounwind
declare dso_local i32 @fork() #4

declare dso_local void @perror(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @execute_target_process(i8** noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %10 = call i32 @setpgid(i32 noundef 0, i32 noundef 0) #9
  %11 = load i8*, i8** @g_target_redirect_input, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i8*, i8** @g_target_redirect_input, align 8
  %15 = call noalias %struct._IO_FILE* @fopen(i8* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** %4, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %17 = icmp ne %struct._IO_FILE* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %150

19:                                               ; preds = %13
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %21 = call i32 @fileno(%struct._IO_FILE* noundef %20) #9
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dup2(i32 noundef %22, i32 noundef 0) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %150

26:                                               ; preds = %19
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %28 = call i32 @fclose(%struct._IO_FILE* noundef %27)
  br label %29

29:                                               ; preds = %26, %1
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8
  %30 = load i8*, i8** @g_target_redirect_stdout, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i8*, i8** @g_target_redirect_stdout, align 8
  %34 = call noalias %struct._IO_FILE* @fopen(i8* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0))
  store %struct._IO_FILE* %34, %struct._IO_FILE** %6, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %36 = icmp ne %struct._IO_FILE* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %150

38:                                               ; preds = %32
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %40 = call i32 @fileno(%struct._IO_FILE* noundef %39) #9
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dup2(i32 noundef %41, i32 noundef 1) #9
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %150

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i8*, i8** @g_target_redirect_stderr, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %78

49:                                               ; preds = %46
  store %struct._IO_FILE* null, %struct._IO_FILE** %8, align 8
  %50 = load i8*, i8** @g_target_redirect_stdout, align 8
  %51 = load i8*, i8** @g_target_redirect_stderr, align 8
  %52 = call i32 @streq(i8* noundef %50, i8* noundef %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %56 = call i32 @fileno(%struct._IO_FILE* noundef %55) #9
  store i32 %56, i32* %9, align 4
  br label %66

57:                                               ; preds = %49
  %58 = load i8*, i8** @g_target_redirect_stderr, align 8
  %59 = call noalias %struct._IO_FILE* @fopen(i8* noundef %58, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0))
  store %struct._IO_FILE* %59, %struct._IO_FILE** %8, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %61 = icmp ne %struct._IO_FILE* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %150

63:                                               ; preds = %57
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %65 = call i32 @fileno(%struct._IO_FILE* noundef %64) #9
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %54
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dup2(i32 noundef %67, i32 noundef 2) #9
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  call void @perror(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %150

71:                                               ; preds = %66
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %73 = icmp ne %struct._IO_FILE* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %76 = call i32 @fclose(%struct._IO_FILE* noundef %75)
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %46
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %80 = icmp ne %struct._IO_FILE* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %83 = call i32 @fclose(%struct._IO_FILE* noundef %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i64, i64* @g_target_cpu_limit, align 8
  %86 = icmp ne i64 %85, -1
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i64, i64* @g_target_cpu_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0), i32 noundef 0, i64 noundef %88)
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i64, i64* @g_target_stack_size_limit, align 8
  %91 = icmp ne i64 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i64, i64* @g_target_stack_size_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i64 0, i64 0), i32 noundef 3, i64 noundef %93)
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i64, i64* @g_target_data_size_limit, align 8
  %96 = icmp ne i64 %95, -1
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i64, i64* @g_target_data_size_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i32 noundef 2, i64 noundef %98)
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i64, i64* @g_target_rss_size_limit, align 8
  %101 = icmp ne i64 %100, -1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i64, i64* @g_target_rss_size_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0), i32 noundef 5, i64 noundef %103)
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i64, i64* @g_target_file_size_limit, align 8
  %106 = icmp ne i64 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i64, i64* @g_target_file_size_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i64 0, i64 0), i32 noundef 1, i64 noundef %108)
  br label %109

109:                                              ; preds = %107, %104
  %110 = load i64, i64* @g_target_core_limit, align 8
  %111 = icmp ne i64 %110, -1
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* @g_target_core_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 noundef 4, i64 noundef %113)
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i64, i64* @g_target_file_count_limit, align 8
  %116 = icmp ne i64 %115, -1
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i64, i64* @g_target_file_count_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0), i32 noundef 7, i64 noundef %118)
  br label %119

119:                                              ; preds = %117, %114
  %120 = load i64, i64* @g_target_subprocess_count_limit, align 8
  %121 = icmp ne i64 %120, -1
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i64, i64* @g_target_subprocess_count_limit, align 8
  call void @set_resource_limit_actual(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i64 0, i64 0), i32 noundef 6, i64 noundef %123)
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i8*, i8** @g_target_exec_directory, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i8*, i8** @g_target_exec_directory, align 8
  %129 = call i32 @chdir(i8* noundef %128) #9
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %150

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %124
  %134 = load i8**, i8*** %3, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i8**, i8*** %3, align 8
  %138 = call i32 @execvp(i8* noundef %136, i8** noundef %137) #9
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0))
  %139 = call i32* @__errno_location() #10
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i32 127, i32* %2, align 4
  br label %150

143:                                              ; preds = %133
  %144 = call i32* @__errno_location() #10
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 13
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 126, i32* %2, align 4
  br label %150

148:                                              ; preds = %143
  br label %149

149:                                              ; preds = %148
  store i32 67, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %147, %142, %131, %70, %62, %44, %37, %25, %18
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @monitor_child_process(double noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rusage, align 8
  %10 = alloca %struct.__sigset_t, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca %struct._IO_FILE*, align 8
  store double %0, double* %3, align 8
  %14 = load i32, i32* @g_timeout_in_seconds, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = call i32 @sigemptyset(%struct.__sigset_t* noundef %10) #9
  %18 = call i32 @sigaddset(%struct.__sigset_t* noundef %10, i32 noundef 14) #9
  %19 = load i32, i32* @g_timeout_in_seconds, align 4
  %20 = call i32 @alarm(i32 noundef %19) #9
  br label %21

21:                                               ; preds = %16, %1
  br label %22

22:                                               ; preds = %32, %21
  %23 = load i32, i32* @g_monitored_pid, align 4
  %24 = call i32 @waitpid(i32 noundef %23, i32* noundef %8, i32 noundef 0)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = call i32* @__errno_location() #10
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %22, label %34, !llvm.loop !6

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  call void @perror(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %155

38:                                               ; preds = %34
  %39 = call double @sample_wall_time()
  %40 = load double, double* %3, align 8
  %41 = fsub double %39, %40
  store double %41, double* %4, align 8
  %42 = load i32, i32* @g_monitored_pid, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @kill(i32 noundef %43, i32 noundef 9) #9
  %45 = call i32 @getrusage(i32 noundef -1, %struct.rusage* noundef %9) #9
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  call void @perror(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %155

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.rusage, %struct.rusage* %9, i32 0, i32 0
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sitofp i64 %51 to double
  %53 = getelementptr inbounds %struct.rusage, %struct.rusage* %9, i32 0, i32 0
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to double
  %57 = fdiv double %56, 1.000000e+06
  %58 = fadd double %52, %57
  store double %58, double* %5, align 8
  %59 = getelementptr inbounds %struct.rusage, %struct.rusage* %9, i32 0, i32 1
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sitofp i64 %61 to double
  %63 = getelementptr inbounds %struct.rusage, %struct.rusage* %9, i32 0, i32 1
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to double
  %67 = fdiv double %66, 1.000000e+06
  %68 = fadd double %62, %67
  store double %68, double* %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 127
  %71 = add nsw i32 %70, 1
  %72 = trunc i32 %71 to i8
  %73 = sext i8 %72 to i32
  %74 = ashr i32 %73, 1
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %48
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = load i8*, i8** @g_program_name, align 8
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 127
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i64 0, i64 0), i8* noundef %78, i32 noundef %80)
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, 127
  %84 = add nsw i32 128, %83
  store i32 %84, i32* %11, align 4
  br label %95

85:                                               ; preds = %48
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 127
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 65280
  %92 = ashr i32 %91, 8
  store i32 %92, i32* %11, align 4
  br label %94

93:                                               ; preds = %85
  store i32 66, i32* %11, align 4
  br label %94

94:                                               ; preds = %93, %89
  br label %95

95:                                               ; preds = %94, %76
  %96 = load i8*, i8** @g_summary_file, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @g_posix_mode, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %103 = load double, double* %4, align 8
  %104 = load double, double* %5, align 8
  %105 = load double, double* %6, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.86, i64 0, i64 0), double noundef %103, double noundef %104, double noundef %105)
  br label %113

107:                                              ; preds = %98
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = load double, double* %4, align 8
  %110 = load double, double* %5, align 8
  %111 = load double, double* %6, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.87, i64 0, i64 0), double noundef %109, double noundef %110, double noundef %111)
  br label %113

113:                                              ; preds = %107, %101
  br label %135

114:                                              ; preds = %95
  %115 = load i8*, i8** @g_summary_file, align 8
  %116 = call noalias %struct._IO_FILE* @fopen(i8* noundef %115, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i64 0, i64 0))
  store %struct._IO_FILE* %116, %struct._IO_FILE** %12, align 8
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %118 = icmp ne %struct._IO_FILE* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %155

120:                                              ; preds = %114
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), i32 noundef %122)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %125 = load double, double* %4, align 8
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %124, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i64 0, i64 0), double noundef %125)
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %128 = load double, double* %5, align 8
  %129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %127, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0), double noundef %128)
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %131 = load double, double* %6, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %130, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0), double noundef %131)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %134 = call i32 @fclose(%struct._IO_FILE* noundef %133)
  br label %135

135:                                              ; preds = %120, %113
  %136 = load i32, i32* @g_append_exitstats, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %135
  %139 = load i8*, i8** @g_target_program, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load i8*, i8** @g_target_redirect_stdout, align 8
  %143 = call noalias %struct._IO_FILE* @fopen(i8* noundef %142, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.93, i64 0, i64 0))
  store %struct._IO_FILE* %143, %struct._IO_FILE** %13, align 8
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %145 = icmp ne %struct._IO_FILE* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  call void @perror(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i64 0, i64 0))
  store i32 66, i32* %2, align 4
  br label %155

147:                                              ; preds = %141
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %149 = load i32, i32* %11, align 4
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %148, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.88, i64 0, i64 0), i32 noundef %149)
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %13, align 8
  %152 = call i32 @fclose(%struct._IO_FILE* noundef %151)
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %147, %138, %135
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %146, %119, %47, %37
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare dso_local i32 @kill(i32 noundef, i32 noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval* noundef, i8* noundef) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind
declare dso_local i32 @setpgid(i32 noundef, i32 noundef) #4

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @dup2(i32 noundef, i32 noundef) #4

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @set_resource_limit_actual(i8* noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rlimit, align 8
  %8 = alloca %struct.rlimit, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @getrlimit(i32 noundef %9, %struct.rlimit* noundef %7) #9
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  br label %20

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %7, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i64 [ %16, %15 ], [ %19, %17 ]
  %22 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 1
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @setrlimit(i32 noundef %24, %struct.rlimit* noundef %8) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i8*, i8** @g_program_name, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %8, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.82, i64 0, i64 0), i8* noundef %29, i8* noundef %30, i64 noundef %32, i64 noundef %34)
  br label %36

36:                                               ; preds = %27, %20
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @chdir(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @execvp(i8* noundef, i8** noundef) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #6

; Function Attrs: nounwind
declare dso_local i32 @getrlimit(i32 noundef, %struct.rlimit* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @setrlimit(i32 noundef, %struct.rlimit* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @sigemptyset(%struct.__sigset_t* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @sigaddset(%struct.__sigset_t* noundef, i32 noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32 noundef) #4

declare dso_local i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @getrusage(i32 noundef, %struct.rusage* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn }
attributes #9 = { nounwind }
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
