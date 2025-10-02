; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/file.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.file*, i8*, %struct.dep*, %struct.commands*, i8*, %struct.dep*, i64, %struct.file*, %struct.file*, %struct.variable_set_list*, %struct.file*, i16, i16 }
%struct.commands = type { i8*, i32, i8*, i32, i8**, i8*, i8 }
%struct.dep = type { %struct.dep*, i8*, %struct.file*, i32 }
%struct.variable_set_list = type { %struct.variable_set_list*, %struct.variable_set* }
%struct.variable_set = type { %struct.variable**, i32 }
%struct.variable = type { %struct.variable*, i8*, i8*, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@num_intermediates = dso_local global i32 0, align 4
@files = internal global [1007 x %struct.file*] zeroinitializer, align 16
@.str = private unnamed_addr constant [48 x i8] c"Commands were specified for file `%s' at %s:%u,\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"but `%s' is now considered the same file as `%s'.\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Commands for `%s' will be ignored in favor of those for `%s'.\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"can't rename single-colon `%s' to double-colon `%s'\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"can't rename double-colon `%s' to single-colon `%s'\00", align 1
@just_print_flag = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"*** Deleting file `%s'\00", align 1
@silent_flag = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"rm \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"unlink: \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c".PRECIOUS\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c".PHONY\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\0A# Files\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"# Not a target:\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"#  Precious file (dependency of .PRECIOUS).\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"#  Phony target (dependency of .PHONY).\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"#  Command-line target.\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"#  A default or MAKEFILES makefile.\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"#  Implicit rule search has%s been done.\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"#  Implicit/static pattern stem: `%s'\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"#  File is an intermediate dependency.\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"#  Also makes:\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"#  Modification time never checked.\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"#  File does not exist.\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"#  Last modified %.24s (%ld)\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"#  File has%s been updated.\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"#  Commands currently running (?!).\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"#  Dependencies currently being made (?!).\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"#  Successfully updated.\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"#  Failed to be updated.\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"#  Invalid value in `update_status' member!\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.34 = private unnamed_addr constant [44 x i8] c"#  Invalid value in `command_state' member!\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"\0A# No files.\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"\0A# %u files in %u hash buckets.\0A\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"# average %.1f files per bucket, max %u files in one bucket.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.file* @lookup_file(i8* noundef %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @abort() #7
  unreachable

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 46
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %25, %19, %13
  %32 = phi i1 [ false, %19 ], [ false, %13 ], [ %30, %25 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %35, i8** %3, align 8
  br label %13, !llvm.loop !4

36:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  %37 = load i8*, i8** %3, align 8
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %54, %36
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, 7
  %51 = load i32, i32* %6, align 4
  %52 = lshr i32 %51, 20
  %53 = add i32 %50, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %43
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  br label %38, !llvm.loop !6

57:                                               ; preds = %38
  %58 = load i32, i32* %6, align 4
  %59 = urem i32 %58, 1007
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %61
  %63 = load %struct.file*, %struct.file** %62, align 8
  store %struct.file* %63, %struct.file** %4, align 8
  br label %64

64:                                               ; preds = %102, %57
  %65 = load %struct.file*, %struct.file** %4, align 8
  %66 = icmp ne %struct.file* %65, null
  br i1 %66, label %67, label %106

67:                                               ; preds = %64
  %68 = load %struct.file*, %struct.file** %4, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %3, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %99, label %73

73:                                               ; preds = %67
  %74 = load %struct.file*, %struct.file** %4, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8*, i8** %3, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %73
  %84 = load %struct.file*, %struct.file** %4, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %83
  %91 = load %struct.file*, %struct.file** %4, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = call i32 @strcmp(i8* noundef %94, i8* noundef %96) #8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %90, %83, %67
  %100 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %100, %struct.file** %2, align 8
  br label %107

101:                                              ; preds = %90, %73
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.file*, %struct.file** %4, align 8
  %104 = getelementptr inbounds %struct.file, %struct.file* %103, i32 0, i32 0
  %105 = load %struct.file*, %struct.file** %104, align 8
  store %struct.file* %105, %struct.file** %4, align 8
  br label %64, !llvm.loop !7

106:                                              ; preds = %64
  store %struct.file* null, %struct.file** %2, align 8
  br label %107

107:                                              ; preds = %106, %99
  %108 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %108
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.file* @enter_file(i8* noundef %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @abort() #7
  unreachable

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %34, %13
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 46
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %26, %20, %14
  %33 = phi i1 [ false, %20 ], [ false, %14 ], [ %31, %26 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %36, i8** %3, align 8
  br label %14, !llvm.loop !8

37:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  %38 = load i8*, i8** %3, align 8
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %55, %37
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %50, 7
  %52 = load i32, i32* %7, align 4
  %53 = lshr i32 %52, 20
  %54 = add i32 %51, %53
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %44
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  br label %39, !llvm.loop !9

58:                                               ; preds = %39
  %59 = load i32, i32* %7, align 4
  %60 = urem i32 %59, 1007
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %62
  %64 = load %struct.file*, %struct.file** %63, align 8
  store %struct.file* %64, %struct.file** %4, align 8
  br label %65

65:                                               ; preds = %102, %58
  %66 = load %struct.file*, %struct.file** %4, align 8
  %67 = icmp ne %struct.file* %66, null
  br i1 %67, label %68, label %106

68:                                               ; preds = %65
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %100, label %74

74:                                               ; preds = %68
  %75 = load %struct.file*, %struct.file** %4, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8*, i8** %3, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %74
  %85 = load %struct.file*, %struct.file** %4, align 8
  %86 = getelementptr inbounds %struct.file, %struct.file* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %84
  %92 = load %struct.file*, %struct.file** %4, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = call i32 @strcmp(i8* noundef %95, i8* noundef %97) #8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %91, %84, %68
  br label %106

101:                                              ; preds = %91, %74
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.file*, %struct.file** %4, align 8
  %104 = getelementptr inbounds %struct.file, %struct.file* %103, i32 0, i32 0
  %105 = load %struct.file*, %struct.file** %104, align 8
  store %struct.file* %105, %struct.file** %4, align 8
  br label %65, !llvm.loop !10

106:                                              ; preds = %100, %65
  %107 = load %struct.file*, %struct.file** %4, align 8
  %108 = icmp ne %struct.file* %107, null
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load %struct.file*, %struct.file** %4, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 12
  %112 = load i16, i16* %111, align 2
  %113 = lshr i16 %112, 2
  %114 = and i16 %113, 1
  %115 = zext i16 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %109
  %118 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %118, %struct.file** %2, align 8
  br label %158

119:                                              ; preds = %109, %106
  %120 = call i8* (i64, ...) bitcast (i8* (...)* @xmalloc to i8* (i64, ...)*)(i64 noundef 96)
  %121 = bitcast i8* %120 to %struct.file*
  store %struct.file* %121, %struct.file** %5, align 8
  %122 = load %struct.file*, %struct.file** %5, align 8
  %123 = bitcast %struct.file* %122 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %123, i8 0, i64 96, i1 false)
  %124 = load i8*, i8** %3, align 8
  %125 = load %struct.file*, %struct.file** %5, align 8
  %126 = getelementptr inbounds %struct.file, %struct.file* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.file*, %struct.file** %5, align 8
  %128 = getelementptr inbounds %struct.file, %struct.file* %127, i32 0, i32 11
  store i16 -1, i16* %128, align 8
  %129 = load %struct.file*, %struct.file** %4, align 8
  %130 = icmp eq %struct.file* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %119
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %133
  %135 = load %struct.file*, %struct.file** %134, align 8
  %136 = load %struct.file*, %struct.file** %5, align 8
  %137 = getelementptr inbounds %struct.file, %struct.file* %136, i32 0, i32 0
  store %struct.file* %135, %struct.file** %137, align 8
  %138 = load %struct.file*, %struct.file** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %140
  store %struct.file* %138, %struct.file** %141, align 8
  br label %156

142:                                              ; preds = %119
  br label %143

143:                                              ; preds = %148, %142
  %144 = load %struct.file*, %struct.file** %4, align 8
  %145 = getelementptr inbounds %struct.file, %struct.file* %144, i32 0, i32 7
  %146 = load %struct.file*, %struct.file** %145, align 8
  %147 = icmp ne %struct.file* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load %struct.file*, %struct.file** %4, align 8
  %150 = getelementptr inbounds %struct.file, %struct.file* %149, i32 0, i32 7
  %151 = load %struct.file*, %struct.file** %150, align 8
  store %struct.file* %151, %struct.file** %4, align 8
  br label %143, !llvm.loop !11

152:                                              ; preds = %143
  %153 = load %struct.file*, %struct.file** %5, align 8
  %154 = load %struct.file*, %struct.file** %4, align 8
  %155 = getelementptr inbounds %struct.file, %struct.file* %154, i32 0, i32 7
  store %struct.file* %153, %struct.file** %155, align 8
  br label %156

156:                                              ; preds = %152, %131
  %157 = load %struct.file*, %struct.file** %5, align 8
  store %struct.file* %157, %struct.file** %2, align 8
  br label %158

158:                                              ; preds = %156, %117
  %159 = load %struct.file*, %struct.file** %2, align 8
  ret %struct.file* %159
}

declare dso_local i8* @xmalloc(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @rename_file(%struct.file* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.dep*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %33, %2
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 7
  %30 = load i32, i32* %6, align 4
  %31 = lshr i32 %30, 20
  %32 = add i32 %29, %31
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  br label %17, !llvm.loop !12

36:                                               ; preds = %17
  %37 = load i32, i32* %6, align 4
  %38 = urem i32 %37, 1007
  store i32 %38, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %39 = load i8*, i8** %4, align 8
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %56, %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = shl i32 %51, 7
  %53 = load i32, i32* %7, align 4
  %54 = lshr i32 %53, 20
  %55 = add i32 %52, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  br label %40, !llvm.loop !13

59:                                               ; preds = %40
  %60 = load i32, i32* %7, align 4
  %61 = urem i32 %60, 1007
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %63
  %65 = load %struct.file*, %struct.file** %64, align 8
  store %struct.file* %65, %struct.file** %10, align 8
  br label %66

66:                                               ; preds = %103, %59
  %67 = load %struct.file*, %struct.file** %10, align 8
  %68 = icmp ne %struct.file* %67, null
  br i1 %68, label %69, label %107

69:                                               ; preds = %66
  %70 = load %struct.file*, %struct.file** %10, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = icmp eq i8* %72, %73
  br i1 %74, label %101, label %75

75:                                               ; preds = %69
  %76 = load %struct.file*, %struct.file** %10, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8*, i8** %4, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %75
  %86 = load %struct.file*, %struct.file** %10, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %85
  %93 = load %struct.file*, %struct.file** %10, align 8
  %94 = getelementptr inbounds %struct.file, %struct.file* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = call i32 @strcmp(i8* noundef %96, i8* noundef %98) #8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %92, %85, %69
  br label %107

102:                                              ; preds = %92, %75
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.file*, %struct.file** %10, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 0
  %106 = load %struct.file*, %struct.file** %105, align 8
  store %struct.file* %106, %struct.file** %10, align 8
  br label %66, !llvm.loop !14

107:                                              ; preds = %101, %66
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load %struct.file*, %struct.file** %10, align 8
  %113 = icmp ne %struct.file* %112, null
  br i1 %113, label %114, label %146

114:                                              ; preds = %111, %107
  store %struct.file* null, %struct.file** %11, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %116
  %118 = load %struct.file*, %struct.file** %117, align 8
  store %struct.file* %118, %struct.file** %9, align 8
  br label %119

119:                                              ; preds = %125, %114
  %120 = load %struct.file*, %struct.file** %9, align 8
  %121 = load %struct.file*, %struct.file** %3, align 8
  %122 = icmp ne %struct.file* %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %124, %struct.file** %11, align 8
  br label %125

125:                                              ; preds = %123
  %126 = load %struct.file*, %struct.file** %9, align 8
  %127 = getelementptr inbounds %struct.file, %struct.file* %126, i32 0, i32 0
  %128 = load %struct.file*, %struct.file** %127, align 8
  store %struct.file* %128, %struct.file** %9, align 8
  br label %119, !llvm.loop !15

129:                                              ; preds = %119
  %130 = load %struct.file*, %struct.file** %11, align 8
  %131 = icmp eq %struct.file* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.file*, %struct.file** %9, align 8
  %134 = getelementptr inbounds %struct.file, %struct.file* %133, i32 0, i32 0
  %135 = load %struct.file*, %struct.file** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %137
  store %struct.file* %135, %struct.file** %138, align 8
  br label %145

139:                                              ; preds = %129
  %140 = load %struct.file*, %struct.file** %9, align 8
  %141 = getelementptr inbounds %struct.file, %struct.file* %140, i32 0, i32 0
  %142 = load %struct.file*, %struct.file** %141, align 8
  %143 = load %struct.file*, %struct.file** %11, align 8
  %144 = getelementptr inbounds %struct.file, %struct.file* %143, i32 0, i32 0
  store %struct.file* %142, %struct.file** %144, align 8
  br label %145

145:                                              ; preds = %139, %132
  br label %146

146:                                              ; preds = %145, %111
  %147 = load %struct.file*, %struct.file** %3, align 8
  store %struct.file* %147, %struct.file** %9, align 8
  br label %148

148:                                              ; preds = %155, %146
  %149 = load %struct.file*, %struct.file** %9, align 8
  %150 = icmp ne %struct.file* %149, null
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load i8*, i8** %4, align 8
  %153 = load %struct.file*, %struct.file** %9, align 8
  %154 = getelementptr inbounds %struct.file, %struct.file* %153, i32 0, i32 1
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %151
  %156 = load %struct.file*, %struct.file** %9, align 8
  %157 = getelementptr inbounds %struct.file, %struct.file* %156, i32 0, i32 7
  %158 = load %struct.file*, %struct.file** %157, align 8
  store %struct.file* %158, %struct.file** %9, align 8
  br label %148, !llvm.loop !16

159:                                              ; preds = %148
  %160 = load %struct.file*, %struct.file** %10, align 8
  %161 = icmp eq %struct.file* %160, null
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %162
  %167 = load i32, i32* %7, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %168
  %170 = load %struct.file*, %struct.file** %169, align 8
  %171 = load %struct.file*, %struct.file** %3, align 8
  %172 = getelementptr inbounds %struct.file, %struct.file* %171, i32 0, i32 0
  store %struct.file* %170, %struct.file** %172, align 8
  %173 = load %struct.file*, %struct.file** %3, align 8
  %174 = load i32, i32* %7, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %175
  store %struct.file* %173, %struct.file** %176, align 8
  br label %177

177:                                              ; preds = %166, %162
  br label %482

178:                                              ; preds = %159
  %179 = load %struct.file*, %struct.file** %3, align 8
  %180 = getelementptr inbounds %struct.file, %struct.file* %179, i32 0, i32 3
  %181 = load %struct.commands*, %struct.commands** %180, align 8
  %182 = icmp ne %struct.commands* %181, null
  br i1 %182, label %183, label %250

183:                                              ; preds = %178
  %184 = load %struct.file*, %struct.file** %10, align 8
  %185 = getelementptr inbounds %struct.file, %struct.file* %184, i32 0, i32 3
  %186 = load %struct.commands*, %struct.commands** %185, align 8
  %187 = icmp eq %struct.commands* %186, null
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load %struct.file*, %struct.file** %3, align 8
  %190 = getelementptr inbounds %struct.file, %struct.file* %189, i32 0, i32 3
  %191 = load %struct.commands*, %struct.commands** %190, align 8
  %192 = load %struct.file*, %struct.file** %10, align 8
  %193 = getelementptr inbounds %struct.file, %struct.file* %192, i32 0, i32 3
  store %struct.commands* %191, %struct.commands** %193, align 8
  br label %249

194:                                              ; preds = %183
  %195 = load %struct.file*, %struct.file** %3, align 8
  %196 = getelementptr inbounds %struct.file, %struct.file* %195, i32 0, i32 3
  %197 = load %struct.commands*, %struct.commands** %196, align 8
  %198 = load %struct.file*, %struct.file** %10, align 8
  %199 = getelementptr inbounds %struct.file, %struct.file* %198, i32 0, i32 3
  %200 = load %struct.commands*, %struct.commands** %199, align 8
  %201 = icmp ne %struct.commands* %197, %200
  br i1 %201, label %202, label %248

202:                                              ; preds = %194
  %203 = load %struct.file*, %struct.file** %3, align 8
  %204 = getelementptr inbounds %struct.file, %struct.file* %203, i32 0, i32 3
  %205 = load %struct.commands*, %struct.commands** %204, align 8
  %206 = getelementptr inbounds %struct.commands, %struct.commands* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.file*, %struct.file** %3, align 8
  %209 = getelementptr inbounds %struct.file, %struct.file* %208, i32 0, i32 3
  %210 = load %struct.commands*, %struct.commands** %209, align 8
  %211 = getelementptr inbounds %struct.commands, %struct.commands* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i8*, i8** %5, align 8
  %214 = load %struct.file*, %struct.file** %10, align 8
  %215 = getelementptr inbounds %struct.file, %struct.file* %214, i32 0, i32 3
  %216 = load %struct.commands*, %struct.commands** %215, align 8
  %217 = getelementptr inbounds %struct.commands, %struct.commands* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.file*, %struct.file** %10, align 8
  %220 = getelementptr inbounds %struct.file, %struct.file* %219, i32 0, i32 3
  %221 = load %struct.commands*, %struct.commands** %220, align 8
  %222 = getelementptr inbounds %struct.commands, %struct.commands* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  call void (i8*, i32, i8*, i8*, i8*, i32, ...) bitcast (void (...)* @makefile_error to void (i8*, i32, i8*, i8*, i8*, i32, ...)*)(i8* noundef %207, i32 noundef %212, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef %213, i8* noundef %218, i32 noundef %223)
  %224 = load %struct.file*, %struct.file** %3, align 8
  %225 = getelementptr inbounds %struct.file, %struct.file* %224, i32 0, i32 3
  %226 = load %struct.commands*, %struct.commands** %225, align 8
  %227 = getelementptr inbounds %struct.commands, %struct.commands* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.file*, %struct.file** %3, align 8
  %230 = getelementptr inbounds %struct.file, %struct.file* %229, i32 0, i32 3
  %231 = load %struct.commands*, %struct.commands** %230, align 8
  %232 = getelementptr inbounds %struct.commands, %struct.commands* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i8*, i8** %5, align 8
  %235 = load i8*, i8** %4, align 8
  call void (i8*, i32, i8*, i8*, i8*, ...) bitcast (void (...)* @makefile_error to void (i8*, i32, i8*, i8*, i8*, ...)*)(i8* noundef %228, i32 noundef %233, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* noundef %234, i8* noundef %235)
  %236 = load %struct.file*, %struct.file** %3, align 8
  %237 = getelementptr inbounds %struct.file, %struct.file* %236, i32 0, i32 3
  %238 = load %struct.commands*, %struct.commands** %237, align 8
  %239 = getelementptr inbounds %struct.commands, %struct.commands* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.file*, %struct.file** %3, align 8
  %242 = getelementptr inbounds %struct.file, %struct.file* %241, i32 0, i32 3
  %243 = load %struct.commands*, %struct.commands** %242, align 8
  %244 = getelementptr inbounds %struct.commands, %struct.commands* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i8*, i8** %4, align 8
  %247 = load i8*, i8** %5, align 8
  call void (i8*, i32, i8*, i8*, i8*, ...) bitcast (void (...)* @makefile_error to void (i8*, i32, i8*, i8*, i8*, ...)*)(i8* noundef %240, i32 noundef %245, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* noundef %246, i8* noundef %247)
  br label %248

248:                                              ; preds = %202, %194
  br label %249

249:                                              ; preds = %248, %188
  br label %250

250:                                              ; preds = %249, %178
  %251 = load %struct.file*, %struct.file** %10, align 8
  %252 = getelementptr inbounds %struct.file, %struct.file* %251, i32 0, i32 2
  %253 = load %struct.dep*, %struct.dep** %252, align 8
  store %struct.dep* %253, %struct.dep** %12, align 8
  %254 = load %struct.dep*, %struct.dep** %12, align 8
  %255 = icmp eq %struct.dep* %254, null
  br i1 %255, label %256, label %262

256:                                              ; preds = %250
  %257 = load %struct.file*, %struct.file** %3, align 8
  %258 = getelementptr inbounds %struct.file, %struct.file* %257, i32 0, i32 2
  %259 = load %struct.dep*, %struct.dep** %258, align 8
  %260 = load %struct.file*, %struct.file** %10, align 8
  %261 = getelementptr inbounds %struct.file, %struct.file* %260, i32 0, i32 2
  store %struct.dep* %259, %struct.dep** %261, align 8
  br label %281

262:                                              ; preds = %250
  br label %263

263:                                              ; preds = %268, %262
  %264 = load %struct.dep*, %struct.dep** %12, align 8
  %265 = getelementptr inbounds %struct.dep, %struct.dep* %264, i32 0, i32 0
  %266 = load %struct.dep*, %struct.dep** %265, align 8
  %267 = icmp ne %struct.dep* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load %struct.dep*, %struct.dep** %12, align 8
  %270 = getelementptr inbounds %struct.dep, %struct.dep* %269, i32 0, i32 0
  %271 = load %struct.dep*, %struct.dep** %270, align 8
  store %struct.dep* %271, %struct.dep** %12, align 8
  br label %263, !llvm.loop !17

272:                                              ; preds = %263
  %273 = load %struct.file*, %struct.file** %3, align 8
  %274 = getelementptr inbounds %struct.file, %struct.file* %273, i32 0, i32 2
  %275 = load %struct.dep*, %struct.dep** %274, align 8
  %276 = load %struct.dep*, %struct.dep** %12, align 8
  %277 = getelementptr inbounds %struct.dep, %struct.dep* %276, i32 0, i32 0
  store %struct.dep* %275, %struct.dep** %277, align 8
  %278 = load %struct.file*, %struct.file** %10, align 8
  %279 = getelementptr inbounds %struct.file, %struct.file* %278, i32 0, i32 2
  %280 = load %struct.dep*, %struct.dep** %279, align 8
  call void (%struct.dep*, ...) bitcast (void (...)* @uniquize_deps to void (%struct.dep*, ...)*)(%struct.dep* noundef %280)
  br label %281

281:                                              ; preds = %272, %256
  %282 = load %struct.file*, %struct.file** %10, align 8
  %283 = getelementptr inbounds %struct.file, %struct.file* %282, i32 0, i32 9
  %284 = load %struct.file*, %struct.file** %3, align 8
  %285 = getelementptr inbounds %struct.file, %struct.file* %284, i32 0, i32 9
  %286 = load %struct.variable_set_list*, %struct.variable_set_list** %285, align 8
  call void (%struct.variable_set_list**, %struct.variable_set_list*, ...) bitcast (void (...)* @merge_variable_set_lists to void (%struct.variable_set_list**, %struct.variable_set_list*, ...)*)(%struct.variable_set_list** noundef %283, %struct.variable_set_list* noundef %286)
  %287 = load %struct.file*, %struct.file** %10, align 8
  %288 = getelementptr inbounds %struct.file, %struct.file* %287, i32 0, i32 12
  %289 = load i16, i16* %288, align 2
  %290 = lshr i16 %289, 2
  %291 = and i16 %290, 1
  %292 = zext i16 %291 to i32
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %281
  %295 = load %struct.file*, %struct.file** %3, align 8
  %296 = getelementptr inbounds %struct.file, %struct.file* %295, i32 0, i32 12
  %297 = load i16, i16* %296, align 2
  %298 = lshr i16 %297, 2
  %299 = and i16 %298, 1
  %300 = zext i16 %299 to i32
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %294
  %303 = load i8*, i8** %5, align 8
  %304 = load i8*, i8** %4, align 8
  call void (i8*, i8*, i8*, ...) bitcast (void (...)* @fatal to void (i8*, i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* noundef %303, i8* noundef %304)
  br label %305

305:                                              ; preds = %302, %294, %281
  %306 = load %struct.file*, %struct.file** %10, align 8
  %307 = getelementptr inbounds %struct.file, %struct.file* %306, i32 0, i32 12
  %308 = load i16, i16* %307, align 2
  %309 = lshr i16 %308, 2
  %310 = and i16 %309, 1
  %311 = zext i16 %310 to i32
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %324, label %313

313:                                              ; preds = %305
  %314 = load %struct.file*, %struct.file** %3, align 8
  %315 = getelementptr inbounds %struct.file, %struct.file* %314, i32 0, i32 12
  %316 = load i16, i16* %315, align 2
  %317 = lshr i16 %316, 2
  %318 = and i16 %317, 1
  %319 = zext i16 %318 to i32
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %313
  %322 = load i8*, i8** %5, align 8
  %323 = load i8*, i8** %4, align 8
  call void (i8*, i8*, i8*, ...) bitcast (void (...)* @fatal to void (i8*, i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* noundef %322, i8* noundef %323)
  br label %324

324:                                              ; preds = %321, %313, %305
  %325 = load %struct.file*, %struct.file** %3, align 8
  %326 = getelementptr inbounds %struct.file, %struct.file* %325, i32 0, i32 6
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.file*, %struct.file** %10, align 8
  %329 = getelementptr inbounds %struct.file, %struct.file* %328, i32 0, i32 6
  %330 = load i64, i64* %329, align 8
  %331 = icmp sgt i64 %327, %330
  br i1 %331, label %332, label %338

332:                                              ; preds = %324
  %333 = load %struct.file*, %struct.file** %3, align 8
  %334 = getelementptr inbounds %struct.file, %struct.file* %333, i32 0, i32 6
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.file*, %struct.file** %10, align 8
  %337 = getelementptr inbounds %struct.file, %struct.file* %336, i32 0, i32 6
  store i64 %335, i64* %337, align 8
  br label %338

338:                                              ; preds = %332, %324
  %339 = load %struct.file*, %struct.file** %3, align 8
  %340 = getelementptr inbounds %struct.file, %struct.file* %339, i32 0, i32 12
  %341 = load i16, i16* %340, align 2
  %342 = lshr i16 %341, 3
  %343 = and i16 %342, 1
  %344 = zext i16 %343 to i32
  %345 = load %struct.file*, %struct.file** %10, align 8
  %346 = getelementptr inbounds %struct.file, %struct.file* %345, i32 0, i32 12
  %347 = load i16, i16* %346, align 2
  %348 = lshr i16 %347, 3
  %349 = and i16 %348, 1
  %350 = zext i16 %349 to i32
  %351 = or i32 %350, %344
  %352 = trunc i32 %351 to i16
  %353 = load i16, i16* %346, align 2
  %354 = and i16 %352, 1
  %355 = shl i16 %354, 3
  %356 = and i16 %353, -9
  %357 = or i16 %356, %355
  store i16 %357, i16* %346, align 2
  %358 = zext i16 %354 to i32
  %359 = load %struct.file*, %struct.file** %3, align 8
  %360 = getelementptr inbounds %struct.file, %struct.file* %359, i32 0, i32 12
  %361 = load i16, i16* %360, align 2
  %362 = lshr i16 %361, 4
  %363 = and i16 %362, 1
  %364 = zext i16 %363 to i32
  %365 = load %struct.file*, %struct.file** %10, align 8
  %366 = getelementptr inbounds %struct.file, %struct.file* %365, i32 0, i32 12
  %367 = load i16, i16* %366, align 2
  %368 = lshr i16 %367, 4
  %369 = and i16 %368, 1
  %370 = zext i16 %369 to i32
  %371 = or i32 %370, %364
  %372 = trunc i32 %371 to i16
  %373 = load i16, i16* %366, align 2
  %374 = and i16 %372, 1
  %375 = shl i16 %374, 4
  %376 = and i16 %373, -17
  %377 = or i16 %376, %375
  store i16 %377, i16* %366, align 2
  %378 = zext i16 %374 to i32
  %379 = load %struct.file*, %struct.file** %3, align 8
  %380 = getelementptr inbounds %struct.file, %struct.file* %379, i32 0, i32 12
  %381 = load i16, i16* %380, align 2
  %382 = lshr i16 %381, 5
  %383 = and i16 %382, 1
  %384 = zext i16 %383 to i32
  %385 = load %struct.file*, %struct.file** %10, align 8
  %386 = getelementptr inbounds %struct.file, %struct.file* %385, i32 0, i32 12
  %387 = load i16, i16* %386, align 2
  %388 = lshr i16 %387, 5
  %389 = and i16 %388, 1
  %390 = zext i16 %389 to i32
  %391 = or i32 %390, %384
  %392 = trunc i32 %391 to i16
  %393 = load i16, i16* %386, align 2
  %394 = and i16 %392, 1
  %395 = shl i16 %394, 5
  %396 = and i16 %393, -33
  %397 = or i16 %396, %395
  store i16 %397, i16* %386, align 2
  %398 = zext i16 %394 to i32
  %399 = load %struct.file*, %struct.file** %3, align 8
  %400 = getelementptr inbounds %struct.file, %struct.file* %399, i32 0, i32 12
  %401 = load i16, i16* %400, align 2
  %402 = lshr i16 %401, 6
  %403 = and i16 %402, 1
  %404 = zext i16 %403 to i32
  %405 = load %struct.file*, %struct.file** %10, align 8
  %406 = getelementptr inbounds %struct.file, %struct.file* %405, i32 0, i32 12
  %407 = load i16, i16* %406, align 2
  %408 = lshr i16 %407, 6
  %409 = and i16 %408, 1
  %410 = zext i16 %409 to i32
  %411 = or i32 %410, %404
  %412 = trunc i32 %411 to i16
  %413 = load i16, i16* %406, align 2
  %414 = and i16 %412, 1
  %415 = shl i16 %414, 6
  %416 = and i16 %413, -65
  %417 = or i16 %416, %415
  store i16 %417, i16* %406, align 2
  %418 = zext i16 %414 to i32
  %419 = load %struct.file*, %struct.file** %3, align 8
  %420 = getelementptr inbounds %struct.file, %struct.file* %419, i32 0, i32 12
  %421 = load i16, i16* %420, align 2
  %422 = lshr i16 %421, 7
  %423 = and i16 %422, 1
  %424 = zext i16 %423 to i32
  %425 = load %struct.file*, %struct.file** %10, align 8
  %426 = getelementptr inbounds %struct.file, %struct.file* %425, i32 0, i32 12
  %427 = load i16, i16* %426, align 2
  %428 = lshr i16 %427, 7
  %429 = and i16 %428, 1
  %430 = zext i16 %429 to i32
  %431 = or i32 %430, %424
  %432 = trunc i32 %431 to i16
  %433 = load i16, i16* %426, align 2
  %434 = and i16 %432, 1
  %435 = shl i16 %434, 7
  %436 = and i16 %433, -129
  %437 = or i16 %436, %435
  store i16 %437, i16* %426, align 2
  %438 = zext i16 %434 to i32
  %439 = load %struct.file*, %struct.file** %3, align 8
  %440 = getelementptr inbounds %struct.file, %struct.file* %439, i32 0, i32 12
  %441 = load i16, i16* %440, align 2
  %442 = lshr i16 %441, 8
  %443 = and i16 %442, 1
  %444 = zext i16 %443 to i32
  %445 = load %struct.file*, %struct.file** %10, align 8
  %446 = getelementptr inbounds %struct.file, %struct.file* %445, i32 0, i32 12
  %447 = load i16, i16* %446, align 2
  %448 = lshr i16 %447, 8
  %449 = and i16 %448, 1
  %450 = zext i16 %449 to i32
  %451 = or i32 %450, %444
  %452 = trunc i32 %451 to i16
  %453 = load i16, i16* %446, align 2
  %454 = and i16 %452, 1
  %455 = shl i16 %454, 8
  %456 = and i16 %453, -257
  %457 = or i16 %456, %455
  store i16 %457, i16* %446, align 2
  %458 = zext i16 %454 to i32
  %459 = load %struct.file*, %struct.file** %3, align 8
  %460 = getelementptr inbounds %struct.file, %struct.file* %459, i32 0, i32 12
  %461 = load i16, i16* %460, align 2
  %462 = lshr i16 %461, 9
  %463 = and i16 %462, 1
  %464 = zext i16 %463 to i32
  %465 = load %struct.file*, %struct.file** %10, align 8
  %466 = getelementptr inbounds %struct.file, %struct.file* %465, i32 0, i32 12
  %467 = load i16, i16* %466, align 2
  %468 = lshr i16 %467, 9
  %469 = and i16 %468, 1
  %470 = zext i16 %469 to i32
  %471 = or i32 %470, %464
  %472 = trunc i32 %471 to i16
  %473 = load i16, i16* %466, align 2
  %474 = and i16 %472, 1
  %475 = shl i16 %474, 9
  %476 = and i16 %473, -513
  %477 = or i16 %476, %475
  store i16 %477, i16* %466, align 2
  %478 = zext i16 %474 to i32
  %479 = load %struct.file*, %struct.file** %10, align 8
  %480 = load %struct.file*, %struct.file** %3, align 8
  %481 = getelementptr inbounds %struct.file, %struct.file* %480, i32 0, i32 8
  store %struct.file* %479, %struct.file** %481, align 8
  br label %482

482:                                              ; preds = %338, %177
  ret void
}

declare dso_local void @makefile_error(...) #3

declare dso_local void @uniquize_deps(...) #3

declare dso_local void @merge_variable_set_lists(...) #3

declare dso_local void @fatal(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @remove_intermediates(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @just_print_flag, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %132

13:                                               ; preds = %9, %1
  store i8 0, i8* %5, align 1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %118, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 1007
  br i1 %16, label %17, label %121

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %19
  %21 = load %struct.file*, %struct.file** %20, align 8
  store %struct.file* %21, %struct.file** %4, align 8
  br label %22

22:                                               ; preds = %113, %17
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = icmp ne %struct.file* %23, null
  br i1 %24, label %25, label %117

25:                                               ; preds = %22
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 12
  %28 = load i16, i16* %27, align 2
  %29 = lshr i16 %28, 10
  %30 = and i16 %29, 1
  %31 = zext i16 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %112

33:                                               ; preds = %25
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 12
  %36 = load i16, i16* %35, align 2
  %37 = lshr i16 %36, 11
  %38 = and i16 %37, 1
  %39 = zext i16 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.file*, %struct.file** %4, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 12
  %44 = load i16, i16* %43, align 2
  %45 = lshr i16 %44, 3
  %46 = and i16 %45, 1
  %47 = zext i16 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %112, label %49

49:                                               ; preds = %41, %33
  %50 = load i32, i32* @just_print_flag, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %66

53:                                               ; preds = %49
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @unlink(i8* noundef %56) #9
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = call i32* @__errno_location() #10
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %113

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %52
  %67 = load %struct.file*, %struct.file** %4, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 12
  %69 = load i16, i16* %68, align 2
  %70 = lshr i16 %69, 11
  %71 = and i16 %70, 1
  %72 = zext i16 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %2, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load %struct.file*, %struct.file** %4, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* noundef %80)
  br label %103

81:                                               ; preds = %74
  %82 = load i32, i32* @silent_flag, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @just_print_flag, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %102, label %87

87:                                               ; preds = %84
  %88 = load i8, i8* %5, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = call i32 @fputs(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* noundef %91)
  store i8 1, i8* %5, align 1
  br label %93

93:                                               ; preds = %90, %87
  %94 = call i32 @putchar(i32 noundef 32)
  %95 = load %struct.file*, %struct.file** %4, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %99 = call i32 @fputs(i8* noundef %97, %struct._IO_FILE* noundef %98)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %101 = call i32 @fflush(%struct._IO_FILE* noundef %100)
  br label %102

102:                                              ; preds = %93, %84, %81
  br label %103

103:                                              ; preds = %102, %77
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.file*, %struct.file** %4, align 8
  %108 = getelementptr inbounds %struct.file, %struct.file* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @perror_with_name to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %109)
  br label %110

110:                                              ; preds = %106, %103
  br label %111

111:                                              ; preds = %110, %66
  br label %112

112:                                              ; preds = %111, %41, %25
  br label %113

113:                                              ; preds = %112, %64
  %114 = load %struct.file*, %struct.file** %4, align 8
  %115 = getelementptr inbounds %struct.file, %struct.file* %114, i32 0, i32 0
  %116 = load %struct.file*, %struct.file** %115, align 8
  store %struct.file* %116, %struct.file** %4, align 8
  br label %22, !llvm.loop !18

117:                                              ; preds = %22
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %14, !llvm.loop !19

121:                                              ; preds = %14
  %122 = load i8, i8* %5, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i32, i32* %2, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = call i32 @putchar(i32 noundef 10)
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %131 = call i32 @fflush(%struct._IO_FILE* noundef %130)
  br label %132

132:                                              ; preds = %12, %128, %125, %121
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #5

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #6

declare dso_local void @error(...) #3

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #3

declare dso_local i32 @putchar(i32 noundef) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

declare dso_local void @perror_with_name(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @snap_deps() #0 {
  %1 = alloca %struct.file*, align 8
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.dep*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %74, %0
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 1007
  br i1 %7, label %8, label %77

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %10
  %12 = load %struct.file*, %struct.file** %11, align 8
  store %struct.file* %12, %struct.file** %1, align 8
  br label %13

13:                                               ; preds = %69, %8
  %14 = load %struct.file*, %struct.file** %1, align 8
  %15 = icmp ne %struct.file* %14, null
  br i1 %15, label %16, label %73

16:                                               ; preds = %13
  %17 = load %struct.file*, %struct.file** %1, align 8
  store %struct.file* %17, %struct.file** %2, align 8
  br label %18

18:                                               ; preds = %64, %16
  %19 = load %struct.file*, %struct.file** %2, align 8
  %20 = icmp ne %struct.file* %19, null
  br i1 %20, label %21, label %68

21:                                               ; preds = %18
  %22 = load %struct.file*, %struct.file** %2, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 2
  %24 = load %struct.dep*, %struct.dep** %23, align 8
  store %struct.dep* %24, %struct.dep** %3, align 8
  br label %25

25:                                               ; preds = %59, %21
  %26 = load %struct.dep*, %struct.dep** %3, align 8
  %27 = icmp ne %struct.dep* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %25
  %29 = load %struct.dep*, %struct.dep** %3, align 8
  %30 = getelementptr inbounds %struct.dep, %struct.dep* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load %struct.dep*, %struct.dep** %3, align 8
  %35 = getelementptr inbounds %struct.dep, %struct.dep* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call %struct.file* @lookup_file(i8* noundef %36)
  %38 = load %struct.dep*, %struct.dep** %3, align 8
  %39 = getelementptr inbounds %struct.dep, %struct.dep* %38, i32 0, i32 2
  store %struct.file* %37, %struct.file** %39, align 8
  %40 = load %struct.dep*, %struct.dep** %3, align 8
  %41 = getelementptr inbounds %struct.dep, %struct.dep* %40, i32 0, i32 2
  %42 = load %struct.file*, %struct.file** %41, align 8
  %43 = icmp eq %struct.file* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load %struct.dep*, %struct.dep** %3, align 8
  %46 = getelementptr inbounds %struct.dep, %struct.dep* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call %struct.file* @enter_file(i8* noundef %47)
  %49 = load %struct.dep*, %struct.dep** %3, align 8
  %50 = getelementptr inbounds %struct.dep, %struct.dep* %49, i32 0, i32 2
  store %struct.file* %48, %struct.file** %50, align 8
  br label %55

51:                                               ; preds = %33
  %52 = load %struct.dep*, %struct.dep** %3, align 8
  %53 = getelementptr inbounds %struct.dep, %struct.dep* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  call void @free(i8* noundef %54) #9
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.dep*, %struct.dep** %3, align 8
  %57 = getelementptr inbounds %struct.dep, %struct.dep* %56, i32 0, i32 1
  store i8* null, i8** %57, align 8
  br label %58

58:                                               ; preds = %55, %28
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.dep*, %struct.dep** %3, align 8
  %61 = getelementptr inbounds %struct.dep, %struct.dep* %60, i32 0, i32 0
  %62 = load %struct.dep*, %struct.dep** %61, align 8
  store %struct.dep* %62, %struct.dep** %3, align 8
  br label %25, !llvm.loop !20

63:                                               ; preds = %25
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.file*, %struct.file** %2, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 7
  %67 = load %struct.file*, %struct.file** %66, align 8
  store %struct.file* %67, %struct.file** %2, align 8
  br label %18, !llvm.loop !21

68:                                               ; preds = %18
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.file*, %struct.file** %1, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  %72 = load %struct.file*, %struct.file** %71, align 8
  store %struct.file* %72, %struct.file** %1, align 8
  br label %13, !llvm.loop !22

73:                                               ; preds = %13
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %5, !llvm.loop !23

77:                                               ; preds = %5
  %78 = call %struct.file* @lookup_file(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store %struct.file* %78, %struct.file** %1, align 8
  br label %79

79:                                               ; preds = %112, %77
  %80 = load %struct.file*, %struct.file** %1, align 8
  %81 = icmp ne %struct.file* %80, null
  br i1 %81, label %82, label %116

82:                                               ; preds = %79
  %83 = load %struct.file*, %struct.file** %1, align 8
  %84 = getelementptr inbounds %struct.file, %struct.file* %83, i32 0, i32 2
  %85 = load %struct.dep*, %struct.dep** %84, align 8
  store %struct.dep* %85, %struct.dep** %3, align 8
  br label %86

86:                                               ; preds = %107, %82
  %87 = load %struct.dep*, %struct.dep** %3, align 8
  %88 = icmp ne %struct.dep* %87, null
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load %struct.dep*, %struct.dep** %3, align 8
  %91 = getelementptr inbounds %struct.dep, %struct.dep* %90, i32 0, i32 2
  %92 = load %struct.file*, %struct.file** %91, align 8
  store %struct.file* %92, %struct.file** %2, align 8
  br label %93

93:                                               ; preds = %102, %89
  %94 = load %struct.file*, %struct.file** %2, align 8
  %95 = icmp ne %struct.file* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.file*, %struct.file** %2, align 8
  %98 = getelementptr inbounds %struct.file, %struct.file* %97, i32 0, i32 12
  %99 = load i16, i16* %98, align 2
  %100 = and i16 %99, -9
  %101 = or i16 %100, 8
  store i16 %101, i16* %98, align 2
  br label %102

102:                                              ; preds = %96
  %103 = load %struct.file*, %struct.file** %2, align 8
  %104 = getelementptr inbounds %struct.file, %struct.file* %103, i32 0, i32 7
  %105 = load %struct.file*, %struct.file** %104, align 8
  store %struct.file* %105, %struct.file** %2, align 8
  br label %93, !llvm.loop !24

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.dep*, %struct.dep** %3, align 8
  %109 = getelementptr inbounds %struct.dep, %struct.dep* %108, i32 0, i32 0
  %110 = load %struct.dep*, %struct.dep** %109, align 8
  store %struct.dep* %110, %struct.dep** %3, align 8
  br label %86, !llvm.loop !25

111:                                              ; preds = %86
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.file*, %struct.file** %1, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i32 0, i32 7
  %115 = load %struct.file*, %struct.file** %114, align 8
  store %struct.file* %115, %struct.file** %1, align 8
  br label %79, !llvm.loop !26

116:                                              ; preds = %79
  %117 = call %struct.file* @lookup_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store %struct.file* %117, %struct.file** %1, align 8
  br label %118

118:                                              ; preds = %153, %116
  %119 = load %struct.file*, %struct.file** %1, align 8
  %120 = icmp ne %struct.file* %119, null
  br i1 %120, label %121, label %157

121:                                              ; preds = %118
  %122 = load %struct.file*, %struct.file** %1, align 8
  %123 = getelementptr inbounds %struct.file, %struct.file* %122, i32 0, i32 2
  %124 = load %struct.dep*, %struct.dep** %123, align 8
  store %struct.dep* %124, %struct.dep** %3, align 8
  br label %125

125:                                              ; preds = %148, %121
  %126 = load %struct.dep*, %struct.dep** %3, align 8
  %127 = icmp ne %struct.dep* %126, null
  br i1 %127, label %128, label %152

128:                                              ; preds = %125
  %129 = load %struct.dep*, %struct.dep** %3, align 8
  %130 = getelementptr inbounds %struct.dep, %struct.dep* %129, i32 0, i32 2
  %131 = load %struct.file*, %struct.file** %130, align 8
  store %struct.file* %131, %struct.file** %2, align 8
  br label %132

132:                                              ; preds = %143, %128
  %133 = load %struct.file*, %struct.file** %2, align 8
  %134 = icmp ne %struct.file* %133, null
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load %struct.file*, %struct.file** %2, align 8
  %137 = getelementptr inbounds %struct.file, %struct.file* %136, i32 0, i32 12
  %138 = load i16, i16* %137, align 2
  %139 = and i16 %138, -513
  %140 = or i16 %139, 512
  store i16 %140, i16* %137, align 2
  %141 = load %struct.file*, %struct.file** %2, align 8
  %142 = getelementptr inbounds %struct.file, %struct.file* %141, i32 0, i32 6
  store i64 -1, i64* %142, align 8
  br label %143

143:                                              ; preds = %135
  %144 = load %struct.file*, %struct.file** %2, align 8
  %145 = getelementptr inbounds %struct.file, %struct.file* %144, i32 0, i32 7
  %146 = load %struct.file*, %struct.file** %145, align 8
  store %struct.file* %146, %struct.file** %2, align 8
  br label %132, !llvm.loop !27

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.dep*, %struct.dep** %3, align 8
  %150 = getelementptr inbounds %struct.dep, %struct.dep* %149, i32 0, i32 0
  %151 = load %struct.dep*, %struct.dep** %150, align 8
  store %struct.dep* %151, %struct.dep** %3, align 8
  br label %125, !llvm.loop !28

152:                                              ; preds = %125
  br label %153

153:                                              ; preds = %152
  %154 = load %struct.file*, %struct.file** %1, align 8
  %155 = getelementptr inbounds %struct.file, %struct.file* %154, i32 0, i32 7
  %156 = load %struct.file*, %struct.file** %155, align 8
  store %struct.file* %156, %struct.file** %1, align 8
  br label %118, !llvm.loop !29

157:                                              ; preds = %118
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_file_data_base() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = call i32 @puts(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %291, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp ult i32 %10, 1007
  br i1 %11, label %12, label %294

12:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %1, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %14
  %16 = load %struct.file*, %struct.file** %15, align 8
  store %struct.file* %16, %struct.file** %4, align 8
  br label %17

17:                                               ; preds = %277, %12
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = icmp ne %struct.file* %18, null
  br i1 %19, label %20, label %281

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load %struct.file*, %struct.file** %4, align 8
  store %struct.file* %23, %struct.file** %7, align 8
  br label %24

24:                                               ; preds = %272, %20
  %25 = load %struct.file*, %struct.file** %7, align 8
  %26 = icmp ne %struct.file* %25, null
  br i1 %26, label %27, label %276

27:                                               ; preds = %24
  %28 = call i32 @putchar(i32 noundef 10)
  %29 = load %struct.file*, %struct.file** %7, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 12
  %31 = load i16, i16* %30, align 2
  %32 = lshr i16 %31, 7
  %33 = and i16 %32, 1
  %34 = zext i16 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = call i32 @puts(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.file*, %struct.file** %7, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 12
  %44 = load i16, i16* %43, align 2
  %45 = lshr i16 %44, 2
  %46 = and i16 %45, 1
  %47 = zext i16 %46 to i32
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %41, i8* noundef %50)
  %52 = load %struct.file*, %struct.file** %7, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 2
  %54 = load %struct.dep*, %struct.dep** %53, align 8
  store %struct.dep* %54, %struct.dep** %5, align 8
  br label %55

55:                                               ; preds = %76, %38
  %56 = load %struct.dep*, %struct.dep** %5, align 8
  %57 = icmp ne %struct.dep* %56, null
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load %struct.dep*, %struct.dep** %5, align 8
  %60 = getelementptr inbounds %struct.dep, %struct.dep* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.dep*, %struct.dep** %5, align 8
  %65 = getelementptr inbounds %struct.dep, %struct.dep* %64, i32 0, i32 2
  %66 = load %struct.file*, %struct.file** %65, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  br label %73

69:                                               ; preds = %58
  %70 = load %struct.dep*, %struct.dep** %5, align 8
  %71 = getelementptr inbounds %struct.dep, %struct.dep* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi i8* [ %68, %63 ], [ %72, %69 ]
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef %74)
  br label %76

76:                                               ; preds = %73
  %77 = load %struct.dep*, %struct.dep** %5, align 8
  %78 = getelementptr inbounds %struct.dep, %struct.dep* %77, i32 0, i32 0
  %79 = load %struct.dep*, %struct.dep** %78, align 8
  store %struct.dep* %79, %struct.dep** %5, align 8
  br label %55, !llvm.loop !30

80:                                               ; preds = %55
  %81 = call i32 @putchar(i32 noundef 10)
  %82 = load %struct.file*, %struct.file** %7, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 12
  %84 = load i16, i16* %83, align 2
  %85 = lshr i16 %84, 3
  %86 = and i16 %85, 1
  %87 = zext i16 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = call i32 @puts(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %80
  %92 = load %struct.file*, %struct.file** %7, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 12
  %94 = load i16, i16* %93, align 2
  %95 = lshr i16 %94, 9
  %96 = and i16 %95, 1
  %97 = zext i16 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = call i32 @puts(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %91
  %102 = load %struct.file*, %struct.file** %7, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 12
  %104 = load i16, i16* %103, align 2
  %105 = lshr i16 %104, 8
  %106 = and i16 %105, 1
  %107 = zext i16 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = call i32 @puts(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %101
  %112 = load %struct.file*, %struct.file** %7, align 8
  %113 = getelementptr inbounds %struct.file, %struct.file* %112, i32 0, i32 12
  %114 = load i16, i16* %113, align 2
  %115 = lshr i16 %114, 11
  %116 = and i16 %115, 1
  %117 = zext i16 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %111
  %122 = load %struct.file*, %struct.file** %7, align 8
  %123 = getelementptr inbounds %struct.file, %struct.file* %122, i32 0, i32 12
  %124 = load i16, i16* %123, align 2
  %125 = lshr i16 %124, 4
  %126 = and i16 %125, 1
  %127 = zext i16 %126 to i32
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)
  %131 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i8* noundef %130)
  %132 = load %struct.file*, %struct.file** %7, align 8
  %133 = getelementptr inbounds %struct.file, %struct.file* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %121
  %137 = load %struct.file*, %struct.file** %7, align 8
  %138 = getelementptr inbounds %struct.file, %struct.file* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i8* noundef %139)
  br label %141

141:                                              ; preds = %136, %121
  %142 = load %struct.file*, %struct.file** %7, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 12
  %144 = load i16, i16* %143, align 2
  %145 = lshr i16 %144, 10
  %146 = and i16 %145, 1
  %147 = zext i16 %146 to i32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = call i32 @puts(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %141
  %152 = load %struct.file*, %struct.file** %7, align 8
  %153 = getelementptr inbounds %struct.file, %struct.file* %152, i32 0, i32 5
  %154 = load %struct.dep*, %struct.dep** %153, align 8
  %155 = icmp ne %struct.dep* %154, null
  br i1 %155, label %156, label %189

156:                                              ; preds = %151
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %158 = call i32 @fputs(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), %struct._IO_FILE* noundef %157)
  %159 = load %struct.file*, %struct.file** %7, align 8
  %160 = getelementptr inbounds %struct.file, %struct.file* %159, i32 0, i32 5
  %161 = load %struct.dep*, %struct.dep** %160, align 8
  store %struct.dep* %161, %struct.dep** %5, align 8
  br label %162

162:                                              ; preds = %183, %156
  %163 = load %struct.dep*, %struct.dep** %5, align 8
  %164 = icmp ne %struct.dep* %163, null
  br i1 %164, label %165, label %187

165:                                              ; preds = %162
  %166 = load %struct.dep*, %struct.dep** %5, align 8
  %167 = getelementptr inbounds %struct.dep, %struct.dep* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = icmp eq i8* %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load %struct.dep*, %struct.dep** %5, align 8
  %172 = getelementptr inbounds %struct.dep, %struct.dep* %171, i32 0, i32 2
  %173 = load %struct.file*, %struct.file** %172, align 8
  %174 = getelementptr inbounds %struct.file, %struct.file* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  br label %180

176:                                              ; preds = %165
  %177 = load %struct.dep*, %struct.dep** %5, align 8
  %178 = getelementptr inbounds %struct.dep, %struct.dep* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  br label %180

180:                                              ; preds = %176, %170
  %181 = phi i8* [ %175, %170 ], [ %179, %176 ]
  %182 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef %181)
  br label %183

183:                                              ; preds = %180
  %184 = load %struct.dep*, %struct.dep** %5, align 8
  %185 = getelementptr inbounds %struct.dep, %struct.dep* %184, i32 0, i32 0
  %186 = load %struct.dep*, %struct.dep** %185, align 8
  store %struct.dep* %186, %struct.dep** %5, align 8
  br label %162, !llvm.loop !31

187:                                              ; preds = %162
  %188 = call i32 @putchar(i32 noundef 10)
  br label %189

189:                                              ; preds = %187, %151
  %190 = load %struct.file*, %struct.file** %7, align 8
  %191 = getelementptr inbounds %struct.file, %struct.file* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0))
  br label %212

196:                                              ; preds = %189
  %197 = load %struct.file*, %struct.file** %7, align 8
  %198 = getelementptr inbounds %struct.file, %struct.file* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, -1
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = call i32 @puts(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  br label %211

203:                                              ; preds = %196
  %204 = load %struct.file*, %struct.file** %7, align 8
  %205 = getelementptr inbounds %struct.file, %struct.file* %204, i32 0, i32 6
  %206 = call i32 (i64*, ...) bitcast (i32 (...)* @ctime to i32 (i64*, ...)*)(i64* noundef %205)
  %207 = load %struct.file*, %struct.file** %7, align 8
  %208 = getelementptr inbounds %struct.file, %struct.file* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 noundef %206, i64 noundef %209)
  br label %211

211:                                              ; preds = %203, %201
  br label %212

212:                                              ; preds = %211, %194
  %213 = load %struct.file*, %struct.file** %7, align 8
  %214 = getelementptr inbounds %struct.file, %struct.file* %213, i32 0, i32 12
  %215 = load i16, i16* %214, align 2
  %216 = lshr i16 %215, 6
  %217 = and i16 %216, 1
  %218 = zext i16 %217 to i32
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)
  %222 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* noundef %221)
  %223 = load %struct.file*, %struct.file** %7, align 8
  %224 = getelementptr inbounds %struct.file, %struct.file* %223, i32 0, i32 12
  %225 = load i16, i16* %224, align 2
  %226 = and i16 %225, 3
  %227 = zext i16 %226 to i32
  switch i32 %227, label %249 [
    i32 2, label %228
    i32 1, label %230
    i32 0, label %232
    i32 3, label %232
  ]

228:                                              ; preds = %212
  %229 = call i32 @puts(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0))
  br label %255

230:                                              ; preds = %212
  %231 = call i32 @puts(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0))
  br label %255

232:                                              ; preds = %212, %212
  %233 = load %struct.file*, %struct.file** %7, align 8
  %234 = getelementptr inbounds %struct.file, %struct.file* %233, i32 0, i32 11
  %235 = load i16, i16* %234, align 8
  %236 = sext i16 %235 to i32
  switch i32 %236, label %242 [
    i32 -1, label %237
    i32 0, label %238
    i32 1, label %240
  ]

237:                                              ; preds = %232
  br label %248

238:                                              ; preds = %232
  %239 = call i32 @puts(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0))
  br label %248

240:                                              ; preds = %232
  %241 = call i32 @puts(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  br label %248

242:                                              ; preds = %232
  %243 = call i32 @puts(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i64 0, i64 0))
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %245 = call i32 @fflush(%struct._IO_FILE* noundef %244)
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %247 = call i32 @fflush(%struct._IO_FILE* noundef %246)
  call void @abort() #7
  unreachable

248:                                              ; preds = %240, %238, %237
  br label %255

249:                                              ; preds = %212
  %250 = call i32 @puts(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0))
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %252 = call i32 @fflush(%struct._IO_FILE* noundef %251)
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %254 = call i32 @fflush(%struct._IO_FILE* noundef %253)
  call void @abort() #7
  unreachable

255:                                              ; preds = %248, %230, %228
  %256 = load %struct.file*, %struct.file** %7, align 8
  %257 = getelementptr inbounds %struct.file, %struct.file* %256, i32 0, i32 9
  %258 = load %struct.variable_set_list*, %struct.variable_set_list** %257, align 8
  %259 = icmp ne %struct.variable_set_list* %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load %struct.file*, %struct.file** %4, align 8
  call void (%struct.file*, ...) bitcast (void (...)* @print_file_variables to void (%struct.file*, ...)*)(%struct.file* noundef %261)
  br label %262

262:                                              ; preds = %260, %255
  %263 = load %struct.file*, %struct.file** %7, align 8
  %264 = getelementptr inbounds %struct.file, %struct.file* %263, i32 0, i32 3
  %265 = load %struct.commands*, %struct.commands** %264, align 8
  %266 = icmp ne %struct.commands* %265, null
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load %struct.file*, %struct.file** %7, align 8
  %269 = getelementptr inbounds %struct.file, %struct.file* %268, i32 0, i32 3
  %270 = load %struct.commands*, %struct.commands** %269, align 8
  call void (%struct.commands*, ...) bitcast (void (...)* @print_commands to void (%struct.commands*, ...)*)(%struct.commands* noundef %270)
  br label %271

271:                                              ; preds = %267, %262
  br label %272

272:                                              ; preds = %271
  %273 = load %struct.file*, %struct.file** %7, align 8
  %274 = getelementptr inbounds %struct.file, %struct.file* %273, i32 0, i32 7
  %275 = load %struct.file*, %struct.file** %274, align 8
  store %struct.file* %275, %struct.file** %7, align 8
  br label %24, !llvm.loop !32

276:                                              ; preds = %24
  br label %277

277:                                              ; preds = %276
  %278 = load %struct.file*, %struct.file** %4, align 8
  %279 = getelementptr inbounds %struct.file, %struct.file* %278, i32 0, i32 0
  %280 = load %struct.file*, %struct.file** %279, align 8
  store %struct.file* %280, %struct.file** %4, align 8
  br label %17, !llvm.loop !33

281:                                              ; preds = %17
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* %2, align 4
  %284 = add i32 %283, %282
  store i32 %284, i32* %2, align 4
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* %3, align 4
  %287 = icmp ugt i32 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %281
  %289 = load i32, i32* %6, align 4
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %288, %281
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %1, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %1, align 4
  br label %9, !llvm.loop !34

294:                                              ; preds = %9
  %295 = load i32, i32* %2, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = call i32 @puts(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %308

299:                                              ; preds = %294
  %300 = load i32, i32* %2, align 4
  %301 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i64 0, i64 0), i32 noundef %300, i32 noundef 1007)
  %302 = load i32, i32* %2, align 4
  %303 = uitofp i32 %302 to double
  %304 = fdiv double 1.007000e+03, %303
  %305 = fmul double %304, 1.000000e+02
  %306 = load i32, i32* %3, align 4
  %307 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.37, i64 0, i64 0), double noundef %305, i32 noundef %306)
  br label %308

308:                                              ; preds = %299, %297
  ret void
}

declare dso_local i32 @puts(i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local i32 @ctime(...) #3

declare dso_local void @print_file_variables(...) #3

declare dso_local void @print_commands(...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly willreturn }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
