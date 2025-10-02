; ModuleID = './trace.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/siod/trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obj = type { i16, i16, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.obj*, %struct.obj* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gen_printio = type { i32 (i32, i8*)*, i32 (i8*, i8*)*, i8* }

@sym_begin = internal global %struct.obj* null, align 8
@sym_quote = internal global %struct.obj* null, align 8
@tc_closure_traced = internal global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"not a closure, cannot trace\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"not a closure, cannot untrace\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"#<CLOSURE(TRACED) \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c">\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@sym_traced = internal global %struct.obj* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"*traced*\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"untrace\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"*trace-version*\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"$Id$\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct.obj* @ltrace_fcn_name(%struct.obj* noundef readonly %0) #0 {
  %2 = icmp eq %struct.obj* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 1
  %6 = load i16, i16* %5, align 2
  %phi.cmp = icmp eq i16 %6, 1
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i1 [ false, %3 ], [ %phi.cmp, %4 ]
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  br label %56

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 0
  %12 = load %struct.obj*, %struct.obj** %11, align 8
  %13 = load %struct.obj*, %struct.obj** @sym_begin, align 8
  %.not = icmp eq %struct.obj* %12, %13
  br i1 %.not, label %15, label %14

14:                                               ; preds = %10
  br label %56

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 1
  %17 = load %struct.obj*, %struct.obj** %16, align 8
  %18 = icmp eq %struct.obj* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.obj, %struct.obj* %17, i64 0, i32 1
  %22 = load i16, i16* %21, align 2
  %phi.cmp2 = icmp eq i16 %22, 1
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i1 [ false, %19 ], [ %phi.cmp2, %20 ]
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  br label %56

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.obj, %struct.obj* %17, i64 0, i32 2, i32 0, i32 0
  %28 = load %struct.obj*, %struct.obj** %27, align 8
  %29 = icmp eq %struct.obj* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.obj, %struct.obj* %28, i64 0, i32 1
  %33 = load i16, i16* %32, align 2
  %phi.cmp4 = icmp eq i16 %33, 1
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi i1 [ false, %30 ], [ %phi.cmp4, %31 ]
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  br label %56

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.obj, %struct.obj* %28, i64 0, i32 2, i32 0, i32 0
  %39 = load %struct.obj*, %struct.obj** %38, align 8
  %40 = load %struct.obj*, %struct.obj** @sym_quote, align 8
  %.not5 = icmp eq %struct.obj* %39, %40
  br i1 %.not5, label %42, label %41

41:                                               ; preds = %37
  br label %56

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.obj, %struct.obj* %28, i64 0, i32 2, i32 0, i32 1
  %44 = load %struct.obj*, %struct.obj** %43, align 8
  %45 = icmp eq %struct.obj* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.obj, %struct.obj* %44, i64 0, i32 1
  %49 = load i16, i16* %48, align 2
  %phi.cmp7 = icmp eq i16 %49, 1
  br label %50

50:                                               ; preds = %47, %46
  %51 = phi i1 [ false, %46 ], [ %phi.cmp7, %47 ]
  br i1 %51, label %53, label %52

52:                                               ; preds = %50
  br label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.obj, %struct.obj* %44, i64 0, i32 2, i32 0, i32 0
  %55 = load %struct.obj*, %struct.obj** %54, align 8
  br label %56

56:                                               ; preds = %53, %52, %41, %36, %25, %14, %9
  %.0 = phi %struct.obj* [ null, %9 ], [ null, %14 ], [ null, %25 ], [ null, %36 ], [ null, %41 ], [ null, %52 ], [ %55, %53 ]
  ret %struct.obj* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.obj* @ltrace_1(%struct.obj* noundef %0, %struct.obj* noundef %1) #1 {
  %3 = call %struct.obj* @leval(%struct.obj* noundef %0, %struct.obj* noundef %1) #3
  %4 = icmp eq %struct.obj* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obj, %struct.obj* %3, i64 0, i32 1
  %8 = load i16, i16* %7, align 2
  %phi.cmp = icmp eq i16 %8, 11
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i1 [ false, %5 ], [ %phi.cmp, %6 ]
  br i1 %10, label %11, label %31

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.obj, %struct.obj* %3, i64 0, i32 2, i32 0, i32 1
  %13 = load %struct.obj*, %struct.obj** %12, align 8
  %14 = call %struct.obj* @cdr(%struct.obj* noundef %13) #3
  %15 = call %struct.obj* @ltrace_fcn_name(%struct.obj* noundef %14)
  %16 = icmp eq %struct.obj* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.obj*, %struct.obj** @sym_begin, align 8
  %19 = load %struct.obj*, %struct.obj** @sym_quote, align 8
  %20 = call %struct.obj* @cons(%struct.obj* noundef %0, %struct.obj* noundef null) #3
  %21 = call %struct.obj* @cons(%struct.obj* noundef %19, %struct.obj* noundef %20) #3
  %22 = call %struct.obj* @cdr(%struct.obj* noundef %13) #3
  %23 = call %struct.obj* @cons(%struct.obj* noundef %22, %struct.obj* noundef null) #3
  %24 = call %struct.obj* @cons(%struct.obj* noundef %21, %struct.obj* noundef %23) #3
  %25 = call %struct.obj* @cons(%struct.obj* noundef %18, %struct.obj* noundef %24) #3
  %26 = call %struct.obj* @setcdr(%struct.obj* noundef %13, %struct.obj* noundef %25) #3
  br label %27

27:                                               ; preds = %17, %11
  %28 = load i64, i64* @tc_closure_traced, align 8
  %29 = trunc i64 %28 to i16
  %30 = getelementptr inbounds %struct.obj, %struct.obj* %3, i64 0, i32 1
  store i16 %29, i16* %30, align 2
  br label %45

31:                                               ; preds = %9
  %32 = icmp eq %struct.obj* %3, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.obj, %struct.obj* %3, i64 0, i32 1
  %36 = load i16, i16* %35, align 2
  %phi.cast = sext i16 %36 to i64
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i64 [ 0, %33 ], [ %phi.cast, %34 ]
  %39 = load i64, i64* @tc_closure_traced, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %44

42:                                               ; preds = %37
  %43 = call %struct.obj* @err(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.obj* noundef %3) #3
  br label %44

44:                                               ; preds = %42, %41
  br label %45

45:                                               ; preds = %44, %27
  ret %struct.obj* null
}

declare dso_local %struct.obj* @leval(%struct.obj* noundef, %struct.obj* noundef) #2

declare dso_local %struct.obj* @cdr(%struct.obj* noundef) #2

declare dso_local %struct.obj* @setcdr(%struct.obj* noundef, %struct.obj* noundef) #2

declare dso_local %struct.obj* @cons(%struct.obj* noundef, %struct.obj* noundef) #2

declare dso_local %struct.obj* @err(i8* noundef, %struct.obj* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.obj* @ltrace(%struct.obj* noundef %0, %struct.obj* noundef %1) #1 {
  br label %3

3:                                                ; preds = %7, %2
  %.0 = phi %struct.obj* [ %0, %2 ], [ %8, %7 ]
  %.not = icmp eq %struct.obj* %.0, null
  br i1 %.not, label %9, label %4

4:                                                ; preds = %3
  %5 = call %struct.obj* @car(%struct.obj* noundef nonnull %.0) #3
  %6 = call %struct.obj* @ltrace_1(%struct.obj* noundef %5, %struct.obj* noundef %1)
  br label %7

7:                                                ; preds = %4
  %8 = call %struct.obj* @cdr(%struct.obj* noundef nonnull %.0) #3
  br label %3, !llvm.loop !4

9:                                                ; preds = %3
  ret %struct.obj* null
}

declare dso_local %struct.obj* @car(%struct.obj* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.obj* @luntrace_1(%struct.obj* noundef %0) #1 {
  %2 = icmp eq %struct.obj* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 1
  %6 = load i16, i16* %5, align 2
  %phi.cmp = icmp eq i16 %6, 11
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i1 [ false, %3 ], [ %phi.cmp, %4 ]
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %25

10:                                               ; preds = %7
  %11 = icmp eq %struct.obj* %0, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 1
  %15 = load i16, i16* %14, align 2
  %phi.cast = sext i16 %15 to i64
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi i64 [ 0, %12 ], [ %phi.cast, %13 ]
  %18 = load i64, i64* @tc_closure_traced, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 1
  store i16 11, i16* %21, align 2
  br label %24

22:                                               ; preds = %16
  %23 = call %struct.obj* @err(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.obj* noundef %0) #3
  br label %24

24:                                               ; preds = %22, %20
  br label %25

25:                                               ; preds = %24, %9
  ret %struct.obj* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.obj* @luntrace(%struct.obj* noundef %0) #1 {
  br label %2

2:                                                ; preds = %6, %1
  %.0 = phi %struct.obj* [ %0, %1 ], [ %7, %6 ]
  %.not = icmp eq %struct.obj* %.0, null
  br i1 %.not, label %8, label %3

3:                                                ; preds = %2
  %4 = call %struct.obj* @car(%struct.obj* noundef nonnull %.0) #3
  %5 = call %struct.obj* @luntrace_1(%struct.obj* noundef %4)
  br label %6

6:                                                ; preds = %3
  %7 = call %struct.obj* @cdr(%struct.obj* noundef nonnull %.0) #3
  br label %2, !llvm.loop !6

8:                                                ; preds = %2
  ret %struct.obj* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ct_prin1(%struct.obj* nocapture noundef readonly %0, %struct.gen_printio* noundef %1) #1 {
  call void @gput_st(%struct.gen_printio* noundef %1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)) #3
  %3 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 1
  %4 = load %struct.obj*, %struct.obj** %3, align 8
  %5 = call %struct.obj* @car(%struct.obj* noundef %4) #3
  %6 = call %struct.obj* @lprin1g(%struct.obj* noundef %5, %struct.gen_printio* noundef %1) #3
  call void @gput_st(%struct.gen_printio* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #3
  %7 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 1
  %8 = load %struct.obj*, %struct.obj** %7, align 8
  %9 = call %struct.obj* @cdr(%struct.obj* noundef %8) #3
  %10 = call %struct.obj* @lprin1g(%struct.obj* noundef %9, %struct.gen_printio* noundef %1) #3
  call void @gput_st(%struct.gen_printio* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #3
  ret void
}

declare dso_local void @gput_st(%struct.gen_printio* noundef, i8* noundef) #2

declare dso_local %struct.obj* @lprin1g(%struct.obj* noundef, %struct.gen_printio* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.obj* @ct_eval(%struct.obj* nocapture noundef readonly %0, %struct.obj** nocapture noundef %1, %struct.obj** nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 1
  %5 = load %struct.obj*, %struct.obj** %4, align 8
  %6 = call %struct.obj* @cdr(%struct.obj* noundef %5) #3
  %7 = call %struct.obj* @ltrace_fcn_name(%struct.obj* noundef %6)
  %8 = load %struct.obj*, %struct.obj** %1, align 8
  %9 = getelementptr inbounds %struct.obj, %struct.obj* %8, i64 0, i32 2, i32 0, i32 1
  %10 = load %struct.obj*, %struct.obj** %9, align 8
  %11 = load %struct.obj*, %struct.obj** %2, align 8
  %12 = call %struct.obj* @leval_args(%struct.obj* noundef %10, %struct.obj* noundef %11) #3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = call %struct.obj* @lprin1f(%struct.obj* noundef %7, %struct._IO_FILE* noundef %14) #3
  br label %16

16:                                               ; preds = %22, %3
  %.0 = phi %struct.obj* [ %12, %3 ], [ %23, %22 ]
  %.not = icmp eq %struct.obj* %.0, null
  br i1 %.not, label %24, label %17

17:                                               ; preds = %16
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #3
  %19 = call %struct.obj* @car(%struct.obj* noundef nonnull %.0) #3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = call %struct.obj* @lprin1f(%struct.obj* noundef %19, %struct._IO_FILE* noundef %20) #3
  br label %22

22:                                               ; preds = %17
  %23 = call %struct.obj* @cdr(%struct.obj* noundef nonnull %.0) #3
  br label %16, !llvm.loop !7

24:                                               ; preds = %16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #3
  %26 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 1
  %27 = load %struct.obj*, %struct.obj** %26, align 8
  %28 = call %struct.obj* @car(%struct.obj* noundef %27) #3
  %29 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 0
  %30 = load %struct.obj*, %struct.obj** %29, align 8
  %31 = call %struct.obj* @extend_env(%struct.obj* noundef %12, %struct.obj* noundef %28, %struct.obj* noundef %30) #3
  %32 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 1
  %33 = load %struct.obj*, %struct.obj** %32, align 8
  %34 = call %struct.obj* @cdr(%struct.obj* noundef %33) #3
  %35 = call %struct.obj* @leval(%struct.obj* noundef %34, %struct.obj* noundef %31) #3
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #3
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = call %struct.obj* @lprin1f(%struct.obj* noundef %7, %struct._IO_FILE* noundef %37) #3
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #3
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = call %struct.obj* @lprin1f(%struct.obj* noundef %35, %struct._IO_FILE* noundef %40) #3
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #3
  store %struct.obj* %35, %struct.obj** %1, align 8
  ret %struct.obj* null
}

declare dso_local %struct.obj* @leval_args(%struct.obj* noundef, %struct.obj* noundef) #2

declare dso_local void @fput_st(%struct._IO_FILE* noundef, i8* noundef) #2

declare dso_local %struct.obj* @lprin1f(%struct.obj* noundef, %struct._IO_FILE* noundef) #2

declare dso_local %struct.obj* @extend_env(%struct.obj* noundef, %struct.obj* noundef, %struct.obj* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_trace() #1 {
  %1 = alloca i64, align 8
  %2 = call i64 @allocate_user_tc() #3
  store i64 %2, i64* @tc_closure_traced, align 8
  call void @set_gc_hooks(i64 noundef %2, %struct.obj* (%struct.obj*)* noundef null, %struct.obj* (%struct.obj*)* noundef nonnull @ct_gc_mark, void (%struct.obj*)* noundef nonnull @ct_gc_scan, void (%struct.obj*)* noundef null, i64* noundef nonnull %1) #3
  call void @gc_protect_sym(%struct.obj** noundef nonnull @sym_traced, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #3
  %3 = load %struct.obj*, %struct.obj** @sym_traced, align 8
  %4 = call %struct.obj* @setvar(%struct.obj* noundef %3, %struct.obj* noundef null, %struct.obj* noundef null) #3
  call void @gc_protect_sym(%struct.obj** noundef nonnull @sym_begin, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #3
  call void @gc_protect_sym(%struct.obj** noundef nonnull @sym_quote, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #3
  %5 = load i64, i64* @tc_closure_traced, align 8
  call void @set_print_hooks(i64 noundef %5, void (%struct.obj*, %struct.gen_printio*)* noundef nonnull @ct_prin1) #3
  %6 = load i64, i64* @tc_closure_traced, align 8
  call void @set_eval_hooks(i64 noundef %6, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)* noundef nonnull @ct_eval) #3
  call void @init_fsubr(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.obj* (%struct.obj*, %struct.obj*)* noundef nonnull @ltrace) #3
  call void @init_lsubr(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %struct.obj* (%struct.obj*)* noundef nonnull @luntrace) #3
  call void @init_trace_version()
  ret void
}

declare dso_local i64 @allocate_user_tc() #2

declare dso_local void @set_gc_hooks(i64 noundef, %struct.obj* (%struct.obj*)* noundef, %struct.obj* (%struct.obj*)* noundef, void (%struct.obj*)* noundef, void (%struct.obj*)* noundef, i64* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.obj* @ct_gc_mark(%struct.obj* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 1
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  call void @gc_mark(%struct.obj* noundef %3) #3
  %4 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 0
  %5 = load %struct.obj*, %struct.obj** %4, align 8
  ret %struct.obj* %5
}

; Function Attrs: noinline nounwind uwtable
define internal void @ct_gc_scan(%struct.obj* nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 0
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  %4 = call %struct.obj* @gc_relocate(%struct.obj* noundef %3) #3
  %5 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 0
  store %struct.obj* %4, %struct.obj** %5, align 8
  %6 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 1
  %7 = load %struct.obj*, %struct.obj** %6, align 8
  %8 = call %struct.obj* @gc_relocate(%struct.obj* noundef %7) #3
  %9 = getelementptr inbounds %struct.obj, %struct.obj* %0, i64 0, i32 2, i32 0, i32 1
  store %struct.obj* %8, %struct.obj** %9, align 8
  ret void
}

declare dso_local void @gc_protect_sym(%struct.obj** noundef, i8* noundef) #2

declare dso_local %struct.obj* @setvar(%struct.obj* noundef, %struct.obj* noundef, %struct.obj* noundef) #2

declare dso_local void @set_print_hooks(i64 noundef, void (%struct.obj*, %struct.gen_printio*)* noundef) #2

declare dso_local void @set_eval_hooks(i64 noundef, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)* noundef) #2

declare dso_local void @init_fsubr(i8* noundef, %struct.obj* (%struct.obj*, %struct.obj*)* noundef) #2

declare dso_local void @init_lsubr(i8* noundef, %struct.obj* (%struct.obj*)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_trace_version() #1 {
  %1 = call %struct.obj* @cintern(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)) #3
  %2 = call %struct.obj* @cintern(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #3
  %3 = call %struct.obj* @setvar(%struct.obj* noundef %1, %struct.obj* noundef %2, %struct.obj* noundef null) #3
  ret void
}

declare dso_local void @gc_mark(%struct.obj* noundef) #2

declare dso_local %struct.obj* @gc_relocate(%struct.obj* noundef) #2

declare dso_local %struct.obj* @cintern(i8* noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
