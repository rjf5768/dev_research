; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/analyzer/help.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/analyzer/help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"Help/Manual for Dependency Analyzer\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"\0AThis program is written by Peter Rundberg, Chalmers University of Technology\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"Questions about this software should be directed to biff@ce.chalmers.se\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"To determine the data hazards between loop iterations this program analyzes\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"trace data from a run of the program examined. The program also analyzes the\0A\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"potential speedup obtainable from running the loop iterations in parallel.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"The program requires a number of settings to be done either on the\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"command line or in the settings file.\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"Available flags. Many of these can be set in the settings file.\0A\00", align 1
@.str.9 = private unnamed_addr constant [79 x i8] c"-c #      : CPU limit. Only effective with 'realistic restart'. 0==unlimited.\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"-C #      : CPU limit for run through several configurations.\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"-d        : Check for DATA dependencies (RAW)\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"-e #      : Epoch length (number of loop iterations per epoch).\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"-E        : Use epoch length as total number of epochs\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"-f        : Do NOT use forwarding in speedup analysis\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"-g #      : Specify Thread start penalty\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"-G #      : Specify Commit penalty\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"-h        : Show complete help message\0A\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"-i #      : Print SpeedUp for 1 - Loop, 2 - Program, 3 - Both.\0A\00", align 1
@.str.19 = private unnamed_addr constant [53 x i8] c"-k #      : The test kernel to be used in the test.\0A\00", align 1
@.str.20 = private unnamed_addr constant [66 x i8] c"            1 - Optimum restart. 2 - Realistic restart. 3 - Both\0A\00", align 1
@.str.21 = private unnamed_addr constant [66 x i8] c"-l #      : Max length of hazard top-list. -- NOT IMPLEMENTED --\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"-m        : Analyze instruction mix\0A\00", align 1
@.str.23 = private unnamed_addr constant [75 x i8] c"-n        : Check for NAME dependencies (WAR & WAW) -- NOT IMPLEMENTED --\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"-o <FILE> : Output graphing data to FILE\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"-p #      : Specify load penalty\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"-P #      : Specify store penalty\0A\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"-q        : Quiet mode (do not print processing status)\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"-s        : Do speedup analysis\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"-S        : Do speedup analysis, start early\0A\00", align 1
@.str.30 = private unnamed_addr constant [53 x i8] c"-t #      : Specify the size of the def_hash_table.\0A\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"-x <FILE> : Use other settings file. DEFAULT: analyzer.conf\0A\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"-X        : Do not read settings from a file\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_help(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9, i64 0, i64 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.20, i64 0, i64 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i64 0, i64 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i64 0, i64 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0))
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %59, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i64 0, i64 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31, i64 0, i64 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i64 0, i64 0))
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
