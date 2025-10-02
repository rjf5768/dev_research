; ModuleID = './loslib.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/loslib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [8192 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [3 x i8] c"os\00", align 1
@syslib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @os_clock }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @os_date }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @os_difftime }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @os_execute }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @os_exit }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @os_getenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @os_remove }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @os_rename }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @os_setlocale }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @os_time }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @os_tmpname }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"difftime\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"getenv\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"setlocale\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"tmpname\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"*t\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"wday\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"yday\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.23 = private unnamed_addr constant [30 x i8] c"Cannot execute system calls!\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@os_setlocale.cat = internal constant [6 x i32] [i32 6, i32 3, i32 0, i32 4, i32 1, i32 2], align 16
@os_setlocale.catnames = internal constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i8* null], align 16
@.str.25 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"collate\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"ctype\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"monetary\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"field '%s' missing in date table\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"unable to generate a unique filename\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @luaopen_os(%struct.lua_State* noundef %0) #0 {
  call void @luaL_register(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @syslib, i64 0, i64 0)) #8
  ret i32 1
}

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_clock(%struct.lua_State* noundef %0) #0 {
  %2 = call i64 @clock() #8
  %3 = sitofp i64 %2 to double
  %4 = fdiv double %3, 1.000000e+06
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %4) #8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_date(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.luaL_Buffer, align 8
  %5 = alloca [200 x i8], align 16
  %6 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64* noundef null) #8
  %7 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 2) #8
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i64 @time(i64* noundef null) #8
  br label %14

11:                                               ; preds = %1
  %12 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 2) #8
  %13 = fptosi double %12 to i64
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i64 [ %10, %9 ], [ %13, %11 ]
  store i64 %15, i64* %2, align 8
  %16 = load i8, i8* %6, align 1
  %17 = icmp eq i8 %16, 33
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call %struct.tm* @gmtime(i64* noundef nonnull %2) #8
  %20 = getelementptr inbounds i8, i8* %6, i64 1
  br label %23

21:                                               ; preds = %14
  %22 = call %struct.tm* @localtime(i64* noundef nonnull %2) #8
  br label %23

23:                                               ; preds = %21, %18
  %.01 = phi i8* [ %20, %18 ], [ %6, %21 ]
  %.0 = phi %struct.tm* [ %19, %18 ], [ %22, %21 ]
  %24 = icmp eq %struct.tm* %.0, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  call void @lua_pushnil(%struct.lua_State* noundef %0) #8
  br label %88

26:                                               ; preds = %23
  %27 = call i32 @strcmp(i8* noundef nonnull %.01, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %26
  call void @lua_createtable(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 9) #8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %.0, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  call void @setfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 noundef %31)
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %.0, i64 0, i32 1
  %33 = load i32, i32* %32, align 4
  call void @setfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 noundef %33)
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %.0, i64 0, i32 2
  %35 = load i32, i32* %34, align 8
  call void @setfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 noundef %35)
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %.0, i64 0, i32 3
  %37 = load i32, i32* %36, align 4
  call void @setfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 noundef %37)
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %.0, i64 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  call void @setfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %40)
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %.0, i64 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1900
  call void @setfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 noundef %43)
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %.0, i64 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  call void @setfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 noundef %46)
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %.0, i64 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  call void @setfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 noundef %49)
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %.0, i64 0, i32 8
  %51 = load i32, i32* %50, align 8
  call void @setboolfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 noundef %51)
  br label %87

52:                                               ; preds = %26
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  store i8 37, i8* %53, align 1
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 2
  store i8 0, i8* %54, align 1
  call void @luaL_buffinit(%struct.lua_State* noundef %0, %struct.luaL_Buffer* noundef nonnull %4) #8
  br label %55

55:                                               ; preds = %84, %52
  %.1 = phi i8* [ %.01, %52 ], [ %85, %84 ]
  %56 = load i8, i8* %.1, align 1
  %.not = icmp eq i8 %56, 0
  br i1 %.not, label %86, label %57

57:                                               ; preds = %55
  %58 = load i8, i8* %.1, align 1
  %.not2 = icmp eq i8 %58, 37
  br i1 %.not2, label %59, label %63

59:                                               ; preds = %57
  %60 = getelementptr inbounds i8, i8* %.1, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59, %57
  %64 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 3, i64 8192
  %67 = icmp ult i8* %65, %66
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* noundef nonnull %4) #8
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i8, i8* %.1, align 1
  %72 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %4, i64 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %74, i8** %72, align 8
  store i8 %71, i8* %73, align 1
  br label %83

75:                                               ; preds = %59
  %76 = getelementptr inbounds i8, i8* %.1, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 1
  store i8 %77, i8* %78, align 1
  %79 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %80 = getelementptr inbounds [3 x i8], [3 x i8]* %3, i64 0, i64 0
  %81 = call i64 @strftime(i8* noundef nonnull %79, i64 noundef 200, i8* noundef nonnull %80, %struct.tm* noundef nonnull %.0) #8
  %82 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  call void @luaL_addlstring(%struct.luaL_Buffer* noundef nonnull %4, i8* noundef nonnull %82, i64 noundef %81) #8
  br label %83

83:                                               ; preds = %75, %70
  %.2 = phi i8* [ %.1, %70 ], [ %76, %75 ]
  br label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %55, !llvm.loop !4

86:                                               ; preds = %55
  call void @luaL_pushresult(%struct.luaL_Buffer* noundef nonnull %4) #8
  br label %87

87:                                               ; preds = %86, %29
  br label %88

88:                                               ; preds = %87, %25
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_difftime(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #8
  %3 = fptosi double %2 to i64
  %4 = call double @luaL_optnumber(%struct.lua_State* noundef %0, i32 noundef 2, double noundef 0.000000e+00) #8
  %5 = fptosi double %4 to i64
  %6 = call double @difftime(i64 noundef %3, i64 noundef %5) #10
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %6) #8
  ret i32 1
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal i32 @os_execute(%struct.lua_State* nocapture noundef readnone %0) #2 {
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %2) #11
  call void @abort() #12
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal i32 @os_exit(%struct.lua_State* noundef %0) #2 {
  %2 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef 1, i64 noundef 0) #8
  %3 = trunc i64 %2 to i32
  call void @exit(i32 noundef %3) #12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_getenv(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #8
  %3 = call i8* @getenv(i8* noundef %2) #8
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %3) #8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_remove(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #8
  %3 = call i32 @remove(i8* noundef %2) #8
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @os_pushresult(%struct.lua_State* noundef %0, i32 noundef %5, i8* noundef %2)
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_rename(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 1, i64* noundef null) #8
  %3 = call i8* @luaL_checklstring(%struct.lua_State* noundef %0, i32 noundef 2, i64* noundef null) #8
  %4 = call i32 @rename(i8* noundef %2, i8* noundef %3) #8
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @os_pushresult(%struct.lua_State* noundef %0, i32 noundef %6, i8* noundef %2)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_setlocale(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef null, i64* noundef null) #8
  %3 = call i32 @luaL_checkoption(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8** noundef getelementptr inbounds ([7 x i8*], [7 x i8*]* @os_setlocale.catnames, i64 0, i64 0)) #8
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* @os_setlocale.cat, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = call i8* @setlocale(i32 noundef %6, i8* noundef %2) #8
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef %7) #8
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_time(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.tm, align 8
  %3 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 1) #8
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i64 @time(i64* noundef null) #8
  br label %25

7:                                                ; preds = %1
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #8
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 1) #8
  %8 = call i32 @getfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 noundef 0)
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = call i32 @getfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 noundef 0)
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = call i32 @getfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 noundef 12)
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 2
  store i32 %12, i32* %13, align 8
  %14 = call i32 @getfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 noundef -1)
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = call i32 @getfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef -1)
  %17 = add nsw i32 %16, -1
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 4
  store i32 %17, i32* %18, align 8
  %19 = call i32 @getfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 noundef -1)
  %20 = add nsw i32 %19, -1900
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = call i32 @getboolfield(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %2, i64 0, i32 8
  store i32 %22, i32* %23, align 8
  %24 = call i64 @mktime(%struct.tm* noundef nonnull %2) #8
  br label %25

25:                                               ; preds = %7, %5
  %.0 = phi i64 [ %6, %5 ], [ %24, %7 ]
  %26 = icmp eq i64 %.0, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  call void @lua_pushnil(%struct.lua_State* noundef %0) #8
  br label %30

28:                                               ; preds = %25
  %29 = sitofp i64 %.0 to double
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %29) #8
  br label %30

30:                                               ; preds = %28, %27
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_tmpname(%struct.lua_State* noundef %0) #0 {
  %2 = alloca [20 x i8], align 16
  %3 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %4 = call i8* @tmpnam(i8* noundef nonnull %3) #8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0)) #8
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  call void @lua_pushstring(%struct.lua_State* noundef %0, i8* noundef nonnull %9) #8
  br label %10

10:                                               ; preds = %8, %6
  %.0 = phi i32 [ %7, %6 ], [ 1, %8 ]
  ret i32 %.0
}

declare dso_local void @lua_pushnumber(%struct.lua_State* noundef, double noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #3

declare dso_local i8* @luaL_optlstring(%struct.lua_State* noundef, i32 noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @lua_type(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #3

declare dso_local double @luaL_checknumber(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime(i64* noundef) #3

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) #3

declare dso_local void @lua_pushnil(%struct.lua_State* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

declare dso_local void @lua_createtable(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @setfield(%struct.lua_State* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = sext i32 %2 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %4) #8
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef %1) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @setboolfield(%struct.lua_State* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef %2) #8
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef %1) #8
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

declare dso_local void @luaL_buffinit(%struct.lua_State* noundef, %struct.luaL_Buffer* noundef) #1

declare dso_local i8* @luaL_prepbuffer(%struct.luaL_Buffer* noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @strftime(i8* noundef, i64 noundef, i8* noundef, %struct.tm* noundef) #3

declare dso_local void @luaL_addlstring(%struct.luaL_Buffer* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @luaL_pushresult(%struct.luaL_Buffer* noundef) #1

declare dso_local void @lua_pushinteger(%struct.lua_State* noundef, i64 noundef) #1

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @lua_pushboolean(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local double @difftime(i64 noundef, i64 noundef) #5

declare dso_local double @luaL_optnumber(%struct.lua_State* noundef, i32 noundef, double noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #6

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #6

declare dso_local i64 @luaL_optinteger(%struct.lua_State* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @lua_pushstring(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #3

declare dso_local i8* @luaL_checklstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_pushresult(%struct.lua_State* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = call i32* @__errno_location() #10
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %3
  call void @lua_pushboolean(%struct.lua_State* noundef %0, i32 noundef 1) #8
  br label %11

7:                                                ; preds = %3
  call void @lua_pushnil(%struct.lua_State* noundef %0) #8
  %8 = call i8* @strerror(i32 noundef %5) #8
  %9 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* noundef %2, i8* noundef %8) #8
  %10 = sext i32 %5 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %10) #8
  br label %11

11:                                               ; preds = %7, %6
  %.0 = phi i32 [ 1, %6 ], [ 3, %7 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #5

declare dso_local i8* @lua_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @rename(i8* noundef, i8* noundef) #3

declare dso_local i32 @luaL_checkoption(%struct.lua_State* noundef, i32 noundef, i8* noundef, i8** noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @setlocale(i32 noundef, i8* noundef) #3

declare dso_local void @luaL_checktype(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @getfield(%struct.lua_State* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -1, i8* noundef %1) #8
  %4 = call i32 @lua_isnumber(%struct.lua_State* noundef %0, i32 noundef -1) #8
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %8, label %5

5:                                                ; preds = %3
  %6 = call i64 @lua_tointeger(%struct.lua_State* noundef %0, i32 noundef -1) #8
  %7 = trunc i64 %6 to i32
  br label %13

8:                                                ; preds = %3
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i8* noundef %1) #8
  br label %14

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12, %5
  %.01 = phi i32 [ %7, %5 ], [ %2, %12 ]
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #8
  br label %14

14:                                               ; preds = %13, %10
  %.0 = phi i32 [ %.01, %13 ], [ %11, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @getboolfield(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -1, i8* noundef %1) #8
  %3 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %8

6:                                                ; preds = %2
  %7 = call i32 @lua_toboolean(%struct.lua_State* noundef %0, i32 noundef -1) #8
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ -1, %5 ], [ %7, %6 ]
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #8
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local i64 @mktime(%struct.tm* noundef) #3

declare dso_local void @lua_getfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @lua_isnumber(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i64 @lua_tointeger(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local i32 @lua_toboolean(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @tmpnam(i8* noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
