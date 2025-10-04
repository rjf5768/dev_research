; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/lua.c'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Smain, align 8
  %8 = alloca %struct.lua_State*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call %struct.lua_State* @luaL_newstate()
  store %struct.lua_State* %9, %struct.lua_State** %8, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %11 = icmp eq %struct.lua_State* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  call void @l_message(i8* noundef %15, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 1
  store i8** %21, i8*** %22, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %24 = bitcast %struct.Smain* %7 to i8*
  %25 = call i32 @lua_cpcall(%struct.lua_State* noundef %23, i32 (%struct.lua_State*)* noundef @pmain, i8* noundef %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @report(%struct.lua_State* noundef %26, i32 noundef %27)
  %29 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  call void @lua_close(%struct.lua_State* noundef %29)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.Smain, %struct.Smain* %7, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %16
  %37 = phi i1 [ true, %16 ], [ %35, %32 ]
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.lua_State* @luaL_newstate() #1

; Function Attrs: noinline nounwind uwtable
define internal void @l_message(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef %9)
  br label %11

11:                                               ; preds = %7, %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef %13)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 @fflush(%struct._IO_FILE* noundef %15)
  ret void
}

declare dso_local i32 @lua_cpcall(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @pmain(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.Smain*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i8* @lua_touserdata(%struct.lua_State* noundef %10, i32 noundef 1)
  %12 = bitcast i8* %11 to %struct.Smain*
  store %struct.Smain* %12, %struct.Smain** %4, align 8
  %13 = load %struct.Smain*, %struct.Smain** %4, align 8
  %14 = getelementptr inbounds %struct.Smain, %struct.Smain* %13, i32 0, i32 1
  %15 = load i8**, i8*** %14, align 8
  store i8** %15, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  store %struct.lua_State* %16, %struct.lua_State** @globalL, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** @progname, align 8
  br label %33

33:                                               ; preds = %29, %21, %1
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = call i32 @lua_gc(%struct.lua_State* noundef %34, i32 noundef 0, i32 noundef 0)
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_openlibs(%struct.lua_State* noundef %36)
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = call i32 @lua_gc(%struct.lua_State* noundef %37, i32 noundef 1, i32 noundef 0)
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = call i32 @handle_luainit(%struct.lua_State* noundef %39)
  %41 = load %struct.Smain*, %struct.Smain** %4, align 8
  %42 = getelementptr inbounds %struct.Smain, %struct.Smain* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.Smain*, %struct.Smain** %4, align 8
  %44 = getelementptr inbounds %struct.Smain, %struct.Smain* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %115

48:                                               ; preds = %33
  %49 = load i8**, i8*** %5, align 8
  %50 = call i32 @collectargs(i8** noundef %49, i32* noundef %7, i32* noundef %8, i32* noundef %9)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  call void @print_usage()
  %54 = load %struct.Smain*, %struct.Smain** %4, align 8
  %55 = getelementptr inbounds %struct.Smain, %struct.Smain* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  store i32 0, i32* %2, align 4
  br label %115

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void @print_version()
  br label %60

60:                                               ; preds = %59, %56
  %61 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  br label %71

67:                                               ; preds = %60
  %68 = load %struct.Smain*, %struct.Smain** %4, align 8
  %69 = getelementptr inbounds %struct.Smain, %struct.Smain* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  br label %71

71:                                               ; preds = %67, %65
  %72 = phi i32 [ %66, %65 ], [ %70, %67 ]
  %73 = call i32 @runargs(%struct.lua_State* noundef %61, i8** noundef %62, i32 noundef %72)
  %74 = load %struct.Smain*, %struct.Smain** %4, align 8
  %75 = getelementptr inbounds %struct.Smain, %struct.Smain* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.Smain*, %struct.Smain** %4, align 8
  %77 = getelementptr inbounds %struct.Smain, %struct.Smain* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %115

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @handle_script(%struct.lua_State* noundef %85, i8** noundef %86, i32 noundef %87)
  %89 = load %struct.Smain*, %struct.Smain** %4, align 8
  %90 = getelementptr inbounds %struct.Smain, %struct.Smain* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %84, %81
  %92 = load %struct.Smain*, %struct.Smain** %4, align 8
  %93 = getelementptr inbounds %struct.Smain, %struct.Smain* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %115

97:                                               ; preds = %91
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @dotty(%struct.lua_State* noundef %101)
  br label %114

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  call void @print_version()
  %112 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @dotty(%struct.lua_State* noundef %112)
  br label %113

113:                                              ; preds = %111, %108, %105, %102
  br label %114

114:                                              ; preds = %113, %100
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %96, %80, %53, %47
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @report(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i32 @lua_type(%struct.lua_State* noundef %9, i32 noundef -1)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i8* @lua_tolstring(%struct.lua_State* noundef %13, i32 noundef -1, i64* noundef null)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i8** %5, align 8
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i8*, i8** @progname, align 8
  %20 = load i8*, i8** %5, align 8
  call void @l_message(i8* noundef %19, i8* noundef %20)
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %21, i32 noundef -2)
  br label %22

22:                                               ; preds = %18, %8, %2
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local void @lua_close(%struct.lua_State* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i8* @lua_touserdata(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_gc(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @luaL_openlibs(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @handle_luainit(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = call i8* @getenv(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #4
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = call i32 @dofile(%struct.lua_State* noundef %16, i8* noundef %18)
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %9
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @dostring(%struct.lua_State* noundef %21, i8* noundef %22, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %15, %8
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @collectargs(i8** noundef %0, i32* noundef %1, i32* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %118, %4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %121

18:                                               ; preds = %11
  %19 = load i8**, i8*** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %122

30:                                               ; preds = %18
  %31 = load i8**, i8*** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %116 [
    i32 45, label %39
    i32 0, label %64
    i32 105, label %66
    i32 118, label %79
    i32 101, label %92
    i32 108, label %94
  ]

39:                                               ; preds = %30
  %40 = load i8**, i8*** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %122

50:                                               ; preds = %39
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  br label %62

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ %60, %58 ], [ 0, %61 ]
  store i32 %63, i32* %5, align 4
  br label %122

64:                                               ; preds = %30
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %122

66:                                               ; preds = %30
  %67 = load i8**, i8*** %6, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 -1, i32* %5, align 4
  br label %122

77:                                               ; preds = %66
  %78 = load i32*, i32** %7, align 8
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %30, %77
  %80 = load i8**, i8*** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %122

90:                                               ; preds = %79
  %91 = load i32*, i32** %8, align 8
  store i32 1, i32* %91, align 4
  br label %117

92:                                               ; preds = %30
  %93 = load i32*, i32** %9, align 8
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %30, %92
  %95 = load i8**, i8*** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %94
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  %107 = load i8**, i8*** %6, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = icmp eq i8* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store i32 -1, i32* %5, align 4
  br label %122

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %94
  br label %117

116:                                              ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %122

117:                                              ; preds = %115, %90
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %11, !llvm.loop !4

121:                                              ; preds = %11
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %116, %113, %89, %76, %64, %62, %49, %28
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_usage() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progname, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([307 x i8], [307 x i8]* @.str.9, i64 0, i64 0), i8* noundef %2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 @fflush(%struct._IO_FILE* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_version() #0 {
  call void @l_message(i8* noundef null, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @runargs(%struct.lua_State* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %11

11:                                               ; preds = %84, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %87

15:                                               ; preds = %11
  %16 = load i8**, i8*** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %84

23:                                               ; preds = %15
  %24 = load i8**, i8*** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %82 [
    i32 101, label %32
    i32 108, label %57
  ]

32:                                               ; preds = %23
  %33 = load i8**, i8*** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %32
  %44 = load i8**, i8*** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %9, align 8
  br label %50

50:                                               ; preds = %43, %32
  %51 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @dostring(%struct.lua_State* noundef %51, i8* noundef %52, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %88

56:                                               ; preds = %50
  br label %83

57:                                               ; preds = %23
  %58 = load i8**, i8*** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %63, i8** %10, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %57
  %69 = load i8**, i8*** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %10, align 8
  br label %75

75:                                               ; preds = %68, %57
  %76 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @dolibrary(%struct.lua_State* noundef %76, i8* noundef %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1, i32* %4, align 4
  br label %88

81:                                               ; preds = %75
  br label %83

82:                                               ; preds = %23
  br label %83

83:                                               ; preds = %82, %81, %56
  br label %84

84:                                               ; preds = %83, %22
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %11, !llvm.loop !6

87:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %80, %55
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @handle_script(%struct.lua_State* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @getargs(%struct.lua_State* noundef %10, i8** noundef %11, i32 noundef %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_setfield(%struct.lua_State* noundef %14, i32 noundef -10002, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #5
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i8* null, i8** %8, align 8
  br label %33

33:                                               ; preds = %32, %23, %3
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @luaL_loadfile(%struct.lua_State* noundef %34, i8* noundef %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = sub nsw i32 0, %39
  call void @lua_insert(%struct.lua_State* noundef %37, i32 noundef %40)
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @docall(%struct.lua_State* noundef %44, i32 noundef %45, i32 noundef 0)
  store i32 %46, i32* %7, align 4
  br label %52

47:                                               ; preds = %33
  %48 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 0, %49
  %51 = sub nsw i32 %50, 1
  call void @lua_settop(%struct.lua_State* noundef %48, i32 noundef %51)
  br label %52

52:                                               ; preds = %47, %43
  %53 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @report(%struct.lua_State* noundef %53, i32 noundef %54)
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define internal void @dotty(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load i8*, i8** @progname, align 8
  store i8* %5, i8** %4, align 8
  store i8* null, i8** @progname, align 8
  br label %6

6:                                                ; preds = %42, %1
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @loadline(%struct.lua_State* noundef %7)
  store i32 %8, i32* %3, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %43

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 @docall(%struct.lua_State* noundef %14, i32 noundef 0, i32 noundef 0)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @report(%struct.lua_State* noundef %17, i32 noundef %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = call i32 @lua_gettop(%struct.lua_State* noundef %23)
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_getfield(%struct.lua_State* noundef %27, i32 noundef -10002, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %28 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_insert(%struct.lua_State* noundef %28, i32 noundef 1)
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %31 = call i32 @lua_gettop(%struct.lua_State* noundef %30)
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @lua_pcall(%struct.lua_State* noundef %29, i32 noundef %32, i32 noundef 0, i32 noundef 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load i8*, i8** @progname, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %39 = call i8* @lua_tolstring(%struct.lua_State* noundef %38, i32 noundef -1, i64* noundef null)
  %40 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %37, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i8* noundef %39)
  call void @l_message(i8* noundef %36, i8* noundef %40)
  br label %41

41:                                               ; preds = %35, %26
  br label %42

42:                                               ; preds = %41, %22, %16
  br label %6, !llvm.loop !7

43:                                               ; preds = %6
  %44 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %44, i32 noundef 0)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %46 = call i32 @fputs(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %struct._IO_FILE* noundef %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 @fflush(%struct._IO_FILE* noundef %47)
  %49 = load i8*, i8** %4, align 8
  store i8* %49, i8** @progname, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @dofile(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @luaL_loadfile(%struct.lua_State* noundef %6, i8* noundef %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @docall(%struct.lua_State* noundef %11, i32 noundef 0, i32 noundef 1)
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ true, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @report(%struct.lua_State* noundef %17, i32 noundef %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dostring(%struct.lua_State* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* noundef %10) #5
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @luaL_loadbuffer(%struct.lua_State* noundef %8, i8* noundef %9, i64 noundef %11, i8* noundef %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = call i32 @docall(%struct.lua_State* noundef %16, i32 noundef 0, i32 noundef 1)
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ true, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @report(%struct.lua_State* noundef %22, i32 noundef %23)
  ret i32 %24
}

declare dso_local i32 @luaL_loadfile(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @docall(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = call i32 @lua_gettop(%struct.lua_State* noundef %9)
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %13, i32 (%struct.lua_State*)* noundef @traceback, i32 noundef 0)
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %8, align 4
  call void @lua_insert(%struct.lua_State* noundef %14, i32 noundef %15)
  %16 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef @laction) #4
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 -1
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @lua_pcall(%struct.lua_State* noundef %17, i32 noundef %18, i32 noundef %22, i32 noundef %23)
  store i32 %24, i32* %7, align 4
  %25 = call void (i32)* @signal(i32 noundef 2, void (i32)* noundef null) #4
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %27 = load i32, i32* %8, align 4
  call void @lua_remove(%struct.lua_State* noundef %26, i32 noundef %27)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %32 = call i32 @lua_gc(%struct.lua_State* noundef %31, i32 noundef 2, i32 noundef 0)
  br label %33

33:                                               ; preds = %30, %3
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

declare dso_local void @lua_pushcclosure(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @traceback(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5 = call i32 @lua_isstring(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %9, i32 noundef -10002, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i32 @lua_type(%struct.lua_State* noundef %10, i32 noundef -1)
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %14, i32 noundef -2)
  store i32 1, i32* %2, align 4
  br label %26

15:                                               ; preds = %8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %16, i32 noundef -1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = call i32 @lua_type(%struct.lua_State* noundef %17, i32 noundef -1)
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %21, i32 noundef -3)
  store i32 1, i32* %2, align 4
  br label %26

22:                                               ; preds = %15
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %23, i32 noundef 1)
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushinteger(%struct.lua_State* noundef %24, i64 noundef 2)
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_call(%struct.lua_State* noundef %25, i32 noundef 2, i32 noundef 1)
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %20, %13, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local void @lua_insert(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @laction(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call void (i32)* @signal(i32 noundef %3, void (i32)* noundef null) #4
  %5 = load %struct.lua_State*, %struct.lua_State** @globalL, align 8
  %6 = call i32 @lua_sethook(%struct.lua_State* noundef %5, void (%struct.lua_State*, %struct.lua_Debug*)* noundef @lstop, i32 noundef 11, i32 noundef 1)
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
define internal void @lstop(%struct.lua_State* noundef %0, %struct.lua_Debug* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_Debug*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_Debug* %1, %struct.lua_Debug** %4, align 8
  %5 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_sethook(%struct.lua_State* noundef %6, void (%struct.lua_State*, %struct.lua_Debug*)* noundef null, i32 noundef 0, i32 noundef 0)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %8, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local i32 @luaL_loadbuffer(%struct.lua_State* noundef, i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @dolibrary(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %5, i32 noundef -10002, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i8*, i8** %4, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %6, i8* noundef %7)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i32 @docall(%struct.lua_State* noundef %9, i32 noundef 1, i32 noundef 1)
  %11 = call i32 @report(%struct.lua_State* noundef %8, i32 noundef %10)
  ret i32 %11
}

declare dso_local void @lua_pushstring(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @getargs(%struct.lua_State* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %17, %3
  %11 = load i8**, i8*** %5, align 8
  %12 = load i32, i32* %9, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  br label %10, !llvm.loop !8

20:                                               ; preds = %10
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = sub nsw i32 %21, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 3
  call void @luaL_checkstack(%struct.lua_State* noundef %25, i32 noundef %27, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %41, %20
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %35, i8* noundef %40)
  br label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %30, !llvm.loop !9

44:                                               ; preds = %30
  %45 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  call void @lua_createtable(%struct.lua_State* noundef %45, i32 noundef %46, i32 noundef %48)
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %64, %44
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %54, i8* noundef %59)
  %60 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  call void @lua_rawseti(%struct.lua_State* noundef %60, i32 noundef -2, i32 noundef %63)
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %49, !llvm.loop !10

67:                                               ; preds = %49
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local void @luaL_checkstack(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @lua_createtable(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_rawseti(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @loadline(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %5, i32 noundef 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @pushline(%struct.lua_State* noundef %6, i32 noundef 1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %28, %10
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i8* @lua_tolstring(%struct.lua_State* noundef %13, i32 noundef 1, i64* noundef null)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = call i64 @lua_objlen(%struct.lua_State* noundef %15, i32 noundef 1)
  %17 = call i32 @luaL_loadbuffer(%struct.lua_State* noundef %12, i8* noundef %14, i64 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  store i32 %17, i32* %4, align 4
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @incomplete(%struct.lua_State* noundef %18, i32 noundef %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %32

23:                                               ; preds = %11
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = call i32 @pushline(%struct.lua_State* noundef %24, i32 noundef 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %36

28:                                               ; preds = %23
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i64 noundef 1)
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_insert(%struct.lua_State* noundef %30, i32 noundef -2)
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_concat(%struct.lua_State* noundef %31, i32 noundef 3)
  br label %11

32:                                               ; preds = %22
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_remove(%struct.lua_State* noundef %34, i32 noundef 1)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %27, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i8* @lua_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @pushline(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [512 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  store i8* %10, i8** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @get_prompt(%struct.lua_State* noundef %11, i32 noundef %12)
  store i8* %13, i8** %9, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = call i32 @fputs(i8* noundef %15, %struct._IO_FILE* noundef %16)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = call i32 @fflush(%struct._IO_FILE* noundef %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %22 = call i8* @fgets(i8* noundef %20, i32 noundef 512, %struct._IO_FILE* noundef %21)
  %23 = icmp ne i8* %22, null
  %24 = zext i1 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

27:                                               ; preds = %2
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strlen(i8* noundef %28) #5
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %40, %32, %27
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 61
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %55, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* noundef %57)
  br label %62

59:                                               ; preds = %48, %45
  %60 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %61 = load i8*, i8** %7, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %60, i8* noundef %61)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %64 = load i8*, i8** %7, align 8
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %26
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @lua_objlen(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @incomplete(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = call i8* @lua_tolstring(%struct.lua_State* noundef %12, i32 noundef -1, i64* noundef %6)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -7
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @strstr(i8* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0)) #5
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* noundef %23, i32 noundef -2)
  store i32 1, i32* %3, align 4
  br label %26

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local void @lua_pushlstring(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @lua_concat(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @get_prompt(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)
  call void @lua_getfield(%struct.lua_State* noundef %6, i32 noundef -10002, i8* noundef %10)
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i8* @lua_tolstring(%struct.lua_State* noundef %11, i32 noundef -1, i64* noundef null)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %21, i32 noundef -2)
  %22 = load i8*, i8** %5, align 8
  ret i8* %22
}

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
