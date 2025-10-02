; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/ltablib.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/ltablib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i32, %struct.lua_State*, [8192 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"table\00", align 1
@tab_funcs = internal constant [10 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @tconcat }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @foreach }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @foreachi }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @getn }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @maxn }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @tinsert }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @tremove }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @setn }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @sort }, %struct.luaL_Reg zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"foreachi\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"getn\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"maxn\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"setn\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"invalid value (%s) at index %d in table for 'concat'\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"wrong number of arguments to 'insert'\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"'setn' is obsolete\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"invalid order function for sorting\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @luaopen_table(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_register(%struct.lua_State* noundef %3, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @tab_funcs, i64 0, i64 0))
  ret i32 1
}

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @tconcat(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Buffer, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i8* @luaL_optlstring(%struct.lua_State* noundef %8, i32 noundef 2, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i64* noundef %4)
  store i8* %9, i8** %7, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %10, i32 noundef 1, i32 noundef 5)
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %12 = call i64 @luaL_optinteger(%struct.lua_State* noundef %11, i32 noundef 3, i64 noundef 1)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = call i32 @lua_type(%struct.lua_State* noundef %14, i32 noundef 4)
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %19 = call i64 @lua_objlen(%struct.lua_State* noundef %18, i32 noundef 1)
  %20 = trunc i64 %19 to i32
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %22, i32 noundef 4)
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  store i32 %26, i32* %6, align 4
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_buffinit(%struct.lua_State* noundef %27, %struct.luaL_Buffer* noundef %3)
  br label %28

28:                                               ; preds = %37, %25
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %34 = load i32, i32* %5, align 4
  call void @addfield(%struct.lua_State* noundef %33, %struct.luaL_Buffer* noundef %3, i32 noundef %34)
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %4, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* noundef %3, i8* noundef %35, i64 noundef %36)
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %28, !llvm.loop !4

40:                                               ; preds = %28
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %46 = load i32, i32* %5, align 4
  call void @addfield(%struct.lua_State* noundef %45, %struct.luaL_Buffer* noundef %3, i32 noundef %46)
  br label %47

47:                                               ; preds = %44, %40
  call void @luaL_pushresult(%struct.luaL_Buffer* noundef %3)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foreach(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %4, i32 noundef 1, i32 noundef 5)
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %5, i32 noundef 2, i32 noundef 6)
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %6)
  br label %7

7:                                                ; preds = %20, %1
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i32 @lua_next(%struct.lua_State* noundef %8, i32 noundef 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %12, i32 noundef 2)
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %13, i32 noundef -3)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %14, i32 noundef -3)
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_call(%struct.lua_State* noundef %15, i32 noundef 2, i32 noundef 1)
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call i32 @lua_type(%struct.lua_State* noundef %16, i32 noundef -1)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %23

20:                                               ; preds = %11
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %21, i32 noundef -3)
  br label %7, !llvm.loop !6

22:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foreachi(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %6, i32 noundef 1, i32 noundef 5)
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i64 @lua_objlen(%struct.lua_State* noundef %7, i32 noundef 1)
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %10, i32 noundef 2, i32 noundef 6)
  store i32 1, i32* %4, align 4
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %16, i32 noundef 2)
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %17, i64 noundef %19)
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = load i32, i32* %4, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %20, i32 noundef 1, i32 noundef %21)
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_call(%struct.lua_State* noundef %22, i32 noundef 2, i32 noundef 1)
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = call i32 @lua_type(%struct.lua_State* noundef %23, i32 noundef -1)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %33

27:                                               ; preds = %15
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_settop(%struct.lua_State* noundef %28, i32 noundef -2)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %11, !llvm.loop !7

32:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @getn(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %4, i32 noundef 1, i32 noundef 5)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i64 @lua_objlen(%struct.lua_State* noundef %5, i32 noundef 1)
  %7 = trunc i64 %6 to i32
  %8 = sext i32 %7 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %3, i64 noundef %8)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @maxn(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %5, i32 noundef 1, i32 noundef 5)
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %6)
  br label %7

7:                                                ; preds = %25, %1
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = call i32 @lua_next(%struct.lua_State* noundef %8, i32 noundef 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %12, i32 noundef -2)
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = call i32 @lua_type(%struct.lua_State* noundef %13, i32 noundef -1)
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = call double @lua_tonumber(%struct.lua_State* noundef %17, i32 noundef -1)
  store double %18, double* %4, align 8
  %19 = load double, double* %4, align 8
  %20 = load double, double* %3, align 8
  %21 = fcmp ogt double %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load double, double* %4, align 8
  store double %23, double* %3, align 8
  br label %24

24:                                               ; preds = %22, %16
  br label %25

25:                                               ; preds = %24, %11
  br label %7, !llvm.loop !8

26:                                               ; preds = %7
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %28 = load double, double* %3, align 8
  call void @lua_pushnumber(%struct.lua_State* noundef %27, double noundef %28)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tinsert(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %7, i32 noundef 1, i32 noundef 5)
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = call i64 @lua_objlen(%struct.lua_State* noundef %8, i32 noundef 1)
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = call i32 @lua_gettop(%struct.lua_State* noundef %12)
  switch i32 %13, label %41 [
    i32 2, label %14
    i32 3, label %16
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %5, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %17, i32 noundef 2)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %16
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %37, %25
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 1
  call void @lua_rawgeti(%struct.lua_State* noundef %32, i32 noundef 1, i32 noundef %34)
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = load i32, i32* %6, align 4
  call void @lua_rawseti(%struct.lua_State* noundef %35, i32 noundef 1, i32 noundef %36)
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %27, !llvm.loop !9

40:                                               ; preds = %27
  br label %44

41:                                               ; preds = %1
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %42, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  store i32 %43, i32* %2, align 4
  br label %47

44:                                               ; preds = %40, %14
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %46 = load i32, i32* %5, align 4
  call void @lua_rawseti(%struct.lua_State* noundef %45, i32 noundef 1, i32 noundef %46)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tremove(%struct.lua_State* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %6, i32 noundef 1, i32 noundef 5)
  %7 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %8 = call i64 @lua_objlen(%struct.lua_State* noundef %7, i32 noundef 1)
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = call i64 @luaL_optinteger(%struct.lua_State* noundef %10, i32 noundef 2, i64 noundef %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 1, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %42

22:                                               ; preds = %17
  %23 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %24 = load i32, i32* %5, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %23, i32 noundef 1, i32 noundef %24)
  br label %25

25:                                               ; preds = %35, %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  call void @lua_rawgeti(%struct.lua_State* noundef %30, i32 noundef 1, i32 noundef %32)
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = load i32, i32* %5, align 4
  call void @lua_rawseti(%struct.lua_State* noundef %33, i32 noundef 1, i32 noundef %34)
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %25, !llvm.loop !10

38:                                               ; preds = %25
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @lua_pushnil(%struct.lua_State* noundef %39)
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = load i32, i32* %4, align 4
  call void @lua_rawseti(%struct.lua_State* noundef %40, i32 noundef 1, i32 noundef %41)
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %21
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @setn(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %3, i32 noundef 1, i32 noundef 5)
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %6, i32 noundef 1)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sort(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %4, i32 noundef 1, i32 noundef 5)
  %5 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %6 = call i64 @lua_objlen(%struct.lua_State* noundef %5, i32 noundef 1)
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checkstack(%struct.lua_State* noundef %8, i32 noundef 40, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = call i32 @lua_type(%struct.lua_State* noundef %9, i32 noundef 2)
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaL_checktype(%struct.lua_State* noundef %13, i32 noundef 2, i32 noundef 6)
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_settop(%struct.lua_State* noundef %15, i32 noundef 2)
  %16 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %17 = load i32, i32* %3, align 4
  call void @auxsort(%struct.lua_State* noundef %16, i32 noundef 1, i32 noundef %17)
  ret i32 0
}

declare dso_local i8* @luaL_optlstring(%struct.lua_State* noundef, i32 noundef, i8* noundef, i64* noundef) #1

declare dso_local void @luaL_checktype(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i64 @luaL_optinteger(%struct.lua_State* noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @lua_type(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i64 @lua_objlen(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i64 @luaL_checkinteger(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @luaL_buffinit(%struct.lua_State* noundef, %struct.luaL_Buffer* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @addfield(%struct.lua_State* noundef %0, %struct.luaL_Buffer* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.luaL_Buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.luaL_Buffer* %1, %struct.luaL_Buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %6, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %7, i32 noundef 1, i32 noundef %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = call i32 @lua_isstring(%struct.lua_State* noundef %9, i32 noundef -1)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %16 = call i32 @lua_type(%struct.lua_State* noundef %15, i32 noundef -1)
  %17 = call i8* @lua_typename(%struct.lua_State* noundef %14, i32 noundef %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %13, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* noundef %17, i32 noundef %18)
  br label %20

20:                                               ; preds = %12, %3
  %21 = load %struct.luaL_Buffer*, %struct.luaL_Buffer** %5, align 8
  call void @luaL_addvalue(%struct.luaL_Buffer* noundef %21)
  ret void
}

declare dso_local void @luaL_addlstring(%struct.luaL_Buffer* noundef, i8* noundef, i64 noundef) #1

declare dso_local void @luaL_pushresult(%struct.luaL_Buffer* noundef) #1

declare dso_local void @lua_rawgeti(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @lua_isstring(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @luaL_error(%struct.lua_State* noundef, i8* noundef, ...) #1

declare dso_local i8* @lua_typename(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @luaL_addvalue(%struct.luaL_Buffer* noundef) #1

declare dso_local void @lua_pushnil(%struct.lua_State* noundef) #1

declare dso_local i32 @lua_next(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushvalue(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_call(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @lua_settop(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushinteger(%struct.lua_State* noundef, i64 noundef) #1

declare dso_local double @lua_tonumber(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local void @lua_pushnumber(%struct.lua_State* noundef, double noundef) #1

declare dso_local i32 @lua_gettop(%struct.lua_State* noundef) #1

declare dso_local void @lua_rawseti(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local void @luaL_checkstack(%struct.lua_State* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @auxsort(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %156, %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %160

13:                                               ; preds = %9
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i32, i32* %5, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %14, i32 noundef 1, i32 noundef %15)
  %16 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %17 = load i32, i32* %6, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %16, i32 noundef 1, i32 noundef %17)
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = call i32 @sort_comp(%struct.lua_State* noundef %18, i32 noundef -1, i32 noundef -2)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  call void @set2(%struct.lua_State* noundef %22, i32 noundef %23, i32 noundef %24)
  br label %27

25:                                               ; preds = %13
  %26 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* noundef %26, i32 noundef -3)
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %160

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %7, align 4
  %38 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %39 = load i32, i32* %7, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %38, i32 noundef 1, i32 noundef %39)
  %40 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %41 = load i32, i32* %5, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %40, i32 noundef 1, i32 noundef %41)
  %42 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %43 = call i32 @sort_comp(%struct.lua_State* noundef %42, i32 noundef -2, i32 noundef -1)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  call void @set2(%struct.lua_State* noundef %46, i32 noundef %47, i32 noundef %48)
  br label %63

49:                                               ; preds = %33
  %50 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* noundef %50, i32 noundef -2)
  %51 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %52 = load i32, i32* %6, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %51, i32 noundef 1, i32 noundef %52)
  %53 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %54 = call i32 @sort_comp(%struct.lua_State* noundef %53, i32 noundef -1, i32 noundef -2)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  call void @set2(%struct.lua_State* noundef %57, i32 noundef %58, i32 noundef %59)
  br label %62

60:                                               ; preds = %49
  %61 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* noundef %61, i32 noundef -3)
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %64, %65
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %160

69:                                               ; preds = %63
  %70 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %71 = load i32, i32* %7, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %70, i32 noundef 1, i32 noundef %71)
  %72 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %72, i32 noundef -1)
  %73 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  call void @lua_rawgeti(%struct.lua_State* noundef %73, i32 noundef 1, i32 noundef %75)
  %76 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, 1
  call void @set2(%struct.lua_State* noundef %76, i32 noundef %77, i32 noundef %79)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %123, %69
  br label %84

84:                                               ; preds = %98, %83
  %85 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %85, i32 noundef 1, i32 noundef %87)
  %88 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %89 = call i32 @sort_comp(%struct.lua_State* noundef %88, i32 noundef -1, i32 noundef -2)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %97 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %96, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %91
  %99 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* noundef %99, i32 noundef -2)
  br label %84, !llvm.loop !11

100:                                              ; preds = %84
  br label %101

101:                                              ; preds = %115, %100
  %102 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %8, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %102, i32 noundef 1, i32 noundef %104)
  %105 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %106 = call i32 @sort_comp(%struct.lua_State* noundef %105, i32 noundef -3, i32 noundef -1)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %101
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %114 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %113, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %108
  %116 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* noundef %116, i32 noundef -2)
  br label %101, !llvm.loop !12

117:                                              ; preds = %101
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @lua_settop(%struct.lua_State* noundef %122, i32 noundef -4)
  br label %127

123:                                              ; preds = %117
  %124 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  call void @set2(%struct.lua_State* noundef %124, i32 noundef %125, i32 noundef %126)
  br label %83

127:                                              ; preds = %121
  %128 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sub nsw i32 %129, 1
  call void @lua_rawgeti(%struct.lua_State* noundef %128, i32 noundef 1, i32 noundef %130)
  %131 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %132 = load i32, i32* %7, align 4
  call void @lua_rawgeti(%struct.lua_State* noundef %131, i32 noundef 1, i32 noundef %132)
  %133 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sub nsw i32 %134, 1
  %136 = load i32, i32* %7, align 4
  call void @set2(%struct.lua_State* noundef %133, i32 noundef %135, i32 noundef %136)
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %5, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %7, align 4
  %142 = sub nsw i32 %140, %141
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %127
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %7, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 2
  store i32 %149, i32* %5, align 4
  br label %156

150:                                              ; preds = %127
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %8, align 4
  %155 = sub nsw i32 %154, 2
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %150, %144
  %157 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %7, align 4
  call void @auxsort(%struct.lua_State* noundef %157, i32 noundef %158, i32 noundef %159)
  br label %9, !llvm.loop !13

160:                                              ; preds = %68, %32, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sort_comp(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = call i32 @lua_type(%struct.lua_State* noundef %9, i32 noundef 2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_pushvalue(%struct.lua_State* noundef %13, i32 noundef 2)
  %14 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %15, 1
  call void @lua_pushvalue(%struct.lua_State* noundef %14, i32 noundef %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 2
  call void @lua_pushvalue(%struct.lua_State* noundef %17, i32 noundef %19)
  %20 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_call(%struct.lua_State* noundef %20, i32 noundef 2, i32 noundef 1)
  %21 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %22 = call i32 @lua_toboolean(%struct.lua_State* noundef %21, i32 noundef -1)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @lua_settop(%struct.lua_State* noundef %23, i32 noundef -2)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @lua_lessthan(%struct.lua_State* noundef %26, i32 noundef %27, i32 noundef %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define internal void @set2(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %8 = load i32, i32* %5, align 4
  call void @lua_rawseti(%struct.lua_State* noundef %7, i32 noundef 1, i32 noundef %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load i32, i32* %6, align 4
  call void @lua_rawseti(%struct.lua_State* noundef %9, i32 noundef 1, i32 noundef %10)
  ret void
}

declare dso_local i32 @lua_toboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_lessthan(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
