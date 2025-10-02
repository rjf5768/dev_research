; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/ldblib.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/ldblib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@dblib = internal constant [15 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @db_debug }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @db_gethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getinfo }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getregistry }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @db_sethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @db_errorfb }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"getfenv\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"gethook\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"getinfo\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"getlocal\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"getregistry\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"getupvalue\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"setfenv\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"sethook\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"setlocal\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"setupvalue\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"lua_debug> \00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"cont\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"=(debug command)\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"external hook\00", align 1
@hookf.hooknames = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0)], align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"tail return\00", align 1
@KEY_HOOK = internal constant i8 104, align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"flnSu\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c">%s\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"function or level expected\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"short_src\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"linedefined\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"lastlinedefined\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"currentline\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"nups\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"namewhat\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"activelines\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"level out of range\00", align 1
@.str.40 = private unnamed_addr constant [52 x i8] c"'setfenv' cannot change environment of given object\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"stack traceback:\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"\0A\09...\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"Snl\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"%d:\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c" in function '%s'\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c" in main chunk\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c" in function <%s:%d>\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @luaopen_debug(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_register(%struct.lua_State* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([15 x %struct.luaL_Reg], [15 x %struct.luaL_Reg]* @dblib, i64 0, i64 0))
  ret i32 1
}

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_debug(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca [250 x i8], align 16
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  br label %4

4:                                                ; preds = %34, %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 @fputs(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), %struct._IO_FILE* noundef %5)
  %7 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %9 = call i8* @fgets(i8* noundef %7, i32 noundef 250, %struct._IO_FILE* noundef %8)
  %10 = icmp eq i8* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %13 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %4
  ret i32 0

16:                                               ; preds = %11
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %19 = getelementptr inbounds [250 x i8], [250 x i8]* %3, i64 0, i64 0
  %20 = call i64 @strlen(i8* noundef %19) #3
  %21 = call i32 @luaL_loadbuffer(%struct.lua_State* noundef %17, i8* noundef %18, i64 noundef %20, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %25 = call i32 @lua_pcall(%struct.lua_State* noundef %24, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %16
  %28 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %29 = call i8* @lua_tolstring(%struct.lua_State* noundef %28, i32 noundef -1, i64* noundef null)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 @fputs(i8* noundef %29, %struct._IO_FILE* noundef %30)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 @fputs(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* noundef %32)
  br label %34

34:                                               ; preds = %27, %23
  %35 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %35, i32 noundef 0)
  br label %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getfenv(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_getfenv(%struct.lua_State* noundef %3, i32 noundef 1)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_gethook(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %8, i32* noundef %3)
  store %struct.lua_State* %9, %struct.lua_State** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = call i32 @lua_gethookmask(%struct.lua_State* noundef %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = call void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* noundef %12)
  store void (%struct.lua_State*, %struct.lua_Debug*)* %13, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8
  %14 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8
  %15 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8
  %18 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %17, @hookf
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %20, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 noundef 13)
  br label %28

21:                                               ; preds = %16, %1
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @gethooktable(%struct.lua_State* noundef %22)
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = bitcast %struct.lua_State* %24 to i8*
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %23, i8* noundef %25)
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawget(%struct.lua_State* noundef %26, i32 noundef -2)
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_remove(%struct.lua_State* noundef %27, i32 noundef -2)
  br label %28

28:                                               ; preds = %21, %19
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %32 = call i8* @unmakemask(i32 noundef %30, i8* noundef %31)
  call void @lua_pushstring(%struct.lua_State* noundef %29, i8* noundef %32)
  %33 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %35 = call i32 @lua_gethookcount(%struct.lua_State* noundef %34)
  %36 = sext i32 %35 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %33, i64 noundef %36)
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getinfo(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_Debug, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %8, i32* noundef %5)
  store %struct.lua_State* %9, %struct.lua_State** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 2
  %13 = call i8* @luaL_optlstring(%struct.lua_State* noundef %10, i32 noundef %12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64* noundef null)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @lua_isnumber(%struct.lua_State* noundef %14, i32 noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i64 @lua_tointeger(%struct.lua_State* noundef %21, i32 noundef %23)
  %25 = trunc i64 %24 to i32
  %26 = call i32 @lua_getstack(%struct.lua_State* noundef %20, i32 noundef %25, %struct.lua_Debug* noundef %4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %29)
  store i32 1, i32* %2, align 4
  br label %127

30:                                               ; preds = %19
  br label %54

31:                                               ; preds = %1
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @lua_type(%struct.lua_State* noundef %32, i32 noundef %34)
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %38, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %39)
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = call i8* @lua_tolstring(%struct.lua_State* noundef %41, i32 noundef -1, i64* noundef null)
  store i8* %42, i8** %7, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  call void @lua_pushvalue(%struct.lua_State* noundef %43, i32 noundef %45)
  %46 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @lua_xmove(%struct.lua_State* noundef %46, %struct.lua_State* noundef %47, i32 noundef 1)
  br label %53

48:                                               ; preds = %31
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @luaL_argerror(%struct.lua_State* noundef %49, i32 noundef %51, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  store i32 %52, i32* %2, align 4
  br label %127

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %30
  %55 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @lua_getinfo(%struct.lua_State* noundef %55, i8* noundef %56, %struct.lua_Debug* noundef %4)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 2
  %63 = call i32 @luaL_argerror(%struct.lua_State* noundef %60, i32 noundef %62, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  store i32 %63, i32* %2, align 4
  br label %127

64:                                               ; preds = %54
  %65 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_createtable(%struct.lua_State* noundef %65, i32 noundef 0, i32 noundef 2)
  %66 = load i8*, i8** %7, align 8
  %67 = call i8* @strchr(i8* noundef %66, i32 noundef 83) #3
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %71 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  call void @settabss(%struct.lua_State* noundef %70, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* noundef %72)
  %73 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %74 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 9
  %75 = getelementptr inbounds [60 x i8], [60 x i8]* %74, i64 0, i64 0
  call void @settabss(%struct.lua_State* noundef %73, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* noundef %75)
  %76 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %77 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  call void @settabsi(%struct.lua_State* noundef %76, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 noundef %78)
  %79 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %80 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  call void @settabsi(%struct.lua_State* noundef %79, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 noundef %81)
  %82 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %83 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  call void @settabss(%struct.lua_State* noundef %82, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8* noundef %84)
  br label %85

85:                                               ; preds = %69, %64
  %86 = load i8*, i8** %7, align 8
  %87 = call i8* @strchr(i8* noundef %86, i32 noundef 108) #3
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %91 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  call void @settabsi(%struct.lua_State* noundef %90, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 noundef %92)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i8*, i8** %7, align 8
  %95 = call i8* @strchr(i8* noundef %94, i32 noundef 117) #3
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %99 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  call void @settabsi(%struct.lua_State* noundef %98, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 noundef %100)
  br label %101

101:                                              ; preds = %97, %93
  %102 = load i8*, i8** %7, align 8
  %103 = call i8* @strchr(i8* noundef %102, i32 noundef 110) #3
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %107 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  call void @settabss(%struct.lua_State* noundef %106, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef %108)
  %109 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %110 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %4, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  call void @settabss(%struct.lua_State* noundef %109, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8* noundef %111)
  br label %112

112:                                              ; preds = %105, %101
  %113 = load i8*, i8** %7, align 8
  %114 = call i8* @strchr(i8* noundef %113, i32 noundef 76) #3
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %118 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @treatstackoption(%struct.lua_State* noundef %117, %struct.lua_State* noundef %118, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %112
  %120 = load i8*, i8** %7, align 8
  %121 = call i8* @strchr(i8* noundef %120, i32 noundef 102) #3
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %125 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @treatstackoption(%struct.lua_State* noundef %124, %struct.lua_State* noundef %125, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %119
  store i32 1, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %59, %48, %28
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getlocal(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_Debug, align 8
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %8, i32* noundef %4)
  store %struct.lua_State* %9, %struct.lua_State** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %11, i32 noundef %13)
  %15 = trunc i64 %14 to i32
  %16 = call i32 @lua_getstack(%struct.lua_State* noundef %10, i32 noundef %15, %struct.lua_Debug* noundef %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @luaL_argerror(%struct.lua_State* noundef %19, i32 noundef %21, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0))
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %1
  %24 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 2
  %28 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %25, i32 noundef %27)
  %29 = trunc i64 %28 to i32
  %30 = call i8* @lua_getlocal(%struct.lua_State* noundef %24, %struct.lua_Debug* noundef %6, i32 noundef %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_xmove(%struct.lua_State* noundef %34, %struct.lua_State* noundef %35, i32 noundef 1)
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = load i8*, i8** %7, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %36, i8* noundef %37)
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %38, i32 noundef -2)
  store i32 2, i32* %2, align 4
  br label %41

39:                                               ; preds = %23
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %40)
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %33, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getregistry(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %3, i32 noundef -10000)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getmetatable(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %3, i32 noundef 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_getmetatable(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %8)
  br label %9

9:                                                ; preds = %7, %1
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getupvalue(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @auxupvalue(%struct.lua_State* noundef %3, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_setfenv(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %3, i32 noundef 2, i32 noundef 5)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %4, i32 noundef 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 @lua_setfenv(%struct.lua_State* noundef %5, i32 noundef 1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %9, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_sethook(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 8
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %9, i32* noundef %3)
  store %struct.lua_State* %10, %struct.lua_State** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i32 @lua_type(%struct.lua_State* noundef %11, i32 noundef %13)
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  call void @lua_settop(%struct.lua_State* noundef %17, i32 noundef %19)
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 2
  %24 = call i8* @luaL_checklstring(%struct.lua_State* noundef %21, i32 noundef %23, i64* noundef null)
  store i8* %24, i8** %8, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  call void @luaL_checktype(%struct.lua_State* noundef %25, i32 noundef %27, i32 noundef 6)
  %28 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 3
  %31 = call i64 @luaL_optinteger(%struct.lua_State* noundef %28, i32 noundef %30, i64 noundef 0)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  store void (%struct.lua_State*, %struct.lua_Debug*)* @hookf, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @makemask(i8* noundef %33, i32 noundef %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %20, %16
  %37 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @gethooktable(%struct.lua_State* noundef %37)
  %38 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %40 = bitcast %struct.lua_State* %39 to i8*
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %38, i8* noundef %40)
  %41 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  call void @lua_pushvalue(%struct.lua_State* noundef %41, i32 noundef %43)
  %44 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawset(%struct.lua_State* noundef %44, i32 noundef -3)
  %45 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %45, i32 noundef -2)
  %46 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %47 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %6, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @lua_sethook(%struct.lua_State* noundef %46, void (%struct.lua_State*, %struct.lua_Debug*)* noundef %47, i32 noundef %48, i32 noundef %49)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_setlocal(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %7, i32* noundef %4)
  store %struct.lua_State* %8, %struct.lua_State** %5, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %10, i32 noundef %12)
  %14 = trunc i64 %13 to i32
  %15 = call i32 @lua_getstack(%struct.lua_State* noundef %9, i32 noundef %14, %struct.lua_Debug* noundef %6)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @luaL_argerror(%struct.lua_State* noundef %18, i32 noundef %20, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 3
  call void @luaL_checkany(%struct.lua_State* noundef %23, i32 noundef %25)
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 3
  call void @lua_settop(%struct.lua_State* noundef %26, i32 noundef %28)
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_xmove(%struct.lua_State* noundef %29, %struct.lua_State* noundef %30, i32 noundef 1)
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 2
  %36 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %33, i32 noundef %35)
  %37 = trunc i64 %36 to i32
  %38 = call i8* @lua_setlocal(%struct.lua_State* noundef %32, %struct.lua_Debug* noundef %6, i32 noundef %37)
  call void @lua_pushstring(%struct.lua_State* noundef %31, i8* noundef %38)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %22, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_setmetatable(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_type(%struct.lua_State* noundef %4, i32 noundef 2)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i32 @luaL_argerror(%struct.lua_State* noundef %12, i32 noundef 2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %11, %8, %1
  %16 = phi i1 [ true, %8 ], [ true, %1 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %18, i32 noundef 2)
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = call i32 @lua_setmetatable(%struct.lua_State* noundef %20, i32 noundef 1)
  call void @lua_pushboolean(%struct.lua_State* noundef %19, i32 noundef %21)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_setupvalue(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %3, i32 noundef 3)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @auxupvalue(%struct.lua_State* noundef %4, i32 noundef 0)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_errorfb(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 1, i32* %5, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %9, i32* noundef %6)
  store %struct.lua_State* %10, %struct.lua_State** %7, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 2
  %14 = call i32 @lua_isnumber(%struct.lua_State* noundef %11, i32 noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 2
  %20 = call i64 @lua_tointeger(%struct.lua_State* noundef %17, i32 noundef %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %22, i32 noundef -2)
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %26 = icmp eq %struct.lua_State* %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = call i32 @lua_gettop(%struct.lua_State* noundef %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %35, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i64 0, i64 0), i64 noundef 0)
  br label %46

36:                                               ; preds = %29
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @lua_isstring(%struct.lua_State* noundef %37, i32 noundef %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %153

43:                                               ; preds = %36
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %44, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 noundef 1)
  br label %45

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %34
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %47, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i64 noundef 16)
  br label %48

48:                                               ; preds = %141, %81, %46
  %49 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = call i32 @lua_getstack(%struct.lua_State* noundef %49, i32 noundef %50, %struct.lua_Debug* noundef %8)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %147

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 12
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 10
  %64 = call i32 @lua_getstack(%struct.lua_State* noundef %61, i32 noundef %63, %struct.lua_Debug* noundef %8)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %4, align 4
  br label %81

69:                                               ; preds = %60
  %70 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %70, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i64 noundef 5)
  br label %71

71:                                               ; preds = %77, %69
  %72 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 10
  %75 = call i32 @lua_getstack(%struct.lua_State* noundef %72, i32 noundef %74, %struct.lua_Debug* noundef %8)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %71, !llvm.loop !4

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %66
  store i32 0, i32* %5, align 4
  br label %48, !llvm.loop !6

82:                                               ; preds = %57, %54
  %83 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %83, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 noundef 2)
  %84 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %85 = call i32 @lua_getinfo(%struct.lua_State* noundef %84, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), %struct.lua_Debug* noundef %8)
  %86 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %87 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 9
  %88 = getelementptr inbounds [60 x i8], [60 x i8]* %87, i64 0, i64 0
  %89 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %86, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* noundef %88)
  %90 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %82
  %94 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %95 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %94, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i32 noundef %96)
  br label %98

98:                                               ; preds = %93, %82
  %99 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %106 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %105, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0), i8* noundef %107)
  br label %141

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 109
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %117 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %116, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0))
  br label %140

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 67
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 116
  br i1 %129, label %130, label %132

130:                                              ; preds = %124, %118
  %131 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %131, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i64 noundef 2)
  br label %139

132:                                              ; preds = %124
  %133 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %134 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 9
  %135 = getelementptr inbounds [60 x i8], [60 x i8]* %134, i64 0, i64 0
  %136 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %8, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %133, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* noundef %135, i32 noundef %137)
  br label %139

139:                                              ; preds = %132, %130
  br label %140

140:                                              ; preds = %139, %115
  br label %141

141:                                              ; preds = %140, %104
  %142 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %143 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %144 = call i32 @lua_gettop(%struct.lua_State* noundef %143)
  %145 = load i32, i32* %6, align 4
  %146 = sub nsw i32 %144, %145
  call void @lua_concat(%struct.lua_State* noundef %142, i32 noundef %146)
  br label %48, !llvm.loop !6

147:                                              ; preds = %48
  %148 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %149 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %150 = call i32 @lua_gettop(%struct.lua_State* noundef %149)
  %151 = load i32, i32* %6, align 4
  %152 = sub nsw i32 %150, %151
  call void @lua_concat(%struct.lua_State* noundef %148, i32 noundef %152)
  store i32 1, i32* %2, align 4
  br label %153

153:                                              ; preds = %147, %42
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @luaL_loadbuffer(%struct.lua_State* noundef, i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @lua_pcall(%struct.lua_State* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_getfenv(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.lua_State* @getthread(%struct.lua_State* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %7 = call i32 @lua_type(%struct.lua_State* noundef %6, i32 noundef 1)
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = call %struct.lua_State* @lua_tothread(%struct.lua_State* noundef %11, i32 noundef 1)
  store %struct.lua_State* %12, %struct.lua_State** %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  store %struct.lua_State* %15, %struct.lua_State** %3, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret %struct.lua_State* %17
}

declare dso_local i32 @lua_gethookmask(%struct.lua_State* noundef) #1

declare dso_local void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @hookf(%struct.lua_State* noundef %0, %struct.lua_Debug* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_Debug*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_Debug* %1, %struct.lua_Debug** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %5, i8* noundef @KEY_HOOK)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rawget(%struct.lua_State* noundef %6, i32 noundef -10000)
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = bitcast %struct.lua_State* %8 to i8*
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %7, i8* noundef %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rawget(%struct.lua_State* noundef %10, i32 noundef -2)
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @lua_type(%struct.lua_State* noundef %11, i32 noundef -1)
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %17 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %15, i8* noundef %21)
  %22 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %23 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %14
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = load %struct.lua_Debug*, %struct.lua_Debug** %4, align 8
  %29 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %27, i64 noundef %31)
  br label %34

32:                                               ; preds = %14
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %33)
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_call(%struct.lua_State* noundef %35, i32 noundef 2, i32 noundef 0)
  br label %36

36:                                               ; preds = %34, %2
  ret void
}

declare dso_local void @lua_pushlstring(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @gethooktable(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %3, i8* noundef @KEY_HOOK)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawget(%struct.lua_State* noundef %4, i32 noundef -10000)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 @lua_type(%struct.lua_State* noundef %5, i32 noundef -1)
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %9, i32 noundef -2)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* noundef %10, i32 noundef 0, i32 noundef 1)
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %11, i8* noundef @KEY_HOOK)
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %12, i32 noundef -2)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawset(%struct.lua_State* noundef %13, i32 noundef -10000)
  br label %14

14:                                               ; preds = %8, %1
  ret void
}

declare dso_local void @lua_pushlightuserdata(%struct.lua_State* noundef, i8* noundef) #1

declare dso_local void @lua_rawget(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_remove(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushstring(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @unmakemask(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8 99, i8* %14, align 1
  br label %15

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8 114, i8* %24, align 1
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 108, i8* %34, align 1
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %4, align 8
  ret i8* %40
}

declare dso_local void @lua_pushinteger(%struct.lua_State* noundef, i64 noundef) #1

declare dso_local i32 @lua_gethookcount(%struct.lua_State* noundef) #1

declare dso_local i32 @lua_type(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local %struct.lua_State* @lua_tothread(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushnil(%struct.lua_State* noundef) #1

declare dso_local void @lua_call(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_createtable(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_pushvalue(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_rawset(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @luaL_optlstring(%struct.lua_State* noundef, i32 noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @lua_isnumber(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_getstack(%struct.lua_State* noundef, i32 noundef, %struct.lua_Debug* noundef) #1

declare dso_local i64 @lua_tointeger(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @lua_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local void @lua_xmove(%struct.lua_State* noundef, %struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_argerror(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @lua_getinfo(%struct.lua_State* noundef, i8* noundef, %struct.lua_Debug* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @settabss(%struct.lua_State* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i8*, i8** %6, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %7, i8* noundef %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i8*, i8** %5, align 8
  call void @lua_setfield(%struct.lua_State* noundef %9, i32 noundef -2, i8* noundef %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @settabsi(%struct.lua_State* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %7, i64 noundef %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = load i8*, i8** %5, align 8
  call void @lua_setfield(%struct.lua_State* noundef %10, i32 noundef -2, i8* noundef %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @treatstackoption(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_State* %1, %struct.lua_State** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %9 = icmp eq %struct.lua_State* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %11, i32 noundef -2)
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_remove(%struct.lua_State* noundef %12, i32 noundef -3)
  br label %16

13:                                               ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_xmove(%struct.lua_State* noundef %14, %struct.lua_State* noundef %15, i32 noundef 1)
  br label %16

16:                                               ; preds = %13, %10
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = load i8*, i8** %6, align 8
  call void @lua_setfield(%struct.lua_State* noundef %17, i32 noundef -2, i8* noundef %18)
  ret void
}

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @luaL_checkinteger(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @lua_getlocal(%struct.lua_State* noundef, %struct.lua_Debug* noundef, i32 noundef) #1

declare dso_local void @luaL_checkany(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_getmetatable(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @auxupvalue(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %8, i32 noundef 2)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %7, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %11, i32 noundef 1, i32 noundef 6)
  %12 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %13 = call i32 @lua_iscfunction(%struct.lua_State* noundef %12, i32 noundef 1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @lua_getupvalue(%struct.lua_State* noundef %20, i32 noundef 1, i32 noundef %21)
  br label %27

23:                                               ; preds = %16
  %24 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @lua_setupvalue(%struct.lua_State* noundef %24, i32 noundef 1, i32 noundef %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i8* [ %22, %19 ], [ %26, %23 ]
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %41

32:                                               ; preds = %27
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = load i8*, i8** %6, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %33, i8* noundef %34)
  %35 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  %38 = sub nsw i32 0, %37
  call void @lua_insert(%struct.lua_State* noundef %35, i32 noundef %38)
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %31, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local void @luaL_checktype(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_iscfunction(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @lua_getupvalue(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i8* @lua_setupvalue(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_insert(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_setfenv(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local i8* @luaL_checklstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local i64 @luaL_optinteger(%struct.lua_State* noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @makemask(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @strchr(i8* noundef %6, i32 noundef 99) #3
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, 1
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strchr(i8* noundef %13, i32 noundef 114) #3
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, 2
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strchr(i8* noundef %20, i32 noundef 108) #3
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 8
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @lua_sethook(%struct.lua_State* noundef, void (%struct.lua_State*, %struct.lua_Debug*)* noundef, i32 noundef, i32 noundef) #1

declare dso_local i8* @lua_setlocal(%struct.lua_State* noundef, %struct.lua_Debug* noundef, i32 noundef) #1

declare dso_local void @lua_pushboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_setmetatable(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

declare dso_local i32 @lua_isstring(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_concat(%struct.lua_State* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
