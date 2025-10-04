; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/lmathlib.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/lmathlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@.str = private unnamed_addr constant [5 x i8] c"math\00", align 1
@mathlib = internal constant [29 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @math_abs }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @math_acos }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @math_asin }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @math_atan2 }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @math_atan }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ceil }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.lua_State*)* @math_cosh }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.lua_State*)* @math_cos }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.lua_State*)* @math_deg }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.lua_State*)* @math_exp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.lua_State*)* @math_floor }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @math_fmod }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.lua_State*)* @math_frexp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ldexp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.lua_State*)* @math_log10 }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.lua_State*)* @math_log }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.lua_State*)* @math_max }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.lua_State*)* @math_min }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.lua_State*)* @math_modf }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.lua_State*)* @math_pow }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.lua_State*)* @math_rad }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.lua_State*)* @math_random }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.lua_State*)* @math_randomseed }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sinh }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sin }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sqrt }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 (%struct.lua_State*)* @math_tanh }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), i32 (%struct.lua_State*)* @math_tan }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"deg\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"frexp\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"modf\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"rad\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"randomseed\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @luaopen_math(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_register(%struct.lua_State* noundef %3, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([29 x %struct.luaL_Reg], [29 x %struct.luaL_Reg]* @mathlib, i64 0, i64 0))
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %4, double noundef 0x400921FB54442D18)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %5, i32 noundef -2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %6, double noundef 0x7FF0000000000000)
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %7, i32 noundef -2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_getfield(%struct.lua_State* noundef %8, i32 noundef -1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_setfield(%struct.lua_State* noundef %9, i32 noundef -2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  ret i32 1
}

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

declare dso_local void @lua_pushnumber(%struct.lua_State* noundef, double noundef) #1

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @lua_getfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_abs(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @llvm.fabs.f64(double %5)
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_acos(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @acos(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_asin(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @asin(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_atan2(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call double @luaL_checknumber(%struct.lua_State* noundef %6, i32 noundef 2)
  %8 = call double @atan2(double noundef %5, double noundef %7) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %8)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_atan(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @atan(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_ceil(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @llvm.ceil.f64(double %5)
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_cosh(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @cosh(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_cos(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @cos(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_deg(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = fdiv double %5, 0x3F91DF46A2529D39
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_exp(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @exp(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_floor(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @llvm.floor.f64(double %5)
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_fmod(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call double @luaL_checknumber(%struct.lua_State* noundef %6, i32 noundef 2)
  %8 = call double @fmod(double noundef %5, double noundef %7) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %8)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_frexp(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call double @luaL_checknumber(%struct.lua_State* noundef %5, i32 noundef 1)
  %7 = call double @frexp(double noundef %6, i32* noundef %3) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %4, double noundef %7)
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %8, i64 noundef %10)
  ret i32 2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_ldexp(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %6, i32 noundef 2)
  %8 = trunc i64 %7 to i32
  %9 = call double @ldexp(double noundef %5, i32 noundef %8) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %9)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_log10(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @log10(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_log(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @log(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_max(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @lua_gettop(%struct.lua_State* noundef %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call double @luaL_checknumber(%struct.lua_State* noundef %9, i32 noundef 1)
  store double %10, double* %4, align 8
  store i32 2, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call double @luaL_checknumber(%struct.lua_State* noundef %16, i32 noundef %17)
  store double %18, double* %6, align 8
  %19 = load double, double* %6, align 8
  %20 = load double, double* %4, align 8
  %21 = fcmp ogt double %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load double, double* %6, align 8
  store double %23, double* %4, align 8
  br label %24

24:                                               ; preds = %22, %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11, !llvm.loop !4

28:                                               ; preds = %11
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = load double, double* %4, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %29, double noundef %30)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_min(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = call i32 @lua_gettop(%struct.lua_State* noundef %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call double @luaL_checknumber(%struct.lua_State* noundef %9, i32 noundef 1)
  store double %10, double* %4, align 8
  store i32 2, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call double @luaL_checknumber(%struct.lua_State* noundef %16, i32 noundef %17)
  store double %18, double* %6, align 8
  %19 = load double, double* %6, align 8
  %20 = load double, double* %4, align 8
  %21 = fcmp olt double %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load double, double* %6, align 8
  store double %23, double* %4, align 8
  br label %24

24:                                               ; preds = %22, %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11, !llvm.loop !6

28:                                               ; preds = %11
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = load double, double* %4, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %29, double noundef %30)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_modf(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call double @luaL_checknumber(%struct.lua_State* noundef %5, i32 noundef 1)
  %7 = call double @modf(double noundef %6, double* noundef %3) #4
  store double %7, double* %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load double, double* %3, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %8, double noundef %9)
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load double, double* %4, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %10, double noundef %11)
  ret i32 2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_pow(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call double @luaL_checknumber(%struct.lua_State* noundef %6, i32 noundef 2)
  %8 = call double @pow(double noundef %5, double noundef %7) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %8)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_rad(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = fmul double %5, 0x3F91DF46A2529D39
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_random(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %8 = call i32 @rand() #4
  %9 = srem i32 %8, 2147483647
  %10 = sitofp i32 %9 to double
  %11 = fdiv double %10, 0x41DFFFFFFFC00000
  store double %11, double* %4, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i32 @lua_gettop(%struct.lua_State* noundef %12)
  switch i32 %13, label %66 [
    i32 0, label %14
    i32 1, label %17
    i32 2, label %37
  ]

14:                                               ; preds = %1
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load double, double* %4, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %15, double noundef %16)
  br label %69

17:                                               ; preds = %1
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %18, i32 noundef 1)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 1, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = call i32 @luaL_argerror(%struct.lua_State* noundef %24, i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i1 [ true, %17 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = load double, double* %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sitofp i32 %32 to double
  %34 = fmul double %31, %33
  %35 = call double @llvm.floor.f64(double %34)
  %36 = fadd double %35, 1.000000e+00
  call void @lua_pushnumber(%struct.lua_State* noundef %30, double noundef %36)
  br label %69

37:                                               ; preds = %1
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %38, i32 noundef 1)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %41, i32 noundef 2)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %49 = call i32 @luaL_argerror(%struct.lua_State* noundef %48, i32 noundef 2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %47, %37
  %52 = phi i1 [ true, %37 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %55 = load double, double* %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = sitofp i32 %59 to double
  %61 = fmul double %55, %60
  %62 = call double @llvm.floor.f64(double %61)
  %63 = load i32, i32* %6, align 4
  %64 = sitofp i32 %63 to double
  %65 = fadd double %62, %64
  call void @lua_pushnumber(%struct.lua_State* noundef %54, double noundef %65)
  br label %69

66:                                               ; preds = %1
  %67 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %68 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %67, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0))
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %51, %27, %14
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_randomseed(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %3, i32 noundef 1)
  %5 = trunc i64 %4 to i32
  call void @srand(i32 noundef %5) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_sinh(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @sinh(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_sin(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @sin(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_sqrt(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @sqrt(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_tanh(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @tanh(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_tan(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call double @luaL_checknumber(%struct.lua_State* noundef %4, i32 noundef 1)
  %6 = call double @tan(double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %3, double noundef %6)
  ret i32 1
}

declare dso_local double @luaL_checknumber(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @acos(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @atan2(double noundef, double noundef) #3

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @cosh(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #3

; Function Attrs: nounwind
declare dso_local double @frexp(double noundef, i32* noundef) #3

declare dso_local void @lua_pushinteger(%struct.lua_State* noundef, i64 noundef) #1

; Function Attrs: nounwind
declare dso_local double @ldexp(double noundef, i32 noundef) #3

declare dso_local i64 @luaL_checkinteger(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #3

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

; Function Attrs: nounwind
declare dso_local double @modf(double noundef, double* noundef) #3

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

declare dso_local i32 @luaL_argerror(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local double @sinh(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @tanh(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @tan(double noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
