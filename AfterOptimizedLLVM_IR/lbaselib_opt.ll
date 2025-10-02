; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/lbaselib.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/lbaselib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }

@.str = private unnamed_addr constant [10 x i8] c"coroutine\00", align 1
@co_funcs = internal constant [7 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cocreate }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_coresume }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_corunning }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_costatus }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cowrap }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_yield }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@base_funcs = internal constant [25 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_assert }, %struct.luaL_Reg { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_collectgarbage }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_dofile }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_error }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_gcinfo }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_getfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_loadfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_load }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_loadstring }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_next }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_pcall }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_print }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawequal }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawget }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawset }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_select }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_setfenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tonumber }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tostring }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_unpack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_xpcall }, %struct.luaL_Reg zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"Lua 5.1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ipairs\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"kv\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"newproxy\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"collectgarbage\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"dofile\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"gcinfo\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"getfenv\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"loadfile\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"loadstring\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"pcall\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"rawequal\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"rawget\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"rawset\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"setfenv\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"tonumber\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"xpcall\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"assertion failed!\00", align 1
@luaB_collectgarbage.opts = internal constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* null], align 16
@.str.35 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"setpause\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"setstepmul\00", align 1
@luaB_collectgarbage.optsnum = internal constant [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7], align 16
@.str.42 = private unnamed_addr constant [27 x i8] c"level must be non-negative\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"invalid level\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"no function environment for tail call at level %d\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"__metatable\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"=(load)\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"too many nested functions\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"reader function must return a string\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"'tostring' must return a string to 'print'\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.52 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@.str.54 = private unnamed_addr constant [52 x i8] c"'setfenv' cannot change environment of given object\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"cannot change a protected metatable\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"base out of range\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"%s: %p\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"too many results to unpack\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"boolean or proxy expected\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"Lua function expected\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"coroutine expected\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"too many arguments to resume\00", align 1
@.str.74 = private unnamed_addr constant [27 x i8] c"cannot resume %s coroutine\00", align 1
@statnames = internal constant [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0)], align 16
@.str.75 = private unnamed_addr constant [27 x i8] c"too many results to resume\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"dead\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @luaopen_base(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @base_open(%struct.lua_State* noundef %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_register(%struct.lua_State* noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([7 x %struct.luaL_Reg], [7 x %struct.luaL_Reg]* @co_funcs, i64 0, i64 0))
  ret i32 2
}

; Function Attrs: noinline nounwind uwtable
define internal void @base_open(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %3, i32 noundef -10002)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %4, i32 noundef -10002, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_register(%struct.lua_State* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([25 x %struct.luaL_Reg], [25 x %struct.luaL_Reg]* @base_funcs, i64 0, i64 0))
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %6, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 noundef 7)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %7, i32 noundef -10002, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @auxopen(%struct.lua_State* noundef %8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 (%struct.lua_State*)* noundef @luaB_ipairs, i32 (%struct.lua_State*)* noundef @ipairsaux)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @auxopen(%struct.lua_State* noundef %9, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 (%struct.lua_State*)* noundef @luaB_pairs, i32 (%struct.lua_State*)* noundef @luaB_next)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* noundef %10, i32 noundef 0, i32 noundef 1)
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %11, i32 noundef -1)
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i32 @lua_setmetatable(%struct.lua_State* noundef %12, i32 noundef -2)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %14, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 noundef 2)
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %15, i32 noundef -2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %16, i32 (%struct.lua_State*)* noundef @luaB_newproxy, i32 noundef 1)
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %17, i32 noundef -10002, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

declare dso_local void @lua_pushvalue(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @lua_pushlstring(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @auxopen(%struct.lua_State* noundef %0, i8* noundef %1, i32 (%struct.lua_State*)* noundef %2, i32 (%struct.lua_State*)* noundef %3) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.lua_State*)*, align 8
  %8 = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.lua_State*)* %2, i32 (%struct.lua_State*)** %7, align 8
  store i32 (%struct.lua_State*)* %3, i32 (%struct.lua_State*)** %8, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %8, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %9, i32 (%struct.lua_State*)* noundef %10, i32 noundef 0)
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %7, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %11, i32 (%struct.lua_State*)* noundef %12, i32 noundef 1)
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load i8*, i8** %6, align 8
  call void @lua_setfield(%struct.lua_State* noundef %13, i32 noundef -2, i8* noundef %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_ipairs(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %3, i32 noundef 1, i32 noundef 5)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %4, i32 noundef -10003)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %5, i32 noundef 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushinteger(%struct.lua_State* noundef %6, i64 noundef 0)
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ipairsaux(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %4, i32 noundef 2)
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %7, i32 noundef 1, i32 noundef 5)
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %10, i64 noundef %12)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = load i32, i32* %3, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %13, i32 noundef 1, i32 noundef %14)
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = call i32 @lua_type(%struct.lua_State* noundef %15, i32 noundef -1)
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 2
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_pairs(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %3, i32 noundef 1, i32 noundef 5)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %4, i32 noundef -10003)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %5, i32 noundef 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %6)
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_next(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %4, i32 noundef 1, i32 noundef 5)
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %5, i32 noundef 2)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_next(%struct.lua_State* noundef %6, i32 noundef 1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %11)
  store i32 1, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %9
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local void @lua_createtable(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_setmetatable(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushcclosure(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_newproxy(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %5, i32 noundef 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i8* @lua_newuserdata(%struct.lua_State* noundef %6, i64 noundef 0)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_toboolean(%struct.lua_State* noundef %8, i32 noundef 1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i32 @lua_type(%struct.lua_State* noundef %13, i32 noundef 1)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_createtable(%struct.lua_State* noundef %17, i32 noundef 0, i32 noundef 0)
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %18, i32 noundef -1)
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* noundef %19, i32 noundef 1)
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rawset(%struct.lua_State* noundef %20, i32 noundef -10003)
  br label %42

21:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = call i32 @lua_getmetatable(%struct.lua_State* noundef %22, i32 noundef 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rawget(%struct.lua_State* noundef %26, i32 noundef -10003)
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = call i32 @lua_toboolean(%struct.lua_State* noundef %27, i32 noundef -1)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %29, i32 noundef -2)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = call i32 @luaL_argerror(%struct.lua_State* noundef %34, i32 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ true, %30 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = call i32 @lua_getmetatable(%struct.lua_State* noundef %40, i32 noundef 1)
  br label %42

42:                                               ; preds = %37, %16
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = call i32 @lua_setmetatable(%struct.lua_State* noundef %44, i32 noundef 2)
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_assert(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %4, i32 noundef 1)
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = call i32 @lua_toboolean(%struct.lua_State* noundef %5, i32 noundef 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i8* @luaL_optlstring(%struct.lua_State* noundef %10, i32 noundef 2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i64* noundef null)
  %12 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* noundef %11)
  store i32 %12, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i32 @lua_gettop(%struct.lua_State* noundef %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_collectgarbage(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @luaL_checkoption(%struct.lua_State* noundef %8, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8** noundef getelementptr inbounds ([8 x i8*], [8 x i8*]* @luaB_collectgarbage.opts, i64 0, i64 0))
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i64 @luaL_optinteger(%struct.lua_State* noundef %10, i32 noundef 2, i64 noundef 0)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @lua_gc(%struct.lua_State* noundef %13, i32 noundef %17, i32 noundef %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %37 [
    i32 3, label %24
    i32 5, label %34
  ]

24:                                               ; preds = %1
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = call i32 @lua_gc(%struct.lua_State* noundef %25, i32 noundef 4, i32 noundef 0)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sitofp i32 %28 to double
  %30 = load i32, i32* %7, align 4
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 1.024000e+03
  %33 = fadd double %29, %32
  call void @lua_pushnumber(%struct.lua_State* noundef %27, double noundef %33)
  store i32 1, i32* %2, align 4
  br label %41

34:                                               ; preds = %1
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load i32, i32* %6, align 4
  call void @lua_pushboolean(%struct.lua_State* noundef %35, i32 noundef %36)
  store i32 1, i32* %2, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sitofp i32 %39 to double
  call void @lua_pushnumber(%struct.lua_State* noundef %38, double noundef %40)
  store i32 1, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %34, %24
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_dofile(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_optlstring(%struct.lua_State* noundef %5, i32 noundef 1, i8* noundef null, i64* noundef null)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @lua_gettop(%struct.lua_State* noundef %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @luaL_loadfile(%struct.lua_State* noundef %9, i8* noundef %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 @lua_error(%struct.lua_State* noundef %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_call(%struct.lua_State* noundef %17, i32 noundef 0, i32 noundef -1)
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = call i32 @lua_gettop(%struct.lua_State* noundef %18)
  %20 = load i32, i32* %4, align 4
  %21 = sub nsw i32 %19, %20
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_error(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i64 @luaL_optinteger(%struct.lua_State* noundef %4, i32 noundef 2, i64 noundef 1)
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %3, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %7, i32 noundef 1)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i32 @lua_isstring(%struct.lua_State* noundef %8, i32 noundef 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = load i32, i32* %3, align 4
  call void @luaL_where(%struct.lua_State* noundef %15, i32 noundef %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %17, i32 noundef 1)
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_concat(%struct.lua_State* noundef %18, i32 noundef 2)
  br label %19

19:                                               ; preds = %14, %11, %1
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = call i32 @lua_error(%struct.lua_State* noundef %20)
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_gcinfo(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_gc(%struct.lua_State* noundef %4, i32 noundef 3, i32 noundef 0)
  %6 = sext i32 %5 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %3, i64 noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_getfenv(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @getfunc(%struct.lua_State* noundef %3, i32 noundef 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_iscfunction(%struct.lua_State* noundef %4, i32 noundef -1)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %8, i32 noundef -10002)
  br label %11

9:                                                ; preds = %1
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_getfenv(%struct.lua_State* noundef %10, i32 noundef -1)
  br label %11

11:                                               ; preds = %9, %7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_getmetatable(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %4, i32 noundef 1)
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = call i32 @lua_getmetatable(%struct.lua_State* noundef %5, i32 noundef 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %9)
  store i32 1, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @luaL_getmetafield(%struct.lua_State* noundef %11, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_loadfile(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_optlstring(%struct.lua_State* noundef %4, i32 noundef 1, i8* noundef null, i64* noundef null)
  store i8* %5, i8** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @luaL_loadfile(%struct.lua_State* noundef %7, i8* noundef %8)
  %10 = call i32 @load_aux(%struct.lua_State* noundef %6, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_load(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_optlstring(%struct.lua_State* noundef %5, i32 noundef 2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i64* noundef null)
  store i8* %6, i8** %4, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %7, i32 noundef 1, i32 noundef 6)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %8, i32 noundef 3)
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @lua_load(%struct.lua_State* noundef %9, i8* (%struct.lua_State*, i8*, i64*)* noundef @generic_reader, i8* noundef null, i8* noundef %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @load_aux(%struct.lua_State* noundef %12, i32 noundef %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_loadstring(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* noundef %6, i32 noundef 1, i64* noundef %3)
  store i8* %7, i8** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @luaL_optlstring(%struct.lua_State* noundef %8, i32 noundef 2, i8* noundef %9, i64* noundef null)
  store i8* %10, i8** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @luaL_loadbuffer(%struct.lua_State* noundef %12, i8* noundef %13, i64 noundef %14, i8* noundef %15)
  %17 = call i32 @load_aux(%struct.lua_State* noundef %11, i32 noundef %16)
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_pcall(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %4, i32 noundef 1)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_gettop(%struct.lua_State* noundef %6)
  %8 = sub nsw i32 %7, 1
  %9 = call i32 @lua_pcall(%struct.lua_State* noundef %5, i32 noundef %8, i32 noundef -1, i32 noundef 0)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  call void @lua_pushboolean(%struct.lua_State* noundef %10, i32 noundef %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_insert(%struct.lua_State* noundef %14, i32 noundef 1)
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = call i32 @lua_gettop(%struct.lua_State* noundef %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_print(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i32 @lua_gettop(%struct.lua_State* noundef %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %9, i32 noundef -10002, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %37, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %15, i32 noundef -1)
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load i32, i32* %5, align 4
  call void @lua_pushvalue(%struct.lua_State* noundef %16, i32 noundef %17)
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_call(%struct.lua_State* noundef %18, i32 noundef 1, i32 noundef 1)
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = call i8* @lua_tolstring(%struct.lua_State* noundef %19, i32 noundef -1, i64* noundef null)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %24, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0))
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = call i32 @fputs(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %struct._IO_FILE* noundef %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i32 @fputs(i8* noundef %33, %struct._IO_FILE* noundef %34)
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %36, i32 noundef -2)
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %10, !llvm.loop !4

40:                                               ; preds = %10
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %42 = call i32 @fputs(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %struct._IO_FILE* noundef %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_rawequal(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %3, i32 noundef 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %4, i32 noundef 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_rawequal(%struct.lua_State* noundef %6, i32 noundef 1, i32 noundef 2)
  call void @lua_pushboolean(%struct.lua_State* noundef %5, i32 noundef %7)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_rawget(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %3, i32 noundef 1, i32 noundef 5)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %4, i32 noundef 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %5, i32 noundef 2)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawget(%struct.lua_State* noundef %6, i32 noundef 1)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_rawset(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %3, i32 noundef 1, i32 noundef 5)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %4, i32 noundef 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %5, i32 noundef 3)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %6, i32 noundef 3)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawset(%struct.lua_State* noundef %7, i32 noundef 1)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_select(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_gettop(%struct.lua_State* noundef %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_type(%struct.lua_State* noundef %8, i32 noundef 1)
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i8* @lua_tolstring(%struct.lua_State* noundef %12, i32 noundef 1, i64* noundef null)
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 35
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %18, i64 noundef %21)
  store i32 1, i32* %2, align 4
  br label %52

22:                                               ; preds = %11, %1
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %23, i32 noundef 1)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %5, align 4
  br label %39

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i32, i32* %5, align 4
  %41 = icmp sle i32 1, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %44 = call i32 @luaL_argerror(%struct.lua_State* noundef %43, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ true, %39 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_setfenv(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %4, i32 noundef 2, i32 noundef 5)
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @getfunc(%struct.lua_State* noundef %5, i32 noundef 0)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %6, i32 noundef 2)
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i32 @lua_isnumber(%struct.lua_State* noundef %7, i32 noundef 1)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call double @lua_tonumber(%struct.lua_State* noundef %11, i32 noundef 1)
  %13 = fcmp oeq double %12, 0.000000e+00
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = call i32 @lua_pushthread(%struct.lua_State* noundef %15)
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_insert(%struct.lua_State* noundef %17, i32 noundef -2)
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = call i32 @lua_setfenv(%struct.lua_State* noundef %18, i32 noundef -2)
  store i32 0, i32* %2, align 4
  br label %33

20:                                               ; preds = %10, %1
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = call i32 @lua_iscfunction(%struct.lua_State* noundef %21, i32 noundef -2)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = call i32 @lua_setfenv(%struct.lua_State* noundef %25, i32 noundef -2)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %20
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %29, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.54, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_setmetatable(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_type(%struct.lua_State* noundef %4, i32 noundef 2)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %6, i32 noundef 1, i32 noundef 5)
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i32 @luaL_argerror(%struct.lua_State* noundef %13, i32 noundef 2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %12, %9, %1
  %17 = phi i1 [ true, %9 ], [ true, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i32 @luaL_getmetafield(%struct.lua_State* noundef %19, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %23, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %26, i32 noundef 2)
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %28 = call i32 @lua_setmetatable(%struct.lua_State* noundef %27, i32 noundef 1)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_tonumber(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i64 @luaL_optinteger(%struct.lua_State* noundef %8, i32 noundef 2, i64 noundef 10)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %14, i32 noundef 1)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = call i32 @lua_isnumber(%struct.lua_State* noundef %15, i32 noundef 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = call double @lua_tonumber(%struct.lua_State* noundef %20, i32 noundef 1)
  call void @lua_pushnumber(%struct.lua_State* noundef %19, double noundef %21)
  store i32 1, i32* %2, align 4
  br label %73

22:                                               ; preds = %13
  br label %71

23:                                               ; preds = %1
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = call i8* @luaL_checklstring(%struct.lua_State* noundef %24, i32 noundef 1, i64* noundef null)
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 2, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp sle i32 %29, 36
  br i1 %30, label %35, label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = call i32 @luaL_argerror(%struct.lua_State* noundef %32, i32 noundef 2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ true, %28 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @strtoul(i8* noundef %38, i8** noundef %6, i32 noundef %39) #4
  store i64 %40, i64* %7, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %57, %44
  %46 = call i16** @__ctype_b_loc() #5
  %47 = load i16*, i16** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %47, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 8192
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %45, !llvm.loop !6

60:                                               ; preds = %45
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %67 = load i64, i64* %7, align 8
  %68 = uitofp i64 %67 to double
  call void @lua_pushnumber(%struct.lua_State* noundef %66, double noundef %68)
  store i32 1, i32* %2, align 4
  br label %73

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %35
  br label %71

71:                                               ; preds = %70, %22
  %72 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %72)
  store i32 1, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %65, %18
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_tostring(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %4, i32 noundef 1)
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = call i32 @luaL_callmeta(%struct.lua_State* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = call i32 @lua_type(%struct.lua_State* noundef %10, i32 noundef 1)
  switch i32 %11, label %27 [
    i32 3, label %12
    i32 4, label %16
    i32 1, label %18
    i32 0, label %25
  ]

12:                                               ; preds = %9
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i8* @lua_tolstring(%struct.lua_State* noundef %14, i32 noundef 1, i64* noundef null)
  call void @lua_pushstring(%struct.lua_State* noundef %13, i8* noundef %15)
  br label %36

16:                                               ; preds = %9
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %17, i32 noundef 1)
  br label %36

18:                                               ; preds = %9
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = call i32 @lua_toboolean(%struct.lua_State* noundef %20, i32 noundef 1)
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0)
  call void @lua_pushstring(%struct.lua_State* noundef %19, i8* noundef %24)
  br label %36

25:                                               ; preds = %9
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %26, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i64 noundef 3)
  br label %36

27:                                               ; preds = %9
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = call i32 @lua_type(%struct.lua_State* noundef %30, i32 noundef 1)
  %32 = call i8* @lua_typename(%struct.lua_State* noundef %29, i32 noundef %31)
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = call i8* @lua_topointer(%struct.lua_State* noundef %33, i32 noundef 1)
  %35 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %28, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i8* noundef %32, i8* noundef %34)
  br label %36

36:                                               ; preds = %27, %25, %18, %16, %12
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_type(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %3, i32 noundef 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_type(%struct.lua_State* noundef %6, i32 noundef 1)
  %8 = call i8* @lua_typename(%struct.lua_State* noundef %5, i32 noundef %7)
  call void @lua_pushstring(%struct.lua_State* noundef %4, i8* noundef %8)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_unpack(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %7, i32 noundef 1, i32 noundef 5)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i64 @luaL_optinteger(%struct.lua_State* noundef %8, i32 noundef 2, i64 noundef 1)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @lua_type(%struct.lua_State* noundef %11, i32 noundef 3)
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = call i64 @lua_objlen(%struct.lua_State* noundef %15, i32 noundef 1)
  %17 = trunc i64 %16 to i32
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %19, i32 noundef 3)
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %56

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %29, %30
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @lua_checkstack(%struct.lua_State* noundef %36, i32 noundef %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %41, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i64 0, i64 0))
  store i32 %42, i32* %2, align 4
  br label %56

43:                                               ; preds = %35
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = load i32, i32* %4, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %44, i32 noundef 1, i32 noundef %45)
  br label %46

46:                                               ; preds = %51, %43
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %53 = load i32, i32* %4, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %52, i32 noundef 1, i32 noundef %53)
  br label %46, !llvm.loop !7

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %40, %27
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_xpcall(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %4, i32 noundef 2)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %5, i32 noundef 2)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_insert(%struct.lua_State* noundef %6, i32 noundef 1)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @lua_pcall(%struct.lua_State* noundef %7, i32 noundef 0, i32 noundef -1, i32 noundef 1)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  call void @lua_pushboolean(%struct.lua_State* noundef %9, i32 noundef %12)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_replace(%struct.lua_State* noundef %13, i32 noundef 1)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 @lua_gettop(%struct.lua_State* noundef %14)
  ret i32 %15
}

declare dso_local void @luaL_checkany(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_toboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local i8* @luaL_optlstring(%struct.lua_State* noundef, i32 noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

declare dso_local i32 @luaL_checkoption(%struct.lua_State* noundef, i32 noundef, i8* noundef, i8** noundef) #1

declare dso_local i64 @luaL_optinteger(%struct.lua_State* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @lua_gc(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_pushnumber(%struct.lua_State* noundef, double noundef) #1

declare dso_local void @lua_pushboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_loadfile(%struct.lua_State* noundef, i8* noundef) #1

declare dso_local i32 @lua_error(%struct.lua_State* noundef) #1

declare dso_local void @lua_call(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_isstring(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @luaL_where(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_concat(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushinteger(%struct.lua_State* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @getfunc(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_Debug, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i32 @lua_type(%struct.lua_State* noundef %7, i32 noundef 1)
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %11, i32 noundef 1)
  br label %52

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i64 @luaL_optinteger(%struct.lua_State* noundef %16, i32 noundef 1, i64 noundef 1)
  %18 = trunc i64 %17 to i32
  br label %23

19:                                               ; preds = %12
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %20, i32 noundef 1)
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %18, %15 ], [ %22, %19 ]
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = call i32 @luaL_argerror(%struct.lua_State* noundef %28, i32 noundef 1, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ true, %23 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @lua_getstack(%struct.lua_State* noundef %34, i32 noundef %35, %struct.lua_Debug* noundef %5)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = call i32 @luaL_argerror(%struct.lua_State* noundef %39, i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = call i32 @lua_getinfo(%struct.lua_State* noundef %42, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), %struct.lua_Debug* noundef %5)
  %44 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %45 = call i32 @lua_type(%struct.lua_State* noundef %44, i32 noundef -1)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %48, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i64 0, i64 0), i32 noundef %49)
  br label %51

51:                                               ; preds = %47, %41
  br label %52

52:                                               ; preds = %51, %10
  ret void
}

declare dso_local i32 @lua_iscfunction(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_getfenv(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_type(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i64 @luaL_checkinteger(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_argerror(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @lua_getstack(%struct.lua_State* noundef, i32 noundef, %struct.lua_Debug* noundef) #1

declare dso_local i32 @lua_getinfo(%struct.lua_State* noundef, i8* noundef, %struct.lua_Debug* noundef) #1

declare dso_local i32 @lua_getmetatable(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushnil(%struct.lua_State* noundef) #1

declare dso_local i32 @luaL_getmetafield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @load_aux(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %12

9:                                                ; preds = %2
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %10)
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_insert(%struct.lua_State* noundef %11, i32 noundef -2)
  store i32 2, i32* %3, align 4
  br label %12

12:                                               ; preds = %9, %8
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

declare dso_local void @lua_insert(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @luaL_checktype(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_load(%struct.lua_State* noundef, i8* (%struct.lua_State*, i8*, i64*)* noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @generic_reader(%struct.lua_State* noundef %0, i8* noundef %1, i64* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaL_checkstack(%struct.lua_State* noundef %9, i32 noundef 2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %10, i32 noundef 1)
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_call(%struct.lua_State* noundef %11, i32 noundef 0, i32 noundef 1)
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = call i32 @lua_type(%struct.lua_State* noundef %12, i32 noundef -1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64*, i64** %7, align 8
  store i64 0, i64* %16, align 8
  store i8* null, i8** %4, align 8
  br label %31

17:                                               ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = call i32 @lua_isstring(%struct.lua_State* noundef %18, i32 noundef -1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_replace(%struct.lua_State* noundef %22, i32 noundef 3)
  %23 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = call i8* @lua_tolstring(%struct.lua_State* noundef %23, i32 noundef 3, i64* noundef %24)
  store i8* %25, i8** %4, align 8
  br label %31

26:                                               ; preds = %17
  %27 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %28 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %27, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  br label %31

31:                                               ; preds = %30, %21, %15
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

declare dso_local void @luaL_checkstack(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @lua_replace(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local i8* @luaL_checklstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local i32 @luaL_loadbuffer(%struct.lua_State* noundef, i8* noundef, i64 noundef, i8* noundef) #1

declare dso_local i32 @lua_pcall(%struct.lua_State* noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_getfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @lua_rawequal(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_rawget(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_rawset(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_isnumber(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local double @lua_tonumber(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_pushthread(%struct.lua_State* noundef) #1

declare dso_local i32 @lua_setfenv(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8* noundef, i8** noundef, i32 noundef) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

declare dso_local i32 @luaL_callmeta(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @lua_pushstring(%struct.lua_State* noundef, i8* noundef) #1

declare dso_local i8* @lua_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local i8* @lua_typename(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @lua_topointer(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i64 @lua_objlen(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_checkstack(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_rawgeti(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_next(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @lua_newuserdata(%struct.lua_State* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_cocreate(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct.lua_State* @lua_newthread(%struct.lua_State* noundef %4)
  store %struct.lua_State* %5, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i32 @lua_type(%struct.lua_State* noundef %6, i32 noundef 1)
  %8 = icmp eq i32 %7, 6
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call i32 @lua_iscfunction(%struct.lua_State* noundef %10, i32 noundef 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %1
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 @luaL_argerror(%struct.lua_State* noundef %14, i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ true, %9 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %20, i32 noundef 1)
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_xmove(%struct.lua_State* noundef %21, %struct.lua_State* noundef %22, i32 noundef 1)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_coresume(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call %struct.lua_State* @lua_tothread(%struct.lua_State* noundef %6, i32 noundef 1)
  store %struct.lua_State* %7, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = icmp ne %struct.lua_State* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @luaL_argerror(%struct.lua_State* noundef %11, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ true, %1 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = call i32 @lua_gettop(%struct.lua_State* noundef %19)
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @auxresume(%struct.lua_State* noundef %17, %struct.lua_State* noundef %18, i32 noundef %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* noundef %26, i32 noundef 0)
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_insert(%struct.lua_State* noundef %27, i32 noundef -2)
  store i32 2, i32* %2, align 4
  br label %36

28:                                               ; preds = %14
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushboolean(%struct.lua_State* noundef %29, i32 noundef 1)
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = sub nsw i32 0, %32
  call void @lua_insert(%struct.lua_State* noundef %30, i32 noundef %33)
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_corunning(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @lua_pushthread(%struct.lua_State* noundef %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %7)
  br label %8

8:                                                ; preds = %6, %1
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_costatus(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct.lua_State* @lua_tothread(%struct.lua_State* noundef %4, i32 noundef 1)
  store %struct.lua_State* %5, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = icmp ne %struct.lua_State* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @luaL_argerror(%struct.lua_State* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ true, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = call i32 @costatus(%struct.lua_State* noundef %16, %struct.lua_State* noundef %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %15, i8* noundef %21)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_cowrap(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @luaB_cocreate(%struct.lua_State* noundef %3)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %5, i32 (%struct.lua_State*)* noundef @luaB_auxwrap, i32 noundef 1)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_yield(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 @lua_gettop(%struct.lua_State* noundef %4)
  %6 = call i32 @lua_yield(%struct.lua_State* noundef %3, i32 noundef %5)
  ret i32 %6
}

declare dso_local %struct.lua_State* @lua_newthread(%struct.lua_State* noundef) #1

declare dso_local void @lua_xmove(%struct.lua_State* noundef, %struct.lua_State* noundef, i32 noundef) #1

declare dso_local %struct.lua_State* @lua_tothread(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @auxresume(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.lua_State* %1, %struct.lua_State** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %12 = call i32 @costatus(%struct.lua_State* noundef %10, %struct.lua_State* noundef %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @lua_checkstack(%struct.lua_State* noundef %13, i32 noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %18, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %24, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0), i8* noundef %28)
  store i32 -1, i32* %4, align 4
  br label %63

30:                                               ; preds = %20
  %31 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %32 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %33 = load i32, i32* %7, align 4
  call void @lua_xmove(%struct.lua_State* noundef %31, %struct.lua_State* noundef %32, i32 noundef %33)
  %34 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  call void @lua_setlevel(%struct.lua_State* noundef %34, %struct.lua_State* noundef %35)
  %36 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @lua_resume(%struct.lua_State* noundef %36, i32 noundef %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %60

44:                                               ; preds = %41, %30
  %45 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %46 = call i32 @lua_gettop(%struct.lua_State* noundef %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @lua_checkstack(%struct.lua_State* noundef %47, i32 noundef %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %54 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %53, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %44
  %56 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %57 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %58 = load i32, i32* %9, align 4
  call void @lua_xmove(%struct.lua_State* noundef %56, %struct.lua_State* noundef %57, i32 noundef %58)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %41
  %61 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %62 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_xmove(%struct.lua_State* noundef %61, %struct.lua_State* noundef %62, i32 noundef 1)
  store i32 -1, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %55, %23
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @costatus(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.lua_Debug, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_State* %1, %struct.lua_State** %5, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %9 = icmp eq %struct.lua_State* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

11:                                               ; preds = %2
  %12 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %13 = call i32 @lua_status(%struct.lua_State* noundef %12)
  switch i32 %13, label %26 [
    i32 1, label %14
    i32 0, label %15
  ]

14:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %27

15:                                               ; preds = %11
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = call i32 @lua_getstack(%struct.lua_State* noundef %16, i32 noundef 0, %struct.lua_Debug* noundef %6)
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 2, i32* %3, align 4
  br label %27

20:                                               ; preds = %15
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %22 = call i32 @lua_gettop(%struct.lua_State* noundef %21)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 3, i32* %3, align 4
  br label %27

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %27

26:                                               ; preds = %11
  store i32 3, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25, %24, %19, %14, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local void @lua_setlevel(%struct.lua_State* noundef, %struct.lua_State* noundef) #1

declare dso_local i32 @lua_resume(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_status(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_auxwrap(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call %struct.lua_State* @lua_tothread(%struct.lua_State* noundef %5, i32 noundef -10003)
  store %struct.lua_State* %6, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @lua_gettop(%struct.lua_State* noundef %9)
  %11 = call i32 @auxresume(%struct.lua_State* noundef %7, %struct.lua_State* noundef %8, i32 noundef %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = call i32 @lua_isstring(%struct.lua_State* noundef %15, i32 noundef -1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_where(%struct.lua_State* noundef %19, i32 noundef 1)
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_insert(%struct.lua_State* noundef %20, i32 noundef -2)
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_concat(%struct.lua_State* noundef %21, i32 noundef 2)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %24 = call i32 @lua_error(%struct.lua_State* noundef %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @lua_yield(%struct.lua_State* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

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
!8 = !{!9, !10}
!1 = !{!11, !12}
!10 = !{!13, !14}
!11 = !{!15, !16}
!12 = !{!17, !18}
!13 = !{!19, !20}
!14 = !{!21, !22}
!15 = !{!23, !24}
!16 = !{!25, !26}
!17 = !{!27, !28}
!18 = !{!29, !30}
!19 = !{!31, !32}
!20 = !{!33, !34}
!21 = !{!35, !36}
!22 = !{!37, !38}
!23 = !{!39, !40}
!24 = !{!41, !42}
!25 = !{!43, !44}
!26 = !{!45, !46}
!27 = !{!47, !48}
!28 = !{!49, !50}
!29 = !{!51, !52}
!30 = !{!53, !54}
!31 = !{!55, !56}
!32 = !{!57, !58}
!33 = !{!59, !60}
!34 = !{!61, !62}
!35 = !{!63, !64}
!36 = !{!65, !66}
!37 = !{!67, !68}
!38 = !{!70, !71}
!39 = !{!72, !73}
!40 = !{!74, !75}
!41 = !{!76, !77}
!42 = !{!78, !79}
!43 = !{!80, !81}
!44 = !{!82, !83}
!45 = !{!84, !85}
!46 = !{!86, !87}
!47 = !{!88, !89}
!48 = !{!90, !91}
!49 = !{!92, !93}
!50 = !{!94, !95}
!51 = !{!96, !97}
!52 = !{!98, !99}
!53 = !{!100, !101}
!54 = !{!102, !103}
!55 = !{!104, !105}
!56 = !{!106, !107}
!57 = !{!108, !109}
!58 = !{!110}
!60 = !{!111, !112}
!61 = !{!13, !14}
!62 = !{!15, !16}
!63 = !{!17, !18}
!64 = !{!19, !20}
!65 = !{!21, !22}
!66 = !{!23, !24}
!67 = !{!25, !26}
!68 = !{!27, !28}
!69 = !{!30, !31}
!70 = !{!32, !33}
!71 = !{!34, !35}
!72 = !{!36, !37}
!73 = !{!38, !39}
!74 = !{!40, !41}
!75 = !{!42, !43}
!76 = !{!44, !45}
!77 = !{!46, !47}
!78 = !{!48, !50}
!80 = !{!51, !52}
!81 = !{!53, !54}
!82 = !{!55, !56}
!83 = !{!57, !58}
!84 = !{!60, !61}
!85 = !{!62, !63}
!86 = !{!64, !65}
!87 = !{!66, !67}
!88 = !{!68, !70}
!89 = !{!71, !72}
!90 = !{!73, !75}
!91 = !{!76, !77}
!92 = !{!78, !80}
!93 = !{!81, !83}
!94 = !{!84, !85}
!95 = !{!86, !87}
!96 = !{!88, !90}
!97 = !{!98, !91}
!99 = !{!100, !93}
!101 = !{!102, !104}
!103 = !{!105, !106}
!107 = !{!108, !109}
!109 = !{!111, !12}
!13 = !{!15, !14}
!16 = !{!17, !18}
!19 = !{!20, !21}
!22 = !{!23, !22}
!24 = !{!25, !26}
!27 = !{!27, !29}
!30 = !{!31, !32}
!33 = !{!34, !35}
!36 = !{!37, !38}
!39 = !{!40, !41}
!42 = !{!43, !44}
!45 = !{!46, !47}
!48 = !{!49, !50}
!51 = !{!51, !52}
!53 = !{!54, !55}
!56 = !{!57, !58}
!58 = !{!60, !61}
!62 = !{!63, !64}
!65 = !{!66, !67}
!68 = !{!69, !70}
!71 = !{!72, !73}
!74 = !{!75, !76}
!77 = !{!78, !79}
!80 = !{!81, !82}
!83 = !{!84, !85}
!86 = !{!87, !88}
!89 = !{!90, !91}
!92 = !{!93, !94}
!95 = !{!96, !97}
!98 = !{!99, !100}
!101 = !{!102, !103}
!104 = !{!105, !106}
!107 = !{!108, !109}
!110 = !{!111, !12}
!13 = !{!14, !15}
!16 = !{!17, !18}
!19 = !{!20, !21}
!22 = !{!23, !24}
!25 = !{!26, !27}
!28 = !{!29, !30}
!31 = !{!32, !33}
