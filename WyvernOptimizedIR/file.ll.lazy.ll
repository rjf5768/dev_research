; ModuleID = './file.ll'
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
define dso_local %struct.file* @lookup_file(i8* noundef readonly %0) #0 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @abort() #8
  unreachable

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %19, %5
  %.01 = phi i8* [ %0, %5 ], [ %20, %19 ]
  %7 = load i8, i8* %.01, align 1
  %8 = icmp eq i8 %7, 46
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %.01, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 47
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, i8* %.01, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br label %17

17:                                               ; preds = %13, %9, %6
  %18 = phi i1 [ false, %9 ], [ false, %6 ], [ %16, %13 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, i8* %.01, i64 2
  br label %6, !llvm.loop !4

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %28, %21
  %.04 = phi i32 [ 0, %21 ], [ %31, %28 ]
  %.03 = phi i8* [ %.01, %21 ], [ %32, %28 ]
  %23 = load i8, i8* %.03, align 1
  %.not = icmp eq i8 %23, 0
  br i1 %.not, label %33, label %24

24:                                               ; preds = %22
  %25 = load i8, i8* %.03, align 1
  %26 = sext i8 %25 to i32
  %27 = add i32 %.04, %26
  br label %28

28:                                               ; preds = %24
  %29 = shl i32 %27, 7
  %30 = lshr i32 %27, 20
  %31 = add i32 %29, %30
  %32 = getelementptr inbounds i8, i8* %.03, i64 1
  br label %22, !llvm.loop !6

33:                                               ; preds = %22
  %34 = urem i32 %.04, 1007
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %35
  br label %37

37:                                               ; preds = %61, %33
  %.02.in = phi %struct.file** [ %36, %33 ], [ %62, %61 ]
  %.02 = load %struct.file*, %struct.file** %.02.in, align 8
  %.not6 = icmp eq %struct.file* %.02, null
  br i1 %.not6, label %63, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, %.01
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = load i8, i8* %.01, align 1
  %47 = icmp eq i8 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = getelementptr inbounds i8, i8* %.01, i64 1
  %58 = call i32 @strcmp(i8* noundef nonnull %56, i8* noundef nonnull %57) #9
  %.not7 = icmp eq i32 %58, 0
  br i1 %.not7, label %59, label %60

59:                                               ; preds = %53, %48, %38
  br label %64

60:                                               ; preds = %53, %42
  br label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 0
  br label %37, !llvm.loop !7

63:                                               ; preds = %37
  br label %64

64:                                               ; preds = %63, %59
  %.0 = phi %struct.file* [ %.02, %59 ], [ null, %63 ]
  ret %struct.file* %.0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.file* @enter_file(i8* noundef %0) #0 {
  %2 = load i8, i8* %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @abort() #8
  unreachable

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %19, %5
  %.01 = phi i8* [ %0, %5 ], [ %20, %19 ]
  %7 = load i8, i8* %.01, align 1
  %8 = icmp eq i8 %7, 46
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %.01, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = icmp eq i8 %11, 47
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, i8* %.01, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br label %17

17:                                               ; preds = %13, %9, %6
  %18 = phi i1 [ false, %9 ], [ false, %6 ], [ %16, %13 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, i8* %.01, i64 2
  br label %6, !llvm.loop !8

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %28, %21
  %.04 = phi i8* [ %.01, %21 ], [ %32, %28 ]
  %.03 = phi i32 [ 0, %21 ], [ %31, %28 ]
  %23 = load i8, i8* %.04, align 1
  %.not = icmp eq i8 %23, 0
  br i1 %.not, label %33, label %24

24:                                               ; preds = %22
  %25 = load i8, i8* %.04, align 1
  %26 = sext i8 %25 to i32
  %27 = add i32 %.03, %26
  br label %28

28:                                               ; preds = %24
  %29 = shl i32 %27, 7
  %30 = lshr i32 %27, 20
  %31 = add i32 %29, %30
  %32 = getelementptr inbounds i8, i8* %.04, i64 1
  br label %22, !llvm.loop !9

33:                                               ; preds = %22
  %34 = urem i32 %.03, 1007
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %35
  br label %37

37:                                               ; preds = %61, %33
  %.02.in = phi %struct.file** [ %36, %33 ], [ %62, %61 ]
  %.02 = load %struct.file*, %struct.file** %.02.in, align 8
  %.not8 = icmp eq %struct.file* %.02, null
  br i1 %.not8, label %.loopexit, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp eq i8* %40, %.01
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = load i8, i8* %.01, align 1
  %47 = icmp eq i8 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = getelementptr inbounds i8, i8* %.01, i64 1
  %58 = call i32 @strcmp(i8* noundef nonnull %56, i8* noundef nonnull %57) #9
  %.not12 = icmp eq i32 %58, 0
  br i1 %.not12, label %59, label %60

59:                                               ; preds = %53, %48, %38
  br label %63

60:                                               ; preds = %53, %42
  br label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 0
  br label %37, !llvm.loop !10

.loopexit:                                        ; preds = %37
  br label %63

63:                                               ; preds = %.loopexit, %59
  %.not9 = icmp eq %struct.file* %.02, null
  br i1 %.not9, label %69, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %66 = load i16, i16* %65, align 2
  %67 = and i16 %66, 4
  %.not11 = icmp eq i16 %67, 0
  br i1 %.not11, label %68, label %69

68:                                               ; preds = %64
  br label %96

69:                                               ; preds = %64, %63
  %70 = call i8* (i64, ...) bitcast (i8* (...)* @xmalloc to i8* (i64, ...)*)(i64 noundef 96) #10
  %71 = bitcast i8* %70 to %struct.file*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(96) %70, i8 0, i64 96, i1 false)
  %72 = getelementptr inbounds i8, i8* %70, i64 8
  %73 = bitcast i8* %72 to i8**
  store i8* %.01, i8** %73, align 8
  %74 = getelementptr inbounds i8, i8* %70, i64 88
  %75 = bitcast i8* %74 to i16*
  store i16 -1, i16* %75, align 8
  %76 = icmp eq %struct.file* %.02, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = zext i32 %34 to i64
  %79 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %78
  %80 = load %struct.file*, %struct.file** %79, align 8
  %81 = bitcast i8* %70 to %struct.file**
  store %struct.file* %80, %struct.file** %81, align 8
  %82 = zext i32 %34 to i64
  %83 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %82
  %84 = bitcast %struct.file** %83 to i8**
  store i8* %70, i8** %84, align 8
  br label %95

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %89, %85
  %.1 = phi %struct.file* [ %.02, %85 ], [ %91, %89 ]
  %87 = getelementptr inbounds %struct.file, %struct.file* %.1, i64 0, i32 7
  %88 = load %struct.file*, %struct.file** %87, align 8
  %.not10 = icmp eq %struct.file* %88, null
  br i1 %.not10, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.file, %struct.file* %.1, i64 0, i32 7
  %91 = load %struct.file*, %struct.file** %90, align 8
  br label %86, !llvm.loop !11

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.file, %struct.file* %.1, i64 0, i32 7
  %94 = bitcast %struct.file** %93 to i8**
  store i8* %70, i8** %94, align 8
  br label %95

95:                                               ; preds = %92, %77
  br label %96

96:                                               ; preds = %95, %68
  %.0 = phi %struct.file* [ %71, %95 ], [ %.02, %68 ]
  ret %struct.file* %.0
}

declare dso_local i8* @xmalloc(...) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @rename_file(%struct.file* noundef %0, i8* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  br label %5

5:                                                ; preds = %11, %2
  %.05 = phi i8* [ %4, %2 ], [ %15, %11 ]
  %.03 = phi i32 [ 0, %2 ], [ %14, %11 ]
  %6 = load i8, i8* %.05, align 1
  %.not = icmp eq i8 %6, 0
  br i1 %.not, label %16, label %7

7:                                                ; preds = %5
  %8 = load i8, i8* %.05, align 1
  %9 = sext i8 %8 to i32
  %10 = add i32 %.03, %9
  br label %11

11:                                               ; preds = %7
  %12 = shl i32 %10, 7
  %13 = lshr i32 %10, 20
  %14 = add i32 %12, %13
  %15 = getelementptr inbounds i8, i8* %.05, i64 1
  br label %5, !llvm.loop !12

16:                                               ; preds = %5
  %17 = urem i32 %.03, 1007
  br label %18

18:                                               ; preds = %24, %16
  %.1 = phi i8* [ %1, %16 ], [ %28, %24 ]
  %.04 = phi i32 [ 0, %16 ], [ %27, %24 ]
  %19 = load i8, i8* %.1, align 1
  %.not16 = icmp eq i8 %19, 0
  br i1 %.not16, label %29, label %20

20:                                               ; preds = %18
  %21 = load i8, i8* %.1, align 1
  %22 = sext i8 %21 to i32
  %23 = add i32 %.04, %22
  br label %24

24:                                               ; preds = %20
  %25 = shl i32 %23, 7
  %26 = lshr i32 %23, 20
  %27 = add i32 %25, %26
  %28 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %18, !llvm.loop !13

29:                                               ; preds = %18
  %30 = urem i32 %.04, 1007
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %31
  br label %33

33:                                               ; preds = %57, %29
  %.02.in = phi %struct.file** [ %32, %29 ], [ %58, %57 ]
  %.02 = load %struct.file*, %struct.file** %.02.in, align 8
  %.not17 = icmp eq %struct.file* %.02, null
  br i1 %.not17, label %.loopexit, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, %1
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8, i8* %1, align 1
  %43 = icmp eq i8 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = getelementptr inbounds i8, i8* %1, i64 1
  %54 = call i32 @strcmp(i8* noundef nonnull %52, i8* noundef nonnull %53) #9
  %.not30 = icmp eq i32 %54, 0
  br i1 %.not30, label %55, label %56

55:                                               ; preds = %49, %44, %34
  br label %59

56:                                               ; preds = %49, %38
  br label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 0
  br label %33, !llvm.loop !14

.loopexit:                                        ; preds = %33
  br label %59

59:                                               ; preds = %.loopexit, %55
  %.not18 = icmp eq i32 %30, %17
  br i1 %.not18, label %60, label %61

60:                                               ; preds = %59
  %.not19 = icmp eq %struct.file* %.02, null
  br i1 %.not19, label %80, label %61

61:                                               ; preds = %60, %59
  %62 = zext i32 %17 to i64
  %63 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %62
  br label %64

64:                                               ; preds = %66, %61
  %.06.in = phi %struct.file** [ %63, %61 ], [ %67, %66 ]
  %.01 = phi %struct.file* [ null, %61 ], [ %.06, %66 ]
  %.06 = load %struct.file*, %struct.file** %.06.in, align 8
  %.not29 = icmp eq %struct.file* %.06, %0
  br i1 %.not29, label %68, label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.file, %struct.file* %.06, i64 0, i32 0
  br label %64, !llvm.loop !15

68:                                               ; preds = %64
  %69 = icmp eq %struct.file* %.01, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.file, %struct.file* %.06, i64 0, i32 0
  %72 = load %struct.file*, %struct.file** %71, align 8
  %73 = zext i32 %17 to i64
  %74 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %73
  store %struct.file* %72, %struct.file** %74, align 8
  br label %79

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.file, %struct.file* %.06, i64 0, i32 0
  %77 = load %struct.file*, %struct.file** %76, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %.01, i64 0, i32 0
  store %struct.file* %77, %struct.file** %78, align 8
  br label %79

79:                                               ; preds = %75, %70
  br label %80

80:                                               ; preds = %79, %60
  br label %81

81:                                               ; preds = %84, %80
  %.17 = phi %struct.file* [ %0, %80 ], [ %86, %84 ]
  %.not20 = icmp eq %struct.file* %.17, null
  br i1 %.not20, label %87, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.file, %struct.file* %.17, i64 0, i32 1
  store i8* %1, i8** %83, align 8
  br label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.file, %struct.file* %.17, i64 0, i32 7
  %86 = load %struct.file*, %struct.file** %85, align 8
  br label %81, !llvm.loop !16

87:                                               ; preds = %81
  %88 = icmp eq %struct.file* %.02, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %87
  %.not28 = icmp eq i32 %30, %17
  br i1 %.not28, label %97, label %90

90:                                               ; preds = %89
  %91 = zext i32 %30 to i64
  %92 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %91
  %93 = load %struct.file*, %struct.file** %92, align 8
  %94 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 0
  store %struct.file* %93, %struct.file** %94, align 8
  %95 = zext i32 %30 to i64
  %96 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %95
  store %struct.file* %0, %struct.file** %96, align 8
  br label %97

97:                                               ; preds = %90, %89
  br label %243

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %100 = load %struct.commands*, %struct.commands** %99, align 8
  %.not21 = icmp eq %struct.commands* %100, null
  br i1 %.not21, label %141, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 3
  %103 = load %struct.commands*, %struct.commands** %102, align 8
  %104 = icmp eq %struct.commands* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %107 = load %struct.commands*, %struct.commands** %106, align 8
  %108 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 3
  store %struct.commands* %107, %struct.commands** %108, align 8
  br label %140

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %111 = load %struct.commands*, %struct.commands** %110, align 8
  %112 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 3
  %113 = load %struct.commands*, %struct.commands** %112, align 8
  %.not27 = icmp eq %struct.commands* %111, %113
  br i1 %.not27, label %139, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %116 = load %struct.commands*, %struct.commands** %115, align 8
  %117 = getelementptr inbounds %struct.commands, %struct.commands* %116, i64 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct.commands, %struct.commands* %116, i64 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 3
  %122 = load %struct.commands*, %struct.commands** %121, align 8
  %123 = getelementptr inbounds %struct.commands, %struct.commands* %122, i64 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds %struct.commands, %struct.commands* %122, i64 0, i32 1
  %126 = load i32, i32* %125, align 8
  call void (i8*, i32, i8*, i8*, i8*, i32, ...) bitcast (void (...)* @makefile_error to void (i8*, i32, i8*, i8*, i8*, i32, ...)*)(i8* noundef %118, i32 noundef %120, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* noundef %4, i8* noundef %124, i32 noundef %126) #10
  %127 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %128 = load %struct.commands*, %struct.commands** %127, align 8
  %129 = getelementptr inbounds %struct.commands, %struct.commands* %128, i64 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.commands, %struct.commands* %128, i64 0, i32 1
  %132 = load i32, i32* %131, align 8
  call void (i8*, i32, i8*, i8*, i8*, ...) bitcast (void (...)* @makefile_error to void (i8*, i32, i8*, i8*, i8*, ...)*)(i8* noundef %130, i32 noundef %132, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4, i8* noundef %1) #10
  %133 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %134 = load %struct.commands*, %struct.commands** %133, align 8
  %135 = getelementptr inbounds %struct.commands, %struct.commands* %134, i64 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds %struct.commands, %struct.commands* %134, i64 0, i32 1
  %138 = load i32, i32* %137, align 8
  call void (i8*, i32, i8*, i8*, i8*, ...) bitcast (void (...)* @makefile_error to void (i8*, i32, i8*, i8*, i8*, ...)*)(i8* noundef %136, i32 noundef %138, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1, i8* noundef %4) #10
  br label %139

139:                                              ; preds = %114, %109
  br label %140

140:                                              ; preds = %139, %105
  br label %141

141:                                              ; preds = %140, %98
  %142 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 2
  %143 = load %struct.dep*, %struct.dep** %142, align 8
  %144 = icmp eq %struct.dep* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 2
  %147 = load %struct.dep*, %struct.dep** %146, align 8
  %148 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 2
  store %struct.dep* %147, %struct.dep** %148, align 8
  br label %162

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %153, %149
  %.0 = phi %struct.dep* [ %143, %149 ], [ %155, %153 ]
  %151 = getelementptr inbounds %struct.dep, %struct.dep* %.0, i64 0, i32 0
  %152 = load %struct.dep*, %struct.dep** %151, align 8
  %.not22 = icmp eq %struct.dep* %152, null
  br i1 %.not22, label %156, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.dep, %struct.dep* %.0, i64 0, i32 0
  %155 = load %struct.dep*, %struct.dep** %154, align 8
  br label %150, !llvm.loop !17

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 2
  %158 = load %struct.dep*, %struct.dep** %157, align 8
  %159 = getelementptr inbounds %struct.dep, %struct.dep* %.0, i64 0, i32 0
  store %struct.dep* %158, %struct.dep** %159, align 8
  %160 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 2
  %161 = load %struct.dep*, %struct.dep** %160, align 8
  call void (%struct.dep*, ...) bitcast (void (...)* @uniquize_deps to void (%struct.dep*, ...)*)(%struct.dep* noundef %161) #10
  br label %162

162:                                              ; preds = %156, %145
  %163 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 9
  %164 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 9
  %165 = load %struct.variable_set_list*, %struct.variable_set_list** %164, align 8
  call void (%struct.variable_set_list**, %struct.variable_set_list*, ...) bitcast (void (...)* @merge_variable_set_lists to void (%struct.variable_set_list**, %struct.variable_set_list*, ...)*)(%struct.variable_set_list** noundef nonnull %163, %struct.variable_set_list* noundef %165) #10
  %166 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %167 = load i16, i16* %166, align 2
  %168 = and i16 %167, 4
  %.not23 = icmp eq i16 %168, 0
  br i1 %.not23, label %174, label %169

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 12
  %171 = load i16, i16* %170, align 2
  %172 = and i16 %171, 4
  %.not26 = icmp eq i16 %172, 0
  br i1 %.not26, label %173, label %174

173:                                              ; preds = %169
  call void (i8*, i8*, i8*, ...) bitcast (void (...)* @fatal to void (i8*, i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* noundef %4, i8* noundef %1) #10
  br label %174

174:                                              ; preds = %173, %169, %162
  %175 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %176 = load i16, i16* %175, align 2
  %177 = and i16 %176, 4
  %.not24 = icmp eq i16 %177, 0
  br i1 %.not24, label %178, label %183

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 12
  %180 = load i16, i16* %179, align 2
  %181 = and i16 %180, 4
  %.not25 = icmp eq i16 %181, 0
  br i1 %.not25, label %183, label %182

182:                                              ; preds = %178
  call void (i8*, i8*, i8*, ...) bitcast (void (...)* @fatal to void (i8*, i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* noundef %4, i8* noundef %1) #10
  br label %183

183:                                              ; preds = %182, %178, %174
  %184 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %185, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 6
  store i64 %191, i64* %192, align 8
  br label %193

193:                                              ; preds = %189, %183
  %194 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 12
  %195 = load i16, i16* %194, align 2
  %196 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %197 = load i16, i16* %196, align 2
  %198 = and i16 %195, 8
  %199 = or i16 %198, %197
  store i16 %199, i16* %196, align 2
  %200 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 12
  %201 = load i16, i16* %200, align 2
  %202 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %203 = or i16 %197, %201
  %204 = and i16 %203, 16
  %205 = and i16 %199, -17
  %206 = or i16 %205, %204
  store i16 %206, i16* %202, align 2
  %207 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 12
  %208 = load i16, i16* %207, align 2
  %209 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %210 = or i16 %197, %208
  %211 = and i16 %210, 32
  %212 = and i16 %206, -33
  %213 = or i16 %212, %211
  store i16 %213, i16* %209, align 2
  %214 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 12
  %215 = load i16, i16* %214, align 2
  %216 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %217 = or i16 %197, %215
  %218 = and i16 %217, 64
  %219 = and i16 %213, -65
  %220 = or i16 %219, %218
  store i16 %220, i16* %216, align 2
  %221 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 12
  %222 = load i16, i16* %221, align 2
  %223 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %224 = or i16 %197, %222
  %225 = and i16 %224, 128
  %226 = and i16 %220, -129
  %227 = or i16 %226, %225
  store i16 %227, i16* %223, align 2
  %228 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 12
  %229 = load i16, i16* %228, align 2
  %230 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %231 = or i16 %197, %229
  %232 = and i16 %231, 256
  %233 = and i16 %227, -257
  %234 = or i16 %233, %232
  store i16 %234, i16* %230, align 2
  %235 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 12
  %236 = load i16, i16* %235, align 2
  %237 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %238 = or i16 %197, %236
  %239 = and i16 %238, 512
  %240 = and i16 %234, -513
  %241 = or i16 %240, %239
  store i16 %241, i16* %237, align 2
  %242 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 8
  store %struct.file* %.02, %struct.file** %242, align 8
  br label %243

243:                                              ; preds = %193, %97
  ret void
}

declare dso_local void @makefile_error(...) #3

declare dso_local void @uniquize_deps(...) #3

declare dso_local void @merge_variable_set_lists(...) #3

declare dso_local void @fatal(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @remove_intermediates(i32 noundef %0) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %2, label %5

2:                                                ; preds = %1
  %3 = load i32, i32* @just_print_flag, align 4
  %.not4 = icmp eq i32 %3, 0
  br i1 %.not4, label %5, label %4

4:                                                ; preds = %2
  br label %82

5:                                                ; preds = %2, %1
  br label %6

6:                                                ; preds = %74, %5
  %.03 = phi i8 [ 0, %5 ], [ %.1, %74 ]
  %.01 = phi i32 [ 0, %5 ], [ %75, %74 ]
  %7 = icmp ult i32 %.01, 1007
  br i1 %7, label %8, label %76

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %9
  br label %11

11:                                               ; preds = %71, %8
  %.1 = phi i8 [ %.03, %8 ], [ %.7, %71 ]
  %.02.in = phi %struct.file** [ %10, %8 ], [ %72, %71 ]
  %.02 = load %struct.file*, %struct.file** %.02.in, align 8
  %.not7 = icmp eq %struct.file* %.02, null
  br i1 %.not7, label %73, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %14 = load i16, i16* %13, align 2
  %15 = and i16 %14, 1024
  %.not8 = icmp eq i16 %15, 0
  br i1 %.not8, label %70, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %18 = load i16, i16* %17, align 2
  %19 = and i16 %18, 2048
  %.not9 = icmp eq i16 %19, 0
  br i1 %.not9, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %22 = load i16, i16* %21, align 2
  %23 = and i16 %22, 8
  %.not10 = icmp eq i16 %23, 0
  br i1 %.not10, label %24, label %70

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @just_print_flag, align 4
  %.not11 = icmp eq i32 %25, 0
  br i1 %.not11, label %27, label %26

26:                                               ; preds = %24
  br label %38

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @unlink(i8* noundef %29) #10
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = call i32* @__errno_location() #11
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %71

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %26
  %.0 = phi i32 [ 0, %26 ], [ %30, %37 ]
  %39 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 12
  %40 = load i16, i16* %39, align 2
  %41 = and i16 %40, 2048
  %.not12 = icmp eq i16 %41, 0
  br i1 %.not12, label %42, label %69

42:                                               ; preds = %38
  %.not13 = icmp eq i32 %0, 0
  br i1 %.not13, label %46, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %45 = load i8*, i8** %44, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* noundef %45) #10
  br label %63

46:                                               ; preds = %42
  %47 = load i32, i32* @silent_flag, align 4
  %.not14 = icmp eq i32 %47, 0
  br i1 %.not14, label %48, label %62

48:                                               ; preds = %46
  %49 = load i32, i32* @just_print_flag, align 4
  %.not15 = icmp eq i32 %49, 0
  br i1 %.not15, label %50, label %62

50:                                               ; preds = %48
  %.not16 = icmp eq i8 %.1, 0
  br i1 %.not16, label %51, label %54

51:                                               ; preds = %50
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %52)
  br label %54

54:                                               ; preds = %51, %50
  %.2 = phi i8 [ %.1, %50 ], [ 1, %51 ]
  %55 = call i32 @putchar(i32 noundef 32) #10
  %56 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = call i32 @fputs(i8* noundef %57, %struct._IO_FILE* noundef %58) #10
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %61 = call i32 @fflush(%struct._IO_FILE* noundef %60) #10
  br label %62

62:                                               ; preds = %54, %48, %46
  %.3 = phi i8 [ %.1, %46 ], [ %.1, %48 ], [ %.2, %54 ]
  br label %63

63:                                               ; preds = %62, %43
  %.4 = phi i8 [ %.1, %43 ], [ %.3, %62 ]
  %64 = icmp slt i32 %.0, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 1
  %67 = load i8*, i8** %66, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @perror_with_name to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* noundef %67) #10
  br label %68

68:                                               ; preds = %65, %63
  br label %69

69:                                               ; preds = %68, %38
  %.5 = phi i8 [ %.1, %38 ], [ %.4, %68 ]
  br label %70

70:                                               ; preds = %69, %20, %12
  %.6 = phi i8 [ %.5, %69 ], [ %.1, %20 ], [ %.1, %12 ]
  br label %71

71:                                               ; preds = %70, %36
  %.7 = phi i8 [ %.6, %70 ], [ %.1, %36 ]
  %72 = getelementptr inbounds %struct.file, %struct.file* %.02, i64 0, i32 0
  br label %11, !llvm.loop !18

73:                                               ; preds = %11
  br label %74

74:                                               ; preds = %73
  %75 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !19

76:                                               ; preds = %6
  %.not5 = icmp eq i8 %.03, 0
  br i1 %.not5, label %82, label %77

77:                                               ; preds = %76
  %.not6 = icmp eq i32 %0, 0
  br i1 %.not6, label %78, label %82

78:                                               ; preds = %77
  %79 = call i32 @putchar(i32 noundef 10) #10
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %81 = call i32 @fflush(%struct._IO_FILE* noundef %80) #10
  br label %82

82:                                               ; preds = %78, %77, %76, %4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #6

declare dso_local void @error(...) #3

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #3

declare dso_local i32 @putchar(i32 noundef) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

declare dso_local void @perror_with_name(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @snap_deps() #0 {
  br label %1

1:                                                ; preds = %42, %0
  %.07 = phi i32 [ 0, %0 ], [ %43, %42 ]
  %2 = icmp ult i32 %.07, 1007
  br i1 %2, label %3, label %44

3:                                                ; preds = %1
  %4 = zext i32 %.07 to i64
  %5 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %4
  br label %6

6:                                                ; preds = %39, %3
  %.0.in = phi %struct.file** [ %5, %3 ], [ %40, %39 ]
  %.0 = load %struct.file*, %struct.file** %.0.in, align 8
  %.not13 = icmp eq %struct.file* %.0, null
  br i1 %.not13, label %41, label %7

7:                                                ; preds = %6
  br label %8

8:                                                ; preds = %35, %7
  %.01 = phi %struct.file* [ %.0, %7 ], [ %37, %35 ]
  %.not14 = icmp eq %struct.file* %.01, null
  br i1 %.not14, label %38, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.file, %struct.file* %.01, i64 0, i32 2
  br label %11

11:                                               ; preds = %32, %9
  %.04.in = phi %struct.dep** [ %10, %9 ], [ %33, %32 ]
  %.04 = load %struct.dep*, %struct.dep** %.04.in, align 8
  %.not15 = icmp eq %struct.dep* %.04, null
  br i1 %.not15, label %34, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %.not16 = icmp eq i8* %14, null
  br i1 %.not16, label %31, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call %struct.file* @lookup_file(i8* noundef %17)
  %19 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 2
  store %struct.file* %18, %struct.file** %19, align 8
  %20 = icmp eq %struct.file* %18, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call %struct.file* @enter_file(i8* noundef %23)
  %25 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 2
  store %struct.file* %24, %struct.file** %25, align 8
  br label %29

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 1
  %28 = load i8*, i8** %27, align 8
  call void @free(i8* noundef %28) #10
  br label %29

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 1
  store i8* null, i8** %30, align 8
  br label %31

31:                                               ; preds = %29, %12
  br label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 0
  br label %11, !llvm.loop !20

34:                                               ; preds = %11
  br label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.file, %struct.file* %.01, i64 0, i32 7
  %37 = load %struct.file*, %struct.file** %36, align 8
  br label %8, !llvm.loop !21

38:                                               ; preds = %8
  br label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.file, %struct.file* %.0, i64 0, i32 0
  br label %6, !llvm.loop !22

41:                                               ; preds = %6
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.07, 1
  br label %1, !llvm.loop !23

44:                                               ; preds = %1
  %45 = call %struct.file* @lookup_file(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %46

46:                                               ; preds = %63, %44
  %.1 = phi %struct.file* [ %45, %44 ], [ %65, %63 ]
  %.not = icmp eq %struct.file* %.1, null
  br i1 %.not, label %66, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.file, %struct.file* %.1, i64 0, i32 2
  br label %49

49:                                               ; preds = %60, %47
  %.15.in = phi %struct.dep** [ %48, %47 ], [ %61, %60 ]
  %.15 = load %struct.dep*, %struct.dep** %.15.in, align 8
  %.not11 = icmp eq %struct.dep* %.15, null
  br i1 %.not11, label %62, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.dep, %struct.dep* %.15, i64 0, i32 2
  br label %52

52:                                               ; preds = %57, %50
  %.12.in = phi %struct.file** [ %51, %50 ], [ %58, %57 ]
  %.12 = load %struct.file*, %struct.file** %.12.in, align 8
  %.not12 = icmp eq %struct.file* %.12, null
  br i1 %.not12, label %59, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.file, %struct.file* %.12, i64 0, i32 12
  %55 = load i16, i16* %54, align 2
  %56 = or i16 %55, 8
  store i16 %56, i16* %54, align 2
  br label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.file, %struct.file* %.12, i64 0, i32 7
  br label %52, !llvm.loop !24

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.dep, %struct.dep* %.15, i64 0, i32 0
  br label %49, !llvm.loop !25

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.file, %struct.file* %.1, i64 0, i32 7
  %65 = load %struct.file*, %struct.file** %64, align 8
  br label %46, !llvm.loop !26

66:                                               ; preds = %46
  %67 = call %struct.file* @lookup_file(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %68

68:                                               ; preds = %86, %66
  %.2 = phi %struct.file* [ %67, %66 ], [ %88, %86 ]
  %.not8 = icmp eq %struct.file* %.2, null
  br i1 %.not8, label %89, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.file, %struct.file* %.2, i64 0, i32 2
  br label %71

71:                                               ; preds = %83, %69
  %.26.in = phi %struct.dep** [ %70, %69 ], [ %84, %83 ]
  %.26 = load %struct.dep*, %struct.dep** %.26.in, align 8
  %.not9 = icmp eq %struct.dep* %.26, null
  br i1 %.not9, label %85, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.dep, %struct.dep* %.26, i64 0, i32 2
  br label %74

74:                                               ; preds = %80, %72
  %.23.in = phi %struct.file** [ %73, %72 ], [ %81, %80 ]
  %.23 = load %struct.file*, %struct.file** %.23.in, align 8
  %.not10 = icmp eq %struct.file* %.23, null
  br i1 %.not10, label %82, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.file, %struct.file* %.23, i64 0, i32 12
  %77 = load i16, i16* %76, align 2
  %78 = or i16 %77, 512
  store i16 %78, i16* %76, align 2
  %79 = getelementptr inbounds %struct.file, %struct.file* %.23, i64 0, i32 6
  store i64 -1, i64* %79, align 8
  br label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.file, %struct.file* %.23, i64 0, i32 7
  br label %74, !llvm.loop !27

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.dep, %struct.dep* %.26, i64 0, i32 0
  br label %71, !llvm.loop !28

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.file, %struct.file* %.2, i64 0, i32 7
  %88 = load %struct.file*, %struct.file** %87, align 8
  br label %68, !llvm.loop !29

89:                                               ; preds = %68
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_file_data_base() #0 {
  %1 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)) #10
  br label %2

2:                                                ; preds = %188, %0
  %.02 = phi i32 [ 0, %0 ], [ %.1, %188 ]
  %.01 = phi i32 [ 0, %0 ], [ %184, %188 ]
  %.0 = phi i32 [ 0, %0 ], [ %189, %188 ]
  %3 = icmp ult i32 %.0, 1007
  br i1 %3, label %4, label %190

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [1007 x %struct.file*], [1007 x %struct.file*]* @files, i64 0, i64 %5
  br label %7

7:                                                ; preds = %181, %4
  %.06 = phi i32 [ 0, %4 ], [ %9, %181 ]
  %.03.in = phi %struct.file** [ %6, %4 ], [ %182, %181 ]
  %.03 = load %struct.file*, %struct.file** %.03.in, align 8
  %.not = icmp eq %struct.file* %.03, null
  br i1 %.not, label %183, label %8

8:                                                ; preds = %7
  %9 = add i32 %.06, 1
  br label %10

10:                                               ; preds = %177, %8
  %.07 = phi %struct.file* [ %.03, %8 ], [ %179, %177 ]
  %.not14 = icmp eq %struct.file* %.07, null
  br i1 %.not14, label %180, label %11

11:                                               ; preds = %10
  %12 = call i32 @putchar(i32 noundef 10) #10
  %13 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 12
  %14 = load i16, i16* %13, align 2
  %15 = and i16 %14, 128
  %.not15 = icmp eq i16 %15, 0
  br i1 %.not15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #10
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 12
  %22 = load i16, i16* %21, align 2
  %23 = and i16 %22, 4
  %.not16 = icmp eq i16 %23, 0
  %24 = select i1 %.not16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %20, i8* noundef %24) #10
  %26 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 2
  br label %27

27:                                               ; preds = %41, %18
  %.04.in = phi %struct.dep** [ %26, %18 ], [ %42, %41 ]
  %.04 = load %struct.dep*, %struct.dep** %.04.in, align 8
  %.not17 = icmp eq %struct.dep* %.04, null
  br i1 %.not17, label %43, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 2
  %34 = load %struct.file*, %struct.file** %33, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i64 0, i32 1
  br label %38

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 1
  br label %38

38:                                               ; preds = %36, %32
  %.in30 = phi i8** [ %35, %32 ], [ %37, %36 ]
  %39 = load i8*, i8** %.in30, align 8
  %40 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef %39) #10
  br label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.dep, %struct.dep* %.04, i64 0, i32 0
  br label %27, !llvm.loop !30

43:                                               ; preds = %27
  %44 = call i32 @putchar(i32 noundef 10) #10
  %45 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 12
  %46 = load i16, i16* %45, align 2
  %47 = and i16 %46, 8
  %.not18 = icmp eq i16 %47, 0
  br i1 %.not18, label %50, label %48

48:                                               ; preds = %43
  %49 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0)) #10
  br label %50

50:                                               ; preds = %48, %43
  %51 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 12
  %52 = load i16, i16* %51, align 2
  %53 = and i16 %52, 512
  %.not19 = icmp eq i16 %53, 0
  br i1 %.not19, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0)) #10
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 12
  %58 = load i16, i16* %57, align 2
  %59 = and i16 %58, 256
  %.not20 = icmp eq i16 %59, 0
  br i1 %.not20, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0)) #10
  br label %62

62:                                               ; preds = %60, %56
  %63 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 12
  %64 = load i16, i16* %63, align 2
  %65 = and i16 %64, 2048
  %.not21 = icmp eq i16 %65, 0
  br i1 %.not21, label %68, label %66

66:                                               ; preds = %62
  %67 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0)) #10
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 12
  %70 = load i16, i16* %69, align 2
  %71 = and i16 %70, 16
  %.not22 = icmp eq i16 %71, 0
  %72 = select i1 %.not22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i8* noundef %72) #10
  %74 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 4
  %75 = load i8*, i8** %74, align 8
  %.not23 = icmp eq i8* %75, null
  br i1 %.not23, label %80, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i8* noundef %78) #10
  br label %80

80:                                               ; preds = %76, %68
  %81 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 12
  %82 = load i16, i16* %81, align 2
  %83 = and i16 %82, 1024
  %.not24 = icmp eq i16 %83, 0
  br i1 %.not24, label %86, label %84

84:                                               ; preds = %80
  %85 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0)) #10
  br label %86

86:                                               ; preds = %84, %80
  %87 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 5
  %88 = load %struct.dep*, %struct.dep** %87, align 8
  %.not25 = icmp eq %struct.dep* %88, null
  br i1 %.not25, label %111, label %89

89:                                               ; preds = %86
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %91 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %90)
  %92 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 5
  br label %93

93:                                               ; preds = %107, %89
  %.15.in = phi %struct.dep** [ %92, %89 ], [ %108, %107 ]
  %.15 = load %struct.dep*, %struct.dep** %.15.in, align 8
  %.not29 = icmp eq %struct.dep* %.15, null
  br i1 %.not29, label %109, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.dep, %struct.dep* %.15, i64 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.dep, %struct.dep* %.15, i64 0, i32 2
  %100 = load %struct.file*, %struct.file** %99, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i64 0, i32 1
  br label %104

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.dep, %struct.dep* %.15, i64 0, i32 1
  br label %104

104:                                              ; preds = %102, %98
  %.in = phi i8** [ %101, %98 ], [ %103, %102 ]
  %105 = load i8*, i8** %.in, align 8
  %106 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* noundef %105) #10
  br label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.dep, %struct.dep* %.15, i64 0, i32 0
  br label %93, !llvm.loop !31

109:                                              ; preds = %93
  %110 = call i32 @putchar(i32 noundef 10) #10
  br label %111

111:                                              ; preds = %109, %86
  %112 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i64 0, i64 0)) #10
  br label %130

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, -1
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0)) #10
  br label %129

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 6
  %125 = call i32 (i64*, ...) bitcast (i32 (...)* @ctime to i32 (i64*, ...)*)(i64* noundef nonnull %124) #10
  %126 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 6
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 noundef %125, i64 noundef %127) #10
  br label %129

129:                                              ; preds = %123, %121
  br label %130

130:                                              ; preds = %129, %115
  %131 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 12
  %132 = load i16, i16* %131, align 2
  %133 = and i16 %132, 64
  %.not26 = icmp eq i16 %133, 0
  %134 = select i1 %.not26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %135 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), i8* noundef %134) #10
  %136 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 12
  %137 = load i16, i16* %136, align 2
  %138 = and i16 %137, 3
  %139 = zext i16 %138 to i32
  switch i32 %139, label %160 [
    i32 2, label %140
    i32 1, label %142
    i32 0, label %144
    i32 3, label %144
  ]

140:                                              ; preds = %130
  %141 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0)) #10
  br label %166

142:                                              ; preds = %130
  %143 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0)) #10
  br label %166

144:                                              ; preds = %130, %130
  %145 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 11
  %146 = load i16, i16* %145, align 8
  %147 = sext i16 %146 to i32
  switch i32 %147, label %153 [
    i32 -1, label %148
    i32 0, label %149
    i32 1, label %151
  ]

148:                                              ; preds = %144
  br label %159

149:                                              ; preds = %144
  %150 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0)) #10
  br label %159

151:                                              ; preds = %144
  %152 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0)) #10
  br label %159

153:                                              ; preds = %144
  %154 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i64 0, i64 0)) #10
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %156 = call i32 @fflush(%struct._IO_FILE* noundef %155) #10
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %158 = call i32 @fflush(%struct._IO_FILE* noundef %157) #10
  call void @abort() #8
  br label %UnifiedUnreachableBlock

159:                                              ; preds = %151, %149, %148
  br label %166

160:                                              ; preds = %130
  %161 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0)) #10
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %163 = call i32 @fflush(%struct._IO_FILE* noundef %162) #10
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %165 = call i32 @fflush(%struct._IO_FILE* noundef %164) #10
  call void @abort() #8
  br label %UnifiedUnreachableBlock

166:                                              ; preds = %159, %142, %140
  %167 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 9
  %168 = load %struct.variable_set_list*, %struct.variable_set_list** %167, align 8
  %.not27 = icmp eq %struct.variable_set_list* %168, null
  br i1 %.not27, label %170, label %169

169:                                              ; preds = %166
  call void (%struct.file*, ...) bitcast (void (...)* @print_file_variables to void (%struct.file*, ...)*)(%struct.file* noundef nonnull %.03) #10
  br label %170

170:                                              ; preds = %169, %166
  %171 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 3
  %172 = load %struct.commands*, %struct.commands** %171, align 8
  %.not28 = icmp eq %struct.commands* %172, null
  br i1 %.not28, label %176, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 3
  %175 = load %struct.commands*, %struct.commands** %174, align 8
  call void (%struct.commands*, ...) bitcast (void (...)* @print_commands to void (%struct.commands*, ...)*)(%struct.commands* noundef %175) #10
  br label %176

176:                                              ; preds = %173, %170
  br label %177

177:                                              ; preds = %176
  %178 = getelementptr inbounds %struct.file, %struct.file* %.07, i64 0, i32 7
  %179 = load %struct.file*, %struct.file** %178, align 8
  br label %10, !llvm.loop !32

180:                                              ; preds = %10
  br label %181

181:                                              ; preds = %180
  %182 = getelementptr inbounds %struct.file, %struct.file* %.03, i64 0, i32 0
  br label %7, !llvm.loop !33

183:                                              ; preds = %7
  %184 = add i32 %.01, %.06
  %185 = icmp ugt i32 %.06, %.02
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  br label %187

187:                                              ; preds = %186, %183
  %.1 = phi i32 [ %.06, %186 ], [ %.02, %183 ]
  br label %188

188:                                              ; preds = %187
  %189 = add i32 %.0, 1
  br label %2, !llvm.loop !34

190:                                              ; preds = %2
  %191 = icmp eq i32 %.01, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %190
  %193 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0)) #10
  br label %200

194:                                              ; preds = %190
  %195 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i64 0, i64 0), i32 noundef %.01, i32 noundef 1007) #10
  %196 = uitofp i32 %.01 to double
  %197 = fdiv double 1.007000e+03, %196
  %198 = fmul double %197, 1.000000e+02
  %199 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.37, i64 0, i64 0), double noundef %198, i32 noundef %.02) #10
  br label %200

200:                                              ; preds = %194, %192
  ret void

UnifiedUnreachableBlock:                          ; preds = %160, %153
  unreachable
}

declare dso_local i32 @puts(i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local i32 @ctime(...) #3

declare dso_local void @print_file_variables(...) #3

declare dso_local void @print_commands(...) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind readnone willreturn }

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
