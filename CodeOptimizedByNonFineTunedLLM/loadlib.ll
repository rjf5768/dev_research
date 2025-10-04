; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/loadlib.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/loadlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [9 x i8] c"_LOADLIB\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@pk_funcs = internal constant [3 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_loadlib }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_seeall }, %struct.luaL_Reg zeroinitializer], align 16
@loaders = internal constant [5 x i32 (%struct.lua_State*)*] [i32 (%struct.lua_State*)* @loader_preload, i32 (%struct.lua_State*)* @loader_Lua, i32 (%struct.lua_State*)* @loader_C, i32 (%struct.lua_State*)* @loader_Croot, i32 (%struct.lua_State*)* null], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"loaders\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"LUA_PATH\00", align 1
@.str.6 = private unnamed_addr constant [138 x i8] c"./?.lua;/usr/local/share/lua/5.1/?.lua;/usr/local/share/lua/5.1/?/init.lua;/usr/local/lib/lua/5.1/?.lua;/usr/local/lib/lua/5.1/?/init.lua\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"cpath\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"LUA_CPATH\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"./?.so;/usr/local/lib/lua/5.1/?.so;/usr/local/lib/lua/5.1/loadall.so\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"/\0A;\0A?\0A!\0A-\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@ll_funcs = internal constant [3 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_module }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_require }, %struct.luaL_Reg zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [8 x i8] c"loadlib\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"seeall\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"LOADLIB: \00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"dynamic libraries not enabled; check your Lua installation\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"'package.preload' must be a table\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\0A\09no field package.preload['%s']\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"'package.%s' must be a string\00", align 1
@.str.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"\0A\09no file '%s'\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"error loading module '%s' from file '%s':\0A\09%s\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"luaopen_%s\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"\0A\09no module '%s' in file '%s'\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c";\01;\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"name conflict for module '%s'\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"_NAME\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"_M\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"_PACKAGE\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"'module' not called from a Lua function\00", align 1
@sentinel_ = internal constant i32 0, align 4
@.str.49 = private unnamed_addr constant [43 x i8] c"loop or previous error loading module '%s'\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"'package.loaders' must be a table\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"module '%s' not found:%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @luaopen_package(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @luaL_newmetatable(%struct.lua_State* noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %6, i32 (%struct.lua_State*)* noundef @gctm, i32 noundef 0)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %7, i32 noundef -2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_register(%struct.lua_State* noundef %8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @pk_funcs, i64 0, i64 0))
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %9, i32 noundef -1)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_replace(%struct.lua_State* noundef %10, i32 noundef -10001)
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* noundef %11, i32 noundef 0, i32 noundef 4)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [5 x i32 (%struct.lua_State*)*], [5 x i32 (%struct.lua_State*)*]* @loaders, i64 0, i64 %14
  %16 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %15, align 8
  %17 = icmp ne i32 (%struct.lua_State*)* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [5 x i32 (%struct.lua_State*)*], [5 x i32 (%struct.lua_State*)*]* @loaders, i64 0, i64 %21
  %23 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %22, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %19, i32 (%struct.lua_State*)* noundef %23, i32 noundef 0)
  %24 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  call void @lua_rawseti(%struct.lua_State* noundef %24, i32 noundef -2, i32 noundef %26)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12, !llvm.loop !4

30:                                               ; preds = %12
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %31, i32 noundef -2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @setpath(%struct.lua_State* noundef %32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([138 x i8], [138 x i8]* @.str.6, i64 0, i64 0))
  %33 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @setpath(%struct.lua_State* noundef %33, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0))
  %34 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %34, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 noundef 9)
  %35 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %35, i32 noundef -2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %37 = call i8* @luaL_findtable(%struct.lua_State* noundef %36, i32 noundef -10000, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 2)
  %38 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %38, i32 noundef -2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %39 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* noundef %39, i32 noundef 0, i32 noundef 0)
  %40 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %40, i32 noundef -2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %41 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %41, i32 noundef -10002)
  %42 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_register(%struct.lua_State* noundef %42, i8* noundef null, %struct.luaL_Reg* noundef getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @ll_funcs, i64 0, i64 0))
  %43 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %43, i32 noundef -2)
  ret i32 1
}

declare dso_local i32 @luaL_newmetatable(%struct.lua_State* noundef, i8* noundef) #1

declare dso_local void @lua_pushcclosure(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @gctm(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checkudata(%struct.lua_State* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = bitcast i8* %5 to i8**
  store i8** %6, i8*** %3, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  call void @ll_unloadlib(i8* noundef %12)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i8**, i8*** %3, align 8
  store i8* null, i8** %14, align 8
  ret i32 0
}

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

declare dso_local void @lua_pushvalue(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_replace(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_createtable(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_rawseti(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @setpath(%struct.lua_State* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i8* @getenv(i8* noundef %10) #4
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = load i8*, i8** %8, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %15, i8* noundef %16)
  br label %26

17:                                               ; preds = %4
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i8* @luaL_gsub(%struct.lua_State* noundef %18, i8* noundef %19, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  store i8* %20, i8** %9, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i8* @luaL_gsub(%struct.lua_State* noundef %21, i8* noundef %22, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i8* noundef %23)
  %25 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_remove(%struct.lua_State* noundef %25, i32 noundef -2)
  br label %26

26:                                               ; preds = %17, %14
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %28 = load i8*, i8** %6, align 8
  call void @lua_setfield(%struct.lua_State* noundef %27, i32 noundef -2, i8* noundef %28)
  ret void
}

declare dso_local void @lua_pushlstring(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

declare dso_local i8* @luaL_findtable(%struct.lua_State* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @luaL_checkudata(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @ll_unloadlib(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ll_loadlib(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i8* @luaL_checklstring(%struct.lua_State* noundef %7, i32 noundef 1, i64* noundef null)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i8* @luaL_checklstring(%struct.lua_State* noundef %9, i32 noundef 2, i64* noundef null)
  store i8* %10, i8** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @ll_loadfunc(%struct.lua_State* noundef %11, i8* noundef %12, i8* noundef %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %19)
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_insert(%struct.lua_State* noundef %20, i32 noundef -2)
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)
  call void @lua_pushstring(%struct.lua_State* noundef %21, i8* noundef %25)
  store i32 3, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ll_seeall(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %3, i32 noundef 1, i32 noundef 5)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_getmetatable(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* noundef %8, i32 noundef 0, i32 noundef 1)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %9, i32 noundef -1)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call i32 @lua_setmetatable(%struct.lua_State* noundef %10, i32 noundef 1)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %13, i32 noundef -10002)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %14, i32 noundef -2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0))
  ret i32 0
}

declare dso_local i8* @luaL_checklstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ll_loadfunc(%struct.lua_State* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8** @ll_register(%struct.lua_State* noundef %10, i8* noundef %11)
  store i8** %12, i8*** %8, align 8
  %13 = load i8**, i8*** %8, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i8* @ll_load(%struct.lua_State* noundef %17, i8* noundef %18)
  %20 = load i8**, i8*** %8, align 8
  store i8* %19, i8** %20, align 8
  br label %21

21:                                               ; preds = %16, %3
  %22 = load i8**, i8*** %8, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %38

26:                                               ; preds = %21
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 (%struct.lua_State*)* @ll_sym(%struct.lua_State* noundef %27, i8* noundef %29, i8* noundef %30)
  store i32 (%struct.lua_State*)* %31, i32 (%struct.lua_State*)** %9, align 8
  %32 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %9, align 8
  %33 = icmp eq i32 (%struct.lua_State*)* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 2, i32* %4, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %37 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %9, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %36, i32 (%struct.lua_State*)* noundef %37, i32 noundef 0)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %34, %25
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local void @lua_pushnil(%struct.lua_State* noundef) #1

declare dso_local void @lua_insert(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushstring(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8** @ll_register(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* noundef %7)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_gettable(%struct.lua_State* noundef %9, i32 noundef -10000)
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i32 @lua_type(%struct.lua_State* noundef %10, i32 noundef -1)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i8* @lua_touserdata(%struct.lua_State* noundef %14, i32 noundef -1)
  %16 = bitcast i8* %15 to i8**
  store i8** %16, i8*** %5, align 8
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %18, i32 noundef -2)
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = call i8* @lua_newuserdata(%struct.lua_State* noundef %19, i64 noundef 8)
  %21 = bitcast i8* %20 to i8**
  store i8** %21, i8*** %5, align 8
  %22 = load i8**, i8*** %5, align 8
  store i8* null, i8** %22, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %23, i32 noundef -10000, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = call i32 @lua_setmetatable(%struct.lua_State* noundef %24, i32 noundef -2)
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %26, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* noundef %27)
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %29, i32 noundef -2)
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settable(%struct.lua_State* noundef %30, i32 noundef -10000)
  br label %31

31:                                               ; preds = %17, %13
  %32 = load i8**, i8*** %5, align 8
  ret i8** %32
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @ll_load(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %6, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i64 noundef 58)
  ret i8* null
}

; Function Attrs: noinline nounwind uwtable
define internal i32 (%struct.lua_State*)* @ll_sym(%struct.lua_State* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %9, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i64 noundef 58)
  ret i32 (%struct.lua_State*)* null
}

declare dso_local i8* @lua_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local void @lua_gettable(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_type(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @lua_touserdata(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @lua_newuserdata(%struct.lua_State* noundef, i64 noundef) #1

declare dso_local void @lua_getfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @lua_setmetatable(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_settable(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @luaL_checktype(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_getmetatable(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @loader_preload(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checklstring(%struct.lua_State* noundef %4, i32 noundef 1, i64* noundef null)
  store i8* %5, i8** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_getfield(%struct.lua_State* noundef %6, i32 noundef -10001, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @lua_type(%struct.lua_State* noundef %7, i32 noundef -1)
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %11, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = load i8*, i8** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %14, i32 noundef -1, i8* noundef %15)
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = call i32 @lua_type(%struct.lua_State* noundef %16, i32 noundef -1)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %20, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i8* noundef %21)
  br label %23

23:                                               ; preds = %19, %13
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @loader_Lua(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* noundef %6, i32 noundef 1, i64* noundef null)
  store i8* %7, i8** %5, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @findfile(%struct.lua_State* noundef %8, i8* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @luaL_loadfile(%struct.lua_State* noundef %15, i8* noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = load i8*, i8** %4, align 8
  call void @loaderror(%struct.lua_State* noundef %20, i8* noundef %21)
  br label %22

22:                                               ; preds = %19, %14
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @loader_C(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i8* @luaL_checklstring(%struct.lua_State* noundef %7, i32 noundef 1, i64* noundef null)
  store i8* %8, i8** %5, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @findfile(%struct.lua_State* noundef %9, i8* noundef %10, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %28

15:                                               ; preds = %1
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @mkfuncname(%struct.lua_State* noundef %16, i8* noundef %17)
  store i8* %18, i8** %4, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @ll_loadfunc(%struct.lua_State* noundef %19, i8* noundef %20, i8* noundef %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load i8*, i8** %6, align 8
  call void @loaderror(%struct.lua_State* noundef %25, i8* noundef %26)
  br label %27

27:                                               ; preds = %24, %15
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @loader_Croot(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i8* @luaL_checklstring(%struct.lua_State* noundef %9, i32 noundef 1, i64* noundef null)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @strchr(i8* noundef %11, i32 noundef 46) #5
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  call void @lua_pushlstring(%struct.lua_State* noundef %17, i8* noundef %18, i64 noundef %23)
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = call i8* @lua_tolstring(%struct.lua_State* noundef %25, i32 noundef -1, i64* noundef null)
  %27 = call i8* @findfile(%struct.lua_State* noundef %24, i8* noundef %26, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %52

31:                                               ; preds = %16
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i8* @mkfuncname(%struct.lua_State* noundef %32, i8* noundef %33)
  store i8* %34, i8** %4, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @ll_loadfunc(%struct.lua_State* noundef %35, i8* noundef %36, i8* noundef %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = load i8*, i8** %5, align 8
  call void @loaderror(%struct.lua_State* noundef %44, i8* noundef %45)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %47, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i8* noundef %48, i8* noundef %49)
  store i32 1, i32* %2, align 4
  br label %52

51:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %46, %30, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @findfile(%struct.lua_State* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i8* @luaL_gsub(%struct.lua_State* noundef %10, i8* noundef %11, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  store i8* %12, i8** %6, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load i8*, i8** %7, align 8
  call void @lua_getfield(%struct.lua_State* noundef %13, i32 noundef -10001, i8* noundef %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = call i8* @lua_tolstring(%struct.lua_State* noundef %15, i32 noundef -1, i64* noundef null)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %20, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i8* noundef %21)
  br label %23

23:                                               ; preds = %19, %3
  %24 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %24, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i64 noundef 0)
  br label %25

25:                                               ; preds = %42, %23
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @pushnexttemplate(%struct.lua_State* noundef %26, i8* noundef %27)
  store i8* %28, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %33 = call i8* @lua_tolstring(%struct.lua_State* noundef %32, i32 noundef -1, i64* noundef null)
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @luaL_gsub(%struct.lua_State* noundef %31, i8* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* noundef %34)
  store i8* %35, i8** %9, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_remove(%struct.lua_State* noundef %36, i32 noundef -2)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @readable(i8* noundef %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %4, align 8
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* noundef %44)
  %46 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_remove(%struct.lua_State* noundef %46, i32 noundef -2)
  %47 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_concat(%struct.lua_State* noundef %47, i32 noundef 2)
  br label %25, !llvm.loop !6

48:                                               ; preds = %25
  store i8* null, i8** %4, align 8
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i8*, i8** %4, align 8
  ret i8* %50
}

declare dso_local i32 @luaL_loadfile(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @loaderror(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i8* @lua_tolstring(%struct.lua_State* noundef %6, i32 noundef 1, i64* noundef null)
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i8* @lua_tolstring(%struct.lua_State* noundef %9, i32 noundef -1, i64* noundef null)
  %11 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %5, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* noundef %7, i8* noundef %8, i8* noundef %10)
  ret void
}

declare dso_local i8* @luaL_gsub(%struct.lua_State* noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @pushnexttemplate(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %7

7:                                                ; preds = %14, %2
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  br label %7, !llvm.loop !7

17:                                               ; preds = %7
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* null, i8** %3, align 8
  br label %44

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), align 1
  %26 = sext i8 %25 to i32
  %27 = call i8* @strchr(i8* noundef %24, i32 noundef %26) #5
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strlen(i8* noundef %32) #5
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  call void @lua_pushlstring(%struct.lua_State* noundef %36, i8* noundef %37, i64 noundef %42)
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %35, %22
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local void @lua_remove(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @readable(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  store %struct._IO_FILE* %6, %struct._IO_FILE** %4, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %12 = call i32 @fclose(%struct._IO_FILE* noundef %11)
  store i32 1, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %9
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local void @lua_concat(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @mkfuncname(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), align 1
  %9 = sext i8 %8 to i32
  %10 = call i8* @strchr(i8* noundef %7, i32 noundef %9) #5
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %4, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @luaL_gsub(%struct.lua_State* noundef %17, i8* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  store i8* %19, i8** %5, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* noundef %21)
  store i8* %22, i8** %5, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_remove(%struct.lua_State* noundef %23, i32 noundef -2)
  %24 = load i8*, i8** %5, align 8
  ret i8* %24
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @ll_module(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* noundef %6, i32 noundef 1, i64* noundef null)
  store i8* %7, i8** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_gettop(%struct.lua_State* noundef %8)
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %11, i32 noundef -10000, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  call void @lua_getfield(%struct.lua_State* noundef %12, i32 noundef %13, i8* noundef %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = call i32 @lua_type(%struct.lua_State* noundef %15, i32 noundef -1)
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %33, label %18

18:                                               ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %19, i32 noundef -2)
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @luaL_findtable(%struct.lua_State* noundef %20, i32 noundef -10002, i8* noundef %21, i32 noundef 1)
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %25, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i8* noundef %26)
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %18
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %29, i32 noundef -1)
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i8*, i8** %4, align 8
  call void @lua_setfield(%struct.lua_State* noundef %30, i32 noundef %31, i8* noundef %32)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %34, i32 noundef -1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = call i32 @lua_type(%struct.lua_State* noundef %35, i32 noundef -1)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %39, i32 noundef -2)
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %41, i32 noundef -2)
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = load i8*, i8** %4, align 8
  call void @modinit(%struct.lua_State* noundef %42, i8* noundef %43)
  br label %44

44:                                               ; preds = %40, %38
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %45, i32 noundef -1)
  %46 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @setfenv(%struct.lua_State* noundef %46)
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %48, 1
  call void @dooptions(%struct.lua_State* noundef %47, i32 noundef %49)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %24
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ll_require(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* noundef %6, i32 noundef 1, i64* noundef null)
  store i8* %7, i8** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %8, i32 noundef 1)
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %9, i32 noundef -10000, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i8*, i8** %4, align 8
  call void @lua_getfield(%struct.lua_State* noundef %10, i32 noundef 2, i8* noundef %11)
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i32 @lua_toboolean(%struct.lua_State* noundef %12, i32 noundef -1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i8* @lua_touserdata(%struct.lua_State* noundef %16, i32 noundef -1)
  %18 = icmp eq i8* %17, bitcast (i32* @sentinel_ to i8*)
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %20, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0), i8* noundef %21)
  br label %23

23:                                               ; preds = %19, %15
  store i32 1, i32* %2, align 4
  br label %92

24:                                               ; preds = %1
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %25, i32 noundef -10001, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = call i32 @lua_type(%struct.lua_State* noundef %26, i32 noundef -1)
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %30, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %33, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i64 noundef 0)
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %64, %32
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load i32, i32* %5, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %35, i32 noundef -2, i32 noundef %36)
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = call i32 @lua_type(%struct.lua_State* noundef %37, i32 noundef -1)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %44 = call i8* @lua_tolstring(%struct.lua_State* noundef %43, i32 noundef -2, i64* noundef null)
  %45 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %41, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i8* noundef %42, i8* noundef %44)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = load i8*, i8** %4, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %47, i8* noundef %48)
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_call(%struct.lua_State* noundef %49, i32 noundef 1, i32 noundef 1)
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = call i32 @lua_type(%struct.lua_State* noundef %50, i32 noundef -1)
  %52 = icmp eq i32 %51, 6
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %67

54:                                               ; preds = %46
  %55 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %56 = call i32 @lua_isstring(%struct.lua_State* noundef %55, i32 noundef -1)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_concat(%struct.lua_State* noundef %59, i32 noundef 2)
  br label %62

60:                                               ; preds = %54
  %61 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %61, i32 noundef -2)
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %34

67:                                               ; preds = %53
  %68 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %68, i8* noundef bitcast (i32* @sentinel_ to i8*))
  %69 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %70 = load i8*, i8** %4, align 8
  call void @lua_setfield(%struct.lua_State* noundef %69, i32 noundef 2, i8* noundef %70)
  %71 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %72 = load i8*, i8** %4, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %71, i8* noundef %72)
  %73 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_call(%struct.lua_State* noundef %73, i32 noundef 1, i32 noundef 1)
  %74 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %75 = call i32 @lua_type(%struct.lua_State* noundef %74, i32 noundef -1)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %67
  %78 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %79 = load i8*, i8** %4, align 8
  call void @lua_setfield(%struct.lua_State* noundef %78, i32 noundef 2, i8* noundef %79)
  br label %80

80:                                               ; preds = %77, %67
  %81 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %82 = load i8*, i8** %4, align 8
  call void @lua_getfield(%struct.lua_State* noundef %81, i32 noundef 2, i8* noundef %82)
  %83 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %84 = call i8* @lua_touserdata(%struct.lua_State* noundef %83, i32 noundef -1)
  %85 = icmp eq i8* %84, bitcast (i32* @sentinel_ to i8*)
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* noundef %87, i32 noundef 1)
  %88 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %88, i32 noundef -1)
  %89 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %90 = load i8*, i8** %4, align 8
  call void @lua_setfield(%struct.lua_State* noundef %89, i32 noundef 2, i8* noundef %90)
  br label %91

91:                                               ; preds = %86, %80
  store i32 1, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %23
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @modinit(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %6, i32 noundef -1)
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_setfield(%struct.lua_State* noundef %7, i32 noundef -2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0))
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load i8*, i8** %4, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %8, i8* noundef %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_setfield(%struct.lua_State* noundef %10, i32 noundef -2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strrchr(i8* noundef %11, i32 noundef 46) #5
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %5, align 8
  br label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  call void @lua_pushlstring(%struct.lua_State* noundef %21, i8* noundef %22, i64 noundef %27)
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_setfield(%struct.lua_State* noundef %28, i32 noundef -2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @setfenv(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_getstack(%struct.lua_State* noundef %4, i32 noundef 1, %struct.lua_Debug* noundef %3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i32 @lua_getinfo(%struct.lua_State* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %struct.lua_Debug* noundef %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i32 @lua_iscfunction(%struct.lua_State* noundef %12, i32 noundef -1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %7, %1
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %16, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %11
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %19, i32 noundef -2)
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = call i32 @lua_setfenv(%struct.lua_State* noundef %20, i32 noundef -2)
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %22, i32 noundef -2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dooptions(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %5, align 4
  br label %6

6:                                                ; preds = %15, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = load i32, i32* %5, align 4
  call void @lua_pushvalue(%struct.lua_State* noundef %11, i32 noundef %12)
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %13, i32 noundef -2)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_call(%struct.lua_State* noundef %14, i32 noundef 1, i32 noundef 0)
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %6, !llvm.loop !8

18:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

declare dso_local i32 @lua_getstack(%struct.lua_State* noundef, i32 noundef, %struct.lua_Debug* noundef) #1

declare dso_local i32 @lua_getinfo(%struct.lua_State* noundef, i8* noundef, %struct.lua_Debug* noundef) #1

declare dso_local i32 @lua_iscfunction(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_setfenv(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_call(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_toboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_rawgeti(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_isstring(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushlightuserdata(%struct.lua_State* noundef, i8* noundef) #1

declare dso_local void @lua_pushboolean(%struct.lua_State* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
