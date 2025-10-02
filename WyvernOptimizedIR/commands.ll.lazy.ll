; ModuleID = './commands.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child = type { %struct.child*, %struct.file*, i8**, i8**, i32, i8*, i32, i8 }
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"$(MAKE)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"${MAKE}\00", align 1
@children = external dso_local global %struct.child*, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"*** Deleting file `%s'\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"unlink: \00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"*** [%s] Deleting file `%s'\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"#  commands to execute\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c" (built-in):\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" (from `%s', line %u):\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\09%.*s\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c".SUFFIXES\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@default_file = external dso_local global %struct.file*, align 8
@.str.15 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"@D\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"@F\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"*D\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"*F\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"<D\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"<F\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%D\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%F\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"^D\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"^F\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"?D\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"?F\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @chop_commands(%struct.commands* noundef %0) #0 {
  %.not = icmp eq %struct.commands* %0, null
  br i1 %.not, label %103, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 4
  %4 = load i8**, i8*** %3, align 8
  %5 = icmp eq i8** %4, null
  br i1 %5, label %6, label %103

6:                                                ; preds = %2
  %7 = call i8* (i64, ...) bitcast (i8* (...)* @xmalloc to i8* (i64, ...)*)(i64 noundef 40) #8
  %8 = bitcast i8* %7 to i8**
  %9 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8
  br label %11

11:                                               ; preds = %63, %6
  %.06 = phi i8** [ %8, %6 ], [ %.17, %63 ]
  %.04 = phi i32 [ 0, %6 ], [ %57, %63 ]
  %.02 = phi i32 [ 5, %6 ], [ %.13, %63 ]
  %.01 = phi i8* [ %10, %6 ], [ %.1, %63 ]
  %12 = load i8, i8* %.01, align 1
  %.not14 = icmp eq i8 %12, 0
  br i1 %.not14, label %64, label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %39, %13
  %.09 = phi i8* [ %.01, %13 ], [ %40, %39 ]
  %15 = call i8* @strchr(i8* noundef nonnull %.09, i32 noundef 10) #9
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call i64 @strlen(i8* noundef nonnull %.01) #9
  %19 = getelementptr inbounds i8, i8* %.01, i64 %18
  br label %43

20:                                               ; preds = %14
  %21 = icmp ugt i8* %15, %.01
  br i1 %21, label %22, label %.loopexit

22:                                               ; preds = %20
  %23 = getelementptr inbounds i8, i8* %15, i64 -1
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 92
  br i1 %25, label %26, label %.loopexit

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, i8* %15, i64 -2
  br label %28

28:                                               ; preds = %35, %26
  %.011 = phi i32 [ 1, %26 ], [ %36, %35 ]
  %.0 = phi i8* [ %27, %26 ], [ %37, %35 ]
  %.not18 = icmp ult i8* %.0, %.01
  br i1 %.not18, label %32, label %29

29:                                               ; preds = %28
  %30 = load i8, i8* %.0, align 1
  %31 = icmp eq i8 %30, 92
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i1 [ false, %28 ], [ %31, %29 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = xor i32 %.011, 1
  %37 = getelementptr inbounds i8, i8* %.0, i64 -1
  br label %28, !llvm.loop !4

38:                                               ; preds = %32
  %.not19 = icmp eq i32 %.011, 0
  br i1 %.not19, label %41, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds i8, i8* %15, i64 1
  br label %14

41:                                               ; preds = %38
  br label %42

.loopexit:                                        ; preds = %20, %22
  br label %42

42:                                               ; preds = %.loopexit, %41
  br label %43

43:                                               ; preds = %42, %17
  %.110 = phi i8* [ %19, %17 ], [ %15, %42 ]
  %44 = icmp eq i32 %.04, %.02
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = add i32 %.02, 2
  %47 = bitcast i8** %.06 to i8*
  %48 = zext i32 %46 to i64
  %49 = shl nuw nsw i64 %48, 3
  %50 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @xrealloc to i8* (i8*, i64, ...)*)(i8* noundef %47, i64 noundef %49) #8
  %51 = bitcast i8* %50 to i8**
  br label %52

52:                                               ; preds = %45, %43
  %.17 = phi i8** [ %51, %45 ], [ %.06, %43 ]
  %.13 = phi i32 [ %46, %45 ], [ %.02, %43 ]
  %53 = ptrtoint i8* %.110 to i64
  %54 = ptrtoint i8* %.01 to i64
  %55 = sub i64 %53, %54
  %56 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef nonnull %.01, i64 noundef %55) #8
  %57 = add i32 %.04, 1
  %58 = zext i32 %.04 to i64
  %59 = getelementptr inbounds i8*, i8** %.17, i64 %58
  store i8* %56, i8** %59, align 8
  %60 = load i8, i8* %.110, align 1
  %.not17 = icmp eq i8 %60, 0
  br i1 %.not17, label %63, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds i8, i8* %.110, i64 1
  br label %63

63:                                               ; preds = %61, %52
  %.1 = phi i8* [ %62, %61 ], [ %.110, %52 ]
  br label %11, !llvm.loop !6

64:                                               ; preds = %11
  %.not15 = icmp eq i32 %.04, %.02
  br i1 %.not15, label %71, label %65

65:                                               ; preds = %64
  %66 = bitcast i8** %.06 to i8*
  %67 = zext i32 %.04 to i64
  %68 = shl nuw nsw i64 %67, 3
  %69 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @xrealloc to i8* (i8*, i64, ...)*)(i8* noundef %66, i64 noundef %68) #8
  %70 = bitcast i8* %69 to i8**
  br label %71

71:                                               ; preds = %65, %64
  %.28 = phi i8** [ %70, %65 ], [ %.06, %64 ]
  %.2 = phi i32 [ %.04, %65 ], [ %.02, %64 ]
  %72 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 3
  store i32 %.2, i32* %72, align 8
  %73 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 4
  store i8** %.28, i8*** %73, align 8
  %74 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 6
  store i8 0, i8* %74, align 8
  %75 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %.2) #8
  %76 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 5
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %100, %71
  %.15 = phi i32 [ 0, %71 ], [ %101, %100 ]
  %78 = icmp ult i32 %.15, %.2
  br i1 %78, label %79, label %102

79:                                               ; preds = %77
  %80 = zext i32 %.15 to i64
  %81 = getelementptr inbounds i8*, i8** %.28, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %82) #9
  %84 = trunc i64 %83 to i32
  %85 = call i8* (i8*, i32, i8*, i32, ...) bitcast (i8* (...)* @sindex to i8* (i8*, i32, i8*, i32, ...)*)(i8* noundef %82, i32 noundef %84, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef 7) #8
  %.not16 = icmp eq i8* %85, null
  br i1 %.not16, label %86, label %89

86:                                               ; preds = %79
  %87 = call i8* (i8*, i32, i8*, i32, ...) bitcast (i8* (...)* @sindex to i8* (i8*, i32, i8*, i32, ...)*)(i8* noundef %82, i32 noundef %84, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 noundef 7) #8
  %88 = icmp ne i8* %87, null
  br label %89

89:                                               ; preds = %86, %79
  %90 = phi i1 [ true, %79 ], [ %88, %86 ]
  %91 = zext i1 %90 to i8
  %92 = zext i1 %90 to i8
  %93 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = zext i32 %.15 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 %92, i8* %96, align 1
  %97 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 6
  %98 = load i8, i8* %97, align 8
  %99 = or i8 %98, %91
  store i8 %99, i8* %97, align 8
  br label %100

100:                                              ; preds = %89
  %101 = add i32 %.15, 1
  br label %77, !llvm.loop !7

102:                                              ; preds = %77
  br label %103

103:                                              ; preds = %102, %2, %1
  ret void
}

declare dso_local i8* @xmalloc(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i8* @xrealloc(...) #1

declare dso_local i8* @savestring(...) #1

declare dso_local i8* @sindex(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @execute_file_commands(%struct.file* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %3 = load %struct.commands*, %struct.commands** %2, align 8
  %4 = getelementptr inbounds %struct.commands, %struct.commands* %3, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  br label %6

6:                                                ; preds = %22, %1
  %.0 = phi i8* [ %5, %1 ], [ %23, %22 ]
  %7 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %.loopexit, label %8

8:                                                ; preds = %6
  %9 = call i16** @__ctype_b_loc() #10
  %10 = load i16*, i16** %9, align 8
  %11 = load i8, i8* %.0, align 1
  %12 = sext i8 %11 to i64
  %13 = getelementptr inbounds i16, i16* %10, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = and i16 %14, 8192
  %.not3 = icmp eq i16 %15, 0
  br i1 %.not3, label %16, label %21

16:                                               ; preds = %8
  %17 = load i8, i8* %.0, align 1
  %.not4 = icmp eq i8 %17, 45
  br i1 %.not4, label %21, label %18

18:                                               ; preds = %16
  %19 = load i8, i8* %.0, align 1
  %.not5 = icmp eq i8 %19, 64
  br i1 %.not5, label %21, label %20

20:                                               ; preds = %18
  br label %24

21:                                               ; preds = %18, %16, %8
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %6, !llvm.loop !8

.loopexit:                                        ; preds = %6
  br label %24

24:                                               ; preds = %.loopexit, %20
  %25 = load i8, i8* %.0, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 11
  store i16 0, i16* %28, align 8
  call void (%struct.file*, ...) bitcast (void (...)* @notice_finished_file to void (%struct.file*, ...)*)(%struct.file* noundef %0) #8
  br label %30

29:                                               ; preds = %24
  call void (%struct.file*, ...) bitcast (void (...)* @initialize_file_variables to void (%struct.file*, ...)*)(%struct.file* noundef %0) #8
  call void @set_file_variables(%struct.file* noundef %0)
  call void (%struct.file*, ...) bitcast (void (...)* @new_job to void (%struct.file*, ...)*)(%struct.file* noundef %0) #8
  br label %30

30:                                               ; preds = %29, %27
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

declare dso_local void @notice_finished_file(...) #1

declare dso_local void @initialize_file_variables(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @set_file_variables(%struct.file* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) bitcast (i32 (...)* @ar_name to i32 (i8*, ...)*)(i8* noundef %3) #8
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %7, i32 noundef 40) #9
  %9 = ptrtoint i8* %8 to i64
  %10 = ptrtoint i8* %7 to i64
  %11 = sub i64 %9, %10
  %12 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %7, i64 noundef %11) #8
  %13 = getelementptr inbounds i8, i8* %8, i64 1
  %14 = call i64 @strlen(i8* noundef nonnull %13) #9
  %15 = add i64 %14, -1
  %16 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef nonnull %13, i64 noundef %15) #8
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %19) #9
  %21 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %19, i64 noundef %20) #8
  br label %22

22:                                               ; preds = %17, %5
  %.02 = phi i8* [ %16, %5 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %17 ]
  %.01 = phi i8* [ %12, %5 ], [ %21, %17 ]
  %23 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 noundef 1, i8* noundef %.01, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %24 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 noundef 1, i8* noundef %.02, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %25 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 4
  %26 = load i8*, i8** %25, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %143

28:                                               ; preds = %22
  %29 = call %struct.file* (i8*, ...) bitcast (%struct.file* (...)* @enter_file to %struct.file* (i8*, ...)*)(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i64 0, i32 2
  br label %31

31:                                               ; preds = %136, %28
  %.06.in = phi %struct.dep** [ %30, %28 ], [ %137, %136 ]
  %.06 = load %struct.dep*, %struct.dep** %.06.in, align 8
  %.not39 = icmp eq %struct.dep* %.06, null
  br i1 %.not39, label %.loopexit, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %34) #9
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 2
  %42 = load %struct.file*, %struct.file** %41, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i64 0, i32 1
  br label %46

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 1
  br label %46

46:                                               ; preds = %44, %40
  %.in40 = phi i8** [ %43, %40 ], [ %45, %44 ]
  %47 = load i8*, i8** %.in40, align 8
  %48 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %47) #9
  %49 = trunc i64 %48 to i32
  %50 = icmp ugt i32 %36, %49
  br i1 %50, label %51, label %135

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 2
  %57 = load %struct.file*, %struct.file** %56, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i64 0, i32 1
  br label %61

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 1
  br label %61

61:                                               ; preds = %59, %55
  %.in41 = phi i8** [ %58, %55 ], [ %60, %59 ]
  %62 = load i8*, i8** %.in41, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = and i64 %35, 4294967295
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = and i64 %48, 4294967295
  %68 = sub nsw i64 0, %67
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = icmp eq i8* %62, %69
  br i1 %70, label %129, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 2
  %77 = load %struct.file*, %struct.file** %76, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i64 0, i32 1
  br label %81

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 1
  br label %81

81:                                               ; preds = %79, %75
  %.in42 = phi i8** [ %78, %75 ], [ %80, %79 ]
  %82 = load i8*, i8** %.in42, align 8
  %83 = load i8, i8* %82, align 1
  %84 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = and i64 %35, 4294967295
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = and i64 %48, 4294967295
  %89 = sub nsw i64 0, %88
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = icmp eq i8 %83, %91
  br i1 %92, label %93, label %135

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 2
  %99 = load %struct.file*, %struct.file** %98, align 8
  %100 = getelementptr inbounds %struct.file, %struct.file* %99, i64 0, i32 1
  br label %103

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 1
  br label %103

103:                                              ; preds = %101, %97
  %.in43 = phi i8** [ %100, %97 ], [ %102, %101 ]
  %104 = load i8*, i8** %.in43, align 8
  %105 = load i8, i8* %104, align 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 2
  %113 = load %struct.file*, %struct.file** %112, align 8
  %114 = getelementptr inbounds %struct.file, %struct.file* %113, i64 0, i32 1
  br label %117

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 1
  br label %117

117:                                              ; preds = %115, %111
  %.in44 = phi i8** [ %114, %111 ], [ %116, %115 ]
  %118 = load i8*, i8** %.in44, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = and i64 %35, 4294967295
  %123 = getelementptr inbounds i8, i8* %121, i64 1
  %124 = and i64 %48, 4294967295
  %125 = sub nsw i64 0, %124
  %126 = getelementptr inbounds i8, i8* %123, i64 %122
  %127 = getelementptr inbounds i8, i8* %126, i64 %125
  %128 = call i32 @strcmp(i8* noundef nonnull %119, i8* noundef nonnull %127) #9
  %.not45 = icmp eq i32 %128, 0
  br i1 %.not45, label %129, label %135

129:                                              ; preds = %117, %103, %61
  %130 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = sub i32 %36, %49
  %133 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i32, ...)*)(i8* noundef %131, i32 noundef %132) #8
  %134 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 4
  store i8* %133, i8** %134, align 8
  br label %138

135:                                              ; preds = %117, %81, %46
  br label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.dep, %struct.dep* %.06, i64 0, i32 0
  br label %31, !llvm.loop !9

.loopexit:                                        ; preds = %31
  br label %138

138:                                              ; preds = %.loopexit, %129
  %139 = icmp eq %struct.dep* %.06, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i8** %141, align 8
  br label %142

142:                                              ; preds = %140, %138
  br label %143

143:                                              ; preds = %142, %22
  %144 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 4
  %145 = load i8*, i8** %144, align 8
  %146 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 noundef 1, i8* noundef %145, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %147 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 2
  %148 = load %struct.dep*, %struct.dep** %147, align 8
  %.not28 = icmp eq %struct.dep* %148, null
  br i1 %.not28, label %167, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 2
  %151 = load %struct.dep*, %struct.dep** %150, align 8
  %152 = getelementptr inbounds %struct.dep, %struct.dep* %151, i64 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 2
  %157 = load %struct.dep*, %struct.dep** %156, align 8
  %158 = getelementptr inbounds %struct.dep, %struct.dep* %157, i64 0, i32 2
  %159 = load %struct.file*, %struct.file** %158, align 8
  %160 = getelementptr inbounds %struct.file, %struct.file* %159, i64 0, i32 1
  br label %165

161:                                              ; preds = %149
  %162 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 2
  %163 = load %struct.dep*, %struct.dep** %162, align 8
  %164 = getelementptr inbounds %struct.dep, %struct.dep* %163, i64 0, i32 1
  br label %165

165:                                              ; preds = %161, %155
  %.in38 = phi i8** [ %160, %155 ], [ %164, %161 ]
  %166 = load i8*, i8** %.in38, align 8
  br label %168

167:                                              ; preds = %143
  br label %168

168:                                              ; preds = %167, %165
  %169 = phi i8* [ %166, %165 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), %167 ]
  %170 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 3
  %171 = load %struct.commands*, %struct.commands** %170, align 8
  %172 = load %struct.file*, %struct.file** @default_file, align 8
  %173 = getelementptr inbounds %struct.file, %struct.file* %172, i64 0, i32 3
  %174 = load %struct.commands*, %struct.commands** %173, align 8
  %175 = icmp eq %struct.commands* %171, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %177

177:                                              ; preds = %176, %168
  %.05 = phi i8* [ %.01, %176 ], [ %169, %168 ]
  %178 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i32 noundef 1, i8* noundef %.05, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %179 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %.01, i32 noundef 47) #9
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %193

182:                                              ; preds = %177
  %183 = icmp eq i8* %179, %.01
  br i1 %183, label %184, label %185

184:                                              ; preds = %182
  br label %191

185:                                              ; preds = %182
  %186 = ptrtoint i8* %179 to i64
  %187 = ptrtoint i8* %.01 to i64
  %188 = sub i64 %186, %187
  %189 = add nsw i64 %188, 1
  %190 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %.01, i64 noundef %189) #8
  br label %191

191:                                              ; preds = %185, %184
  %192 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %184 ], [ %190, %185 ]
  br label %193

193:                                              ; preds = %191, %181
  %194 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %181 ], [ %192, %191 ]
  %195 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 noundef 2, i8* noundef %194, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %.not29 = icmp eq i8* %179, null
  br i1 %.not29, label %198, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds i8, i8* %179, i64 1
  br label %199

198:                                              ; preds = %193
  br label %199

199:                                              ; preds = %198, %196
  %200 = phi i8* [ %197, %196 ], [ %.01, %198 ]
  %201 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 noundef 2, i8* noundef %200, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %202 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %145, i32 noundef 47) #9
  %203 = icmp eq i8* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %216

205:                                              ; preds = %199
  %206 = icmp eq i8* %202, %145
  br i1 %206, label %207, label %208

207:                                              ; preds = %205
  br label %214

208:                                              ; preds = %205
  %209 = ptrtoint i8* %202 to i64
  %210 = ptrtoint i8* %145 to i64
  %211 = sub i64 %209, %210
  %212 = add nsw i64 %211, 1
  %213 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %145, i64 noundef %212) #8
  br label %214

214:                                              ; preds = %208, %207
  %215 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %207 ], [ %213, %208 ]
  br label %216

216:                                              ; preds = %214, %204
  %217 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %204 ], [ %215, %214 ]
  %218 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 noundef 2, i8* noundef %217, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %.not30 = icmp eq i8* %202, null
  br i1 %.not30, label %221, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds i8, i8* %202, i64 1
  br label %222

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221, %219
  %223 = phi i8* [ %220, %219 ], [ %145, %221 ]
  %224 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 noundef 2, i8* noundef %223, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %225 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %.05, i32 noundef 47) #9
  %226 = icmp eq i8* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %239

228:                                              ; preds = %222
  %229 = icmp eq i8* %225, %.05
  br i1 %229, label %230, label %231

230:                                              ; preds = %228
  br label %237

231:                                              ; preds = %228
  %232 = ptrtoint i8* %225 to i64
  %233 = ptrtoint i8* %.05 to i64
  %234 = sub i64 %232, %233
  %235 = add nsw i64 %234, 1
  %236 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %.05, i64 noundef %235) #8
  br label %237

237:                                              ; preds = %231, %230
  %238 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %230 ], [ %236, %231 ]
  br label %239

239:                                              ; preds = %237, %227
  %240 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %227 ], [ %238, %237 ]
  %241 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 noundef 2, i8* noundef %240, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %.not31 = icmp eq i8* %225, null
  br i1 %.not31, label %244, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %225, i64 1
  br label %245

244:                                              ; preds = %239
  br label %245

245:                                              ; preds = %244, %242
  %246 = phi i8* [ %243, %242 ], [ %.05, %244 ]
  %247 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 noundef 2, i8* noundef %246, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %248 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %.02, i32 noundef 47) #9
  %249 = icmp eq i8* %248, null
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  br label %262

251:                                              ; preds = %245
  %252 = icmp eq i8* %248, %.02
  br i1 %252, label %253, label %254

253:                                              ; preds = %251
  br label %260

254:                                              ; preds = %251
  %255 = ptrtoint i8* %248 to i64
  %256 = ptrtoint i8* %.02 to i64
  %257 = sub i64 %255, %256
  %258 = add nsw i64 %257, 1
  %259 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %.02, i64 noundef %258) #8
  br label %260

260:                                              ; preds = %254, %253
  %261 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), %253 ], [ %259, %254 ]
  br label %262

262:                                              ; preds = %260, %250
  %263 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %250 ], [ %261, %260 ]
  %264 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i32 noundef 2, i8* noundef %263, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %.not32 = icmp eq i8* %248, null
  br i1 %.not32, label %267, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds i8, i8* %248, i64 1
  br label %268

267:                                              ; preds = %262
  br label %268

268:                                              ; preds = %267, %265
  %269 = phi i8* [ %266, %265 ], [ %.02, %267 ]
  %270 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 noundef 2, i8* noundef %269, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %271 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 2
  br label %272

272:                                              ; preds = %294, %268
  %.014.in = phi %struct.dep** [ %271, %268 ], [ %295, %294 ]
  %.012 = phi i32 [ 0, %268 ], [ %.113, %294 ]
  %.011 = phi i32 [ 0, %268 ], [ %288, %294 ]
  %.014 = load %struct.dep*, %struct.dep** %.014.in, align 8
  %.not33 = icmp eq %struct.dep* %.014, null
  br i1 %.not33, label %296, label %273

273:                                              ; preds = %272
  %274 = getelementptr inbounds %struct.dep, %struct.dep* %.014, i64 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = icmp eq i8* %275, null
  br i1 %276, label %277, label %281

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.dep, %struct.dep* %.014, i64 0, i32 2
  %279 = load %struct.file*, %struct.file** %278, align 8
  %280 = getelementptr inbounds %struct.file, %struct.file* %279, i64 0, i32 1
  br label %283

281:                                              ; preds = %273
  %282 = getelementptr inbounds %struct.dep, %struct.dep* %.014, i64 0, i32 1
  br label %283

283:                                              ; preds = %281, %277
  %.in36 = phi i8** [ %280, %277 ], [ %282, %281 ]
  %284 = load i8*, i8** %.in36, align 8
  %285 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %284) #9
  %286 = trunc i64 %285 to i32
  %287 = add i32 %286, 1
  %288 = add i32 %.011, %287
  %289 = getelementptr inbounds %struct.dep, %struct.dep* %.014, i64 0, i32 3
  %290 = load i32, i32* %289, align 8
  %.not37 = icmp eq i32 %290, 0
  br i1 %.not37, label %293, label %291

291:                                              ; preds = %283
  %292 = add i32 %.012, %287
  br label %293

293:                                              ; preds = %291, %283
  %.113 = phi i32 [ %292, %291 ], [ %.012, %283 ]
  br label %294

294:                                              ; preds = %293
  %295 = getelementptr inbounds %struct.dep, %struct.dep* %.014, i64 0, i32 0
  br label %272, !llvm.loop !10

296:                                              ; preds = %272
  %297 = icmp eq i32 %.011, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %296
  br label %300

299:                                              ; preds = %296
  br label %300

300:                                              ; preds = %299, %298
  %301 = phi i32 [ 1, %298 ], [ %.011, %299 ]
  %302 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %301) #8
  %303 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %301) #8
  %304 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %301) #8
  %305 = icmp eq i32 %.012, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %300
  br label %308

307:                                              ; preds = %300
  br label %308

308:                                              ; preds = %307, %306
  %309 = phi i32 [ 1, %306 ], [ %.012, %307 ]
  %310 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %309) #8
  %311 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %309) #8
  %312 = call i8* (i32, ...) bitcast (i8* (...)* @xmalloc to i8* (i32, ...)*)(i32 noundef %309) #8
  %313 = getelementptr inbounds %struct.file, %struct.file* %0, i64 0, i32 2
  br label %314

314:                                              ; preds = %376, %308
  %.023 = phi i8* [ %310, %308 ], [ %.124, %376 ]
  %.021 = phi i8* [ %311, %308 ], [ %.122, %376 ]
  %.020 = phi i8* [ %304, %308 ], [ %359, %376 ]
  %.019 = phi i8* [ %303, %308 ], [ %355, %376 ]
  %.018 = phi i8* [ %302, %308 ], [ %332, %376 ]
  %.016 = phi i8* [ %312, %308 ], [ %.117, %376 ]
  %.115.in = phi %struct.dep** [ %313, %308 ], [ %377, %376 ]
  %.115 = load %struct.dep*, %struct.dep** %.115.in, align 8
  %.not34 = icmp eq %struct.dep* %.115, null
  br i1 %.not34, label %378, label %315

315:                                              ; preds = %314
  %316 = getelementptr inbounds %struct.dep, %struct.dep* %.115, i64 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = icmp eq i8* %317, null
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.dep, %struct.dep* %.115, i64 0, i32 2
  %321 = load %struct.file*, %struct.file** %320, align 8
  %322 = getelementptr inbounds %struct.file, %struct.file* %321, i64 0, i32 1
  br label %325

323:                                              ; preds = %315
  %324 = getelementptr inbounds %struct.dep, %struct.dep* %.115, i64 0, i32 1
  br label %325

325:                                              ; preds = %323, %319
  %.in = phi i8** [ %322, %319 ], [ %324, %323 ]
  %326 = load i8*, i8** %.in, align 8
  %327 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %326) #9
  %328 = trunc i64 %327 to i32
  %329 = and i64 %327, 4294967295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.018, i8* align 1 %326, i64 %329, i1 false)
  %330 = and i64 %327, 4294967295
  %331 = getelementptr inbounds i8, i8* %.018, i64 %330
  %332 = getelementptr inbounds i8, i8* %331, i64 1
  store i8 32, i8* %331, align 1
  %333 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %326, i32 noundef 47) #9
  %334 = icmp eq i8* %333, null
  br i1 %334, label %335, label %336

335:                                              ; preds = %325
  br label %351

336:                                              ; preds = %325
  %337 = icmp eq i8* %333, %326
  br i1 %337, label %338, label %340

338:                                              ; preds = %336
  %339 = add i32 %328, -1
  br label %350

340:                                              ; preds = %336
  %341 = getelementptr inbounds i8, i8* %333, i64 1
  %342 = ptrtoint i8* %341 to i64
  %343 = ptrtoint i8* %326 to i64
  %.neg = sub i64 %343, %342
  %344 = add i64 %.neg, %327
  %345 = trunc i64 %344 to i32
  %346 = ptrtoint i8* %333 to i64
  %347 = ptrtoint i8* %326 to i64
  %348 = sub i64 %346, %347
  %349 = trunc i64 %348 to i32
  br label %350

350:                                              ; preds = %340, %338
  %.pn = phi i8* [ %326, %338 ], [ %333, %340 ]
  %.03 = phi i32 [ 1, %338 ], [ %349, %340 ]
  %.0 = phi i32 [ %339, %338 ], [ %345, %340 ]
  %.07 = getelementptr inbounds i8, i8* %.pn, i64 1
  br label %351

351:                                              ; preds = %350, %335
  %.110 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %335 ], [ %326, %350 ]
  %.18 = phi i8* [ %326, %335 ], [ %.07, %350 ]
  %.14 = phi i32 [ 2, %335 ], [ %.03, %350 ]
  %.1 = phi i32 [ %328, %335 ], [ %.0, %350 ]
  %352 = zext i32 %.14 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.019, i8* align 1 %.110, i64 %352, i1 false)
  %353 = zext i32 %.14 to i64
  %354 = getelementptr inbounds i8, i8* %.019, i64 %353
  %355 = getelementptr inbounds i8, i8* %354, i64 1
  store i8 32, i8* %354, align 1
  %356 = zext i32 %.1 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.020, i8* align 1 %.18, i64 %356, i1 false)
  %357 = zext i32 %.1 to i64
  %358 = getelementptr inbounds i8, i8* %.020, i64 %357
  %359 = getelementptr inbounds i8, i8* %358, i64 1
  store i8 32, i8* %358, align 1
  %360 = getelementptr inbounds %struct.dep, %struct.dep* %.115, i64 0, i32 3
  %361 = load i32, i32* %360, align 8
  %.not35 = icmp eq i32 %361, 0
  br i1 %.not35, label %375, label %362

362:                                              ; preds = %351
  %363 = and i64 %327, 4294967295
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.023, i8* align 1 %326, i64 %363, i1 false)
  %364 = and i64 %327, 4294967295
  %365 = getelementptr inbounds i8, i8* %.023, i64 %364
  %366 = getelementptr inbounds i8, i8* %365, i64 1
  store i8 32, i8* %365, align 1
  %367 = zext i32 %.14 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.021, i8* align 1 %.110, i64 %367, i1 false)
  %368 = zext i32 %.14 to i64
  %369 = getelementptr inbounds i8, i8* %.021, i64 %368
  %370 = getelementptr inbounds i8, i8* %369, i64 1
  store i8 32, i8* %369, align 1
  %371 = zext i32 %.1 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.016, i8* align 1 %.18, i64 %371, i1 false)
  %372 = zext i32 %.1 to i64
  %373 = getelementptr inbounds i8, i8* %.016, i64 %372
  %374 = getelementptr inbounds i8, i8* %373, i64 1
  store i8 32, i8* %373, align 1
  br label %375

375:                                              ; preds = %362, %351
  %.124 = phi i8* [ %366, %362 ], [ %.023, %351 ]
  %.122 = phi i8* [ %370, %362 ], [ %.021, %351 ]
  %.117 = phi i8* [ %374, %362 ], [ %.016, %351 ]
  br label %376

376:                                              ; preds = %375
  %377 = getelementptr inbounds %struct.dep, %struct.dep* %.115, i64 0, i32 0
  br label %314, !llvm.loop !11

378:                                              ; preds = %314
  %379 = icmp ugt i8* %.018, %302
  %380 = sext i1 %379 to i64
  %381 = getelementptr inbounds i8, i8* %.018, i64 %380
  store i8 0, i8* %381, align 1
  %382 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 noundef 1, i8* noundef %302, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %383 = icmp ugt i8* %.019, %303
  %384 = sext i1 %383 to i64
  %385 = getelementptr inbounds i8, i8* %.019, i64 %384
  store i8 0, i8* %385, align 1
  %386 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 noundef 2, i8* noundef %303, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %387 = icmp ugt i8* %.020, %304
  %388 = sext i1 %387 to i64
  %389 = getelementptr inbounds i8, i8* %.020, i64 %388
  store i8 0, i8* %389, align 1
  %390 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef 2, i8* noundef %304, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %391 = icmp ugt i8* %.023, %310
  %392 = sext i1 %391 to i64
  %393 = getelementptr inbounds i8, i8* %.023, i64 %392
  store i8 0, i8* %393, align 1
  %394 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32 noundef 1, i8* noundef %310, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %395 = icmp ugt i8* %.021, %311
  %396 = sext i1 %395 to i64
  %397 = getelementptr inbounds i8, i8* %.021, i64 %396
  store i8 0, i8* %397, align 1
  %398 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 noundef 2, i8* noundef %311, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  %399 = icmp ugt i8* %.016, %312
  %400 = sext i1 %399 to i64
  %401 = getelementptr inbounds i8, i8* %.016, i64 %400
  store i8 0, i8* %401, align 1
  %402 = call %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...) bitcast (%struct.variable* (...)* @define_variable_for_file to %struct.variable* (i8*, i32, i8*, i32, i32, %struct.file*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i32 noundef 2, i8* noundef %312, i32 noundef 6, i32 noundef 0, %struct.file* noundef %0) #8
  ret void
}

declare dso_local void @new_job(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fatal_error_signal(i32 noundef %0) #0 {
  %2 = call void (i32)* @signal(i32 noundef %0, void (i32)* noundef null) #8
  %3 = call i32 @sigsetmask(i32 noundef 0) #8
  %4 = icmp eq i32 %0, 15
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  call void (i32, ...) bitcast (void (...)* @push_signals_blocked_p to void (i32, ...)*)(i32 noundef 1) #8
  br label %6

6:                                                ; preds = %16, %5
  %.01.in = phi %struct.child** [ @children, %5 ], [ %17, %16 ]
  %.01 = load %struct.child*, %struct.child** %.01.in, align 8
  %.not5 = icmp eq %struct.child* %.01, null
  br i1 %.not5, label %18, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.child, %struct.child* %.01, i64 0, i32 7
  %9 = load i8, i8* %8, align 4
  %10 = and i8 %9, 1
  %.not6 = icmp eq i8 %10, 0
  br i1 %.not6, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.child, %struct.child* %.01, i64 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @kill(i32 noundef %13, i32 noundef 15) #8
  br label %15

15:                                               ; preds = %11, %7
  br label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.child, %struct.child* %.01, i64 0, i32 0
  br label %6, !llvm.loop !12

18:                                               ; preds = %6
  call void (...) @pop_signals_blocked_p() #8
  br label %19

19:                                               ; preds = %18, %1
  %20 = add nsw i32 %0, -1
  %21 = shl i32 1, %20
  %22 = and i32 %21, 16391
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %42, label %23

23:                                               ; preds = %19
  call void (i32, ...) bitcast (void (...)* @push_signals_blocked_p to void (i32, ...)*)(i32 noundef 1) #8
  br label %24

24:                                               ; preds = %34, %23
  %.0.in = phi %struct.child** [ @children, %23 ], [ %35, %34 ]
  %.0 = load %struct.child*, %struct.child** %.0.in, align 8
  %.not2 = icmp eq %struct.child* %.0, null
  br i1 %.not2, label %36, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.child, %struct.child* %.0, i64 0, i32 7
  %27 = load i8, i8* %26, align 4
  %28 = and i8 %27, 1
  %.not4 = icmp eq i8 %28, 0
  br i1 %.not4, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.child, %struct.child* %.0, i64 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i32, ...) bitcast (i32 (...)* @remote_kill to i32 (i32, i32, ...)*)(i32 noundef %31, i32 noundef %0) #8
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.child, %struct.child* %.0, i64 0, i32 0
  br label %24, !llvm.loop !13

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %39, %36
  %.1.in = phi %struct.child** [ @children, %36 ], [ %40, %39 ]
  %.1 = load %struct.child*, %struct.child** %.1.in, align 8
  %.not3 = icmp eq %struct.child* %.1, null
  br i1 %.not3, label %41, label %38

38:                                               ; preds = %37
  call void @delete_child_targets(%struct.child* noundef nonnull %.1)
  br label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.child, %struct.child* %.1, i64 0, i32 0
  br label %37, !llvm.loop !14

41:                                               ; preds = %37
  call void (...) @pop_signals_blocked_p() #8
  call void (i32, i32, ...) bitcast (void (...)* @wait_for_children to void (i32, i32, ...)*)(i32 noundef 0, i32 noundef 0) #8
  br label %43

42:                                               ; preds = %19
  call void (i32, i32, ...) bitcast (void (...)* @wait_for_children to void (i32, i32, ...)*)(i32 noundef 0, i32 noundef 1) #8
  br label %43

43:                                               ; preds = %42, %41
  call void (i32, ...) bitcast (void (...)* @remove_intermediates to void (i32, ...)*)(i32 noundef 1) #8
  %44 = icmp eq i32 %0, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  call void @exit(i32 noundef 1) #11
  unreachable

46:                                               ; preds = %43
  %47 = call i32 @getpid() #8
  %48 = call i32 @kill(i32 noundef %47, i32 noundef %0) #8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  call void (i8*, ...) bitcast (void (...)* @pfatal_with_name to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8
  br label %51

51:                                               ; preds = %50, %46
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #4

; Function Attrs: nounwind
declare dso_local i32 @sigsetmask(i32 noundef) #4

declare dso_local void @push_signals_blocked_p(...) #1

; Function Attrs: nounwind
declare dso_local i32 @kill(i32 noundef, i32 noundef) #4

declare dso_local void @pop_signals_blocked_p(...) #1

declare dso_local i32 @remote_kill(...) #1

declare dso_local void @wait_for_children(...) #1

declare dso_local void @remove_intermediates(...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: nounwind
declare dso_local i32 @getpid() #4

declare dso_local void @pfatal_with_name(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @delete_child_targets(%struct.child* nocapture noundef %0) #0 {
  %2 = alloca %struct.stat, align 8
  %3 = getelementptr inbounds %struct.child, %struct.child* %0, i64 0, i32 7
  %4 = load i8, i8* %3, align 4
  %5 = and i8 %4, 8
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %1
  br label %108

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.child, %struct.child* %0, i64 0, i32 1
  %9 = load %struct.file*, %struct.file** %8, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i64 0, i32 12
  %11 = load i16, i16* %10, align 2
  %12 = and i16 %11, 8
  %.not1 = icmp eq i16 %12, 0
  br i1 %.not1, label %13, label %49

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.child, %struct.child* %0, i64 0, i32 1
  %15 = load %struct.file*, %struct.file** %14, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i64 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @stat(i8* noundef %17, %struct.stat* noundef nonnull %2) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 61440
  %24 = icmp eq i32 %23, 32768
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.child, %struct.child* %0, i64 0, i32 1
  %29 = load %struct.file*, %struct.file** %28, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i64 0, i32 6
  %31 = load i64, i64* %30, align 8
  %.not5 = icmp eq i64 %27, %31
  br i1 %.not5, label %49, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.child, %struct.child* %0, i64 0, i32 1
  %34 = load %struct.file*, %struct.file** %33, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i64 0, i32 1
  %36 = load i8*, i8** %35, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* noundef %36) #8
  %37 = getelementptr inbounds %struct.child, %struct.child* %0, i64 0, i32 1
  %38 = load %struct.file*, %struct.file** %37, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i64 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @unlink(i8* noundef %40) #8
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.child, %struct.child* %0, i64 0, i32 1
  %45 = load %struct.file*, %struct.file** %44, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i64 0, i32 1
  %47 = load i8*, i8** %46, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @perror_with_name to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* noundef %47) #8
  br label %48

48:                                               ; preds = %43, %32
  br label %49

49:                                               ; preds = %48, %25, %20, %13, %7
  %50 = getelementptr inbounds %struct.child, %struct.child* %0, i64 0, i32 1
  %51 = load %struct.file*, %struct.file** %50, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i64 0, i32 5
  br label %53

53:                                               ; preds = %102, %49
  %.0.in = phi %struct.dep** [ %52, %49 ], [ %103, %102 ]
  %.0 = load %struct.dep*, %struct.dep** %.0.in, align 8
  %.not2 = icmp eq %struct.dep* %.0, null
  br i1 %.not2, label %104, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.dep, %struct.dep* %.0, i64 0, i32 2
  %56 = load %struct.file*, %struct.file** %55, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i64 0, i32 12
  %58 = load i16, i16* %57, align 2
  %59 = and i16 %58, 8
  %.not3 = icmp eq i16 %59, 0
  br i1 %.not3, label %60, label %101

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.dep, %struct.dep* %.0, i64 0, i32 2
  %62 = load %struct.file*, %struct.file** %61, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i64 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @stat(i8* noundef %64, %struct.stat* noundef nonnull %2) #8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 61440
  %71 = icmp eq i32 %70, 32768
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 12, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.dep, %struct.dep* %.0, i64 0, i32 2
  %76 = load %struct.file*, %struct.file** %75, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i64 0, i32 6
  %78 = load i64, i64* %77, align 8
  %.not4 = icmp eq i64 %74, %78
  br i1 %.not4, label %100, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.child, %struct.child* %0, i64 0, i32 1
  %81 = load %struct.file*, %struct.file** %80, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i64 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds %struct.dep, %struct.dep* %.0, i64 0, i32 2
  %85 = load %struct.file*, %struct.file** %84, align 8
  %86 = getelementptr inbounds %struct.file, %struct.file* %85, i64 0, i32 1
  %87 = load i8*, i8** %86, align 8
  call void (i8*, i8*, i8*, ...) bitcast (void (...)* @error to void (i8*, i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* noundef %83, i8* noundef %87) #8
  %88 = getelementptr inbounds %struct.dep, %struct.dep* %.0, i64 0, i32 2
  %89 = load %struct.file*, %struct.file** %88, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i64 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @unlink(i8* noundef %91) #8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %79
  %95 = getelementptr inbounds %struct.dep, %struct.dep* %.0, i64 0, i32 2
  %96 = load %struct.file*, %struct.file** %95, align 8
  %97 = getelementptr inbounds %struct.file, %struct.file* %96, i64 0, i32 1
  %98 = load i8*, i8** %97, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @perror_with_name to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* noundef %98) #8
  br label %99

99:                                               ; preds = %94, %79
  br label %100

100:                                              ; preds = %99, %72, %67, %60
  br label %101

101:                                              ; preds = %100, %54
  br label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.dep, %struct.dep* %.0, i64 0, i32 0
  br label %53, !llvm.loop !15

104:                                              ; preds = %53
  %105 = getelementptr inbounds %struct.child, %struct.child* %0, i64 0, i32 7
  %106 = load i8, i8* %105, align 4
  %107 = or i8 %106, 8
  store i8 %107, i8* %105, align 4
  br label %108

108:                                              ; preds = %104, %6
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #4

declare dso_local void @error(...) #1

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8* noundef) #4

declare dso_local void @perror_with_name(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_commands(%struct.commands* nocapture noundef readonly %0) #0 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %2)
  %4 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @puts(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0)) #8
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* noundef %11, i32 noundef %13) #8
  br label %15

15:                                               ; preds = %9, %7
  %16 = getelementptr inbounds %struct.commands, %struct.commands* %0, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8
  br label %18

18:                                               ; preds = %37, %15
  %.01 = phi i8* [ %17, %15 ], [ %.0, %37 ]
  %19 = load i8, i8* %.01, align 1
  %.not = icmp eq i8 %19, 0
  br i1 %.not, label %42, label %20

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %29, %20
  %.1 = phi i8* [ %.01, %20 ], [ %30, %29 ]
  %22 = call i16** @__ctype_b_loc() #10
  %23 = load i16*, i16** %22, align 8
  %24 = load i8, i8* %.1, align 1
  %25 = sext i8 %24 to i64
  %26 = getelementptr inbounds i16, i16* %23, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = and i16 %27, 8192
  %.not2 = icmp eq i16 %28, 0
  br i1 %.not2, label %31, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, i8* %.1, i64 1
  br label %21, !llvm.loop !16

31:                                               ; preds = %21
  %32 = call i8* @strchr(i8* noundef nonnull %.1, i32 noundef 10) #9
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = call i64 @strlen(i8* noundef nonnull %.1) #9
  %36 = getelementptr inbounds i8, i8* %.1, i64 %35
  br label %37

37:                                               ; preds = %34, %31
  %.0 = phi i8* [ %36, %34 ], [ %32, %31 ]
  %38 = ptrtoint i8* %.0 to i64
  %39 = ptrtoint i8* %.1 to i64
  %40 = sub i64 %38, %39
  %41 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i64 noundef %40, i8* noundef nonnull %.1) #8
  br label %18, !llvm.loop !17

42:                                               ; preds = %18
  ret void
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @puts(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @ar_name(...) #1

declare dso_local %struct.variable* @define_variable_for_file(...) #1

declare dso_local %struct.file* @enter_file(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { noreturn nounwind }

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
