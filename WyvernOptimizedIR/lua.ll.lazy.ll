; ModuleID = './lua.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.lua_State = type opaque
%struct.Smain = type { i32, i8**, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@globalL = internal global %struct.lua_State* null, align 8
@progname = internal global i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"LUA_INIT\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"=LUA_INIT\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"interrupted!\00", align 1
@.str.9 = private unnamed_addr constant [307 x i8] c"usage: %s [options] [script [args]].\0AAvailable options are:\0A  -e stat  execute string 'stat'\0A  -l name  require library 'name'\0A  -i       enter interactive mode after executing 'script'\0A  -v       show version information\0A  --       stop handling options\0A  -        execute stdin and stop handling options\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Lua 5.1.4  Copyright (C) 1994-2008 Lua.org, PUC-Rio\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"=(command line)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"too many arguments to script\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"error calling 'print' (%s)\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [10 x i8] c"return %s\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"_PROMPT\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"_PROMPT2\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c">> \00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"'<eof>'\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"(error object is not a string)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca %struct.Smain, align 8
  %4 = call %struct.lua_State* @luaL_newstate() #6
  %5 = icmp eq %struct.lua_State* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load i8*, i8** %1, align 8
  call void @l_message(i8* noundef %7, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %20

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  %9 = getelementptr inbounds %struct.Smain, %struct.Smain* %3, i64 0, i32 0
  store i32 %0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.Smain, %struct.Smain* %3, i64 0, i32 1
  store i8** %1, i8*** %10, align 8
  %11 = bitcast %struct.Smain* %3 to i8*
  %12 = call i32 @lua_cpcall(%struct.lua_State* noundef nonnull %4, i32 (%struct.lua_State*)* noundef nonnull @pmain, i8* noundef nonnull %11) #6
  %13 = call i32 @report(%struct.lua_State* noundef nonnull %4, i32 noundef %12)
  call void @lua_close(%struct.lua_State* noundef nonnull %4) #6
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Smain, %struct.Smain* %3, i64 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %phi.cast = zext i1 %17 to i32
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i32 [ 1, %8 ], [ %phi.cast, %14 ]
  br label %20

20:                                               ; preds = %18, %6
  %.0 = phi i32 [ 1, %6 ], [ %19, %18 ]
  ret i32 %.0
}

declare dso_local %struct.lua_State* @luaL_newstate() #1

; Function Attrs: noinline nounwind uwtable
define internal void @l_message(i8* noundef %0, i8* noundef %1) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %6, label %3

3:                                                ; preds = %2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %0) #7
  br label %6

6:                                                ; preds = %3, %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %1) #7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 @fflush(%struct._IO_FILE* noundef %9) #6
  ret void
}

declare dso_local i32 @lua_cpcall(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @pmain(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i8* @lua_touserdata(%struct.lua_State* noundef %0, i32 noundef 1) #6
  %6 = getelementptr inbounds i8, i8* %5, i64 8
  %7 = bitcast i8* %6 to i8***
  %8 = load i8**, i8*** %7, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store %struct.lua_State* %0, %struct.lua_State** @globalL, align 8
  %9 = load i8*, i8** %8, align 8
  %.not = icmp eq i8* %9, null
  br i1 %.not, label %15, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %8, align 8
  %12 = load i8, i8* %11, align 1
  %.not9 = icmp eq i8 %12, 0
  br i1 %.not9, label %15, label %13

13:                                               ; preds = %10
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** @progname, align 8
  br label %15

15:                                               ; preds = %13, %10, %1
  %16 = call i32 @lua_gc(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 0) #6
  call void @luaL_openlibs(%struct.lua_State* noundef %0) #6
  %17 = call i32 @lua_gc(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 0) #6
  %18 = call i32 @handle_luainit(%struct.lua_State* noundef %0)
  %19 = getelementptr inbounds i8, i8* %5, i64 16
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 8
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %15
  br label %65

22:                                               ; preds = %15
  %23 = call i32 @collectargs(i8** noundef nonnull %8, i32* noundef nonnull %2, i32* noundef nonnull %3, i32* noundef nonnull %4)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  call void @print_usage()
  %26 = getelementptr inbounds i8, i8* %5, i64 16
  %27 = bitcast i8* %26 to i32*
  store i32 1, i32* %27, align 8
  br label %65

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %.not2 = icmp eq i32 %29, 0
  br i1 %.not2, label %31, label %30

30:                                               ; preds = %28
  call void @print_version()
  br label %31

31:                                               ; preds = %30, %28
  %32 = icmp sgt i32 %23, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %37

34:                                               ; preds = %31
  %35 = bitcast i8* %5 to i32*
  %36 = load i32, i32* %35, align 8
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ %23, %33 ], [ %36, %34 ]
  %39 = call i32 @runargs(%struct.lua_State* noundef %0, i8** noundef nonnull %8, i32 noundef %38)
  %40 = getelementptr inbounds i8, i8* %5, i64 16
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 8
  %.not3 = icmp eq i32 %39, 0
  br i1 %.not3, label %43, label %42

42:                                               ; preds = %37
  br label %65

43:                                               ; preds = %37
  %.not4 = icmp eq i32 %23, 0
  br i1 %.not4, label %48, label %44

44:                                               ; preds = %43
  %45 = call i32 @handle_script(%struct.lua_State* noundef %0, i8** noundef nonnull %8, i32 noundef %23)
  %46 = getelementptr inbounds i8, i8* %5, i64 16
  %47 = bitcast i8* %46 to i32*
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %43
  %49 = getelementptr inbounds i8, i8* %5, i64 16
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 8
  %.not5 = icmp eq i32 %51, 0
  br i1 %.not5, label %53, label %52

52:                                               ; preds = %48
  br label %65

53:                                               ; preds = %48
  %54 = load i32, i32* %2, align 4
  %.not6 = icmp eq i32 %54, 0
  br i1 %.not6, label %56, label %55

55:                                               ; preds = %53
  call void @dotty(%struct.lua_State* noundef %0)
  br label %64

56:                                               ; preds = %53
  %57 = icmp eq i32 %23, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = load i32, i32* %4, align 4
  %.not7 = icmp eq i32 %59, 0
  br i1 %.not7, label %60, label %63

60:                                               ; preds = %58
  %61 = load i32, i32* %3, align 4
  %.not8 = icmp eq i32 %61, 0
  br i1 %.not8, label %62, label %63

62:                                               ; preds = %60
  call void @print_version()
  call void @dotty(%struct.lua_State* noundef %0)
  br label %63

63:                                               ; preds = %62, %60, %58, %56
  br label %64

64:                                               ; preds = %63, %55
  br label %65

65:                                               ; preds = %64, %52, %42, %25, %21
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @report(%struct.lua_State* noundef %0, i32 noundef returned %1) #0 {
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %12, label %3

3:                                                ; preds = %2
  %4 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #6
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %6
  %.0 = phi i8* [ getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), %9 ], [ %7, %6 ]
  %11 = load i8*, i8** @progname, align 8
  call void @l_message(i8* noundef %11, i8* noundef %.0)
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #6
  br label %12

12:                                               ; preds = %10, %3, %2
  ret i32 %1
}

declare dso_local void @lua_close(%struct.lua_State* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i8* @lua_touserdata(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_gc(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @luaL_openlibs(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @handle_luainit(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @getenv(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #6
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %13

5:                                                ; preds = %1
  %6 = load i8, i8* %2, align 1
  %7 = icmp eq i8 %6, 64
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, i8* %2, i64 1
  %10 = call i32 @dofile(%struct.lua_State* noundef %0, i8* noundef nonnull %9)
  br label %13

11:                                               ; preds = %5
  %12 = call i32 @dostring(%struct.lua_State* noundef %0, i8* noundef nonnull %2, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8, %4
  %.0 = phi i32 [ 0, %4 ], [ %10, %8 ], [ %12, %11 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal i32 @collectargs(i8** nocapture noundef readonly %0, i32* nocapture noundef writeonly %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef writeonly %3) #2 {
  br label %5

5:                                                ; preds = %75, %4
  %.01 = phi i32 [ 1, %4 ], [ %76, %75 ]
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds i8*, i8** %0, i64 %6
  %8 = load i8*, i8** %7, align 8
  %.not = icmp eq i8* %8, null
  br i1 %.not, label %77, label %9

9:                                                ; preds = %5
  %10 = sext i32 %.01 to i64
  %11 = getelementptr inbounds i8*, i8** %0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %.not9 = icmp eq i8 %13, 45
  br i1 %.not9, label %15, label %14

14:                                               ; preds = %9
  br label %78

15:                                               ; preds = %9
  %16 = sext i32 %.01 to i64
  %17 = getelementptr inbounds i8*, i8** %0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %73 [
    i32 45, label %22
    i32 0, label %39
    i32 105, label %40
    i32 118, label %48
    i32 101, label %56
    i32 108, label %57
  ]

22:                                               ; preds = %15
  %23 = sext i32 %.01 to i64
  %24 = getelementptr inbounds i8*, i8** %0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %.not12 = icmp eq i8 %27, 0
  br i1 %.not12, label %29, label %28

28:                                               ; preds = %22
  br label %78

29:                                               ; preds = %22
  %30 = add nsw i32 %.01, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %.not13 = icmp eq i8* %33, null
  br i1 %.not13, label %36, label %34

34:                                               ; preds = %29
  %35 = add nsw i32 %.01, 1
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  br label %78

39:                                               ; preds = %15
  br label %78

40:                                               ; preds = %15
  %41 = sext i32 %.01 to i64
  %42 = getelementptr inbounds i8*, i8** %0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %.not11 = icmp eq i8 %45, 0
  br i1 %.not11, label %47, label %46

46:                                               ; preds = %40
  br label %78

47:                                               ; preds = %40
  store i32 1, i32* %1, align 4
  br label %48

48:                                               ; preds = %47, %15
  %49 = sext i32 %.01 to i64
  %50 = getelementptr inbounds i8*, i8** %0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %.not10 = icmp eq i8 %53, 0
  br i1 %.not10, label %55, label %54

54:                                               ; preds = %48
  br label %78

55:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %74

56:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %15
  %58 = sext i32 %.01 to i64
  %59 = getelementptr inbounds i8*, i8** %0, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = add nsw i32 %.01, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %0, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %78

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %57
  %.1 = phi i32 [ %65, %71 ], [ %.01, %57 ]
  br label %74

73:                                               ; preds = %15
  br label %78

74:                                               ; preds = %72, %55
  %.2 = phi i32 [ %.1, %72 ], [ %.01, %55 ]
  br label %75

75:                                               ; preds = %74
  %76 = add nsw i32 %.2, 1
  br label %5, !llvm.loop !4

77:                                               ; preds = %5
  br label %78

78:                                               ; preds = %77, %73, %70, %54, %46, %39, %37, %28, %14
  %.0 = phi i32 [ %.01, %14 ], [ -1, %73 ], [ -1, %70 ], [ -1, %54 ], [ -1, %46 ], [ %.01, %39 ], [ -1, %28 ], [ %38, %37 ], [ 0, %77 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([307 x i8], [307 x i8]* @.str.9, i64 0, i64 0), i8* noundef %2) #7
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 @fflush(%struct._IO_FILE* noundef %4) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_version() #0 {
  call void @l_message(i8* noundef null, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @runargs(%struct.lua_State* noundef %0, i8** nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %53, %3
  %.03 = phi i32 [ 1, %3 ], [ %54, %53 ]
  %5 = icmp slt i32 %.03, %2
  br i1 %5, label %6, label %55

6:                                                ; preds = %4
  %7 = sext i32 %.03 to i64
  %8 = getelementptr inbounds i8*, i8** %1, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %53

12:                                               ; preds = %6
  %13 = sext i32 %.03 to i64
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %51 [
    i32 101, label %19
    i32 108, label %35
  ]

19:                                               ; preds = %12
  %20 = sext i32 %.03 to i64
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  %24 = load i8, i8* %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = add nsw i32 %.03, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28
  %30 = load i8*, i8** %29, align 8
  br label %31

31:                                               ; preds = %26, %19
  %.1 = phi i32 [ %27, %26 ], [ %.03, %19 ]
  %.02 = phi i8* [ %30, %26 ], [ %23, %19 ]
  %32 = call i32 @dostring(%struct.lua_State* noundef %0, i8* noundef %.02, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %.not4 = icmp eq i32 %32, 0
  br i1 %.not4, label %34, label %33

33:                                               ; preds = %31
  br label %56

34:                                               ; preds = %31
  br label %52

35:                                               ; preds = %12
  %36 = sext i32 %.03 to i64
  %37 = getelementptr inbounds i8*, i8** %1, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = add nsw i32 %.03, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %1, i64 %44
  %46 = load i8*, i8** %45, align 8
  br label %47

47:                                               ; preds = %42, %35
  %.2 = phi i32 [ %43, %42 ], [ %.03, %35 ]
  %.01 = phi i8* [ %46, %42 ], [ %39, %35 ]
  %48 = call i32 @dolibrary(%struct.lua_State* noundef %0, i8* noundef %.01)
  %.not = icmp eq i32 %48, 0
  br i1 %.not, label %50, label %49

49:                                               ; preds = %47
  br label %56

50:                                               ; preds = %47
  br label %52

51:                                               ; preds = %12
  br label %52

52:                                               ; preds = %51, %50, %34
  %.3 = phi i32 [ %.03, %51 ], [ %.2, %50 ], [ %.1, %34 ]
  br label %53

53:                                               ; preds = %52, %11
  %.4 = phi i32 [ %.03, %11 ], [ %.3, %52 ]
  %54 = add nsw i32 %.4, 1
  br label %4, !llvm.loop !6

55:                                               ; preds = %4
  br label %56

56:                                               ; preds = %55, %49, %33
  %.0 = phi i32 [ 1, %49 ], [ 1, %33 ], [ 0, %55 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @handle_script(%struct.lua_State* noundef %0, i8** nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = call i32 @getargs(%struct.lua_State* noundef %0, i8** noundef %1, i32 noundef %2)
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -10002, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #6
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8*, i8** %1, i64 %5
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %7, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = add nsw i32 %2, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %1, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #8
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %17, label %16

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %10, %3
  %.0 = phi i8* [ null, %16 ], [ %7, %10 ], [ %7, %3 ]
  %18 = call i32 @luaL_loadfile(%struct.lua_State* noundef %0, i8* noundef %.0) #6
  %19 = xor i32 %4, -1
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef %19) #6
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @docall(%struct.lua_State* noundef %0, i32 noundef %4, i32 noundef 0)
  br label %25

23:                                               ; preds = %17
  %24 = xor i32 %4, -1
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef %24) #6
  br label %25

25:                                               ; preds = %23, %21
  %.01 = phi i32 [ %22, %21 ], [ %18, %23 ]
  %26 = call i32 @report(%struct.lua_State* noundef %0, i32 noundef %.01)
  ret i32 %.01
}

; Function Attrs: noinline nounwind uwtable
define internal void @dotty(%struct.lua_State* noundef %0) #0 {
  %2 = load i8*, i8** @progname, align 8
  store i8* null, i8** @progname, align 8
  br label %3

3:                                                ; preds = %24, %1
  %4 = call i32 @loadline(%struct.lua_State* noundef %0)
  %.not = icmp eq i32 %4, -1
  br i1 %.not, label %25, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = call i32 @docall(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 0)
  br label %9

9:                                                ; preds = %7, %5
  %.0 = phi i32 [ %8, %7 ], [ %4, %5 ]
  %10 = call i32 @report(%struct.lua_State* noundef %0, i32 noundef %.0)
  %11 = icmp eq i32 %.0, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #6
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10002, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0)) #6
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef 1) #6
  %16 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #6
  %17 = add nsw i32 %16, -1
  %18 = call i32 @lua_pcall(%struct.lua_State* noundef %0, i32 noundef %17, i32 noundef 0, i32 noundef 0) #6
  %.not1 = icmp eq i32 %18, 0
  br i1 %.not1, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** @progname, align 8
  %21 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #6
  %22 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* noundef %21) #6
  call void @l_message(i8* noundef %20, i8* noundef %22)
  br label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %23, %12, %9
  br label %3, !llvm.loop !7

25:                                               ; preds = %3
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 0) #6
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = call i32 @fflush(%struct._IO_FILE* noundef %27) #6
  store i8* %2, i8** @progname, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @dofile(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = call i32 @luaL_loadfile(%struct.lua_State* noundef %0, i8* noundef %1) #6
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %7

4:                                                ; preds = %2
  %5 = call i32 @docall(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 1)
  %6 = icmp ne i32 %5, 0
  %phi.cast = zext i1 %6 to i32
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ 1, %2 ], [ %phi.cast, %4 ]
  %9 = call i32 @report(%struct.lua_State* noundef %0, i32 noundef %8)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dostring(%struct.lua_State* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #8
  %5 = call i32 @luaL_loadbuffer(%struct.lua_State* noundef %0, i8* noundef %1, i64 noundef %4, i8* noundef %2) #6
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %9

6:                                                ; preds = %3
  %7 = call i32 @docall(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 1)
  %8 = icmp ne i32 %7, 0
  %phi.cast = zext i1 %8 to i32
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 1, %3 ], [ %phi.cast, %6 ]
  %11 = call i32 @report(%struct.lua_State* noundef %0, i32 noundef %10)
  ret i32 %10
}

declare dso_local i32 @luaL_loadfile(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @docall(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #6
  %5 = sub nsw i32 %4, %1
  call void @lua_pushcclosure(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef nonnull @traceback, i32 noundef 0) #6
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef %5) #6
  %6 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef nonnull @laction) #6
  %.not = icmp eq i32 %2, 0
  %7 = sext i1 %.not to i32
  %8 = call i32 @lua_pcall(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %7, i32 noundef %5) #6
  %9 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef null) #6
  call void @lua_remove(%struct.lua_State* noundef %0, i32 noundef %5) #6
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %12, label %10

10:                                               ; preds = %3
  %11 = call i32 @lua_gc(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 0) #6
  br label %12

12:                                               ; preds = %10, %3
  ret i32 %8
}

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

declare dso_local void @lua_pushcclosure(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @traceback(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_isstring(%struct.lua_State* noundef %0, i32 noundef 1) #6
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %1
  br label %13

4:                                                ; preds = %1
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10002, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #6
  %5 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #6
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #6
  br label %13

8:                                                ; preds = %4
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #6
  %9 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #6
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -3) #6
  br label %13

12:                                               ; preds = %8
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 1) #6
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef 2) #6
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 1) #6
  br label %13

13:                                               ; preds = %12, %11, %7, %3
  ret i32 1
}

declare dso_local void @lua_insert(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @laction(i32 noundef %0) #0 {
  %2 = call void (i32)* @signal(i32 noundef %0, void (i32)* noundef null) #6
  %3 = load %struct.lua_State*, %struct.lua_State** @globalL, align 8
  %4 = call i32 @lua_sethook(%struct.lua_State* noundef %3, void (%struct.lua_State*, %struct.lua_Debug*)* noundef nonnull @lstop, i32 noundef 11, i32 noundef 1) #6
  ret void
}

declare dso_local i32 @lua_pcall(%struct.lua_State* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_remove(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_isstring(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_getfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @lua_type(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushvalue(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushinteger(%struct.lua_State* noundef, i64 noundef) #1

declare dso_local void @lua_call(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_sethook(%struct.lua_State* noundef, void (%struct.lua_State*, %struct.lua_Debug*)* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @lstop(%struct.lua_State* noundef %0, %struct.lua_Debug* nocapture noundef readnone %1) #0 {
  %3 = call i32 @lua_sethook(%struct.lua_State* noundef %0, void (%struct.lua_State*, %struct.lua_Debug*)* noundef null, i32 noundef 0, i32 noundef 0) #6
  %4 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #6
  ret void
}

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local i32 @luaL_loadbuffer(%struct.lua_State* noundef, i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @dolibrary(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10002, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #6
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %1) #6
  %3 = call i32 @docall(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 1)
  %4 = call i32 @report(%struct.lua_State* noundef %0, i32 noundef %3)
  ret i32 %3
}

declare dso_local void @lua_pushstring(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @getargs(%struct.lua_State* noundef %0, i8** nocapture noundef readonly %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %8, %3
  %.0 = phi i32 [ 0, %3 ], [ %9, %8 ]
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds i8*, i8** %1, i64 %5
  %7 = load i8*, i8** %6, align 8
  %.not = icmp eq i8* %7, null
  br i1 %.not, label %10, label %8

8:                                                ; preds = %4
  %9 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !8

10:                                               ; preds = %4
  %.neg = xor i32 %2, -1
  %11 = add i32 %.0, %.neg
  %12 = add nsw i32 %11, 3
  call void @luaL_checkstack(%struct.lua_State* noundef %0, i32 noundef %12, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #6
  br label %13

13:                                               ; preds = %19, %10
  %.01.in = phi i32 [ %2, %10 ], [ %.01, %19 ]
  %.01 = add nsw i32 %.01.in, 1
  %14 = icmp slt i32 %.01, %.0
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = sext i32 %.01 to i64
  %17 = getelementptr inbounds i8*, i8** %1, i64 %16
  %18 = load i8*, i8** %17, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %18) #6
  br label %19

19:                                               ; preds = %15
  br label %13, !llvm.loop !9

20:                                               ; preds = %13
  %21 = add nsw i32 %2, 1
  call void @lua_createtable(%struct.lua_State* noundef %0, i32 noundef %11, i32 noundef %21) #6
  br label %22

22:                                               ; preds = %29, %20
  %.1 = phi i32 [ 0, %20 ], [ %30, %29 ]
  %23 = icmp ult i32 %.1, %.0
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = zext i32 %.1 to i64
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25
  %27 = load i8*, i8** %26, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %27) #6
  %28 = sub nsw i32 %.1, %2
  call void @lua_rawseti(%struct.lua_State* noundef %0, i32 noundef -2, i32 noundef %28) #6
  br label %29

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %.1, 1
  br label %22, !llvm.loop !10

31:                                               ; preds = %22
  ret i32 %11
}

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

declare dso_local void @luaL_checkstack(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @lua_createtable(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_rawseti(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @loadline(%struct.lua_State* noundef %0) #0 {
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 0) #6
  %2 = call i32 @pushline(%struct.lua_State* noundef %0, i32 noundef 1)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %1
  br label %16

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %14, %4
  %6 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #6
  %7 = call i64 @lua_objlen(%struct.lua_State* noundef %0, i32 noundef 1) #6
  %8 = call i32 @luaL_loadbuffer(%struct.lua_State* noundef %0, i8* noundef %6, i64 noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0)) #6
  %9 = call i32 @incomplete(%struct.lua_State* noundef %0, i32 noundef %8)
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %10, label %11

10:                                               ; preds = %5
  br label %15

11:                                               ; preds = %5
  %12 = call i32 @pushline(%struct.lua_State* noundef %0, i32 noundef 0)
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %13, label %14

13:                                               ; preds = %11
  br label %16

14:                                               ; preds = %11
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64 noundef 1) #6
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef -2) #6
  call void @lua_concat(%struct.lua_State* noundef %0, i32 noundef 3) #6
  br label %5

15:                                               ; preds = %10
  call void @lua_remove(%struct.lua_State* noundef %0, i32 noundef 1) #6
  br label %16

16:                                               ; preds = %15, %13, %3
  %.0 = phi i32 [ -1, %13 ], [ %8, %15 ], [ -1, %3 ]
  ret i32 %.0
}

declare dso_local i8* @lua_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @pushline(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca [512 x i8], align 16
  %4 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %5 = call i8* @get_prompt(%struct.lua_State* noundef %0, i32 noundef %1)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = call i32 @fputs(i8* noundef %5, %struct._IO_FILE* noundef %6) #6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %9 = call i32 @fflush(%struct._IO_FILE* noundef %8) #6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %11 = call i8* @fgets(i8* noundef nonnull %4, i32 noundef 512, %struct._IO_FILE* noundef %10) #6
  %.not = icmp eq i8* %11, null
  br i1 %.not, label %12, label %13

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = call i64 @strlen(i8* noundef nonnull %4) #8
  %.not1 = icmp eq i64 %14, 0
  br i1 %.not1, label %23, label %15

15:                                               ; preds = %13
  %16 = add i64 %14, -1
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp eq i8 %18, 10
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = add i64 %14, -1
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 %21
  store i8 0, i8* %22, align 1
  br label %23

23:                                               ; preds = %20, %15, %13
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %30, label %24

24:                                               ; preds = %23
  %25 = load i8, i8* %4, align 16
  %26 = icmp eq i8 %25, 61
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 1
  %29 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* noundef nonnull %28) #6
  br label %31

30:                                               ; preds = %24, %23
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef nonnull %4) #6
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31, %12
  %.0 = phi i32 [ 0, %12 ], [ 1, %31 ]
  ret i32 %.0
}

declare dso_local i64 @lua_objlen(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @incomplete(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = icmp eq i32 %1, 3
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef nonnull %3) #6
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = getelementptr inbounds i8, i8* %8, i64 -7
  %10 = call i8* @strstr(i8* noundef nonnull dereferenceable(1) %6, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)) #8
  %11 = icmp eq i8* %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #6
  br label %15

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13, %2
  br label %15

15:                                               ; preds = %14, %12
  %.0 = phi i32 [ 1, %12 ], [ 0, %14 ]
  ret i32 %.0
}

declare dso_local void @lua_pushlstring(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @lua_concat(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_prompt(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %1, 0
  %3 = select i1 %.not, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10002, i8* noundef %3) #6
  %4 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #6
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %.not1 = icmp eq i32 %1, 0
  %7 = select i1 %.not1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)
  br label %8

8:                                                ; preds = %6, %2
  %.0 = phi i8* [ %7, %6 ], [ %4, %2 ]
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #6
  ret i8* %.0
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readonly willreturn }

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
