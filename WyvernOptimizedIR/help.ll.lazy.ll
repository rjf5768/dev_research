; ModuleID = './help.ll'
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
define dso_local void @show_help(i8* nocapture noundef readnone %0) #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %2) #3
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 78, i64 1, %struct._IO_FILE* %4) #3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 73, i64 1, %struct._IO_FILE* %6) #3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i64 76, i64 1, %struct._IO_FILE* %8) #3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i64 77, i64 1, %struct._IO_FILE* %10) #3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i64 76, i64 1, %struct._IO_FILE* %12) #3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i64 67, i64 1, %struct._IO_FILE* %14) #3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %16) #3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %18) #3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9, i64 0, i64 0), i64 78, i64 1, %struct._IO_FILE* %20) #3
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i64 62, i64 1, %struct._IO_FILE* %22) #3
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %24) #3
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i64 64, i64 1, %struct._IO_FILE* %26) #3
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %28) #3
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %30) #3
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %32) #3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %34) #3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %36) #3
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i64 @fwrite(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0), i64 63, i64 1, %struct._IO_FILE* %38) #3
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %40) #3
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.20, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %42) #3
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i64 @fwrite(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21, i64 0, i64 0), i64 65, i64 1, %struct._IO_FILE* %44) #3
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %46) #3
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i64 0, i64 0), i64 74, i64 1, %struct._IO_FILE* %48) #3
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %50) #3
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %52) #3
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %54) #3
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %56) #3
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %58) #3
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %60) #3
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %63 = call i64 @fwrite(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %62) #3
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %64) #3
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %66) #3
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %68)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
