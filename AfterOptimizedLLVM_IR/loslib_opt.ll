; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/loslib.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/loslib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [8192 x i8] }

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
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_register(%struct.lua_State* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([12 x %struct.luaL_Reg], [12 x %struct.luaL_Reg]* @syslib, i64 0, i64 0))
  ret i32 1
}

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_clock(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i64 @clock() #6
  %5 = sitofp i64 %4 to double
  %6 = fdiv double %5, 1.000000e+06
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_date(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.luaL_Buffer, align 8
  %8 = alloca i64, align 8
  %9 = alloca [200 x i8], align 16
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = call i8* @luaL_optlstring(%struct.lua_State* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64* noundef null)
  store i8* %11, i8** %3, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i32 @lua_type(%struct.lua_State* noundef %12, i32 noundef 2)
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i64 @time(i64* noundef null) #6
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = call double @luaL_checknumber(%struct.lua_State* noundef %18, i32 noundef 2)
  %20 = fptosi double %19 to i64
  br label %21

21:                                               ; preds = %17, %15
  %22 = phi i64 [ %16, %15 ], [ %20, %17 ]
  store i64 %22, i64* %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 33
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = call %struct.tm* @gmtime(i64* noundef %4) #6
  store %struct.tm* %28, %struct.tm** %5, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  br label %33

31:                                               ; preds = %21
  %32 = call %struct.tm* @localtime(i64* noundef %4) #6
  store %struct.tm* %32, %struct.tm** %5, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.tm*, %struct.tm** %5, align 8
  %35 = icmp eq %struct.tm* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %37)
  br label %138

38:                                               ; preds = %33
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strcmp(i8* noundef %39, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %84

42:                                               ; preds = %38
  %43 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_createtable(%struct.lua_State* noundef %43, i32 noundef 0, i32 noundef 9)
  %44 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %45 = load %struct.tm*, %struct.tm** %5, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  call void @setfield(%struct.lua_State* noundef %44, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 noundef %47)
  %48 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %49 = load %struct.tm*, %struct.tm** %5, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  call void @setfield(%struct.lua_State* noundef %48, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 noundef %51)
  %52 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %53 = load %struct.tm*, %struct.tm** %5, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  call void @setfield(%struct.lua_State* noundef %52, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 noundef %55)
  %56 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %57 = load %struct.tm*, %struct.tm** %5, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  call void @setfield(%struct.lua_State* noundef %56, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 noundef %59)
  %60 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %61 = load %struct.tm*, %struct.tm** %5, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  call void @setfield(%struct.lua_State* noundef %60, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef %64)
  %65 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %66 = load %struct.tm*, %struct.tm** %5, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1900
  call void @setfield(%struct.lua_State* noundef %65, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 noundef %69)
  %70 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %71 = load %struct.tm*, %struct.tm** %5, align 8
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  call void @setfield(%struct.lua_State* noundef %70, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 noundef %74)
  %75 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %76 = load %struct.tm*, %struct.tm** %5, align 8
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  call void @setfield(%struct.lua_State* noundef %75, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32 noundef %79)
  %80 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %81 = load %struct.tm*, %struct.tm** %5, align 8
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  call void @setboolfield(%struct.lua_State* noundef %80, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 noundef %83)
  br label %137

84:                                               ; preds = %38
  %85 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  store i8 37, i8* %85, align 1
  %86 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  store i8 0, i8* %86, align 1
  %87 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_buffinit(%struct.lua_State* noundef %87, %struct.luaL_Buffer* noundef %7)
  br label %88

88:                                               ; preds = %133, %84
  %89 = load i8*, i8** %3, align 8
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %136

92:                                               ; preds = %88
  %93 = load i8*, i8** %3, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 37
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %97, %92
  %104 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 3
  %107 = getelementptr inbounds [8192 x i8], [8192 x i8]* %106, i64 0, i64 0
  %108 = getelementptr inbounds i8, i8* %107, i64 8192
  %109 = icmp ult i8* %105, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = call i8* @luaL_prepbuffer(%struct.luaL_Buffer* noundef %7)
  %112 = icmp ne i8* %111, null
  br label %113

113:                                              ; preds = %110, %103
  %114 = phi i1 [ true, %103 ], [ %112, %110 ]
  %115 = zext i1 %114 to i32
  %116 = load i8*, i8** %3, align 8
  %117 = load i8, i8* %116, align 1
  %118 = getelementptr inbounds %struct.luaL_Buffer, %struct.luaL_Buffer* %7, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %118, align 8
  store i8 %117, i8* %119, align 1
  br label %132

121:                                              ; preds = %97
  %122 = load i8*, i8** %3, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %3, align 8
  %124 = load i8, i8* %123, align 1
  %125 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  store i8 %124, i8* %125, align 1
  %126 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %127 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %128 = load %struct.tm*, %struct.tm** %5, align 8
  %129 = call i64 @strftime(i8* noundef %126, i64 noundef 200, i8* noundef %127, %struct.tm* noundef %128) #6
  store i64 %129, i64* %8, align 8
  %130 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %131 = load i64, i64* %8, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* noundef %7, i8* noundef %130, i64 noundef %131)
  br label %132

132:                                              ; preds = %121, %113
  br label %133

133:                                              ; preds = %132
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %3, align 8
  br label %88, !llvm.loop !4

136:                                              ; preds = %88
  call void @luaL_pushresult(%struct.luaL_Buffer* noundef %7)
  br label %137

137:                                              ; preds = %136, %42
  br label %138

138:                                              ; preds = %137, %36
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_difftime(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = fptosi double %5 to i64
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call double @luaL_optnumber(%struct.lua_State* noundef %7, i32 noundef 2, double noundef 0.000000e+00)
  %9 = fptosi double %8 to i64
  %10 = call double @difftime(i64 noundef %6, i64 noundef %9) #8
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %10)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_execute(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  call void @abort() #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_exit(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i64 @luaL_optinteger(%struct.lua_State* noundef %3, i32 noundef 1, i64 noundef 0)
  %5 = trunc i64 %4 to i32
  call void @exit(i32 noundef %5) #9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_getenv(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checklstring(%struct.lua_State* noundef %4, i32 noundef 1, i64* noundef null)
  %6 = call i8* @getenv(i8* noundef %5) #6
  call void @lua_pushstring(%struct.lua_State* noundef %3, i8* noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_remove(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaL_checklstring(%struct.lua_State* noundef %4, i32 noundef 1, i64* noundef null)
  store i8* %5, i8** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @remove(i8* noundef %7) #6
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @os_pushresult(%struct.lua_State* noundef %6, i32 noundef %10, i8* noundef %11)
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_rename(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_checklstring(%struct.lua_State* noundef %5, i32 noundef 1, i64* noundef null)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i8* @luaL_checklstring(%struct.lua_State* noundef %7, i32 noundef 2, i64* noundef null)
  store i8* %8, i8** %4, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @rename(i8* noundef %10, i8* noundef %11) #6
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @os_pushresult(%struct.lua_State* noundef %9, i32 noundef %14, i8* noundef %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_setlocale(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i8* @luaL_optlstring(%struct.lua_State* noundef %5, i32 noundef 1, i8* noundef null, i64* noundef null)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @luaL_checkoption(%struct.lua_State* noundef %7, i32 noundef 2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8** noundef getelementptr inbounds ([7 x i8*], [7 x i8*]* @os_setlocale.catnames, i64 0, i64 0))
  store i32 %8, i32* %4, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* @os_setlocale.cat, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @setlocale(i32 noundef %13, i8* noundef %14) #6
  call void @lua_pushstring(%struct.lua_State* noundef %9, i8* noundef %15)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_time(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i32 @lua_type(%struct.lua_State* noundef %5, i32 noundef 1)
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i64 @time(i64* noundef null) #6
  store i64 %9, i64* %3, align 8
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %11, i32 noundef 1, i32 noundef 5)
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %12, i32 noundef 1)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i32 @getfield(%struct.lua_State* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 noundef 0)
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = call i32 @getfield(%struct.lua_State* noundef %16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 noundef 0)
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = call i32 @getfield(%struct.lua_State* noundef %19, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 noundef 12)
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = call i32 @getfield(%struct.lua_State* noundef %22, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 noundef -1)
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 3
  store i32 %23, i32* %24, align 4
  %25 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %26 = call i32 @getfield(%struct.lua_State* noundef %25, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 noundef -1)
  %27 = sub nsw i32 %26, 1
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = call i32 @getfield(%struct.lua_State* noundef %29, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 noundef -1)
  %31 = sub nsw i32 %30, 1900
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 5
  store i32 %31, i32* %32, align 4
  %33 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %34 = call i32 @getboolfield(%struct.lua_State* noundef %33, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 8
  store i32 %34, i32* %35, align 8
  %36 = call i64 @mktime(%struct.tm* noundef %4) #6
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %10, %8
  %38 = load i64, i64* %3, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %41)
  br label %46

42:                                               ; preds = %37
  %43 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %44 = load i64, i64* %3, align 8
  %45 = sitofp i64 %44 to double
  call void @lua_pushnumber(%struct.lua_State* noundef %43, double noundef %45)
  br label %46

46:                                               ; preds = %42, %40
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_tmpname(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %7 = call i8* @tmpnam(i8* noundef %6) #6
  %8 = icmp eq i8* %7, null
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %13, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0))
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  call void @lua_pushstring(%struct.lua_State* noundef %16, i8* noundef %17)
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local void @lua_pushnumber(%struct.lua_State* noundef, double noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

declare dso_local i8* @luaL_optlstring(%struct.lua_State* noundef, i32 noundef, i8* noundef, i64* noundef) #1

declare dso_local i32 @lua_type(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #2

declare dso_local double @luaL_checknumber(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime(i64* noundef) #2

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64* noundef) #2

declare dso_local void @lua_pushnil(%struct.lua_State* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local void @lua_createtable(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @setfield(%struct.lua_State* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
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
define internal void @setboolfield(%struct.lua_State* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %15

10:                                               ; preds = %3
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = load i32, i32* %6, align 4
  call void @lua_pushboolean(%struct.lua_State* noundef %11, i32 noundef %12)
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load i8*, i8** %5, align 8
  call void @lua_setfield(%struct.lua_State* noundef %13, i32 noundef -2, i8* noundef %14)
  br label %15

15:                                               ; preds = %10, %9
  ret void
}

declare dso_local void @luaL_buffinit(%struct.lua_State* noundef, %struct.luaL_Buffer* noundef) #1

declare dso_local i8* @luaL_prepbuffer(%struct.luaL_Buffer* noundef) #1

; Function Attrs: nounwind
declare dso_local i64 @strftime(i8* noundef, i64 noundef, i8* noundef, %struct.tm* noundef) #2

declare dso_local void @luaL_addlstring(%struct.luaL_Buffer* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @luaL_pushresult(%struct.luaL_Buffer* noundef) #1

declare dso_local void @lua_pushinteger(%struct.lua_State* noundef, i64 noundef) #1

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @lua_pushboolean(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local double @difftime(i64 noundef, i64 noundef) #4

declare dso_local double @luaL_optnumber(%struct.lua_State* noundef, i32 noundef, double noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

declare dso_local i64 @luaL_optinteger(%struct.lua_State* noundef, i32 noundef, i64 noundef) #1

declare dso_local void @lua_pushstring(%struct.lua_State* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8* noundef) #2

declare dso_local i8* @luaL_checklstring(%struct.lua_State* noundef, i32 noundef, i64* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @os_pushresult(%struct.lua_State* noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = call i32* @__errno_location() #8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushboolean(%struct.lua_State* noundef %14, i32 noundef 1)
  store i32 1, i32* %4, align 4
  br label %25

15:                                               ; preds = %3
  %16 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @strerror(i32 noundef %19) #6
  %21 = call i8* (%struct.lua_State*, i8*, ...) @lua_pushfstring(%struct.lua_State* noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* noundef %18, i8* noundef %20)
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %22, i64 noundef %24)
  store i32 3, i32* %4, align 4
  br label %25

25:                                               ; preds = %15, %13
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

; Function Attrs: nounwind
declare dso_local i32 @remove(i8* noundef) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

declare dso_local i8* @lua_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @rename(i8* noundef, i8* noundef) #2

declare dso_local i32 @luaL_checkoption(%struct.lua_State* noundef, i32 noundef, i8* noundef, i8** noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @setlocale(i32 noundef, i8* noundef) #2

declare dso_local void @luaL_checktype(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @getfield(%struct.lua_State* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load i8*, i8** %6, align 8
  call void @lua_getfield(%struct.lua_State* noundef %9, i32 noundef -1, i8* noundef %10)
  %11 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %12 = call i32 @lua_isnumber(%struct.lua_State* noundef %11, i32 noundef -1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = call i64 @lua_tointeger(%struct.lua_State* noundef %15, i32 noundef -1)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %22, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i8* noundef %23)
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %25, %14
  %28 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* noundef %28, i32 noundef -2)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @getboolfield(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = load i8*, i8** %4, align 8
  call void @lua_getfield(%struct.lua_State* noundef %6, i32 noundef -1, i8* noundef %7)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_type(%struct.lua_State* noundef %8, i32 noundef -1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = call i32 @lua_toboolean(%struct.lua_State* noundef %13, i32 noundef -1)
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ -1, %11 ], [ %14, %12 ]
  store i32 %16, i32* %5, align 4
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %17, i32 noundef -2)
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

; Function Attrs: nounwind
declare dso_local i64 @mktime(%struct.tm* noundef) #2

declare dso_local void @lua_getfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @lua_isnumber(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i64 @lua_tointeger(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local i32 @lua_toboolean(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @tmpnam(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
