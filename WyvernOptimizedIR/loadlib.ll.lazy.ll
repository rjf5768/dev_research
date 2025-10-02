; ModuleID = './loadlib.ll'
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
  %2 = call i32 @luaL_newmetatable(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #5
  call void @lua_pushcclosure(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef nonnull @gctm, i32 noundef 0) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #5
  call void @luaL_register(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @pk_funcs, i64 0, i64 0)) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  call void @lua_replace(%struct.lua_State* noundef %0, i32 noundef -10001) #5
  call void @lua_createtable(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 4) #5
  br label %3

3:                                                ; preds = %9, %1
  %.0 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %.not = icmp eq i32 %.0, 4
  br i1 %.not, label %11, label %4

4:                                                ; preds = %3
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [5 x i32 (%struct.lua_State*)*], [5 x i32 (%struct.lua_State*)*]* @loaders, i64 0, i64 %5
  %7 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %6, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef %7, i32 noundef 0) #5
  %8 = add nuw nsw i32 %.0, 1
  call void @lua_rawseti(%struct.lua_State* noundef %0, i32 noundef -2, i32 noundef %8) #5
  br label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

11:                                               ; preds = %3
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  call void @setpath(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([138 x i8], [138 x i8]* @.str.6, i64 0, i64 0))
  call void @setpath(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0))
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 noundef 9) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)) #5
  %12 = call i8* @luaL_findtable(%struct.lua_State* noundef %0, i32 noundef -10000, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 noundef 2) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0)) #5
  call void @lua_createtable(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 0) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -10002) #5
  call void @luaL_register(%struct.lua_State* noundef %0, i8* noundef null, %struct.luaL_Reg* noundef getelementptr inbounds ([3 x %struct.luaL_Reg], [3 x %struct.luaL_Reg]* @ll_funcs, i64 0, i64 0)) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  ret i32 1
}

declare dso_local i32 @luaL_newmetatable(%struct.lua_State* noundef, i8* noundef) #1

declare dso_local void @lua_pushcclosure(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @gctm(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checkudata(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #5
  %3 = bitcast i8* %2 to i8**
  %4 = load i8*, i8** %3, align 8
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  store i8* null, i8** %3, align 8
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
  %5 = call i8* @getenv(i8* noundef %2) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %3) #5
  br label %11

8:                                                ; preds = %4
  %9 = call i8* @luaL_gsub(%struct.lua_State* noundef %0, i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #5
  %10 = call i8* @luaL_gsub(%struct.lua_State* noundef %0, i8* noundef %9, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i8* noundef %3) #5
  call void @lua_remove(%struct.lua_State* noundef %0, i32 noundef -2) #5
  br label %11

11:                                               ; preds = %8, %7
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef %1) #5
  ret void
}

declare dso_local void @lua_pushlstring(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

declare dso_local i8* @luaL_findtable(%struct.lua_State* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @luaL_checkudata(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @ll_unloadlib(i8* nocapture noundef %0) #2 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ll_loadlib(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %3 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 2, i64* noundef null) #5
  %4 = call i32 @ll_loadfunc(%struct.lua_State* noundef %0, i8* noundef %2, i8* noundef %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %10

7:                                                ; preds = %1
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  call void @lua_insert(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %8 = icmp eq i32 %4, 1
  %9 = select i1 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %9) #5
  br label %10

10:                                               ; preds = %7, %6
  %.0 = phi i32 [ 1, %6 ], [ 3, %7 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ll_seeall(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #5
  %2 = call i32 @lua_getmetatable(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %5

3:                                                ; preds = %1
  call void @lua_createtable(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 1) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %4 = call i32 @lua_setmetatable(%struct.lua_State* noundef %0, i32 noundef 1) #5
  br label %5

5:                                                ; preds = %3, %1
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -10002) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0)) #5
  ret i32 0
}

declare dso_local i8* @luaL_checklstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ll_loadfunc(%struct.lua_State* noundef %0, i8* noundef %1, i8* nocapture noundef readnone %2) #0 {
  %4 = call i8** @ll_register(%struct.lua_State* noundef %0, i8* noundef %1)
  %5 = load i8*, i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i8* @ll_load(%struct.lua_State* noundef %0, i8* noundef %1)
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %7, %3
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %19

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 (%struct.lua_State*)* @ll_sym(%struct.lua_State* noundef %0, i8* noundef %14, i8* noundef %2)
  %16 = icmp eq i32 (%struct.lua_State*)* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %19

18:                                               ; preds = %13
  call void @lua_pushcclosure(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef nonnull %15, i32 noundef 0) #5
  br label %19

19:                                               ; preds = %18, %17, %12
  %.0 = phi i32 [ 1, %12 ], [ 2, %17 ], [ 0, %18 ]
  ret i32 %.0
}

declare dso_local void @lua_pushnil(%struct.lua_State* noundef) #1

declare dso_local void @lua_insert(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushstring(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8** @ll_register(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #5
  call void @lua_gettable(%struct.lua_State* noundef %0, i32 noundef -10000) #5
  %4 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = call i8* @lua_touserdata(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %8 = bitcast i8* %7 to i8**
  br label %14

9:                                                ; preds = %2
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %10 = call i8* @lua_newuserdata(%struct.lua_State* noundef %0, i64 noundef 8) #5
  %11 = bitcast i8* %10 to i8**
  store i8* null, i8** %11, align 8
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10000, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #5
  %12 = call i32 @lua_setmetatable(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %13 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* noundef %1) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @lua_settable(%struct.lua_State* noundef %0, i32 noundef -10000) #5
  br label %14

14:                                               ; preds = %9, %6
  %.0 = phi i8** [ %11, %9 ], [ %8, %6 ]
  ret i8** %.0
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @ll_load(%struct.lua_State* noundef %0, i8* nocapture noundef readnone %1) #0 {
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i64 noundef 58) #5
  ret i8* null
}

; Function Attrs: noinline nounwind uwtable
define internal noalias i32 (%struct.lua_State*)* @ll_sym(%struct.lua_State* noundef %0, i8* nocapture noundef readnone %1, i8* nocapture noundef readnone %2) #0 {
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0), i64 noundef 58) #5
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
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10001, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0)) #5
  %3 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0)) #5
  br label %7

7:                                                ; preds = %5, %1
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -1, i8* noundef %2) #5
  %8 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i8* noundef %2) #5
  br label %12

12:                                               ; preds = %10, %7
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @loader_Lua(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %3 = call i8* @findfile(%struct.lua_State* noundef %0, i8* noundef %2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  %7 = call i32 @luaL_loadfile(%struct.lua_State* noundef %0, i8* noundef nonnull %3) #5
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %6
  call void @loaderror(%struct.lua_State* noundef %0, i8* noundef nonnull %3)
  br label %9

9:                                                ; preds = %8, %6
  br label %10

10:                                               ; preds = %9, %5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @loader_C(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %3 = call i8* @findfile(%struct.lua_State* noundef %0, i8* noundef %2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  %7 = call i8* @mkfuncname(%struct.lua_State* noundef %0, i8* noundef %2)
  %8 = call i32 @ll_loadfunc(%struct.lua_State* noundef %0, i8* noundef nonnull %3, i8* noundef %7)
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %6
  call void @loaderror(%struct.lua_State* noundef %0, i8* noundef nonnull %3)
  br label %10

10:                                               ; preds = %9, %6
  br label %11

11:                                               ; preds = %10, %5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @loader_Croot(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %3 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %2, i32 noundef 46) #6
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = ptrtoint i8* %3 to i64
  %8 = ptrtoint i8* %2 to i64
  %9 = sub i64 %7, %8
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef %2, i64 noundef %9) #5
  %10 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #5
  %11 = call i8* @findfile(%struct.lua_State* noundef %0, i8* noundef %10, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %22

14:                                               ; preds = %6
  %15 = call i8* @mkfuncname(%struct.lua_State* noundef %0, i8* noundef %2)
  %16 = call i32 @ll_loadfunc(%struct.lua_State* noundef %0, i8* noundef nonnull %11, i8* noundef %15)
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %21, label %17

17:                                               ; preds = %14
  %.not1 = icmp eq i32 %16, 2
  br i1 %.not1, label %19, label %18

18:                                               ; preds = %17
  call void @loaderror(%struct.lua_State* noundef %0, i8* noundef nonnull %11)
  br label %19

19:                                               ; preds = %18, %17
  %20 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0), i8* noundef %2, i8* noundef nonnull %11) #5
  br label %22

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %19, %13, %5
  %.0 = phi i32 [ 0, %5 ], [ 1, %13 ], [ 1, %19 ], [ 1, %21 ]
  ret i32 %.0
}

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @findfile(%struct.lua_State* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = call i8* @luaL_gsub(%struct.lua_State* noundef %0, i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #5
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10001, i8* noundef %2) #5
  %5 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #5
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i8* noundef %2) #5
  br label %9

9:                                                ; preds = %7, %3
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i64 noundef 0) #5
  br label %10

10:                                               ; preds = %17, %9
  %.01 = phi i8* [ %5, %9 ], [ %11, %17 ]
  %11 = call i8* @pushnexttemplate(%struct.lua_State* noundef %0, i8* noundef %.01)
  %.not = icmp eq i8* %11, null
  br i1 %.not, label %19, label %12

12:                                               ; preds = %10
  %13 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #5
  %14 = call i8* @luaL_gsub(%struct.lua_State* noundef %0, i8* noundef %13, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* noundef %4) #5
  call void @lua_remove(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %15 = call i32 @readable(i8* noundef %14)
  %.not2 = icmp eq i32 %15, 0
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %12
  br label %20

17:                                               ; preds = %12
  %18 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* noundef %14) #5
  call void @lua_remove(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @lua_concat(%struct.lua_State* noundef %0, i32 noundef 2) #5
  br label %10, !llvm.loop !6

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %16
  %.0 = phi i8* [ %14, %16 ], [ null, %19 ]
  ret i8* %.0
}

declare dso_local i32 @luaL_loadfile(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @loaderror(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %4 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #5
  %5 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i64 0, i64 0), i8* noundef %3, i8* noundef %1, i8* noundef %4) #5
  ret void
}

declare dso_local i8* @luaL_gsub(%struct.lua_State* noundef, i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @pushnexttemplate(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  br label %3

3:                                                ; preds = %6, %2
  %.02 = phi i8* [ %1, %2 ], [ %7, %6 ]
  %4 = load i8, i8* %.02, align 1
  %5 = icmp eq i8 %4, 59
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %3, !llvm.loop !7

8:                                                ; preds = %3
  %9 = load i8, i8* %.02, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %22

12:                                               ; preds = %8
  %13 = call i8* @strchr(i8* noundef nonnull %.02, i32 noundef 59) #6
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call i64 @strlen(i8* noundef nonnull %.02) #6
  %17 = getelementptr inbounds i8, i8* %.02, i64 %16
  br label %18

18:                                               ; preds = %15, %12
  %.01 = phi i8* [ %17, %15 ], [ %13, %12 ]
  %19 = ptrtoint i8* %.01 to i64
  %20 = ptrtoint i8* %.02 to i64
  %21 = sub i64 %19, %20
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef nonnull %.02, i64 noundef %21) #5
  br label %22

22:                                               ; preds = %18, %11
  %.0 = phi i8* [ null, %11 ], [ %.01, %18 ]
  ret i8* %.0
}

declare dso_local void @lua_remove(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @readable(i8* noundef %0) #0 {
  %2 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)) #5
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %7

5:                                                ; preds = %1
  %6 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %2) #5
  br label %7

7:                                                ; preds = %5, %4
  %.0 = phi i32 [ 0, %4 ], [ 1, %5 ]
  ret i32 %.0
}

declare dso_local void @lua_concat(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @mkfuncname(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %1, i32 noundef 45) #6
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, i8* %3, i64 1
  br label %6

6:                                                ; preds = %4, %2
  %.0 = phi i8* [ %5, %4 ], [ %1, %2 ]
  %7 = call i8* @luaL_gsub(%struct.lua_State* noundef %0, i8* noundef %.0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0)) #5
  %8 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* noundef %7) #5
  call void @lua_remove(%struct.lua_State* noundef %0, i32 noundef -2) #5
  ret i8* %8
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @ll_module(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %3 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  %4 = add nsw i32 %3, 1
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10000, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #5
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef %4, i8* noundef %2) #5
  %5 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %8 = call i8* @luaL_findtable(%struct.lua_State* noundef %0, i32 noundef -10002, i8* noundef %2, i32 noundef 1) #5
  %.not = icmp eq i8* %8, null
  br i1 %.not, label %11, label %9

9:                                                ; preds = %7
  %10 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0), i8* noundef %2) #5
  br label %18

11:                                               ; preds = %7
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef %4, i8* noundef %2) #5
  br label %12

12:                                               ; preds = %11, %1
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #5
  %13 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  br label %17

16:                                               ; preds = %12
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @modinit(%struct.lua_State* noundef %0, i8* noundef %2)
  br label %17

17:                                               ; preds = %16, %15
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  call void @setfenv(%struct.lua_State* noundef %0)
  call void @dooptions(%struct.lua_State* noundef %0, i32 noundef %3)
  br label %18

18:                                               ; preds = %17, %9
  %.0 = phi i32 [ 0, %17 ], [ %10, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ll_require(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10000, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #5
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef %2) #5
  %3 = call i32 @lua_toboolean(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %10, label %4

4:                                                ; preds = %1
  %5 = call i8* @lua_touserdata(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %6 = icmp eq i8* %5, bitcast (i32* @sentinel_ to i8*)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0), i8* noundef %2) #5
  br label %9

9:                                                ; preds = %7, %4
  br label %43

10:                                               ; preds = %1
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10001, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  %11 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i64 0, i64 0)) #5
  br label %15

15:                                               ; preds = %13, %10
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.28, i64 0, i64 0), i64 noundef 0) #5
  br label %16

16:                                               ; preds = %32, %15
  %.01 = phi i32 [ 1, %15 ], [ %33, %32 ]
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef -2, i32 noundef %.01) #5
  %17 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -2, i64* noundef null) #5
  %21 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i8* noundef %2, i8* noundef %20) #5
  br label %22

22:                                               ; preds = %19, %16
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %2) #5
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 1) #5
  %23 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %34

26:                                               ; preds = %22
  %27 = call i32 @lua_isstring(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %.not2 = icmp eq i32 %27, 0
  br i1 %.not2, label %29, label %28

28:                                               ; preds = %26
  call void @lua_concat(%struct.lua_State* noundef %0, i32 noundef 2) #5
  br label %30

29:                                               ; preds = %26
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i32 %.01, 1
  br label %16

34:                                               ; preds = %25
  call void @lua_pushlightuserdata(%struct.lua_State* noundef %0, i8* noundef bitcast (i32* @sentinel_ to i8*)) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef %2) #5
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %2) #5
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 1) #5
  %35 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef %2) #5
  br label %38

38:                                               ; preds = %37, %34
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef %2) #5
  %39 = call i8* @lua_touserdata(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %40 = icmp eq i8* %39, bitcast (i32* @sentinel_ to i8*)
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef %2) #5
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %42, %9
  ret i32 1
}

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @modinit(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0)) #5
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %1) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #5
  %3 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %1, i32 noundef 46) #6
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, i8* %3, i64 1
  br label %8

8:                                                ; preds = %6, %5
  %.0 = phi i8* [ %1, %5 ], [ %7, %6 ]
  %9 = ptrtoint i8* %.0 to i64
  %10 = ptrtoint i8* %1 to i64
  %11 = sub i64 %9, %10
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef %1, i64 noundef %11) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @setfenv(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = call i32 @lua_getstack(%struct.lua_State* noundef %0, i32 noundef 1, %struct.lua_Debug* noundef nonnull %2) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = call i32 @lua_getinfo(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0), %struct.lua_Debug* noundef nonnull %2) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call i32 @lua_iscfunction(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %12, label %10

10:                                               ; preds = %8, %5, %1
  %11 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0)) #5
  br label %12

12:                                               ; preds = %10, %8
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %13 = call i32 @lua_setfenv(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @dooptions(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %5, %2
  %.0 = phi i32 [ 2, %2 ], [ %6, %5 ]
  %.not = icmp sgt i32 %.0, %1
  br i1 %.not, label %7, label %4

4:                                                ; preds = %3
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef %.0) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 0) #5
  br label %5

5:                                                ; preds = %4
  %6 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

7:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #3

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
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
