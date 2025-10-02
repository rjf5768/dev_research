; ModuleID = './lbaselib.ll'
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
  call void @base_open(%struct.lua_State* noundef %0)
  call void @luaL_register(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([7 x %struct.luaL_Reg], [7 x %struct.luaL_Reg]* @co_funcs, i64 0, i64 0)) #5
  ret i32 2
}

; Function Attrs: noinline nounwind uwtable
define internal void @base_open(%struct.lua_State* noundef %0) #0 {
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -10002) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -10002, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5
  call void @luaL_register(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([25 x %struct.luaL_Reg], [25 x %struct.luaL_Reg]* @base_funcs, i64 0, i64 0)) #5
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 noundef 7) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -10002, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #5
  call void @auxopen(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 (%struct.lua_State*)* noundef nonnull @luaB_ipairs, i32 (%struct.lua_State*)* noundef nonnull @ipairsaux)
  call void @auxopen(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 (%struct.lua_State*)* noundef nonnull @luaB_pairs, i32 (%struct.lua_State*)* noundef nonnull @luaB_next)
  call void @lua_createtable(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 1) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %2 = call i32 @lua_setmetatable(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 noundef 2) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)) #5
  call void @lua_pushcclosure(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef nonnull @luaB_newproxy, i32 noundef 1) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -10002, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #5
  ret void
}

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

declare dso_local void @lua_pushvalue(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @lua_pushlstring(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @auxopen(%struct.lua_State* noundef %0, i8* noundef %1, i32 (%struct.lua_State*)* noundef %2, i32 (%struct.lua_State*)* noundef %3) #0 {
  call void @lua_pushcclosure(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef %3, i32 noundef 0) #5
  call void @lua_pushcclosure(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef %2, i32 noundef 1) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef %1) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_ipairs(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -10003) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef 0) #5
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ipairsaux(%struct.lua_State* noundef %0) #0 {
  %2 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 2) #5
  %3 = trunc i64 %2 to i32
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #5
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %5) #5
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %4) #5
  %6 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 0, i32 2
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_pairs(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -10003) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_next(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 2) #5
  %2 = call i32 @lua_next(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 2, %3 ], [ 1, %4 ]
  ret i32 %.0
}

declare dso_local void @lua_createtable(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_setmetatable(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushcclosure(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_newproxy(%struct.lua_State* noundef %0) #0 {
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %2 = call i8* @lua_newuserdata(%struct.lua_State* noundef %0, i64 noundef 0) #5
  %3 = call i32 @lua_toboolean(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void @lua_createtable(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 0) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_rawset(%struct.lua_State* noundef %0, i32 noundef -10003) #5
  br label %19

10:                                               ; preds = %6
  %11 = call i32 @lua_getmetatable(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %14, label %12

12:                                               ; preds = %10
  call void @lua_rawget(%struct.lua_State* noundef %0, i32 noundef -10003) #5
  %13 = call i32 @lua_toboolean(%struct.lua_State* noundef %0, i32 noundef -1) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %phi.cmp = icmp eq i32 %13, 0
  br label %14

14:                                               ; preds = %12, %10
  %.01 = phi i1 [ %phi.cmp, %12 ], [ true, %10 ]
  br i1 %.01, label %15, label %17

15:                                               ; preds = %14
  %16 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0)) #5
  br label %17

17:                                               ; preds = %15, %14
  %18 = call i32 @lua_getmetatable(%struct.lua_State* noundef %0, i32 noundef 1) #5
  br label %19

19:                                               ; preds = %17, %9
  br label %20

20:                                               ; preds = %19
  %21 = call i32 @lua_setmetatable(%struct.lua_State* noundef %0, i32 noundef 2) #5
  br label %22

22:                                               ; preds = %20, %5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_assert(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %2 = call i32 @lua_toboolean(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %6

3:                                                ; preds = %1
  %4 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i64* noundef null) #5
  %5 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* noundef %4) #5
  br label %8

6:                                                ; preds = %1
  %7 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  br label %8

8:                                                ; preds = %6, %3
  %.0 = phi i32 [ %7, %6 ], [ %5, %3 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_collectgarbage(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @luaL_checkoption(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8** noundef getelementptr inbounds ([8 x i8*], [8 x i8*]* @luaB_collectgarbage.opts, i64 0, i64 0)) #5
  %3 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef 2, i64 noundef 0) #5
  %4 = trunc i64 %3 to i32
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @lua_gc(%struct.lua_State* noundef %0, i32 noundef %7, i32 noundef %4) #5
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds [7 x i32], [7 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %19 [
    i32 3, label %12
    i32 5, label %18
  ]

12:                                               ; preds = %1
  %13 = call i32 @lua_gc(%struct.lua_State* noundef %0, i32 noundef 4, i32 noundef 0) #5
  %14 = sitofp i32 %8 to double
  %15 = sitofp i32 %13 to double
  %16 = fmul double %15, 0x3F50000000000000
  %17 = fadd double %16, %14
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %17) #5
  br label %21

18:                                               ; preds = %1
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef %8) #5
  br label %21

19:                                               ; preds = %1
  %20 = sitofp i32 %8 to double
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %20) #5
  br label %21

21:                                               ; preds = %19, %18, %12
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_dofile(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef null, i64* noundef null) #5
  %3 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  %4 = call i32 @luaL_loadfile(%struct.lua_State* noundef %0, i8* noundef %2) #5
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @lua_error(%struct.lua_State* noundef %0) #5
  br label %7

7:                                                ; preds = %5, %1
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef -1) #5
  %8 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  %9 = sub nsw i32 %8, %3
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_error(%struct.lua_State* noundef %0) #0 {
  %2 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef 2, i64 noundef 1) #5
  %3 = trunc i64 %2 to i32
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %4 = call i32 @lua_isstring(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  call void @luaL_where(%struct.lua_State* noundef %0, i32 noundef %3) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_concat(%struct.lua_State* noundef %0, i32 noundef 2) #5
  br label %8

8:                                                ; preds = %7, %5, %1
  %9 = call i32 @lua_error(%struct.lua_State* noundef %0) #5
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_gcinfo(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_gc(%struct.lua_State* noundef %0, i32 noundef 3, i32 noundef 0) #5
  %3 = sext i32 %2 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %3) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_getfenv(%struct.lua_State* noundef %0) #0 {
  call void @getfunc(%struct.lua_State* noundef %0, i32 noundef 1)
  %2 = call i32 @lua_iscfunction(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -10002) #5
  br label %5

4:                                                ; preds = %1
  call void @lua_getfenv(%struct.lua_State* noundef %0, i32 noundef -1) #5
  br label %5

5:                                                ; preds = %4, %3
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_getmetatable(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %2 = call i32 @lua_getmetatable(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %4

3:                                                ; preds = %1
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  br label %6

4:                                                ; preds = %1
  %5 = call i32 @luaL_getmetafield(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #5
  br label %6

6:                                                ; preds = %4, %3
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_loadfile(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef null, i64* noundef null) #5
  %3 = call i32 @luaL_loadfile(%struct.lua_State* noundef %0, i8* noundef %2) #5
  %4 = call i32 @load_aux(%struct.lua_State* noundef %0, i32 noundef %3)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_load(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i64* noundef null) #5
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 6) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 3) #5
  %3 = call i32 @lua_load(%struct.lua_State* noundef %0, i8* (%struct.lua_State*, i8*, i64*)* noundef nonnull @generic_reader, i8* noundef null, i8* noundef %2) #5
  %4 = call i32 @load_aux(%struct.lua_State* noundef %0, i32 noundef %3)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_loadstring(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef nonnull %2) #5
  %4 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef %3, i64* noundef null) #5
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @luaL_loadbuffer(%struct.lua_State* noundef %0, i8* noundef %3, i64 noundef %5, i8* noundef %4) #5
  %7 = call i32 @load_aux(%struct.lua_State* noundef %0, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_pcall(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %2 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  %3 = add nsw i32 %2, -1
  %4 = call i32 @lua_pcall(%struct.lua_State* noundef %0, i32 noundef %3, i32 noundef -1, i32 noundef 0) #5
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef %6) #5
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %7 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_print(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10002, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0)) #5
  br label %3

3:                                                ; preds = %16, %1
  %.01 = phi i32 [ 1, %1 ], [ %17, %16 ]
  %.not = icmp sgt i32 %.01, %2
  br i1 %.not, label %18, label %4

4:                                                ; preds = %3
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef %.01) #5
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 1) #5
  %5 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i64 0, i64 0)) #5
  br label %20

9:                                                ; preds = %4
  %10 = icmp ugt i32 %.01, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %fputc2 = call i32 @fputc(i32 9, %struct._IO_FILE* %12)
  br label %13

13:                                               ; preds = %11, %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = call i32 @fputs(i8* noundef nonnull %5, %struct._IO_FILE* noundef %14) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  br label %16

16:                                               ; preds = %13
  %17 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !4

18:                                               ; preds = %3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %19)
  br label %20

20:                                               ; preds = %18, %7
  %.0 = phi i32 [ %8, %7 ], [ 0, %18 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_rawequal(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 2) #5
  %2 = call i32 @lua_rawequal(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 2) #5
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef %2) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_rawget(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #5
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 2) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 2) #5
  call void @lua_rawget(%struct.lua_State* noundef %0, i32 noundef 1) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_rawset(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #5
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 2) #5
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 3) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 3) #5
  call void @lua_rawset(%struct.lua_State* noundef %0, i32 noundef 1) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_select(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  %3 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 35
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = add nsw i32 %2, -1
  %11 = sext i32 %10 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %11) #5
  br label %28

12:                                               ; preds = %5, %1
  %13 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = add nsw i32 %2, %14
  br label %22

18:                                               ; preds = %12
  %19 = icmp slt i32 %2, %14
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %18
  %.01 = phi i32 [ %2, %20 ], [ %14, %18 ]
  br label %22

22:                                               ; preds = %21, %16
  %.1 = phi i32 [ %17, %16 ], [ %.01, %21 ]
  %23 = icmp sgt i32 %.1, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #5
  br label %26

26:                                               ; preds = %24, %22
  %27 = sub nsw i32 %2, %.1
  br label %28

28:                                               ; preds = %26, %9
  %.0 = phi i32 [ 1, %9 ], [ %27, %26 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_setfenv(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 5) #5
  call void @getfunc(%struct.lua_State* noundef %0, i32 noundef 0)
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 2) #5
  %2 = call i32 @lua_isnumber(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %9, label %3

3:                                                ; preds = %1
  %4 = call double @lua_tonumber(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %5 = fcmp oeq double %4, 0.000000e+00
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = call i32 @lua_pushthread(%struct.lua_State* noundef %0) #5
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %8 = call i32 @lua_setfenv(%struct.lua_State* noundef %0, i32 noundef -2) #5
  br label %18

9:                                                ; preds = %3, %1
  %10 = call i32 @lua_iscfunction(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %11, label %14

11:                                               ; preds = %9
  %12 = call i32 @lua_setfenv(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %9
  %15 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.54, i64 0, i64 0)) #5
  br label %16

16:                                               ; preds = %14, %11
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17, %6
  %.0 = phi i32 [ 0, %6 ], [ 1, %17 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_setmetatable(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 2) #5
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = icmp eq i32 %2, 5
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i64 0, i64 0)) #5
  br label %8

8:                                                ; preds = %6, %4, %1
  %9 = call i32 @luaL_getmetafield(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #5
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %12, label %10

10:                                               ; preds = %8
  %11 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0)) #5
  br label %12

12:                                               ; preds = %10, %8
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 2) #5
  %13 = call i32 @lua_setmetatable(%struct.lua_State* noundef %0, i32 noundef 1) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_tonumber(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef 2, i64 noundef 10) #5
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %4, 10
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %7 = call i32 @lua_isnumber(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %10, label %8

8:                                                ; preds = %6
  %9 = call double @lua_tonumber(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %9) #5
  br label %43

10:                                               ; preds = %6
  br label %42

11:                                               ; preds = %1
  %12 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %13 = icmp sgt i32 %4, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = icmp slt i32 %4, 37
  br i1 %15, label %18, label %16

16:                                               ; preds = %14, %11
  %17 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.57, i64 0, i64 0)) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = call i64 @strtoul(i8* noundef %12, i8** noundef nonnull %2, i32 noundef %4) #5
  %20 = load i8*, i8** %2, align 8
  %.not = icmp eq i8* %12, %20
  br i1 %.not, label %41, label %21

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %31, %21
  %23 = call i16** @__ctype_b_loc() #6
  %24 = load i16*, i16** %23, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i16, i16* %24, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = and i16 %29, 8192
  %.not1 = icmp eq i16 %30, 0
  br i1 %.not1, label %34, label %31

31:                                               ; preds = %22
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %2, align 8
  br label %22, !llvm.loop !6

34:                                               ; preds = %22
  %35 = load i8*, i8** %2, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = uitofp i64 %19 to double
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %39) #5
  br label %43

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %18
  br label %42

42:                                               ; preds = %41, %10
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  br label %43

43:                                               ; preds = %42, %38, %8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_tostring(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %2 = call i32 @luaL_callmeta(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0)) #5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %19

4:                                                ; preds = %1
  %5 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #5
  switch i32 %5, label %13 [
    i32 3, label %6
    i32 4, label %8
    i32 1, label %9
    i32 0, label %12
  ]

6:                                                ; preds = %4
  %7 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %7) #5
  br label %18

8:                                                ; preds = %4
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 1) #5
  br label %18

9:                                                ; preds = %4
  %10 = call i32 @lua_toboolean(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not1 = icmp eq i32 %10, 0
  %11 = select i1 %.not1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0)
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %11) #5
  br label %18

12:                                               ; preds = %4
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.61, i64 0, i64 0), i64 noundef 3) #5
  br label %18

13:                                               ; preds = %4
  %14 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %15 = call i8* @lua_typename(%struct.lua_State* noundef %0, i32 noundef %14) #5
  %16 = call i8* @lua_topointer(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %17 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0), i8* noundef %15, i8* noundef %16) #5
  br label %18

18:                                               ; preds = %13, %12, %9, %8, %6
  br label %19

19:                                               ; preds = %18, %3
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_type(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %2 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %3 = call i8* @lua_typename(%struct.lua_State* noundef %0, i32 noundef %2) #5
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %3) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_unpack(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #5
  %2 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef 2, i64 noundef 1) #5
  %3 = trunc i64 %2 to i32
  %4 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 3) #5
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i64 @lua_objlen(%struct.lua_State* noundef %0, i32 noundef 1) #5
  br label %10

8:                                                ; preds = %1
  %9 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 3) #5
  br label %10

10:                                               ; preds = %8, %6
  %.in = phi i64 [ %7, %6 ], [ %9, %8 ]
  %11 = trunc i64 %.in to i32
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %28

14:                                               ; preds = %10
  %15 = sub nsw i32 %11, %3
  %16 = add nsw i32 %15, 1
  %17 = icmp slt i32 %15, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = call i32 @lua_checkstack(%struct.lua_State* noundef %0, i32 noundef %16) #5
  %.not = icmp eq i32 %19, 0
  br i1 %.not, label %20, label %22

20:                                               ; preds = %18, %14
  %21 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i64 0, i64 0)) #5
  br label %28

22:                                               ; preds = %18
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %3) #5
  br label %23

23:                                               ; preds = %26, %22
  %.01 = phi i32 [ %3, %22 ], [ %24, %26 ]
  %24 = add nsw i32 %.01, 1
  %25 = icmp slt i32 %.01, %11
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %24) #5
  br label %23, !llvm.loop !7

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %20, %13
  %.0 = phi i32 [ 0, %13 ], [ %21, %20 ], [ %16, %27 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_xpcall(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 2) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 2) #5
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %2 = call i32 @lua_pcall(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 1) #5
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef %4) #5
  call void @lua_replace(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %5 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  ret i32 %5
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
  %3 = alloca %struct.lua_Debug, align 8
  %4 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %5 = icmp eq i32 %4, 6
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 1) #5
  br label %29

7:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %10, label %8

8:                                                ; preds = %7
  %9 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef 1, i64 noundef 1) #5
  br label %12

10:                                               ; preds = %7
  %11 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 1) #5
  br label %12

12:                                               ; preds = %10, %8
  %.in = phi i64 [ %9, %8 ], [ %11, %10 ]
  %13 = trunc i64 %.in to i32
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0)) #5
  br label %17

17:                                               ; preds = %15, %12
  %18 = call i32 @lua_getstack(%struct.lua_State* noundef %0, i32 noundef %13, %struct.lua_Debug* noundef nonnull %3) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0)) #5
  br label %22

22:                                               ; preds = %20, %17
  %23 = call i32 @lua_getinfo(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), %struct.lua_Debug* noundef nonnull %3) #5
  %24 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i64 0, i64 0), i32 noundef %13) #5
  br label %28

28:                                               ; preds = %26, %22
  br label %29

29:                                               ; preds = %28, %6
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
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef -2) #5
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 1, %4 ], [ 2, %5 ]
  ret i32 %.0
}

declare dso_local void @lua_insert(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @luaL_checktype(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_load(%struct.lua_State* noundef, i8* (%struct.lua_State*, i8*, i64*)* noundef, i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @generic_reader(%struct.lua_State* noundef %0, i8* nocapture noundef readnone %1, i64* noundef %2) #0 {
  call void @luaL_checkstack(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0)) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 1) #5
  %4 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i64 0, i64* %2, align 8
  br label %15

7:                                                ; preds = %3
  %8 = call i32 @lua_isstring(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %11, label %9

9:                                                ; preds = %7
  call void @lua_replace(%struct.lua_State* noundef %0, i32 noundef 3) #5
  %10 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef 3, i64* noundef %2) #5
  br label %15

11:                                               ; preds = %7
  %12 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0)) #5
  br label %13

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %9, %6
  %.0 = phi i8* [ null, %6 ], [ %10, %9 ], [ null, %14 ]
  ret i8* %.0
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

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
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
  %2 = call %struct.lua_State* @lua_newthread(%struct.lua_State* noundef %0) #5
  %3 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @lua_iscfunction(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %9, label %7

7:                                                ; preds = %5, %1
  %8 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i64 0, i64 0)) #5
  br label %9

9:                                                ; preds = %7, %5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_xmove(%struct.lua_State* noundef %0, %struct.lua_State* noundef %2, i32 noundef 1) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_coresume(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct.lua_State* @lua_tothread(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq %struct.lua_State* %2, null
  br i1 %.not, label %3, label %5

3:                                                ; preds = %1
  %4 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0)) #5
  br label %5

5:                                                ; preds = %3, %1
  %6 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  %7 = add nsw i32 %6, -1
  %8 = call i32 @auxresume(%struct.lua_State* noundef %0, %struct.lua_State* noundef %2, i32 noundef %7)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef 0) #5
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef -2) #5
  br label %14

11:                                               ; preds = %5
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %12 = xor i32 %8, -1
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef %12) #5
  %13 = add nsw i32 %8, 1
  br label %14

14:                                               ; preds = %11, %10
  %.0 = phi i32 [ 2, %10 ], [ %13, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_corunning(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_pushthread(%struct.lua_State* noundef %0) #5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  br label %4

4:                                                ; preds = %3, %1
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_costatus(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct.lua_State* @lua_tothread(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq %struct.lua_State* %2, null
  br i1 %.not, label %3, label %5

3:                                                ; preds = %1
  %4 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0)) #5
  br label %5

5:                                                ; preds = %3, %1
  %6 = call i32 @costatus(%struct.lua_State* noundef %0, %struct.lua_State* noundef %2)
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %9) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_cowrap(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @luaB_cocreate(%struct.lua_State* noundef %0)
  call void @lua_pushcclosure(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef nonnull @luaB_auxwrap, i32 noundef 1) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_yield(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  %3 = call i32 @lua_yield(%struct.lua_State* noundef %0, i32 noundef %2) #5
  ret i32 %3
}

declare dso_local %struct.lua_State* @lua_newthread(%struct.lua_State* noundef) #1

declare dso_local void @lua_xmove(%struct.lua_State* noundef, %struct.lua_State* noundef, i32 noundef) #1

declare dso_local %struct.lua_State* @lua_tothread(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @auxresume(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1, i32 noundef %2) #0 {
  %4 = call i32 @costatus(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1)
  %5 = call i32 @lua_checkstack(%struct.lua_State* noundef %1, i32 noundef %2) #5
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %8

6:                                                ; preds = %3
  %7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.73, i64 0, i64 0)) #5
  br label %8

8:                                                ; preds = %6, %3
  %.not1 = icmp eq i32 %4, 1
  br i1 %.not1, label %14, label %9

9:                                                ; preds = %8
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds [4 x i8*], [4 x i8*]* @statnames, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.74, i64 0, i64 0), i8* noundef %12) #5
  br label %27

14:                                               ; preds = %8
  call void @lua_xmove(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1, i32 noundef %2) #5
  call void @lua_setlevel(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1) #5
  %15 = call i32 @lua_resume(%struct.lua_State* noundef %1, i32 noundef %2) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %17, %14
  %20 = call i32 @lua_gettop(%struct.lua_State* noundef %1) #5
  %21 = add nsw i32 %20, 1
  %22 = call i32 @lua_checkstack(%struct.lua_State* noundef %0, i32 noundef %21) #5
  %.not2 = icmp eq i32 %22, 0
  br i1 %.not2, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0)) #5
  br label %25

25:                                               ; preds = %23, %19
  call void @lua_xmove(%struct.lua_State* noundef %1, %struct.lua_State* noundef %0, i32 noundef %20) #5
  br label %27

26:                                               ; preds = %17
  call void @lua_xmove(%struct.lua_State* noundef %1, %struct.lua_State* noundef %0, i32 noundef 1) #5
  br label %27

27:                                               ; preds = %26, %25, %9
  %.0 = phi i32 [ -1, %9 ], [ %20, %25 ], [ -1, %26 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @costatus(%struct.lua_State* noundef readnone %0, %struct.lua_State* noundef %1) #0 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = icmp eq %struct.lua_State* %0, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %19

6:                                                ; preds = %2
  %7 = call i32 @lua_status(%struct.lua_State* noundef %1) #5
  switch i32 %7, label %18 [
    i32 1, label %8
    i32 0, label %9
  ]

8:                                                ; preds = %6
  br label %19

9:                                                ; preds = %6
  %10 = call i32 @lua_getstack(%struct.lua_State* noundef %1, i32 noundef 0, %struct.lua_Debug* noundef nonnull %3) #5
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %19

13:                                               ; preds = %9
  %14 = call i32 @lua_gettop(%struct.lua_State* noundef %1) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %19

17:                                               ; preds = %13
  br label %19

18:                                               ; preds = %6
  br label %19

19:                                               ; preds = %18, %17, %16, %12, %8, %5
  %.0 = phi i32 [ 0, %5 ], [ 3, %18 ], [ 2, %12 ], [ 3, %16 ], [ 1, %17 ], [ 1, %8 ]
  ret i32 %.0
}

declare dso_local void @lua_setlevel(%struct.lua_State* noundef, %struct.lua_State* noundef) #1

declare dso_local i32 @lua_resume(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_status(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @luaB_auxwrap(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct.lua_State* @lua_tothread(%struct.lua_State* noundef %0, i32 noundef -10003) #5
  %3 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  %4 = call i32 @auxresume(%struct.lua_State* noundef %0, %struct.lua_State* noundef %2, i32 noundef %3)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call i32 @lua_isstring(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %6
  call void @luaL_where(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @lua_concat(%struct.lua_State* noundef %0, i32 noundef 2) #5
  br label %9

9:                                                ; preds = %8, %6
  %10 = call i32 @lua_error(%struct.lua_State* noundef %0) #5
  br label %11

11:                                               ; preds = %9, %1
  ret i32 %4
}

declare dso_local i32 @lua_yield(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }

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
