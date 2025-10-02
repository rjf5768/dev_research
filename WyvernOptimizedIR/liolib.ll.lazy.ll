; ModuleID = './liolib.ll'
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
  call void @createmeta(%struct.lua_State* noundef %0)
  call void @newfenv(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef nonnull @io_fclose)
  call void @lua_replace(%struct.lua_State* noundef %0, i32 noundef -10001) #5
  call void @luaL_register(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @iolib, i64 0, i64 0)) #5
  call void @newfenv(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef nonnull @io_noclose)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @createstdfile(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %2, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @createstdfile(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %3, i32 noundef 2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @createstdfile(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %4, i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #5
  call void @newfenv(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef nonnull @io_pclose)
  %5 = call i32 @lua_setfenv(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal void @createmeta(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @luaL_newmetatable(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #5
  call void @luaL_register(%struct.lua_State* noundef %0, i8* noundef null, %struct.luaL_Reg* noundef getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @flib, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @newfenv(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef %1) #0 {
  call void @lua_createtable(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 1) #5
  call void @lua_pushcclosure(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef %1, i32 noundef 0) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_fclose(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checkudata(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %3 = bitcast i8* %2 to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = call i32 @fclose(%struct._IO_FILE* noundef %4) #5
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8
  %8 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef %7, i8* noundef null)
  ret i32 %8
}

declare dso_local void @lua_replace(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_noclose(%struct.lua_State* noundef %0) #0 {
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i64 noundef 26) #5
  ret i32 2
}

; Function Attrs: noinline nounwind uwtable
define internal void @createstdfile(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %0)
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #5
  call void @lua_rawseti(%struct.lua_State* noundef %0, i32 noundef -10001, i32 noundef %2) #5
  br label %8

8:                                                ; preds = %7, %4
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -2) #5
  %9 = call i32 @lua_setfenv(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -3, i8* noundef %3) #5
  ret void
}

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_getfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_pclose(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checkudata(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %3 = bitcast i8* %2 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8
  %4 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef 0, i8* noundef null)
  ret i32 %4
}

declare dso_local i32 @lua_setfenv(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_newmetatable(%struct.lua_State* noundef, i8* noundef) #1

declare dso_local void @lua_pushvalue(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_close(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef -10001, i32 noundef 2) #5
  br label %5

5:                                                ; preds = %4, %1
  %6 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %0)
  %7 = call i32 @aux_close(%struct.lua_State* noundef %0)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_flush(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %0)
  %3 = call i32 @fflush(%struct._IO_FILE* noundef %2) #5
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef %5, i8* noundef null)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_lines(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %0)
  call void @aux_lines(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 0)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_read(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %0)
  %3 = call i32 @g_read(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %2, i32 noundef 2)
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_seek(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %0)
  %3 = call i32 @luaL_checkoption(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8** noundef getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_seek.modenames, i64 0, i64 0)) #5
  %4 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef 3, i64 noundef 0) #5
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* @f_seek.mode, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @fseek(%struct._IO_FILE* noundef %2, i64 noundef %4, i32 noundef %7) #5
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef 0, i8* noundef null)
  br label %13

11:                                               ; preds = %1
  %12 = call i64 @ftell(%struct._IO_FILE* noundef %2) #5
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %12) #5
  br label %13

13:                                               ; preds = %11, %9
  %.0 = phi i32 [ %10, %9 ], [ 1, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_setvbuf(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %0)
  %3 = call i32 @luaL_checkoption(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef null, i8** noundef getelementptr inbounds ([4 x i8*], [4 x i8*]* @f_setvbuf.modenames, i64 0, i64 0)) #5
  %4 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef 3, i64 noundef 8192) #5
  %5 = sext i32 %3 to i64
  %6 = getelementptr inbounds [3 x i32], [3 x i32]* @f_setvbuf.mode, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @setvbuf(%struct._IO_FILE* noundef %2, i8* noundef null, i32 noundef %7, i64 noundef %4) #5
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef %10, i8* noundef null)
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f_write(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %0)
  %3 = call i32 @g_write(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %2, i32 noundef 2)
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_gc(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checkudata(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %3 = bitcast i8* %2 to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %.not = icmp eq %struct._IO_FILE* %4, null
  br i1 %.not, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @aux_close(%struct.lua_State* noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_tostring(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checkudata(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %3 = bitcast i8* %2 to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 noundef 13) #5
  br label %9

7:                                                ; preds = %1
  %8 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), %struct._IO_FILE* noundef nonnull %4) #5
  br label %9

9:                                                ; preds = %7, %6
  ret i32 1
}

declare dso_local i32 @lua_type(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_rawgeti(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct._IO_FILE* @tofile(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checkudata(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %3 = bitcast i8* %2 to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #5
  br label %8

8:                                                ; preds = %6, %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  ret %struct._IO_FILE* %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @aux_close(%struct.lua_State* noundef %0) #0 {
  call void @lua_getfenv(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0)) #5
  %2 = call i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %3 = call i32 %2(%struct.lua_State* noundef %0) #5
  ret i32 %3
}

declare dso_local i8* @luaL_checkudata(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local void @lua_getfenv(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = call i32* @__errno_location() #6
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %3
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef 1) #5
  br label %16

7:                                                ; preds = %3
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  %.not1 = icmp eq i8* %2, null
  br i1 %.not1, label %11, label %8

8:                                                ; preds = %7
  %9 = call i8* @strerror(i32 noundef %5) #5
  %10 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* noundef nonnull %2, i8* noundef %9) #5
  br label %14

11:                                               ; preds = %7
  %12 = call i8* @strerror(i32 noundef %5) #5
  %13 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %12) #5
  br label %14

14:                                               ; preds = %11, %8
  %15 = sext i32 %5 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %15) #5
  br label %16

16:                                               ; preds = %14, %6
  %.0 = phi i32 [ 1, %6 ], [ 3, %14 ]
  ret i32 %.0
}

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #2

declare dso_local void @lua_pushboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushnil(%struct.lua_State* noundef) #1

declare dso_local i8* @lua_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) #3

declare dso_local void @lua_pushinteger(%struct.lua_State* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @aux_lines(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef %1) #5
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef %2) #5
  call void @lua_pushcclosure(%struct.lua_State* noundef %0, i32 (%struct.lua_State*)* noundef nonnull @io_readline, i32 noundef 2) #5
  ret void
}

declare dso_local void @lua_pushcclosure(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_readline(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @lua_touserdata(%struct.lua_State* noundef %0, i32 noundef -10003) #5
  %3 = bitcast i8* %2 to %struct._IO_FILE**
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %5 = icmp eq %struct._IO_FILE* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0)) #5
  br label %8

8:                                                ; preds = %6, %1
  %9 = call i32 @read_line(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %4)
  %10 = call i32 @ferror(%struct._IO_FILE* noundef %4) #5
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %16, label %11

11:                                               ; preds = %8
  %12 = call i32* @__errno_location() #6
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @strerror(i32 noundef %13) #5
  %15 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %14) #5
  br label %23

16:                                               ; preds = %8
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %18, label %17

17:                                               ; preds = %16
  br label %23

18:                                               ; preds = %16
  %19 = call i32 @lua_toboolean(%struct.lua_State* noundef %0, i32 noundef -10004) #5
  %.not2 = icmp eq i32 %19, 0
  br i1 %.not2, label %22, label %20

20:                                               ; preds = %18
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 0) #5
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -10003) #5
  %21 = call i32 @aux_close(%struct.lua_State* noundef %0)
  br label %22

22:                                               ; preds = %20, %18
  br label %23

23:                                               ; preds = %22, %17, %11
  %.0 = phi i32 [ %15, %11 ], [ 1, %17 ], [ 0, %22 ]
  ret i32 %.0
}

declare dso_local i8* @lua_touserdata(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_line(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.luaL_Buffer, align 8
  call void @luaL_buffinit(%struct.lua_State* noundef %0, %struct.luaL_Buffer* noundef nonnull %3) #5
  br label %4

4:                                                ; preds = %28, %2
  %5 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* noundef nonnull %3) #5
  %6 = call i8* @fgets(i8* noundef %5, i32 noundef 8192, %struct._IO_FILE* noundef %1) #5
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  call void @luaL_pushresult(%struct.luaL_Buffer* noundef nonnull %3) #5
  %9 = call i64 @lua_objlen(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  br label %29

12:                                               ; preds = %4
  %13 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %5) #7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = add i64 %13, -1
  %17 = getelementptr inbounds i8, i8* %5, i64 %16
  %18 = load i8, i8* %17, align 1
  %.not = icmp eq i8 %18, 10
  br i1 %.not, label %23, label %19

19:                                               ; preds = %15, %12
  %20 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %13
  store i8* %22, i8** %20, align 8
  br label %28

23:                                               ; preds = %15
  %24 = add i64 %13, -1
  %25 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %3, i64 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %24
  store i8* %27, i8** %25, align 8
  call void @luaL_pushresult(%struct.luaL_Buffer* noundef nonnull %3) #5
  br label %29

28:                                               ; preds = %19
  br label %4

29:                                               ; preds = %23, %8
  %.0 = phi i32 [ %11, %8 ], [ 1, %23 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE* noundef) #3

declare dso_local i32 @lua_toboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @luaL_buffinit(%struct.lua_State* noundef, %struct.luaL_Buffer* noundef) #1

declare dso_local i8* @luaL_prepbuffer(%struct.luaL_Buffer* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @luaL_pushresult(%struct.luaL_Buffer* noundef) #1

declare dso_local i64 @lua_objlen(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @g_read(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1, i32 noundef %2) #0 {
  %4 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  %5 = add nsw i32 %4, -1
  call void @clearerr(%struct._IO_FILE* noundef %1) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = call i32 @read_line(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1)
  %9 = add nsw i32 %2, 1
  br label %54

10:                                               ; preds = %3
  %11 = add nsw i32 %4, 19
  call void @luaL_checkstack(%struct.lua_State* noundef %0, i32 noundef %11, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0)) #5
  br label %12

12:                                               ; preds = %51, %10
  %.04 = phi i32 [ %5, %10 ], [ %13, %51 ]
  %.02 = phi i32 [ 1, %10 ], [ %.2, %51 ]
  %.01 = phi i32 [ %2, %10 ], [ %52, %51 ]
  %13 = add nsw i32 %.04, -1
  %.not = icmp eq i32 %.04, 0
  br i1 %.not, label %16, label %14

14:                                               ; preds = %12
  %15 = icmp ne i32 %.02, 0
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i1 [ false, %12 ], [ %15, %14 ]
  br i1 %17, label %18, label %53

18:                                               ; preds = %16
  %19 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef %.01) #5
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = call i64 @lua_tointeger(%struct.lua_State* noundef %0, i32 noundef %.01) #5
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @test_eof(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1)
  br label %28

26:                                               ; preds = %21
  %27 = call i32 @read_chars(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1, i64 noundef %22)
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  br label %50

30:                                               ; preds = %18
  %31 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef %.01, i64* noundef null) #5
  %.not9 = icmp eq i8* %31, null
  br i1 %.not9, label %35, label %32

32:                                               ; preds = %30
  %33 = load i8, i8* %31, align 1
  %34 = icmp eq i8 %33, 42
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %30
  %36 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef %.01, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0)) #5
  br label %37

37:                                               ; preds = %35, %32
  %38 = getelementptr inbounds i8, i8* %31, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %47 [
    i32 110, label %41
    i32 108, label %43
    i32 97, label %45
  ]

41:                                               ; preds = %37
  %42 = call i32 @read_number(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1)
  br label %49

43:                                               ; preds = %37
  %44 = call i32 @read_line(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1)
  br label %49

45:                                               ; preds = %37
  %46 = call i32 @read_chars(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1, i64 noundef -1)
  br label %49

47:                                               ; preds = %37
  %48 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef %.01, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0)) #5
  br label %62

49:                                               ; preds = %45, %43, %41
  %.13 = phi i32 [ 1, %45 ], [ %44, %43 ], [ %42, %41 ]
  br label %50

50:                                               ; preds = %49, %28
  %.2 = phi i32 [ %29, %28 ], [ %.13, %49 ]
  br label %51

51:                                               ; preds = %50
  %52 = add nsw i32 %.01, 1
  br label %12, !llvm.loop !4

53:                                               ; preds = %16
  br label %54

54:                                               ; preds = %53, %7
  %.3 = phi i32 [ %8, %7 ], [ %.02, %53 ]
  %.1 = phi i32 [ %9, %7 ], [ %.01, %53 ]
  %55 = call i32 @ferror(%struct._IO_FILE* noundef %1) #5
  %.not7 = icmp eq i32 %55, 0
  br i1 %.not7, label %58, label %56

56:                                               ; preds = %54
  %57 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef 0, i8* noundef null)
  br label %62

58:                                               ; preds = %54
  %.not8 = icmp eq i32 %.3, 0
  br i1 %.not8, label %59, label %60

59:                                               ; preds = %58
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #5
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  br label %60

60:                                               ; preds = %59, %58
  %61 = sub nsw i32 %.1, %2
  br label %62

62:                                               ; preds = %60, %56, %47
  %.0 = phi i32 [ %57, %56 ], [ %61, %60 ], [ %48, %47 ]
  ret i32 %.0
}

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

; Function Attrs: nounwind
declare dso_local void @clearerr(%struct._IO_FILE* noundef) #3

declare dso_local void @luaL_checkstack(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @lua_tointeger(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_eof(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = call i32 @getc(%struct._IO_FILE* noundef %1) #5
  %4 = call i32 @ungetc(i32 noundef %3, %struct._IO_FILE* noundef %1) #5
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0) #5
  %5 = icmp ne i32 %3, -1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_chars(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.luaL_Buffer, align 8
  call void @luaL_buffinit(%struct.lua_State* noundef %0, %struct.luaL_Buffer* noundef nonnull %4) #5
  br label %5

5:                                                ; preds = %18, %3
  %.01 = phi i64 [ %2, %3 ], [ %14, %18 ]
  %.0 = phi i64 [ 8192, %3 ], [ %.1, %18 ]
  %6 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* noundef nonnull %4) #5
  %7 = icmp ugt i64 %.0, %.01
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %5
  %.1 = phi i64 [ %.01, %8 ], [ %.0, %5 ]
  %10 = call i64 @fread(i8* noundef %6, i64 noundef 1, i64 noundef %.1, %struct._IO_FILE* noundef %1) #5
  %11 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8* %13, i8** %11, align 8
  %14 = sub i64 %.01, %10
  br label %15

15:                                               ; preds = %9
  %.not = icmp eq i64 %14, 0
  br i1 %.not, label %18, label %16

16:                                               ; preds = %15
  %17 = icmp eq i64 %10, %.1
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i1 [ false, %15 ], [ %17, %16 ]
  br i1 %19, label %5, label %20, !llvm.loop !6

20:                                               ; preds = %18
  call void @luaL_pushresult(%struct.luaL_Buffer* noundef nonnull %4) #5
  %21 = icmp eq i64 %14, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = call i64 @lua_objlen(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %24 = icmp ne i64 %23, 0
  %phi.cast = zext i1 %24 to i32
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ 1, %20 ], [ %phi.cast, %22 ]
  ret i32 %26
}

declare dso_local i8* @lua_tolstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local i32 @luaL_argerror(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_number(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), double* noundef nonnull %3) #5
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load double, double* %3, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %7) #5
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %6
  %.0 = phi i32 [ 1, %6 ], [ 0, %8 ]
  ret i32 %.0
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
  %4 = alloca i64, align 8
  %5 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  br label %6

6:                                                ; preds = %27, %3
  %.02 = phi i32 [ %2, %3 ], [ %28, %27 ]
  %.01.in = phi i32 [ %5, %3 ], [ %.01, %27 ]
  %.0 = phi i32 [ 1, %3 ], [ %.1, %27 ]
  %.01 = add nsw i32 %.01.in, -1
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %29, label %7

7:                                                ; preds = %6
  %8 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef %.02) #5
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %.not4 = icmp eq i32 %.0, 0
  br i1 %.not4, label %15, label %11

11:                                               ; preds = %10
  %12 = call double @lua_tonumber(%struct.lua_State* noundef %0, i32 noundef %.02) #5
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), double noundef %12) #5
  %14 = icmp sgt i32 %13, 0
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i1 [ false, %10 ], [ %14, %11 ]
  br label %26

17:                                               ; preds = %7
  %18 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef %.02, i64* noundef nonnull %4) #5
  %.not3 = icmp eq i32 %.0, 0
  br i1 %.not3, label %24, label %19

19:                                               ; preds = %17
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @fwrite(i8* noundef %18, i64 noundef 1, i64 noundef %20, %struct._IO_FILE* noundef %1) #5
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i1 [ false, %17 ], [ %23, %19 ]
  br label %26

26:                                               ; preds = %24, %15
  %.1.in = phi i1 [ %16, %15 ], [ %25, %24 ]
  br label %27

27:                                               ; preds = %26
  %.1 = zext i1 %.1.in to i32
  %28 = add nsw i32 %.02, 1
  br label %6, !llvm.loop !7

29:                                               ; preds = %6
  %30 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef %.0, i8* noundef null)
  ret i32 %30
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local double @lua_tonumber(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i8* @luaL_checklstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local void @lua_createtable(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_flush(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct._IO_FILE* @getiofile(%struct.lua_State* noundef %0, i32 noundef 2)
  %3 = call i32 @fflush(%struct._IO_FILE* noundef %2) #5
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef %5, i8* noundef null)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_input(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @g_iofile(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_lines(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef -10001, i32 noundef 1) #5
  %5 = call i32 @f_lines(%struct.lua_State* noundef %0)
  br label %14

6:                                                ; preds = %1
  %7 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %8 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %0)
  %9 = call noalias %struct._IO_FILE* @fopen(i8* noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #5
  store %struct._IO_FILE* %9, %struct._IO_FILE** %8, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  call void @fileerror(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef %7)
  br label %12

12:                                               ; preds = %11, %6
  %13 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #5
  call void @aux_lines(%struct.lua_State* noundef %0, i32 noundef %13, i32 noundef 1)
  br label %14

14:                                               ; preds = %12, %4
  %.0 = phi i32 [ %5, %4 ], [ 1, %12 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_open(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %3 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64* noundef null) #5
  %4 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %0)
  %5 = call noalias %struct._IO_FILE* @fopen(i8* noundef %2, i8* noundef %3) #5
  store %struct._IO_FILE* %5, %struct._IO_FILE** %4, align 8
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef 0, i8* noundef %2)
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 1, %9 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_output(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @g_iofile(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_popen(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %3 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), i64* noundef null) #5
  %4 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %0)
  %5 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0)) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** %4, align 8
  br i1 true, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef 0, i8* noundef %2)
  br label %9

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i32 [ %7, %6 ], [ 1, %8 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_read(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct._IO_FILE* @getiofile(%struct.lua_State* noundef %0, i32 noundef 1)
  %3 = call i32 @g_read(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %2, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_tmpfile(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %0)
  %3 = call noalias %struct._IO_FILE* @tmpfile() #5
  store %struct._IO_FILE* %3, %struct._IO_FILE** %2, align 8
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 @pushresult(%struct.lua_State* noundef %0, i32 noundef 0, i8* noundef null)
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ 1, %7 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_type(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checkany(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %2 = call i8* @lua_touserdata(%struct.lua_State* noundef %0, i32 noundef 1) #5
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10000, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %3 = icmp eq i8* %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = call i32 @lua_getmetatable(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %8, label %6

6:                                                ; preds = %4
  %7 = call i32 @lua_rawequal(%struct.lua_State* noundef %0, i32 noundef -2, i32 noundef -1) #5
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %8, label %9

8:                                                ; preds = %6, %4, %1
  call void @lua_pushnil(%struct.lua_State* noundef %0) #5
  br label %16

9:                                                ; preds = %6
  %10 = bitcast i8* %2 to %struct._IO_FILE**
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %12 = icmp eq %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i64 noundef 11) #5
  br label %15

14:                                               ; preds = %9
  call void @lua_pushlstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i64 noundef 4) #5
  br label %15

15:                                               ; preds = %14, %13
  br label %16

16:                                               ; preds = %15, %8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @io_write(%struct.lua_State* noundef %0) #0 {
  %2 = call %struct._IO_FILE* @getiofile(%struct.lua_State* noundef %0, i32 noundef 2)
  %3 = call i32 @g_write(%struct.lua_State* noundef %0, %struct._IO_FILE* noundef %2, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define internal %struct._IO_FILE* @getiofile(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef -10001, i32 noundef %1) #5
  %3 = call i8* @lua_touserdata(%struct.lua_State* noundef %0, i32 noundef -1) #5
  %4 = bitcast i8* %3 to %struct._IO_FILE**
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = icmp eq %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = add nsw i32 %1, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* @fnames, i64 0, i64 %9
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* noundef %11) #5
  br label %13

13:                                               ; preds = %7, %2
  ret %struct._IO_FILE* %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @g_iofile(%struct.lua_State* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #5
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #5
  %.not = icmp eq i8* %7, null
  br i1 %.not, label %14, label %8

8:                                                ; preds = %6
  %9 = call %struct._IO_FILE** @newfile(%struct.lua_State* noundef %0)
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %7, i8* noundef %2) #5
  store %struct._IO_FILE* %10, %struct._IO_FILE** %9, align 8
  %11 = icmp eq %struct._IO_FILE* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @fileerror(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef nonnull %7)
  br label %13

13:                                               ; preds = %12, %8
  br label %16

14:                                               ; preds = %6
  %15 = call %struct._IO_FILE* @tofile(%struct.lua_State* noundef %0)
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 1) #5
  br label %16

16:                                               ; preds = %14, %13
  call void @lua_rawseti(%struct.lua_State* noundef %0, i32 noundef -10001, i32 noundef %1) #5
  br label %17

17:                                               ; preds = %16, %3
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef -10001, i32 noundef %1) #5
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal %struct._IO_FILE** @newfile(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @lua_newuserdata(%struct.lua_State* noundef %0, i64 noundef 8) #5
  %3 = bitcast i8* %2 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -10000, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #5
  %4 = call i32 @lua_setmetatable(%struct.lua_State* noundef %0, i32 noundef -2) #5
  ret %struct._IO_FILE** %3
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @fileerror(%struct.lua_State* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = call i32* @__errno_location() #6
  %5 = load i32, i32* %4, align 4
  %6 = call i8* @strerror(i32 noundef %5) #5
  %7 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* noundef %2, i8* noundef %6) #5
  %8 = call i8* @lua_tolstring(%struct.lua_State* noundef %0, i32 noundef -1, i64* noundef null) #5
  %9 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef %1, i8* noundef %8) #5
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
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
