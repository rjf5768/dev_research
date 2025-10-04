; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/liolib.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/liolib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [8192 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1
@iolib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @io_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @io_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 (%struct.lua_State*)* @io_input }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @io_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 (%struct.lua_State*)* @io_open }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 (%struct.lua_State*)* @io_output }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @io_popen }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @io_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i32 (%struct.lua_State*)* @io_tmpfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 (%struct.lua_State*)* @io_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @io_write }, %struct.luaL_Reg zeroinitializer], align 16
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"popen\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FILE*\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@flib = internal constant [10 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @io_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @f_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @f_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @f_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @f_seek }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @f_setvbuf }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @f_write }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @io_gc }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @io_tostring }, %struct.luaL_Reg zeroinitializer], align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"setvbuf\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"__close\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"file is already closed\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"invalid format\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@f_seek.mode = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@f_seek.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* null], align 16
@.str.25 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@f_setvbuf.mode = internal constant [3 x i32] [i32 2, i32 0, i32 1], align 4
@f_setvbuf.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* null], align 16
@.str.28 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"file (closed)\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"file (%p)\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"tmpfile\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"standard %s file is closed\00", align 1
@fnames = internal constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0)], align 16
@.str.40 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"'popen' not supported\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"closed file\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"cannot close standard file\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @luaopen_io(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @createmeta(%struct.lua_State* noundef %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @newfenv(%struct.lua_State* noundef %4, i32 (%struct.lua_State*)* noundef @io_fclose)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_replace(%struct.lua_State* noundef %5, i32 noundef -10001)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_register(%struct.lua_State* noundef %6, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @iolib, i64 0, i64 0))
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @newfenv(%struct.lua_State* noundef %7, i32 (%struct.lua_State*)* noundef @io_noclose)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @createstdfile(%struct.lua_State* noundef %8, %struct._IO_FILE* noundef %9, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @createstdfile(%struct.lua_State* noundef %10, %struct._IO_FILE* noundef %11, i32 noundef 2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @createstdfile(%struct.lua_State* noundef %12, %struct._IO_FILE* noundef %13, i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %14, i32 noundef -2)
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_getfield(%struct.lua_State* noundef %15, i32 noundef -1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @newfenv(%struct.lua_State* noundef %16, i32 (%struct.lua_State*)* noundef @io_pclose)
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = call i32 @lua_setfenv(%struct.lua_State* noundef %17, i32 noundef -2)
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %19, i32 noundef -2)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @createmeta(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @luaL_newmetatable(%struct.lua_State* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %5, i32 noundef -1)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %6, i32 noundef -2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_register(%struct.lua_State* noundef %7, i8* noundef null, %struct.luaL_Reg* noundef getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @flib, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @newfenv(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32 (%struct.lua_State*)*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 (%struct.lua_State*)* %1, i32 (%struct.lua_State*)** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_createtable(%struct.lua_State* noundef %5, i32 noundef 0, i32 noundef 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %4, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %6, i32 (%struct.lua_State*)* noundef %7, i32 noundef 0)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_setfield(%struct.lua_State* noundef %8, i32 noundef -2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_fclose(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct._IO_FILE**, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_checkudata(%struct.lua_State* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %7 = bitcast i8* %6 to %struct._IO_FILE**
  store %struct._IO_FILE** %7, %struct._IO_FILE*** %3, align 8
  %8 = load %struct._IO_FILE**, %struct._IO_FILE*** %3, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %10 = call i32 @fclose(%struct._IO_FILE* noundef %9)
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct._IO_FILE**, %struct._IO_FILE*** %3, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %13, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pushresult(%struct.lua_State* noundef %14, i32 noundef %15, i8* noundef null)
  ret i32 %16
}

declare dso_local void @lua_replace(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_noclose(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %3)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %4, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i64 noundef 26)
  ret i32 2
}

; Function Attrs: noinline nounwind uwtable
define internal void @createstdfile(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %10)
  store %struct._IO_FILE* %9, %struct._IO_FILE** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %15, i32 noundef -1)
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %17 = load i32, i32* %7, align 4
  call void @lua_rawseti(%struct.lua_State* noundef %16, i32 noundef -10001, i32 noundef %17)
  br label %18

18:                                               ; preds = %14, %4
  %19 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %19, i32 noundef -2)
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = call i32 @lua_setfenv(%struct.lua_State* noundef %20, i32 noundef -2)
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = load i8*, i8** %8, align 8
  call void @lua_setfield(%struct.lua_State* noundef %22, i32 noundef -3, i8* noundef %23)
  ret void
}

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_getfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_pclose(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct._IO_FILE**, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_checkudata(%struct.lua_State* noundef %5, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %7 = bitcast i8* %6 to %struct._IO_FILE**
  store %struct._IO_FILE** %7, %struct._IO_FILE*** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load %struct._IO_FILE**, %struct._IO_FILE*** %3, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct._IO_FILE**, %struct._IO_FILE*** %3, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %11, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pushresult(%struct.lua_State* noundef %12, i32 noundef %13, i8* noundef null)
  ret i32 %14
}

declare dso_local i32 @lua_setfenv(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_newmetatable(%struct.lua_State* noundef, i8* noundef) #1

declare dso_local void @lua_pushvalue(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_close(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @lua_type(%struct.lua_State* noundef %3, i32 noundef 1)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_rawgeti(%struct.lua_State* noundef %7, i32 noundef -10001, i32 noundef 2)
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %9)
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i32 @aux_close(%struct.lua_State* noundef %11)
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_flush(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %4)
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5)
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @pushresult(%struct.lua_State* noundef %3, i32 noundef %8, i8* noundef null)
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_lines(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %3)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @aux_lines(%struct.lua_State* noundef %5, i32 noundef 1, i32 noundef 0)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_read(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %4)
  %6 = call i32 @g_read(%struct.lua_State* noundef %3, %struct._IO_FILE* noundef %5, i32 noundef 2)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_seek(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %7)
  store %struct._IO_FILE* %8, %struct._IO_FILE** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %10 = call i32 @luaL_checkoption(%struct.lua_State* noundef %9, i32 noundef 2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8** noundef getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i64 @luaL_optinteger(%struct.lua_State* noundef %11, i32 noundef 3, i64 noundef 0)
  store i64 %12, i64* %6, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fseek(%struct._IO_FILE* noundef %13, i64 noundef %14, i32 noundef %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = call i32 @pushresult(%struct.lua_State* noundef %23, i32 noundef 0, i8* noundef null)
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %28 = call i64 @ftell(%struct._IO_FILE* noundef %27)
  call void @lua_pushinteger(%struct.lua_State* noundef %26, i64 noundef %28)
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_setvbuf(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %7)
  store %struct._IO_FILE* %8, %struct._IO_FILE** %3, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @luaL_checkoption(%struct.lua_State* noundef %9, i32 noundef 2, i8* noundef null, i8** noundef getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i64 0, i64 0))
  store i32 %10, i32* %4, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i64 @luaL_optinteger(%struct.lua_State* noundef %11, i32 noundef 3, i64 noundef 8192)
  store i64 %12, i64* %5, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @setvbuf(%struct._IO_FILE* noundef %13, i8* noundef null, i32 noundef %17, i64 noundef %18) #5
  store i32 %19, i32* %6, align 4
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @pushresult(%struct.lua_State* noundef %20, i32 noundef %23, i8* noundef null)
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_write(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %4)
  %6 = call i32 @g_write(%struct.lua_State* noundef %3, %struct._IO_FILE* noundef %5, i32 noundef 2)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_gc(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checkudata(%struct.lua_State* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %6 = bitcast i8* %5 to %struct._IO_FILE**
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %3, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i32 @aux_close(%struct.lua_State* noundef %11)
  br label %13

13:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_tostring(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checkudata(%struct.lua_State* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %6 = bitcast i8* %5 to %struct._IO_FILE**
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %3, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %11, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 noundef 13)
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %15 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %13, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), %struct._IO_FILE* noundef %14)
  br label %16

16:                                               ; preds = %12, %10
  ret i32 1
}

declare dso_local i32 @lua_type(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_rawgeti(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct._IO_FILE* @tofile(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checkudata(%struct.lua_State* noundef %4, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %6 = bitcast i8* %5 to %struct._IO_FILE**
  store %struct._IO_FILE** %6, %struct._IO_FILE*** %3, align 8
  %7 = load %struct._IO_FILE**, %struct._IO_FILE*** %3, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %11, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0))
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct._IO_FILE**, %struct._IO_FILE*** %3, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  ret %struct._IO_FILE* %15
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aux_close(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_getfenv(%struct.lua_State* noundef %3, i32 noundef 1)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_getfield(%struct.lua_State* noundef %4, i32 noundef -1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* noundef %5, i32 noundef -1)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 %6(%struct.lua_State* noundef %7)
  ret i32 %8
}

declare dso_local i8* @luaL_checkudata(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local void @lua_getfenv(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = call i32* @__errno_location() #6
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushboolean(%struct.lua_State* noundef %14, i32 noundef 1)
  store i32 1, i32* %4, align 4
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %16)
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @strerror(i32 noundef %22) #5
  %24 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* noundef %21, i8* noundef %23)
  br label %30

25:                                               ; preds = %15
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @strerror(i32 noundef %27) #5
  %29 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %26, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %28)
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %31, i64 noundef %33)
  store i32 3, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #2

declare dso_local void @lua_pushboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushnil(%struct.lua_State* noundef) #1

declare dso_local i8* @lua_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) #3

declare dso_local void @lua_pushinteger(%struct.lua_State* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @aux_lines(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  call void @lua_pushvalue(%struct.lua_State* noundef %7, i32 noundef %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i32, i32* %6, align 4
  call void @lua_pushboolean(%struct.lua_State* noundef %9, i32 noundef %10)
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %11, i32 (%struct.lua_State*)* noundef @io_readline, i32 noundef 2)
  ret void
}

declare dso_local void @lua_pushcclosure(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_readline(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i8* @lua_touserdata(%struct.lua_State* noundef %6, i32 noundef -10003)
  %8 = bitcast i8* %7 to %struct._IO_FILE**
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** %4, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %11 = icmp eq %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %18 = call i32 @read_line(%struct.lua_State* noundef %16, %struct._IO_FILE* noundef %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %20 = call i32 @ferror(%struct._IO_FILE* noundef %19) #5
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = call i32* @__errno_location() #6
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @strerror(i32 noundef %25) #5
  %27 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %23, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %26)
  store i32 %27, i32* %2, align 4
  br label %42

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %42

32:                                               ; preds = %28
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = call i32 @lua_toboolean(%struct.lua_State* noundef %33, i32 noundef -10004)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %37, i32 noundef 0)
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %38, i32 noundef -10003)
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = call i32 @aux_close(%struct.lua_State* noundef %39)
  br label %41

41:                                               ; preds = %36, %32
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %31, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i8* @lua_touserdata(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_line(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.luaL_Buffer, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaL_buffinit(%struct.lua_State* noundef %9, %struct.luaL_Buffer* noundef %6)
  br label %10

10:                                               ; preds = %45, %2
  %11 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* noundef %6)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %14 = call i8* @fgets(i8* noundef %12, i32 noundef 8192, %struct._IO_FILE* noundef %13)
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  call void @luaL_pushresult(%struct.luaL_Buffer* noundef %6)
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = call i64 @lua_objlen(%struct.lua_State* noundef %17, i32 noundef -1)
  %19 = icmp ugt i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %10
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @strlen(i8* noundef %22) #7
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 10
  br i1 %33, label %34, label %39

34:                                               ; preds = %26, %21
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 %35
  store i8* %38, i8** %36, align 8
  br label %45

39:                                               ; preds = %26
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %6, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %41
  store i8* %44, i8** %42, align 8
  call void @luaL_pushresult(%struct.luaL_Buffer* noundef %6)
  store i32 1, i32* %3, align 4
  br label %46

45:                                               ; preds = %34
  br label %10

46:                                               ; preds = %39, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #3

declare dso_local i32 @lua_toboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @luaL_buffinit(%struct.lua_State* noundef, %struct.luaL_Buffer* noundef) #1

declare dso_local i8* @luaL_prepbuffer(%struct.luaL_Buffer* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @luaL_pushresult(%struct.luaL_Buffer* noundef) #1

declare dso_local i64 @lua_objlen(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @g_read(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = call i32 @lua_gettop(%struct.lua_State* noundef %13)
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %8, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @clearerr(%struct._IO_FILE* noundef %16) #5
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %22 = call i32 @read_line(%struct.lua_State* noundef %20, %struct._IO_FILE* noundef %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  br label %107

25:                                               ; preds = %3
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 20
  call void @luaL_checkstack(%struct.lua_State* noundef %26, i32 noundef %28, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %103, %25
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %31, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i1 [ false, %30 ], [ %36, %34 ]
  br i1 %38, label %39, label %106

39:                                               ; preds = %37
  %40 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @lua_type(%struct.lua_State* noundef %40, i32 noundef %41)
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @lua_tointeger(%struct.lua_State* noundef %45, i32 noundef %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %53 = call i32 @test_eof(%struct.lua_State* noundef %51, %struct._IO_FILE* noundef %52)
  br label %59

54:                                               ; preds = %44
  %55 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @read_chars(%struct.lua_State* noundef %55, %struct._IO_FILE* noundef %56, i64 noundef %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i32 [ %53, %50 ], [ %58, %54 ]
  store i32 %60, i32* %9, align 4
  br label %102

61:                                               ; preds = %39
  %62 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i8* @lua_tolstring(%struct.lua_State* noundef %62, i32 noundef %63, i64* noundef null)
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 42
  br i1 %72, label %78, label %73

73:                                               ; preds = %67, %61
  %74 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @luaL_argerror(%struct.lua_State* noundef %74, i32 noundef %75, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %73, %67
  %79 = phi i1 [ true, %67 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  switch i32 %84, label %97 [
    i32 110, label %85
    i32 108, label %89
    i32 97, label %93
  ]

85:                                               ; preds = %78
  %86 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %88 = call i32 @read_number(%struct.lua_State* noundef %86, %struct._IO_FILE* noundef %87)
  store i32 %88, i32* %9, align 4
  br label %101

89:                                               ; preds = %78
  %90 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %92 = call i32 @read_line(%struct.lua_State* noundef %90, %struct._IO_FILE* noundef %91)
  store i32 %92, i32* %9, align 4
  br label %101

93:                                               ; preds = %78
  %94 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %96 = call i32 @read_chars(%struct.lua_State* noundef %94, %struct._IO_FILE* noundef %95, i64 noundef -1)
  store i32 1, i32* %9, align 4
  br label %101

97:                                               ; preds = %78
  %98 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @luaL_argerror(%struct.lua_State* noundef %98, i32 noundef %99, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  store i32 %100, i32* %4, align 4
  br label %124

101:                                              ; preds = %93, %89, %85
  br label %102

102:                                              ; preds = %101, %59
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %30, !llvm.loop !4

106:                                              ; preds = %37
  br label %107

107:                                              ; preds = %106, %19
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %109 = call i32 @ferror(%struct._IO_FILE* noundef %108) #5
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %113 = call i32 @pushresult(%struct.lua_State* noundef %112, i32 noundef 0, i8* noundef null)
  store i32 %113, i32* %4, align 4
  br label %124

114:                                              ; preds = %107
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* noundef %118, i32 noundef -2)
  %119 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %119)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %120, %111, %97
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

; Function Attrs: nounwind
declare dso_local void @clearerr(%struct._IO_FILE* noundef) #3

declare dso_local void @luaL_checkstack(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @lua_tointeger(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_eof(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %7 = call i32 @getc(%struct._IO_FILE* noundef %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %10 = call i32 @ungetc(i32 noundef %8, %struct._IO_FILE* noundef %9)
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %11, i8* noundef null, i64 noundef 0)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, -1
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_chars(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.luaL_Buffer, align 8
  %10 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @luaL_buffinit(%struct.lua_State* noundef %11, %struct.luaL_Buffer* noundef %9)
  store i64 8192, i64* %7, align 8
  br label %12

12:                                               ; preds = %38, %3
  %13 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* noundef %9)
  store i8* %13, i8** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i8*, i8** %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %23 = call i64 @fread(i8* noundef %20, i64 noundef 1, i64 noundef %21, %struct._IO_FILE* noundef %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %9, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %24
  store i8* %27, i8** %25, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %19
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %12, label %40, !llvm.loop !6

40:                                               ; preds = %38
  call void @luaL_pushresult(%struct.luaL_Buffer* noundef %9)
  %41 = load i64, i64* %6, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %45 = call i64 @lua_objlen(%struct.lua_State* noundef %44, i32 noundef -1)
  %46 = icmp ugt i64 %45, 0
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ true, %40 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local i32 @luaL_argerror(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_number(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), double* noundef %6)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load double, double* %6, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %11, double noundef %12)
  store i32 1, i32* %3, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @lua_pushlstring(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local void @lua_pushnumber(%struct.lua_State* noundef, double noundef) #1

declare dso_local i32 @luaL_checkoption(%struct.lua_State* noundef, i32 noundef, i8* noundef, i8** noundef) #1

declare dso_local i64 @luaL_optinteger(%struct.lua_State* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @fseek(%struct._IO_FILE* noundef, i64 noundef, i32 noundef) #1

declare dso_local i64 @ftell(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @setvbuf(%struct._IO_FILE* noundef, i8* noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @g_write(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = call i32 @lua_gettop(%struct.lua_State* noundef %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %53, %3
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @lua_type(%struct.lua_State* noundef %19, i32 noundef %20)
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call double @lua_tonumber(%struct.lua_State* noundef %28, i32 noundef %29)
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), double noundef %30)
  %32 = icmp sgt i32 %31, 0
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi i1 [ false, %23 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %52

36:                                               ; preds = %18
  %37 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @luaL_checklstring(%struct.lua_State* noundef %37, i32 noundef %38, i64* noundef %9)
  store i8* %39, i8** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %46 = call i64 @fwrite(i8* noundef %43, i64 noundef 1, i64 noundef %44, %struct._IO_FILE* noundef %45)
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %42, %36
  %50 = phi i1 [ false, %36 ], [ %48, %42 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %33
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %14, !llvm.loop !7

56:                                               ; preds = %14
  %57 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @pushresult(%struct.lua_State* noundef %57, i32 noundef %58, i8* noundef null)
  ret i32 %59
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local double @lua_tonumber(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @luaL_checklstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @lua_createtable(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_flush(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @getiofile(%struct.lua_State* noundef %4, i32 noundef 2)
  %6 = call i32 @fflush(%struct._IO_FILE* noundef %5)
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @pushresult(%struct.lua_State* noundef %3, i32 noundef %8, i8* noundef null)
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_input(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @g_iofile(%struct.lua_State* noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_lines(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = call i32 @lua_type(%struct.lua_State* noundef %6, i32 noundef 1)
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_rawgeti(%struct.lua_State* noundef %10, i32 noundef -10001, i32 noundef 1)
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = call i32 @f_lines(%struct.lua_State* noundef %11)
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = call i8* @luaL_checklstring(%struct.lua_State* noundef %14, i32 noundef 1, i64* noundef null)
  store i8* %15, i8** %4, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %16)
  store %struct._IO_FILE** %17, %struct._IO_FILE*** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call noalias %struct._IO_FILE* @fopen(i8* noundef %18, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  %20 = load %struct._IO_FILE**, %struct._IO_FILE*** %5, align 8
  store %struct._IO_FILE* %19, %struct._IO_FILE** %20, align 8
  %21 = load %struct._IO_FILE**, %struct._IO_FILE*** %5, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %23 = icmp eq %struct._IO_FILE* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = load i8*, i8** %4, align 8
  call void @fileerror(%struct.lua_State* noundef %25, i32 noundef 1, i8* noundef %26)
  br label %27

27:                                               ; preds = %24, %13
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = call i32 @lua_gettop(%struct.lua_State* noundef %29)
  call void @aux_lines(%struct.lua_State* noundef %28, i32 noundef %30, i32 noundef 1)
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_open(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* noundef %6, i32 noundef 1, i64* noundef null)
  store i8* %7, i8** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i8* @luaL_optlstring(%struct.lua_State* noundef %8, i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64* noundef null)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %10)
  store %struct._IO_FILE** %11, %struct._IO_FILE*** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call noalias %struct._IO_FILE* @fopen(i8* noundef %12, i8* noundef %13)
  %15 = load %struct._IO_FILE**, %struct._IO_FILE*** %5, align 8
  store %struct._IO_FILE* %14, %struct._IO_FILE** %15, align 8
  %16 = load %struct._IO_FILE**, %struct._IO_FILE*** %5, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @pushresult(%struct.lua_State* noundef %20, i32 noundef 0, i8* noundef %21)
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 1, %23 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_output(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i32 @g_iofile(%struct.lua_State* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_popen(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i8* @luaL_checklstring(%struct.lua_State* noundef %6, i32 noundef 1, i64* noundef null)
  store i8* %7, i8** %3, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i8* @luaL_optlstring(%struct.lua_State* noundef %8, i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64* noundef null)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %10)
  store %struct._IO_FILE** %11, %struct._IO_FILE*** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %14, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0))
  %16 = load %struct._IO_FILE**, %struct._IO_FILE*** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %16, align 8
  %17 = load %struct._IO_FILE**, %struct._IO_FILE*** %5, align 8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @pushresult(%struct.lua_State* noundef %21, i32 noundef 0, i8* noundef %22)
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 1, %24 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_read(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @getiofile(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call i32 @g_read(%struct.lua_State* noundef %3, %struct._IO_FILE* noundef %5, i32 noundef 1)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_tmpfile(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %4)
  store %struct._IO_FILE** %5, %struct._IO_FILE*** %3, align 8
  %6 = call noalias %struct._IO_FILE* @tmpfile()
  %7 = load %struct._IO_FILE**, %struct._IO_FILE*** %3, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** %7, align 8
  %8 = load %struct._IO_FILE**, %struct._IO_FILE*** %3, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i32 @pushresult(%struct.lua_State* noundef %12, i32 noundef 0, i8* noundef null)
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ %13, %11 ], [ 1, %14 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_type(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkany(%struct.lua_State* noundef %4, i32 noundef 1)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @lua_touserdata(%struct.lua_State* noundef %5, i32 noundef 1)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_getfield(%struct.lua_State* noundef %7, i32 noundef -10000, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i32 @lua_getmetatable(%struct.lua_State* noundef %11, i32 noundef 1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %16 = call i32 @lua_rawequal(%struct.lua_State* noundef %15, i32 noundef -2, i32 noundef -1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10, %1
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %19)
  br label %30

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = bitcast i8* %21 to %struct._IO_FILE**
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = icmp eq %struct._IO_FILE* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %26, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i64 noundef 11)
  br label %29

27:                                               ; preds = %20
  %28 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushlstring(%struct.lua_State* noundef %28, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i64 noundef 4)
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %18
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_write(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call %struct._IO_FILE* @getiofile(%struct.lua_State* noundef %4, i32 noundef 2)
  %6 = call i32 @g_write(%struct.lua_State* noundef %3, %struct._IO_FILE* noundef %5, i32 noundef 1)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal %struct._IO_FILE* @getiofile(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i32, i32* %4, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %6, i32 noundef -10001, i32 noundef %7)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i8* @lua_touserdata(%struct.lua_State* noundef %8, i32 noundef -1)
  %10 = bitcast i8* %9 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** %5, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* @fnames, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %15, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* noundef %20)
  br label %22

22:                                               ; preds = %14, %2
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  ret %struct._IO_FILE* %23
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @g_iofile(%struct.lua_State* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = call i32 @lua_type(%struct.lua_State* noundef %9, i32 noundef 1)
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = call i8* @lua_tolstring(%struct.lua_State* noundef %13, i32 noundef 1, i64* noundef null)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %18)
  store %struct._IO_FILE** %19, %struct._IO_FILE*** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call noalias %struct._IO_FILE* @fopen(i8* noundef %20, i8* noundef %21)
  %23 = load %struct._IO_FILE**, %struct._IO_FILE*** %8, align 8
  store %struct._IO_FILE* %22, %struct._IO_FILE** %23, align 8
  %24 = load %struct._IO_FILE**, %struct._IO_FILE*** %8, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %26 = icmp eq %struct._IO_FILE* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = load i8*, i8** %7, align 8
  call void @fileerror(%struct.lua_State* noundef %28, i32 noundef 1, i8* noundef %29)
  br label %30

30:                                               ; preds = %27, %17
  br label %35

31:                                               ; preds = %12
  %32 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %33 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %32)
  %34 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %34, i32 noundef 1)
  br label %35

35:                                               ; preds = %31, %30
  %36 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %37 = load i32, i32* %5, align 4
  call void @lua_rawseti(%struct.lua_State* noundef %36, i32 noundef -10001, i32 noundef %37)
  br label %38

38:                                               ; preds = %35, %3
  %39 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %40 = load i32, i32* %5, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %39, i32 noundef -10001, i32 noundef %40)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct._IO_FILE** @newfile(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct._IO_FILE**, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @lua_newuserdata(%struct.lua_State* noundef %4, i64 noundef 8)
  %6 = bitcast i8* %5 to %struct._IO_FILE**
  store %struct._IO_FILE** %6, %struct._IO_FILE*** %3, align 8
  %7 = load %struct._IO_FILE**, %struct._IO_FILE*** %3, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_getfield(%struct.lua_State* noundef %8, i32 noundef -10000, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @lua_setmetatable(%struct.lua_State* noundef %9, i32 noundef -2)
  %11 = load %struct._IO_FILE**, %struct._IO_FILE*** %3, align 8
  ret %struct._IO_FILE** %11
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @fileerror(%struct.lua_State* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32* @__errno_location() #6
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @strerror(i32 noundef %10) #5
  %12 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* noundef %8, i8* noundef %11)
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = call i8* @lua_tolstring(%struct.lua_State* noundef %15, i32 noundef -1, i64* noundef null)
  %17 = call i32 @luaL_argerror(%struct.lua_State* noundef %13, i32 noundef %14, i8* noundef %16)
  ret void
}

declare dso_local void @lua_rawseti(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i8* @lua_newuserdata(%struct.lua_State* noundef, i64 noundef) #1

declare dso_local i32 @lua_setmetatable(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @luaL_optlstring(%struct.lua_State* noundef, i32 noundef, i8* noundef, i64* noundef) #1

declare dso_local noalias %struct._IO_FILE* @tmpfile() #1

declare dso_local void @luaL_checkany(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_getmetatable(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_rawequal(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind readonly willreturn }

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
