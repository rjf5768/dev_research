; ModuleID = './lmathlib.ll'
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
  call void @luaL_register(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([29 x %struct.luaL_Reg], [29 x %struct.luaL_Reg]* @mathlib, i64 0, i64 0)) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef 0x400921FB54442D18) #4
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef 0x7FF0000000000000) #4
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #4
  call void @lua_getfield(%struct.lua_State* noundef %0, i32 noundef -1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #4
  call void @lua_setfield(%struct.lua_State* noundef %0, i32 noundef -2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #4
  ret i32 1
}

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

declare dso_local void @lua_pushnumber(%struct.lua_State* noundef, double noundef) #1

declare dso_local void @lua_setfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @lua_getfield(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_abs(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @llvm.fabs.f64(double %2)
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_acos(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @acos(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_asin(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @asin(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_atan2(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 2) #4
  %4 = call double @atan2(double noundef %2, double noundef %3) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %4) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_atan(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @atan(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_ceil(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @llvm.ceil.f64(double %2)
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_cosh(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @cosh(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_cos(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @cos(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_deg(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = fdiv double %2, 0x3F91DF46A2529D39
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_exp(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @exp(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_floor(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @llvm.floor.f64(double %2)
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_fmod(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 2) #4
  %4 = call double @fmod(double noundef %2, double noundef %3) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %4) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_frexp(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %4 = call double @frexp(double noundef %3, i32* noundef nonnull %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %4) #4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %6) #4
  ret i32 2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_ldexp(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 2) #4
  %4 = trunc i64 %3 to i32
  %5 = call double @ldexp(double noundef %2, i32 noundef %4) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %5) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_log10(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @log10(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_log(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @log(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_max(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #4
  %3 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  br label %4

4:                                                ; preds = %10, %1
  %.01 = phi double [ %3, %1 ], [ %.1, %10 ]
  %.0 = phi i32 [ 2, %1 ], [ %11, %10 ]
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %12, label %5

5:                                                ; preds = %4
  %6 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef %.0) #4
  %7 = fcmp ogt double %6, %.01
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %5
  %.1 = phi double [ %6, %8 ], [ %.01, %5 ]
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

12:                                               ; preds = %4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %.01) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_min(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #4
  %3 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  br label %4

4:                                                ; preds = %10, %1
  %.01 = phi double [ %3, %1 ], [ %.1, %10 ]
  %.0 = phi i32 [ 2, %1 ], [ %11, %10 ]
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %12, label %5

5:                                                ; preds = %4
  %6 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef %.0) #4
  %7 = fcmp olt double %6, %.01
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8, %5
  %.1 = phi double [ %6, %8 ], [ %.01, %5 ]
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !6

12:                                               ; preds = %4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %.01) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_modf(%struct.lua_State* noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %4 = call double @modf(double noundef %3, double* noundef nonnull %2) #4
  %5 = load double, double* %2, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %5) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %4) #4
  ret i32 2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_pow(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 2) #4
  %4 = call double @pow(double noundef %2, double noundef %3) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %4) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_rad(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = fmul double %2, 0x3F91DF46A2529D39
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_random(%struct.lua_State* noundef %0) #0 {
  %2 = call i32 @rand() #4
  %3 = srem i32 %2, 2147483647
  %4 = sitofp i32 %3 to double
  %5 = fdiv double %4, 0x41DFFFFFFFC00000
  %6 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #4
  switch i32 %6, label %34 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %19
  ]

7:                                                ; preds = %1
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %5) #4
  br label %36

8:                                                ; preds = %1
  %9 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #4
  br label %14

14:                                               ; preds = %12, %8
  %15 = sitofp i32 %10 to double
  %16 = fmul double %5, %15
  %17 = call double @llvm.floor.f64(double %16)
  %18 = fadd double %17, 1.000000e+00
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %18) #4
  br label %36

19:                                               ; preds = %1
  %20 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %21 = trunc i64 %20 to i32
  %22 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 2) #4
  %23 = trunc i64 %22 to i32
  %.not = icmp slt i32 %23, %21
  br i1 %.not, label %24, label %26

24:                                               ; preds = %19
  %25 = call i32 @luaL_argerror(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0)) #4
  br label %26

26:                                               ; preds = %24, %19
  %27 = sub nsw i32 %23, %21
  %28 = add nsw i32 %27, 1
  %29 = sitofp i32 %28 to double
  %30 = fmul double %5, %29
  %31 = call double @llvm.floor.f64(double %30)
  %32 = sitofp i32 %21 to double
  %33 = fadd double %31, %32
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %33) #4
  br label %36

34:                                               ; preds = %1
  %35 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0)) #4
  br label %37

36:                                               ; preds = %26, %14, %7
  br label %37

37:                                               ; preds = %36, %34
  %.0 = phi i32 [ %35, %34 ], [ 1, %36 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_randomseed(%struct.lua_State* noundef %0) #0 {
  %2 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = trunc i64 %2 to i32
  call void @srand(i32 noundef %3) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_sinh(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @sinh(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_sin(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @sin(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_sqrt(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @sqrt(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_tanh(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @tanh(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @math_tan(%struct.lua_State* noundef %0) #0 {
  %2 = call double @luaL_checknumber(%struct.lua_State* noundef %0, i32 noundef 1) #4
  %3 = call double @tan(double noundef %2) #4
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %3) #4
  ret i32 1
}

declare dso_local double @luaL_checknumber(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @acos(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @atan2(double noundef, double noundef) #3

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #2

; Function Attrs: nounwind
declare dso_local double @cosh(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
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
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
