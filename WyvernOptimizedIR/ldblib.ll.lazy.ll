; ModuleID = './ldblib.ll'
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
  call void @luaL_register(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([15 x %struct.luaL_Reg], [15 x %struct.luaL_Reg]* @dblib, i64 0, i64 0)) #7
  ret i32 1
}

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_debug(%struct.lua_State* noundef %0) #0 {
  %2 = alloca [250 x i8], align 16
  %3 = getelementptr inbounds [250 x i8], [250 x i8]* %2, i64 0, i64 0
  br label %4

4:                                                ; preds = %26, %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %5) #8
  %7 = getelementptr inbounds [250 x i8], [250 x i8]* %2, i64 0, i64 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %9 = call i8* @fgets(i8* noundef nonnull %7, i32 noundef 250, %struct._IO_FILE* noundef %8) #7
  %10 = icmp eq i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i64 6)
  %12 = icmp eq i32 %bcmp, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11, %4
  ret i32 0

14:                                               ; preds = %11
  %15 = getelementptr inbounds [250 x i8], [250 x i8]* %2, i64 0, i64 0
  %16 = getelementptr inbounds [250 x i8], [250 x i8]* %2, i64 0, i64 0
  %17 = call i64 @strlen(i8* noundef nonnull %16) #9
  %18 = call i32 @luaL_loadbuffer(%struct.lua_State* noundef %0, i8* noundef nonnull %15, i64 noundef %17, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0)) #7
  %.not = icmp eq i32 %18, 0
  br i1 %.not, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @lua_pcall(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %.not1 = icmp eq i32 %20, 0
  br i1 %.not1, label %26, label %21

21:                                               ; preds = %19, %14
  %22 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 @fputs(i8* noundef %22, %struct._IO_FILE* noundef %23) #10
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %25)
  br label %26

26:                                               ; preds = %21, %19
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 0) #7
  br label %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getfenv(%struct.lua_State* noundef %0) #0 {
  call void @lua_getfenv(%struct.lua_State* noundef %0, i32 noundef 1) #7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_gethook(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [5 x i8], align 1
  %4 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %0, i32* noundef nonnull %2)
  %5 = call i32 @lua_gethookmask(%struct.lua_State* noundef %4) #7
  %6 = call void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* noundef %4) #7
  %.not = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %6, null
  br i1 %.not, label %9, label %7

7:                                                ; preds = %1
  %.not1 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %6, @hookf
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %7
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 noundef 13) #7
  br label %11

9:                                                ; preds = %7, %1
  call void @gethooktable(%struct.lua_State* noundef %0)
  %10 = bitcast %struct.lua_State* %4 to i8*
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %0, i8* noundef %10) #7
  call void @lua_rawget(%struct.lua_State* noundef %0, i32 noundef -2) #7
  call void @lua_remove(%struct.lua_State* noundef %0, i32 noundef -2) #7
  br label %11

11:                                               ; preds = %9, %8
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %13 = call i8* @unmakemask(i32 noundef %5, i8* noundef nonnull %12)
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef nonnull %12) #7
  %14 = call i32 @lua_gethookcount(%struct.lua_State* noundef %4) #7
  %15 = sext i32 %14 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %15) #7
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getinfo(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %0, i32* noundef nonnull %3)
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 2
  %7 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef %6, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64* noundef null) #7
  %8 = add nsw i32 %5, 1
  %9 = call i32 @lua_isnumber(%struct.lua_State* noundef %0, i32 noundef %8) #7
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %18, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i64 @lua_tointeger(%struct.lua_State* noundef %0, i32 noundef %12) #7
  %14 = trunc i64 %13 to i32
  %15 = call i32 @lua_getstack(%struct.lua_State* noundef %4, i32 noundef %14, %struct.lua_Debug* noundef nonnull %2) #7
  %.not9 = icmp eq i32 %15, 0
  br i1 %.not9, label %16, label %17

16:                                               ; preds = %10
  call void @lua_pushnil(%struct.lua_State* noundef %0) #7
  br label %75

17:                                               ; preds = %10
  br label %33

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef %20) #7
  %22 = icmp eq i32 %21, 6
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* noundef %7) #7
  %25 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #7
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef %27) #7
  call void @lua_xmove(%struct.lua_State* noundef %0, %struct.lua_State* noundef %4, i32 noundef 1) #7
  br label %32

28:                                               ; preds = %18
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef %30, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0)) #7
  br label %75

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %17
  %.01 = phi i8* [ %7, %17 ], [ %25, %32 ]
  %34 = call i32 @lua_getinfo(%struct.lua_State* noundef %4, i8* noundef %.01, %struct.lua_Debug* noundef nonnull %2) #7
  %.not2 = icmp eq i32 %34, 0
  br i1 %.not2, label %35, label %39

35:                                               ; preds = %33
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 2
  %38 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef %37, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0)) #7
  br label %75

39:                                               ; preds = %33
  call void @lua_createtable(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 2) #7
  %40 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.01, i32 noundef 83) #9
  %.not3 = icmp eq i8* %40, null
  br i1 %.not3, label %51, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 4
  %43 = load i8*, i8** %42, align 8
  call void @settabss(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* noundef %43)
  %44 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0
  call void @settabss(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* noundef nonnull %44)
  %45 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 7
  %46 = load i32, i32* %45, align 8
  call void @settabsi(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 noundef %46)
  %47 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 8
  %48 = load i32, i32* %47, align 4
  call void @settabsi(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32 noundef %48)
  %49 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 3
  %50 = load i8*, i8** %49, align 8
  call void @settabss(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8* noundef %50)
  br label %51

51:                                               ; preds = %41, %39
  %52 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.01, i32 noundef 108) #9
  %.not4 = icmp eq i8* %52, null
  br i1 %.not4, label %56, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  %55 = load i32, i32* %54, align 8
  call void @settabsi(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 noundef %55)
  br label %56

56:                                               ; preds = %53, %51
  %57 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.01, i32 noundef 117) #9
  %.not5 = icmp eq i8* %57, null
  br i1 %.not5, label %61, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 6
  %60 = load i32, i32* %59, align 4
  call void @settabsi(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 noundef %60)
  br label %61

61:                                               ; preds = %58, %56
  %62 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.01, i32 noundef 110) #9
  %.not6 = icmp eq i8* %62, null
  br i1 %.not6, label %68, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %65 = load i8*, i8** %64, align 8
  call void @settabss(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef %65)
  %66 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 2
  %67 = load i8*, i8** %66, align 8
  call void @settabss(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8* noundef %67)
  br label %68

68:                                               ; preds = %63, %61
  %69 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.01, i32 noundef 76) #9
  %.not7 = icmp eq i8* %69, null
  br i1 %.not7, label %71, label %70

70:                                               ; preds = %68
  call void @treatstackoption(%struct.lua_State* noundef %0, %struct.lua_State* noundef %4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0))
  br label %71

71:                                               ; preds = %70, %68
  %72 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.01, i32 noundef 102) #9
  %.not8 = icmp eq i8* %72, null
  br i1 %.not8, label %74, label %73

73:                                               ; preds = %71
  call void @treatstackoption(%struct.lua_State* noundef %0, %struct.lua_State* noundef %4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  br label %74

74:                                               ; preds = %73, %71
  br label %75

75:                                               ; preds = %74, %35, %28, %16
  %.0 = phi i32 [ 1, %74 ], [ %38, %35 ], [ 1, %16 ], [ %31, %28 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getlocal(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_Debug, align 8
  %4 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %0, i32* noundef nonnull %2)
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 1
  %7 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef %6) #7
  %8 = trunc i64 %7 to i32
  %9 = call i32 @lua_getstack(%struct.lua_State* noundef %4, i32 noundef %8, %struct.lua_Debug* noundef nonnull %3) #7
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef %12, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 2
  %17 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef %16) #7
  %18 = trunc i64 %17 to i32
  %19 = call i8* @lua_getlocal(%struct.lua_State* noundef %4, %struct.lua_Debug* noundef nonnull %3, i32 noundef %18) #7
  %.not1 = icmp eq i8* %19, null
  br i1 %.not1, label %21, label %20

20:                                               ; preds = %14
  call void @lua_xmove(%struct.lua_State* noundef %4, %struct.lua_State* noundef %0, i32 noundef 1) #7
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef nonnull %19) #7
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -2) #7
  br label %22

21:                                               ; preds = %14
  call void @lua_pushnil(%struct.lua_State* noundef %0) #7
  br label %22

22:                                               ; preds = %21, %20, %10
  %.0 = phi i32 [ 2, %20 ], [ 1, %21 ], [ %13, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getregistry(%struct.lua_State* noundef %0) #0 {
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -10000) #7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getmetatable(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 1) #7
  %2 = call i32 @lua_getmetatable(%struct.lua_State* noundef %0, i32 noundef 1) #7
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %1
  call void @lua_pushnil(%struct.lua_State* noundef %0) #7
  br label %4

4:                                                ; preds = %3, %1
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_getupvalue(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @auxupvalue(%struct.lua_State* noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_setfenv(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 5) #7
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 2) #7
  %2 = call i32 @lua_setfenv(%struct.lua_State* noundef %0, i32 noundef 1) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.40, i64 0, i64 0)) #7
  br label %6

6:                                                ; preds = %4, %1
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_sethook(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %0, i32* noundef nonnull %2)
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, 1
  %6 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef %5) #7
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef %10) #7
  br label %20

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %12, 2
  %14 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef %13, i64* noundef null) #7
  %15 = add nsw i32 %12, 1
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef %15, i32 noundef 6) #7
  %16 = add nsw i32 %12, 3
  %17 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef %16, i64 noundef 0) #7
  %18 = trunc i64 %17 to i32
  %19 = call i32 @makemask(i8* noundef %14, i32 noundef %18)
  br label %20

20:                                               ; preds = %11, %8
  %.02 = phi i32 [ 0, %8 ], [ %18, %11 ]
  %.01 = phi i32 [ 0, %8 ], [ %19, %11 ]
  %.0 = phi void (%struct.lua_State*, %struct.lua_Debug*)* [ null, %8 ], [ @hookf, %11 ]
  call void @gethooktable(%struct.lua_State* noundef %0)
  %21 = bitcast %struct.lua_State* %3 to i8*
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %0, i8* noundef %21) #7
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef %23) #7
  call void @lua_rawset(%struct.lua_State* noundef %0, i32 noundef -3) #7
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #7
  %24 = call i32 @lua_sethook(%struct.lua_State* noundef %3, void (%struct.lua_State*, %struct.lua_Debug*)* noundef %.0, i32 noundef %.01, i32 noundef %.02) #7
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_setlocal(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_Debug, align 8
  %4 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %0, i32* noundef nonnull %2)
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 1
  %7 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef %6) #7
  %8 = trunc i64 %7 to i32
  %9 = call i32 @lua_getstack(%struct.lua_State* noundef %4, i32 noundef %8, %struct.lua_Debug* noundef nonnull %3) #7
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef %12, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i64 0, i64 0)) #7
  br label %22

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 3
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef %16) #7
  %17 = add nsw i32 %15, 3
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef %17) #7
  call void @lua_xmove(%struct.lua_State* noundef %0, %struct.lua_State* noundef %4, i32 noundef 1) #7
  %18 = add nsw i32 %15, 2
  %19 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef %18) #7
  %20 = trunc i64 %19 to i32
  %21 = call i8* @lua_setlocal(%struct.lua_State* noundef %4, %struct.lua_Debug* noundef nonnull %3, i32 noundef %20) #7
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %21) #7
  br label %22

22:                                               ; preds = %14, %10
  %.0 = phi i32 [ 1, %14 ], [ %13, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_setmetatable(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 2) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %2, 5
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0)) #7
  br label %8

8:                                                ; preds = %6, %4, %1
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 2) #7
  %9 = call i32 @lua_setmetatable(%struct.lua_State* noundef %0, i32 noundef 1) #7
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef %9) #7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_setupvalue(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 3) #7
  %2 = call i32 @auxupvalue(%struct.lua_State* noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @db_errorfb(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_Debug, align 8
  %4 = call %struct.lua_State* @getthread(%struct.lua_State* noundef %0, i32* noundef nonnull %2)
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 2
  %7 = call i32 @lua_isnumber(%struct.lua_State* noundef %0, i32 noundef %6) #7
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 2
  %11 = call i64 @lua_tointeger(%struct.lua_State* noundef %0, i32 noundef %10) #7
  %12 = trunc i64 %11 to i32
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #7
  br label %16

13:                                               ; preds = %1
  %14 = icmp eq %struct.lua_State* %4, %0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %13, %8
  %.02 = phi i32 [ %12, %8 ], [ %15, %13 ]
  %17 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #7
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i64 0, i64 0), i64 noundef 0) #7
  br label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @lua_isstring(%struct.lua_State* noundef %0, i32 noundef %23) #7
  %.not4 = icmp eq i32 %24, 0
  br i1 %.not4, label %25, label %26

25:                                               ; preds = %21
  br label %99

26:                                               ; preds = %21
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i64 noundef 1) #7
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27, %20
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i64 noundef 16) #7
  br label %.outer

.outer:                                           ; preds = %46, %28
  %.1.ph = phi i32 [ %.3, %46 ], [ %.02, %28 ]
  %.not7 = phi i1 [ true, %46 ], [ false, %28 ]
  br label %29

29:                                               ; preds = %.outer, %91
  %.1 = phi i32 [ %30, %91 ], [ %.1.ph, %.outer ]
  %30 = add nsw i32 %.1, 1
  %31 = call i32 @lua_getstack(%struct.lua_State* noundef %4, i32 noundef %.1, %struct.lua_Debug* noundef nonnull %3) #7
  %.not5 = icmp eq i32 %31, 0
  br i1 %.not5, label %95, label %32

32:                                               ; preds = %29
  %33 = icmp sgt i32 %.1, 11
  br i1 %33, label %34, label %47

34:                                               ; preds = %32
  br i1 %.not7, label %47, label %35

35:                                               ; preds = %34
  %36 = add nsw i32 %.1, 11
  %37 = call i32 @lua_getstack(%struct.lua_State* noundef %4, i32 noundef %36, %struct.lua_Debug* noundef nonnull %3) #7
  %.not8 = icmp eq i32 %37, 0
  br i1 %.not8, label %38, label %39

38:                                               ; preds = %35
  br label %46

39:                                               ; preds = %35
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i64 noundef 5) #7
  br label %40

40:                                               ; preds = %43, %39
  %.2 = phi i32 [ %30, %39 ], [ %44, %43 ]
  %41 = add nsw i32 %.2, 10
  %42 = call i32 @lua_getstack(%struct.lua_State* noundef %4, i32 noundef %41, %struct.lua_Debug* noundef nonnull %3) #7
  %.not9 = icmp eq i32 %42, 0
  br i1 %.not9, label %45, label %43

43:                                               ; preds = %40
  %44 = add nsw i32 %.2, 1
  br label %40, !llvm.loop !4

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %38
  %.3 = phi i32 [ %.2, %45 ], [ %.1, %38 ]
  br label %.outer, !llvm.loop !6

47:                                               ; preds = %34, %32
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i64 noundef 2) #7
  %48 = call i32 @lua_getinfo(%struct.lua_State* noundef %4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), %struct.lua_Debug* noundef nonnull %3) #7
  %49 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 9, i64 0
  %50 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i8* noundef nonnull %49) #7
  %51 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i32 noundef %56) #7
  br label %58

58:                                               ; preds = %54, %47
  %59 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %.not6 = icmp eq i8 %61, 0
  br i1 %.not6, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0), i8* noundef %64) #7
  br label %91

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp eq i8 %69, 109
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0)) #7
  br label %90

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp eq i8 %76, 67
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp eq i8 %81, 116
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %73
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i64 noundef 2) #7
  br label %89

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 9, i64 0
  %86 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i8* noundef nonnull %85, i32 noundef %87) #7
  br label %89

89:                                               ; preds = %84, %83
  br label %90

90:                                               ; preds = %89, %71
  br label %91

91:                                               ; preds = %90, %62
  %92 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #7
  %93 = load i32, i32* %2, align 4
  %94 = sub nsw i32 %92, %93
  call void @lua_concat(%struct.lua_State* noundef %0, i32 noundef %94) #7
  br label %29, !llvm.loop !6

95:                                               ; preds = %29
  %96 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #7
  %97 = load i32, i32* %2, align 4
  %98 = sub nsw i32 %96, %97
  call void @lua_concat(%struct.lua_State* noundef %0, i32 noundef %98) #7
  br label %99

99:                                               ; preds = %95, %25
  ret i32 1
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @luaL_loadbuffer(%struct.lua_State* noundef, i8* noundef, i64 noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @lua_pcall(%struct.lua_State* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_getfenv(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.lua_State* @getthread(%struct.lua_State* noundef %0, i32* nocapture noundef writeonly %1) #0 {
  %3 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #7
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  store i32 1, i32* %1, align 4
  %6 = call %struct.lua_State* @lua_tothread(%struct.lua_State* noundef %0, i32 noundef 1) #7
  br label %8

7:                                                ; preds = %2
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %5
  %.0 = phi %struct.lua_State* [ %6, %5 ], [ %0, %7 ]
  ret %struct.lua_State* %.0
}

declare dso_local i32 @lua_gethookmask(%struct.lua_State* noundef) #1

declare dso_local void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @hookf(%struct.lua_State* noundef %0, %struct.lua_Debug* nocapture noundef readonly %1) #0 {
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %0, i8* noundef nonnull @KEY_HOOK) #7
  call void @lua_rawget(%struct.lua_State* noundef %0, i32 noundef -10000) #7
  %3 = bitcast %struct.lua_State* %0 to i8*
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %0, i8* noundef %3) #7
  call void @lua_rawget(%struct.lua_State* noundef %0, i32 noundef -2) #7
  %4 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #7
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [5 x i8*], [5 x i8*]* @hookf.hooknames, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %11) #7
  %12 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %18) #7
  br label %20

19:                                               ; preds = %6
  call void @lua_pushnil(%struct.lua_State* noundef %0) #7
  br label %20

20:                                               ; preds = %19, %15
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 0) #7
  br label %21

21:                                               ; preds = %20, %2
  ret void
}

declare dso_local void @lua_pushlstring(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @gethooktable(%struct.lua_State* noundef %0) #0 {
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %0, i8* noundef nonnull @KEY_HOOK) #7
  call void @lua_rawget(%struct.lua_State* noundef %0, i32 noundef -10000) #7
  %2 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #7
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #7
  call void @lua_createtable(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 1) #7
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %0, i8* noundef nonnull @KEY_HOOK) #7
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -2) #7
  call void @lua_rawset(%struct.lua_State* noundef %0, i32 noundef -10000) #7
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

declare dso_local void @lua_pushlightuserdata(%struct.lua_State* noundef, i8* noundef) #1

declare dso_local void @lua_rawget(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_remove(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushstring(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i8* @unmakemask(i32 noundef %0, i8* noundef returned writeonly %1) #3 {
  %3 = and i32 %0, 1
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  store i8 99, i8* %1, align 1
  br label %5

5:                                                ; preds = %4, %2
  %.0 = phi i32 [ 1, %4 ], [ 0, %2 ]
  %6 = and i32 %0, 2
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %11, label %7

7:                                                ; preds = %5
  %8 = add nuw nsw i32 %.0, 1
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds i8, i8* %1, i64 %9
  store i8 114, i8* %10, align 1
  br label %11

11:                                               ; preds = %7, %5
  %.1 = phi i32 [ %8, %7 ], [ %.0, %5 ]
  %12 = and i32 %0, 4
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %17, label %13

13:                                               ; preds = %11
  %14 = add nsw i32 %.1, 1
  %15 = sext i32 %.1 to i64
  %16 = getelementptr inbounds i8, i8* %1, i64 %15
  store i8 108, i8* %16, align 1
  br label %17

17:                                               ; preds = %13, %11
  %.2 = phi i32 [ %14, %13 ], [ %.1, %11 ]
  %18 = sext i32 %.2 to i64
  %19 = getelementptr inbounds i8, i8* %1, i64 %18
  store i8 0, i8* %19, align 1
  ret i8* %1
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

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @settabss(%struct.lua_State* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %2) #7
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @settabsi(%struct.lua_State* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = sext i32 %2 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %4) #7
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @treatstackoption(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1, i8* noundef %2) #0 {
  %4 = icmp eq %struct.lua_State* %0, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -2) #7
  call void @lua_remove(%struct.lua_State* noundef %0, i32 noundef -3) #7
  br label %7

6:                                                ; preds = %3
  call void @lua_xmove(%struct.lua_State* noundef %1, %struct.lua_State* noundef %0, i32 noundef 1) #7
  br label %7

7:                                                ; preds = %6, %5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef %2) #7
  ret void
}

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @luaL_checkinteger(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @lua_getlocal(%struct.lua_State* noundef, %struct.lua_Debug* noundef, i32 noundef) #1

declare dso_local void @luaL_checkany(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_getmetatable(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @auxupvalue(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 2) #7
  %4 = trunc i64 %3 to i32
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 6) #7
  %5 = call i32 @lua_iscfunction(%struct.lua_State* noundef %0, i32 noundef 1) #7
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  br label %19

7:                                                ; preds = %2
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %10, label %8

8:                                                ; preds = %7
  %9 = call i8* @lua_getupvalue(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %4) #7
  br label %12

10:                                               ; preds = %7
  %11 = call i8* @lua_setupvalue(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %4) #7
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i8* [ %9, %8 ], [ %11, %10 ]
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %19

16:                                               ; preds = %12
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef nonnull %13) #7
  %17 = xor i32 %1, -1
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef %17) #7
  %18 = add nsw i32 %1, 1
  br label %19

19:                                               ; preds = %16, %15, %6
  %.0 = phi i32 [ 0, %6 ], [ 0, %15 ], [ %18, %16 ]
  ret i32 %.0
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

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i32 @makemask(i8* noundef readonly %0, i32 noundef %1) #4 {
  %3 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 99) #9
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %2
  %.0 = phi i32 [ 1, %4 ], [ 0, %2 ]
  %6 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 114) #9
  %.not1 = icmp eq i8* %6, null
  br i1 %.not1, label %9, label %7

7:                                                ; preds = %5
  %8 = or i32 %.0, 2
  br label %9

9:                                                ; preds = %7, %5
  %.1 = phi i32 [ %8, %7 ], [ %.0, %5 ]
  %10 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 108) #9
  %.not2 = icmp eq i8* %10, null
  br i1 %.not2, label %13, label %11

11:                                               ; preds = %9
  %12 = or i32 %.1, 4
  br label %13

13:                                               ; preds = %11, %9
  %.2 = phi i32 [ %12, %11 ], [ %.1, %9 ]
  %14 = icmp sgt i32 %1, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = or i32 %.2, 8
  br label %17

17:                                               ; preds = %15, %13
  %.3 = phi i32 [ %16, %15 ], [ %.2, %13 ]
  ret i32 %.3
}

declare dso_local i32 @lua_sethook(%struct.lua_State* noundef, void (%struct.lua_State*, %struct.lua_Debug*)* noundef, i32 noundef, i32 noundef) #1

declare dso_local i8* @lua_setlocal(%struct.lua_State* noundef, %struct.lua_Debug* noundef, i32 noundef) #1

declare dso_local void @lua_pushboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_setmetatable(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

declare dso_local i32 @lua_isstring(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_concat(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
