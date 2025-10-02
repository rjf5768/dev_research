; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/siod/trace.c'
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
%struct.anon.10 = type { %struct.obj*, %struct.obj* }
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

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.obj* @ltrace_fcn_name(%struct.obj* noundef %0) #0 {
  %2 = alloca %struct.obj*, align 8
  %3 = alloca %struct.obj*, align 8
  %4 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %3, align 8
  %5 = load %struct.obj*, %struct.obj** %3, align 8
  %6 = icmp eq %struct.obj* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.obj*, %struct.obj** %3, align 8
  %10 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  br label %13

13:                                               ; preds = %8, %7
  %14 = phi i32 [ 0, %7 ], [ %12, %8 ]
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store %struct.obj* null, %struct.obj** %2, align 8
  br label %95

17:                                               ; preds = %13
  %18 = load %struct.obj*, %struct.obj** %3, align 8
  %19 = getelementptr inbounds %struct.obj, %struct.obj* %18, i32 0, i32 2
  %20 = bitcast %union.anon* %19 to %struct.anon*
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0
  %22 = load %struct.obj*, %struct.obj** %21, align 8
  %23 = load %struct.obj*, %struct.obj** @sym_begin, align 8
  %24 = icmp ne %struct.obj* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.obj* null, %struct.obj** %2, align 8
  br label %95

26:                                               ; preds = %17
  %27 = load %struct.obj*, %struct.obj** %3, align 8
  %28 = getelementptr inbounds %struct.obj, %struct.obj* %27, i32 0, i32 2
  %29 = bitcast %union.anon* %28 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 1
  %31 = load %struct.obj*, %struct.obj** %30, align 8
  store %struct.obj* %31, %struct.obj** %4, align 8
  %32 = load %struct.obj*, %struct.obj** %4, align 8
  %33 = icmp eq %struct.obj* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %40

35:                                               ; preds = %26
  %36 = load %struct.obj*, %struct.obj** %4, align 8
  %37 = getelementptr inbounds %struct.obj, %struct.obj* %36, i32 0, i32 1
  %38 = load i16, i16* %37, align 2
  %39 = sext i16 %38 to i32
  br label %40

40:                                               ; preds = %35, %34
  %41 = phi i32 [ 0, %34 ], [ %39, %35 ]
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store %struct.obj* null, %struct.obj** %2, align 8
  br label %95

44:                                               ; preds = %40
  %45 = load %struct.obj*, %struct.obj** %4, align 8
  %46 = getelementptr inbounds %struct.obj, %struct.obj* %45, i32 0, i32 2
  %47 = bitcast %union.anon* %46 to %struct.anon*
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  %49 = load %struct.obj*, %struct.obj** %48, align 8
  store %struct.obj* %49, %struct.obj** %4, align 8
  %50 = load %struct.obj*, %struct.obj** %4, align 8
  %51 = icmp eq %struct.obj* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %58

53:                                               ; preds = %44
  %54 = load %struct.obj*, %struct.obj** %4, align 8
  %55 = getelementptr inbounds %struct.obj, %struct.obj* %54, i32 0, i32 1
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  br label %58

58:                                               ; preds = %53, %52
  %59 = phi i32 [ 0, %52 ], [ %57, %53 ]
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store %struct.obj* null, %struct.obj** %2, align 8
  br label %95

62:                                               ; preds = %58
  %63 = load %struct.obj*, %struct.obj** %4, align 8
  %64 = getelementptr inbounds %struct.obj, %struct.obj* %63, i32 0, i32 2
  %65 = bitcast %union.anon* %64 to %struct.anon*
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0
  %67 = load %struct.obj*, %struct.obj** %66, align 8
  %68 = load %struct.obj*, %struct.obj** @sym_quote, align 8
  %69 = icmp ne %struct.obj* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store %struct.obj* null, %struct.obj** %2, align 8
  br label %95

71:                                               ; preds = %62
  %72 = load %struct.obj*, %struct.obj** %4, align 8
  %73 = getelementptr inbounds %struct.obj, %struct.obj* %72, i32 0, i32 2
  %74 = bitcast %union.anon* %73 to %struct.anon*
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 1
  %76 = load %struct.obj*, %struct.obj** %75, align 8
  store %struct.obj* %76, %struct.obj** %4, align 8
  %77 = load %struct.obj*, %struct.obj** %4, align 8
  %78 = icmp eq %struct.obj* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %85

80:                                               ; preds = %71
  %81 = load %struct.obj*, %struct.obj** %4, align 8
  %82 = getelementptr inbounds %struct.obj, %struct.obj* %81, i32 0, i32 1
  %83 = load i16, i16* %82, align 2
  %84 = sext i16 %83 to i32
  br label %85

85:                                               ; preds = %80, %79
  %86 = phi i32 [ 0, %79 ], [ %84, %80 ]
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store %struct.obj* null, %struct.obj** %2, align 8
  br label %95

89:                                               ; preds = %85
  %90 = load %struct.obj*, %struct.obj** %4, align 8
  %91 = getelementptr inbounds %struct.obj, %struct.obj* %90, i32 0, i32 2
  %92 = bitcast %union.anon* %91 to %struct.anon*
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0
  %94 = load %struct.obj*, %struct.obj** %93, align 8
  store %struct.obj* %94, %struct.obj** %2, align 8
  br label %95

95:                                               ; preds = %89, %88, %70, %61, %43, %25, %16
  %96 = load %struct.obj*, %struct.obj** %2, align 8
  ret %struct.obj* %96
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.obj* @ltrace_1(%struct.obj* noundef %0, %struct.obj* noundef %1) #0 {
  %3 = alloca %struct.obj*, align 8
  %4 = alloca %struct.obj*, align 8
  %5 = alloca %struct.obj*, align 8
  %6 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %3, align 8
  store %struct.obj* %1, %struct.obj** %4, align 8
  %7 = load %struct.obj*, %struct.obj** %3, align 8
  %8 = load %struct.obj*, %struct.obj** %4, align 8
  %9 = call %struct.obj* @leval(%struct.obj* noundef %7, %struct.obj* noundef %8)
  store %struct.obj* %9, %struct.obj** %5, align 8
  %10 = load %struct.obj*, %struct.obj** %5, align 8
  %11 = icmp eq %struct.obj* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.obj*, %struct.obj** %5, align 8
  %15 = getelementptr inbounds %struct.obj, %struct.obj* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  br label %18

18:                                               ; preds = %13, %12
  %19 = phi i32 [ 0, %12 ], [ %17, %13 ]
  %20 = icmp eq i32 %19, 11
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load %struct.obj*, %struct.obj** %5, align 8
  %23 = getelementptr inbounds %struct.obj, %struct.obj* %22, i32 0, i32 2
  %24 = bitcast %union.anon* %23 to %struct.anon.10*
  %25 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %24, i32 0, i32 1
  %26 = load %struct.obj*, %struct.obj** %25, align 8
  store %struct.obj* %26, %struct.obj** %6, align 8
  %27 = load %struct.obj*, %struct.obj** %6, align 8
  %28 = call %struct.obj* @cdr(%struct.obj* noundef %27)
  %29 = call %struct.obj* @ltrace_fcn_name(%struct.obj* noundef %28)
  %30 = icmp eq %struct.obj* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %21
  %32 = load %struct.obj*, %struct.obj** %6, align 8
  %33 = load %struct.obj*, %struct.obj** @sym_begin, align 8
  %34 = load %struct.obj*, %struct.obj** @sym_quote, align 8
  %35 = load %struct.obj*, %struct.obj** %3, align 8
  %36 = call %struct.obj* @cons(%struct.obj* noundef %35, %struct.obj* noundef null)
  %37 = call %struct.obj* @cons(%struct.obj* noundef %34, %struct.obj* noundef %36)
  %38 = load %struct.obj*, %struct.obj** %6, align 8
  %39 = call %struct.obj* @cdr(%struct.obj* noundef %38)
  %40 = call %struct.obj* @cons(%struct.obj* noundef %39, %struct.obj* noundef null)
  %41 = call %struct.obj* @cons(%struct.obj* noundef %37, %struct.obj* noundef %40)
  %42 = call %struct.obj* @cons(%struct.obj* noundef %33, %struct.obj* noundef %41)
  %43 = call %struct.obj* @setcdr(%struct.obj* noundef %32, %struct.obj* noundef %42)
  br label %44

44:                                               ; preds = %31, %21
  %45 = load i64, i64* @tc_closure_traced, align 8
  %46 = trunc i64 %45 to i16
  %47 = load %struct.obj*, %struct.obj** %5, align 8
  %48 = getelementptr inbounds %struct.obj, %struct.obj* %47, i32 0, i32 1
  store i16 %46, i16* %48, align 2
  br label %68

49:                                               ; preds = %18
  %50 = load %struct.obj*, %struct.obj** %5, align 8
  %51 = icmp eq %struct.obj* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %58

53:                                               ; preds = %49
  %54 = load %struct.obj*, %struct.obj** %5, align 8
  %55 = getelementptr inbounds %struct.obj, %struct.obj* %54, i32 0, i32 1
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  br label %58

58:                                               ; preds = %53, %52
  %59 = phi i32 [ 0, %52 ], [ %57, %53 ]
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* @tc_closure_traced, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %67

64:                                               ; preds = %58
  %65 = load %struct.obj*, %struct.obj** %5, align 8
  %66 = call %struct.obj* @err(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.obj* noundef %65)
  br label %67

67:                                               ; preds = %64, %63
  br label %68

68:                                               ; preds = %67, %44
  ret %struct.obj* null
}

declare dso_local %struct.obj* @leval(%struct.obj* noundef, %struct.obj* noundef) #1

declare dso_local %struct.obj* @cdr(%struct.obj* noundef) #1

declare dso_local %struct.obj* @setcdr(%struct.obj* noundef, %struct.obj* noundef) #1

declare dso_local %struct.obj* @cons(%struct.obj* noundef, %struct.obj* noundef) #1

declare dso_local %struct.obj* @err(i8* noundef, %struct.obj* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.obj* @ltrace(%struct.obj* noundef %0, %struct.obj* noundef %1) #0 {
  %3 = alloca %struct.obj*, align 8
  %4 = alloca %struct.obj*, align 8
  %5 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %3, align 8
  store %struct.obj* %1, %struct.obj** %4, align 8
  %6 = load %struct.obj*, %struct.obj** %3, align 8
  store %struct.obj* %6, %struct.obj** %5, align 8
  br label %7

7:                                                ; preds = %15, %2
  %8 = load %struct.obj*, %struct.obj** %5, align 8
  %9 = icmp ne %struct.obj* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.obj*, %struct.obj** %5, align 8
  %12 = call %struct.obj* @car(%struct.obj* noundef %11)
  %13 = load %struct.obj*, %struct.obj** %4, align 8
  %14 = call %struct.obj* @ltrace_1(%struct.obj* noundef %12, %struct.obj* noundef %13)
  br label %15

15:                                               ; preds = %10
  %16 = load %struct.obj*, %struct.obj** %5, align 8
  %17 = call %struct.obj* @cdr(%struct.obj* noundef %16)
  store %struct.obj* %17, %struct.obj** %5, align 8
  br label %7, !llvm.loop !4

18:                                               ; preds = %7
  ret %struct.obj* null
}

declare dso_local %struct.obj* @car(%struct.obj* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.obj* @luntrace_1(%struct.obj* noundef %0) #0 {
  %2 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %2, align 8
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  %4 = icmp eq %struct.obj* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  %7 = load %struct.obj*, %struct.obj** %2, align 8
  %8 = getelementptr inbounds %struct.obj, %struct.obj* %7, i32 0, i32 1
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i32
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i32 [ 0, %5 ], [ %10, %6 ]
  %13 = icmp eq i32 %12, 11
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %36

15:                                               ; preds = %11
  %16 = load %struct.obj*, %struct.obj** %2, align 8
  %17 = icmp eq %struct.obj* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %24

19:                                               ; preds = %15
  %20 = load %struct.obj*, %struct.obj** %2, align 8
  %21 = getelementptr inbounds %struct.obj, %struct.obj* %20, i32 0, i32 1
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi i32 [ 0, %18 ], [ %23, %19 ]
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @tc_closure_traced, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.obj*, %struct.obj** %2, align 8
  %31 = getelementptr inbounds %struct.obj, %struct.obj* %30, i32 0, i32 1
  store i16 11, i16* %31, align 2
  br label %35

32:                                               ; preds = %24
  %33 = load %struct.obj*, %struct.obj** %2, align 8
  %34 = call %struct.obj* @err(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.obj* noundef %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %14
  ret %struct.obj* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.obj* @luntrace(%struct.obj* noundef %0) #0 {
  %2 = alloca %struct.obj*, align 8
  %3 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %2, align 8
  %4 = load %struct.obj*, %struct.obj** %2, align 8
  store %struct.obj* %4, %struct.obj** %3, align 8
  br label %5

5:                                                ; preds = %12, %1
  %6 = load %struct.obj*, %struct.obj** %3, align 8
  %7 = icmp ne %struct.obj* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load %struct.obj*, %struct.obj** %3, align 8
  %10 = call %struct.obj* @car(%struct.obj* noundef %9)
  %11 = call %struct.obj* @luntrace_1(%struct.obj* noundef %10)
  br label %12

12:                                               ; preds = %8
  %13 = load %struct.obj*, %struct.obj** %3, align 8
  %14 = call %struct.obj* @cdr(%struct.obj* noundef %13)
  store %struct.obj* %14, %struct.obj** %3, align 8
  br label %5, !llvm.loop !6

15:                                               ; preds = %5
  ret %struct.obj* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ct_prin1(%struct.obj* noundef %0, %struct.gen_printio* noundef %1) #0 {
  %3 = alloca %struct.obj*, align 8
  %4 = alloca %struct.gen_printio*, align 8
  store %struct.obj* %0, %struct.obj** %3, align 8
  store %struct.gen_printio* %1, %struct.gen_printio** %4, align 8
  %5 = load %struct.gen_printio*, %struct.gen_printio** %4, align 8
  call void @gput_st(%struct.gen_printio* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %6 = load %struct.obj*, %struct.obj** %3, align 8
  %7 = getelementptr inbounds %struct.obj, %struct.obj* %6, i32 0, i32 2
  %8 = bitcast %union.anon* %7 to %struct.anon.10*
  %9 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %8, i32 0, i32 1
  %10 = load %struct.obj*, %struct.obj** %9, align 8
  %11 = call %struct.obj* @car(%struct.obj* noundef %10)
  %12 = load %struct.gen_printio*, %struct.gen_printio** %4, align 8
  %13 = call %struct.obj* @lprin1g(%struct.obj* noundef %11, %struct.gen_printio* noundef %12)
  %14 = load %struct.gen_printio*, %struct.gen_printio** %4, align 8
  call void @gput_st(%struct.gen_printio* noundef %14, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %15 = load %struct.obj*, %struct.obj** %3, align 8
  %16 = getelementptr inbounds %struct.obj, %struct.obj* %15, i32 0, i32 2
  %17 = bitcast %union.anon* %16 to %struct.anon.10*
  %18 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %17, i32 0, i32 1
  %19 = load %struct.obj*, %struct.obj** %18, align 8
  %20 = call %struct.obj* @cdr(%struct.obj* noundef %19)
  %21 = load %struct.gen_printio*, %struct.gen_printio** %4, align 8
  %22 = call %struct.obj* @lprin1g(%struct.obj* noundef %20, %struct.gen_printio* noundef %21)
  %23 = load %struct.gen_printio*, %struct.gen_printio** %4, align 8
  call void @gput_st(%struct.gen_printio* noundef %23, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local void @gput_st(%struct.gen_printio* noundef, i8* noundef) #1

declare dso_local %struct.obj* @lprin1g(%struct.obj* noundef, %struct.gen_printio* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.obj* @ct_eval(%struct.obj* noundef %0, %struct.obj** noundef %1, %struct.obj** noundef %2) #0 {
  %4 = alloca %struct.obj*, align 8
  %5 = alloca %struct.obj**, align 8
  %6 = alloca %struct.obj**, align 8
  %7 = alloca %struct.obj*, align 8
  %8 = alloca %struct.obj*, align 8
  %9 = alloca %struct.obj*, align 8
  %10 = alloca %struct.obj*, align 8
  %11 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %4, align 8
  store %struct.obj** %1, %struct.obj*** %5, align 8
  store %struct.obj** %2, %struct.obj*** %6, align 8
  %12 = load %struct.obj*, %struct.obj** %4, align 8
  %13 = getelementptr inbounds %struct.obj, %struct.obj* %12, i32 0, i32 2
  %14 = bitcast %union.anon* %13 to %struct.anon.10*
  %15 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %14, i32 0, i32 1
  %16 = load %struct.obj*, %struct.obj** %15, align 8
  %17 = call %struct.obj* @cdr(%struct.obj* noundef %16)
  %18 = call %struct.obj* @ltrace_fcn_name(%struct.obj* noundef %17)
  store %struct.obj* %18, %struct.obj** %7, align 8
  %19 = load %struct.obj**, %struct.obj*** %5, align 8
  %20 = load %struct.obj*, %struct.obj** %19, align 8
  %21 = getelementptr inbounds %struct.obj, %struct.obj* %20, i32 0, i32 2
  %22 = bitcast %union.anon* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 1
  %24 = load %struct.obj*, %struct.obj** %23, align 8
  %25 = load %struct.obj**, %struct.obj*** %6, align 8
  %26 = load %struct.obj*, %struct.obj** %25, align 8
  %27 = call %struct.obj* @leval_args(%struct.obj* noundef %24, %struct.obj* noundef %26)
  store %struct.obj* %27, %struct.obj** %8, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %29 = load %struct.obj*, %struct.obj** %7, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = call %struct.obj* @lprin1f(%struct.obj* noundef %29, %struct._IO_FILE* noundef %30)
  %32 = load %struct.obj*, %struct.obj** %8, align 8
  store %struct.obj* %32, %struct.obj** %11, align 8
  br label %33

33:                                               ; preds = %42, %3
  %34 = load %struct.obj*, %struct.obj** %11, align 8
  %35 = icmp ne %struct.obj* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.obj*, %struct.obj** %11, align 8
  %39 = call %struct.obj* @car(%struct.obj* noundef %38)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = call %struct.obj* @lprin1f(%struct.obj* noundef %39, %struct._IO_FILE* noundef %40)
  br label %42

42:                                               ; preds = %36
  %43 = load %struct.obj*, %struct.obj** %11, align 8
  %44 = call %struct.obj* @cdr(%struct.obj* noundef %43)
  store %struct.obj* %44, %struct.obj** %11, align 8
  br label %33, !llvm.loop !7

45:                                               ; preds = %33
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %47 = load %struct.obj*, %struct.obj** %8, align 8
  %48 = load %struct.obj*, %struct.obj** %4, align 8
  %49 = getelementptr inbounds %struct.obj, %struct.obj* %48, i32 0, i32 2
  %50 = bitcast %union.anon* %49 to %struct.anon.10*
  %51 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %50, i32 0, i32 1
  %52 = load %struct.obj*, %struct.obj** %51, align 8
  %53 = call %struct.obj* @car(%struct.obj* noundef %52)
  %54 = load %struct.obj*, %struct.obj** %4, align 8
  %55 = getelementptr inbounds %struct.obj, %struct.obj* %54, i32 0, i32 2
  %56 = bitcast %union.anon* %55 to %struct.anon.10*
  %57 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %56, i32 0, i32 0
  %58 = load %struct.obj*, %struct.obj** %57, align 8
  %59 = call %struct.obj* @extend_env(%struct.obj* noundef %47, %struct.obj* noundef %53, %struct.obj* noundef %58)
  store %struct.obj* %59, %struct.obj** %9, align 8
  %60 = load %struct.obj*, %struct.obj** %4, align 8
  %61 = getelementptr inbounds %struct.obj, %struct.obj* %60, i32 0, i32 2
  %62 = bitcast %union.anon* %61 to %struct.anon.10*
  %63 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %62, i32 0, i32 1
  %64 = load %struct.obj*, %struct.obj** %63, align 8
  %65 = call %struct.obj* @cdr(%struct.obj* noundef %64)
  %66 = load %struct.obj*, %struct.obj** %9, align 8
  %67 = call %struct.obj* @leval(%struct.obj* noundef %65, %struct.obj* noundef %66)
  store %struct.obj* %67, %struct.obj** %10, align 8
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %69 = load %struct.obj*, %struct.obj** %7, align 8
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %71 = call %struct.obj* @lprin1f(%struct.obj* noundef %69, %struct._IO_FILE* noundef %70)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.obj*, %struct.obj** %10, align 8
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %75 = call %struct.obj* @lprin1f(%struct.obj* noundef %73, %struct._IO_FILE* noundef %74)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @fput_st(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %77 = load %struct.obj*, %struct.obj** %10, align 8
  %78 = load %struct.obj**, %struct.obj*** %5, align 8
  store %struct.obj* %77, %struct.obj** %78, align 8
  ret %struct.obj* null
}

declare dso_local %struct.obj* @leval_args(%struct.obj* noundef, %struct.obj* noundef) #1

declare dso_local void @fput_st(%struct._IO_FILE* noundef, i8* noundef) #1

declare dso_local %struct.obj* @lprin1f(%struct.obj* noundef, %struct._IO_FILE* noundef) #1

declare dso_local %struct.obj* @extend_env(%struct.obj* noundef, %struct.obj* noundef, %struct.obj* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_trace() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @allocate_user_tc()
  store i64 %2, i64* @tc_closure_traced, align 8
  %3 = load i64, i64* @tc_closure_traced, align 8
  call void @set_gc_hooks(i64 noundef %3, %struct.obj* (%struct.obj*)* noundef null, %struct.obj* (%struct.obj*)* noundef @ct_gc_mark, void (%struct.obj*)* noundef @ct_gc_scan, void (%struct.obj*)* noundef null, i64* noundef %1)
  call void @gc_protect_sym(%struct.obj** noundef @sym_traced, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %4 = load %struct.obj*, %struct.obj** @sym_traced, align 8
  %5 = call %struct.obj* @setvar(%struct.obj* noundef %4, %struct.obj* noundef null, %struct.obj* noundef null)
  call void @gc_protect_sym(%struct.obj** noundef @sym_begin, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  call void @gc_protect_sym(%struct.obj** noundef @sym_quote, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %6 = load i64, i64* @tc_closure_traced, align 8
  call void @set_print_hooks(i64 noundef %6, void (%struct.obj*, %struct.gen_printio*)* noundef @ct_prin1)
  %7 = load i64, i64* @tc_closure_traced, align 8
  call void @set_eval_hooks(i64 noundef %7, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)* noundef @ct_eval)
  call void @init_fsubr(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %struct.obj* (%struct.obj*, %struct.obj*)* noundef @ltrace)
  call void @init_lsubr(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %struct.obj* (%struct.obj*)* noundef @luntrace)
  call void @init_trace_version()
  ret void
}

declare dso_local i64 @allocate_user_tc() #1

declare dso_local void @set_gc_hooks(i64 noundef, %struct.obj* (%struct.obj*)* noundef, %struct.obj* (%struct.obj*)* noundef, void (%struct.obj*)* noundef, void (%struct.obj*)* noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.obj* @ct_gc_mark(%struct.obj* noundef %0) #0 {
  %2 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %2, align 8
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  %4 = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %5 = bitcast %union.anon* %4 to %struct.anon.10*
  %6 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %5, i32 0, i32 1
  %7 = load %struct.obj*, %struct.obj** %6, align 8
  call void @gc_mark(%struct.obj* noundef %7)
  %8 = load %struct.obj*, %struct.obj** %2, align 8
  %9 = getelementptr inbounds %struct.obj, %struct.obj* %8, i32 0, i32 2
  %10 = bitcast %union.anon* %9 to %struct.anon.10*
  %11 = getelementptr inbounds %struct.anon.10, %struct.anon.10* %10, i32 0, i32 0
  %12 = load %struct.obj*, %struct.obj** %11, align 8
  ret %struct.obj* %12
}

; Function Attrs: noinline nounwind uwtable
define internal void @ct_gc_scan(%struct.obj* noundef %0) #0 {
  %2 = alloca %struct.obj*, align 8
  store %struct.obj* %0, %struct.obj** %2, align 8
  %3 = load %struct.obj*, %struct.obj** %2, align 8
  %4 = getelementptr inbounds %struct.obj, %struct.obj* %3, i32 0, i32 2
  %5 = bitcast %union.anon* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load %struct.obj*, %struct.obj** %6, align 8
  %8 = call %struct.obj* @gc_relocate(%struct.obj* noundef %7)
  %9 = load %struct.obj*, %struct.obj** %2, align 8
  %10 = getelementptr inbounds %struct.obj, %struct.obj* %9, i32 0, i32 2
  %11 = bitcast %union.anon* %10 to %struct.anon*
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  store %struct.obj* %8, %struct.obj** %12, align 8
  %13 = load %struct.obj*, %struct.obj** %2, align 8
  %14 = getelementptr inbounds %struct.obj, %struct.obj* %13, i32 0, i32 2
  %15 = bitcast %union.anon* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %17 = load %struct.obj*, %struct.obj** %16, align 8
  %18 = call %struct.obj* @gc_relocate(%struct.obj* noundef %17)
  %19 = load %struct.obj*, %struct.obj** %2, align 8
  %20 = getelementptr inbounds %struct.obj, %struct.obj* %19, i32 0, i32 2
  %21 = bitcast %union.anon* %20 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 1
  store %struct.obj* %18, %struct.obj** %22, align 8
  ret void
}

declare dso_local void @gc_protect_sym(%struct.obj** noundef, i8* noundef) #1

declare dso_local %struct.obj* @setvar(%struct.obj* noundef, %struct.obj* noundef, %struct.obj* noundef) #1

declare dso_local void @set_print_hooks(i64 noundef, void (%struct.obj*, %struct.gen_printio*)* noundef) #1

declare dso_local void @set_eval_hooks(i64 noundef, %struct.obj* (%struct.obj*, %struct.obj**, %struct.obj**)* noundef) #1

declare dso_local void @init_fsubr(i8* noundef, %struct.obj* (%struct.obj*, %struct.obj*)* noundef) #1

declare dso_local void @init_lsubr(i8* noundef, %struct.obj* (%struct.obj*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @init_trace_version() #0 {
  %1 = call %struct.obj* @cintern(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %2 = call %struct.obj* @cintern(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %3 = call %struct.obj* @setvar(%struct.obj* noundef %1, %struct.obj* noundef %2, %struct.obj* noundef null)
  ret void
}

declare dso_local void @gc_mark(%struct.obj* noundef) #1

declare dso_local %struct.obj* @gc_relocate(%struct.obj* noundef) #1

declare dso_local %struct.obj* @cintern(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
