; ModuleID = './ltablib.ll'
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
  call void @luaL_register(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.luaL_Reg* noundef getelementptr inbounds ([10 x %struct.luaL_Reg], [10 x %struct.luaL_Reg]* @tab_funcs, i64 0, i64 0)) #2
  ret i32 1
}

declare dso_local void @luaL_register(%struct.lua_State* noundef, i8* noundef, %struct.luaL_Reg* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @tconcat(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.luaL_Buffer, align 8
  %3 = alloca i64, align 8
  %4 = call i8* @luaL_optlstring(%struct.lua_State* noundef %0, i32 noundef 2, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i64* noundef nonnull %3) #2
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #2
  %5 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef 3, i64 noundef 1) #2
  %6 = trunc i64 %5 to i32
  %7 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 4) #2
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i64 @lua_objlen(%struct.lua_State* noundef %0, i32 noundef 1) #2
  br label %13

11:                                               ; preds = %1
  %12 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 4) #2
  br label %13

13:                                               ; preds = %11, %9
  %.in = phi i64 [ %10, %9 ], [ %12, %11 ]
  %14 = trunc i64 %.in to i32
  call void @luaL_buffinit(%struct.lua_State* noundef %0, %struct.luaL_Buffer* noundef nonnull %2) #2
  br label %15

15:                                               ; preds = %19, %13
  %.0 = phi i32 [ %6, %13 ], [ %20, %19 ]
  %16 = icmp slt i32 %.0, %14
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  call void @addfield(%struct.lua_State* noundef %0, %struct.luaL_Buffer* noundef nonnull %2, i32 noundef %.0)
  %18 = load i64, i64* %3, align 8
  call void @luaL_addlstring(%struct.luaL_Buffer* noundef nonnull %2, i8* noundef %4, i64 noundef %18) #2
  br label %19

19:                                               ; preds = %17
  %20 = add nsw i32 %.0, 1
  br label %15, !llvm.loop !4

21:                                               ; preds = %15
  %22 = icmp eq i32 %.0, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  call void @addfield(%struct.lua_State* noundef %0, %struct.luaL_Buffer* noundef nonnull %2, i32 noundef %.0)
  br label %24

24:                                               ; preds = %23, %21
  call void @luaL_pushresult(%struct.luaL_Buffer* noundef nonnull %2) #2
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foreach(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #2
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 6) #2
  call void @lua_pushnil(%struct.lua_State* noundef %0) #2
  br label %2

2:                                                ; preds = %8, %1
  %3 = call i32 @lua_next(%struct.lua_State* noundef %0, i32 noundef 1) #2
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %9, label %4

4:                                                ; preds = %2
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 2) #2
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -3) #2
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -3) #2
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 1) #2
  %5 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -3) #2
  br label %2, !llvm.loop !6

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %9, %7
  %.0 = phi i32 [ 1, %7 ], [ 0, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foreachi(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #2
  %2 = call i64 @lua_objlen(%struct.lua_State* noundef %0, i32 noundef 1) #2
  %3 = trunc i64 %2 to i32
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 6) #2
  br label %4

4:                                                ; preds = %11, %1
  %.01 = phi i32 [ 1, %1 ], [ %12, %11 ]
  %.not = icmp sgt i32 %.01, %3
  br i1 %.not, label %13, label %5

5:                                                ; preds = %4
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 2) #2
  %6 = zext i32 %.01 to i64
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %6) #2
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %.01) #2
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 1) #2
  %7 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  br label %14

10:                                               ; preds = %5
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #2
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !7

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %13, %9
  %.0 = phi i32 [ 1, %9 ], [ 0, %13 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @getn(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #2
  %2 = call i64 @lua_objlen(%struct.lua_State* noundef %0, i32 noundef 1) #2
  %sext = shl i64 %2, 32
  %3 = ashr exact i64 %sext, 32
  call void @lua_pushinteger(%struct.lua_State* noundef %0, i64 noundef %3) #2
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @maxn(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #2
  call void @lua_pushnil(%struct.lua_State* noundef %0) #2
  br label %2

2:                                                ; preds = %12, %1
  %.0 = phi double [ 0.000000e+00, %1 ], [ %.2, %12 ]
  %3 = call i32 @lua_next(%struct.lua_State* noundef %0, i32 noundef 1) #2
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %13, label %4

4:                                                ; preds = %2
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #2
  %5 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #2
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = call double @lua_tonumber(%struct.lua_State* noundef %0, i32 noundef -1) #2
  %9 = fcmp ogt double %8, %.0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %7
  %.1 = phi double [ %8, %10 ], [ %.0, %7 ]
  br label %12

12:                                               ; preds = %11, %4
  %.2 = phi double [ %.1, %11 ], [ %.0, %4 ]
  br label %2, !llvm.loop !8

13:                                               ; preds = %2
  call void @lua_pushnumber(%struct.lua_State* noundef %0, double noundef %.0) #2
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tinsert(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #2
  %2 = call i64 @lua_objlen(%struct.lua_State* noundef %0, i32 noundef 1) #2
  %3 = trunc i64 %2 to i32
  %4 = add nsw i32 %3, 1
  %5 = call i32 @lua_gettop(%struct.lua_State* noundef %0) #2
  switch i32 %5, label %20 [
    i32 2, label %6
    i32 3, label %7
  ]

6:                                                ; preds = %1
  br label %22

7:                                                ; preds = %1
  %8 = call i64 @luaL_checkinteger(%struct.lua_State* noundef %0, i32 noundef 2) #2
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %4, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %7
  %.02 = phi i32 [ %9, %11 ], [ %4, %7 ]
  br label %13

13:                                               ; preds = %17, %12
  %.01 = phi i32 [ %.02, %12 ], [ %18, %17 ]
  %14 = icmp sgt i32 %.01, %9
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = add nsw i32 %.01, -1
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %16) #2
  call void @lua_rawseti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %.01) #2
  br label %17

17:                                               ; preds = %15
  %18 = add nsw i32 %.01, -1
  br label %13, !llvm.loop !9

19:                                               ; preds = %13
  br label %22

20:                                               ; preds = %1
  %21 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0)) #2
  br label %23

22:                                               ; preds = %19, %6
  %.03 = phi i32 [ %9, %19 ], [ %4, %6 ]
  call void @lua_rawseti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %.03) #2
  br label %23

23:                                               ; preds = %22, %20
  %.0 = phi i32 [ %21, %20 ], [ 0, %22 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tremove(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #2
  %2 = call i64 @lua_objlen(%struct.lua_State* noundef %0, i32 noundef 1) #2
  %3 = trunc i64 %2 to i32
  %sext = shl i64 %2, 32
  %4 = ashr exact i64 %sext, 32
  %5 = call i64 @luaL_optinteger(%struct.lua_State* noundef %0, i32 noundef 2, i64 noundef %4) #2
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  %.not = icmp sgt i32 %6, %3
  br i1 %.not, label %9, label %10

9:                                                ; preds = %8, %1
  br label %18

10:                                               ; preds = %8
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %6) #2
  br label %11

11:                                               ; preds = %15, %10
  %.01 = phi i32 [ %6, %10 ], [ %16, %15 ]
  %12 = icmp slt i32 %.01, %3
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = add nsw i32 %.01, 1
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %14) #2
  call void @lua_rawseti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %.01) #2
  br label %15

15:                                               ; preds = %13
  %16 = add nsw i32 %.01, 1
  br label %11, !llvm.loop !10

17:                                               ; preds = %11
  call void @lua_pushnil(%struct.lua_State* noundef %0) #2
  call void @lua_rawseti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %3) #2
  br label %18

18:                                               ; preds = %17, %9
  %.0 = phi i32 [ 1, %17 ], [ 0, %9 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @setn(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #2
  %2 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0)) #2
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 1) #2
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sort(%struct.lua_State* noundef %0) #0 {
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef 5) #2
  %2 = call i64 @lua_objlen(%struct.lua_State* noundef %0, i32 noundef 1) #2
  call void @luaL_checkstack(%struct.lua_State* noundef %0, i32 noundef 40, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #2
  %3 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 2) #2
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  call void @luaL_checktype(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 6) #2
  br label %6

6:                                                ; preds = %5, %1
  %7 = trunc i64 %2 to i32
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef 2) #2
  call void @auxsort(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %7)
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
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %2) #2
  %4 = call i32 @lua_isstring(%struct.lua_State* noundef %0, i32 noundef -1) #2
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %9

5:                                                ; preds = %3
  %6 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef -1) #2
  %7 = call i8* @lua_typename(%struct.lua_State* noundef %0, i32 noundef %6) #2
  %8 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i8* noundef %7, i32 noundef %2) #2
  br label %9

9:                                                ; preds = %5, %3
  call void @luaL_addvalue(%struct.luaL_Buffer* noundef %1) #2
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
  br label %4

4:                                                ; preds = %61, %3
  %.03 = phi i32 [ %2, %3 ], [ %.14, %61 ]
  %.01 = phi i32 [ %1, %3 ], [ %.12, %61 ]
  %5 = icmp sgt i32 %.03, %.01
  br i1 %5, label %6, label %.loopexit

6:                                                ; preds = %4
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %.01) #2
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %.03) #2
  %7 = call i32 @sort_comp(%struct.lua_State* noundef %0, i32 noundef -1, i32 noundef -2)
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %6
  call void @set2(%struct.lua_State* noundef %0, i32 noundef %.01, i32 noundef %.03)
  br label %10

9:                                                ; preds = %6
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -3) #2
  br label %10

10:                                               ; preds = %9, %8
  %11 = sub nsw i32 %.03, %.01
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %62

14:                                               ; preds = %10
  %15 = add nsw i32 %.01, %.03
  %16 = sdiv i32 %15, 2
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %16) #2
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %.01) #2
  %17 = call i32 @sort_comp(%struct.lua_State* noundef %0, i32 noundef -2, i32 noundef -1)
  %.not9 = icmp eq i32 %17, 0
  br i1 %.not9, label %19, label %18

18:                                               ; preds = %14
  call void @set2(%struct.lua_State* noundef %0, i32 noundef %16, i32 noundef %.01)
  br label %24

19:                                               ; preds = %14
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #2
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %.03) #2
  %20 = call i32 @sort_comp(%struct.lua_State* noundef %0, i32 noundef -1, i32 noundef -2)
  %.not10 = icmp eq i32 %20, 0
  br i1 %.not10, label %22, label %21

21:                                               ; preds = %19
  call void @set2(%struct.lua_State* noundef %0, i32 noundef %16, i32 noundef %.03)
  br label %23

22:                                               ; preds = %19
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -3) #2
  br label %23

23:                                               ; preds = %22, %21
  br label %24

24:                                               ; preds = %23, %18
  %25 = sub nsw i32 %.03, %.01
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %62

28:                                               ; preds = %24
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %16) #2
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef -1) #2
  %29 = add nsw i32 %.03, -1
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %29) #2
  %30 = add nsw i32 %.03, -1
  call void @set2(%struct.lua_State* noundef %0, i32 noundef %16, i32 noundef %30)
  %31 = add nsw i32 %.03, -1
  br label %32

32:                                               ; preds = %50, %28
  %.05 = phi i32 [ %.01, %28 ], [ %34, %50 ]
  %.0 = phi i32 [ %31, %28 ], [ %42, %50 ]
  br label %33

33:                                               ; preds = %39, %32
  %.16 = phi i32 [ %.05, %32 ], [ %34, %39 ]
  %34 = add nsw i32 %.16, 1
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %34) #2
  %35 = call i32 @sort_comp(%struct.lua_State* noundef %0, i32 noundef -1, i32 noundef -2)
  %.not11 = icmp eq i32 %35, 0
  br i1 %.not11, label %40, label %36

36:                                               ; preds = %33
  %.not15 = icmp sgt i32 %.03, %.16
  br i1 %.not15, label %39, label %37

37:                                               ; preds = %36
  %38 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #2
  br label %39

39:                                               ; preds = %37, %36
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #2
  br label %33, !llvm.loop !11

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %47, %40
  %.1 = phi i32 [ %.0, %40 ], [ %42, %47 ]
  %42 = add nsw i32 %.1, -1
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %42) #2
  %43 = call i32 @sort_comp(%struct.lua_State* noundef %0, i32 noundef -3, i32 noundef -1)
  %.not12 = icmp eq i32 %43, 0
  br i1 %.not12, label %48, label %44

44:                                               ; preds = %41
  %.not14 = icmp sgt i32 %.1, %.01
  br i1 %.not14, label %47, label %45

45:                                               ; preds = %44
  %46 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0)) #2
  br label %47

47:                                               ; preds = %45, %44
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #2
  br label %41, !llvm.loop !12

48:                                               ; preds = %41
  %.not13 = icmp sgt i32 %.1, %34
  br i1 %.not13, label %50, label %49

49:                                               ; preds = %48
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -4) #2
  br label %51

50:                                               ; preds = %48
  call void @set2(%struct.lua_State* noundef %0, i32 noundef %34, i32 noundef %42)
  br label %32

51:                                               ; preds = %49
  %52 = add nsw i32 %.03, -1
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %52) #2
  call void @lua_rawgeti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %34) #2
  %53 = add nsw i32 %.03, -1
  call void @set2(%struct.lua_State* noundef %0, i32 noundef %53, i32 noundef %34)
  %54 = sub nsw i32 %34, %.01
  %55 = sub nsw i32 %.03, %34
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = add nsw i32 %.16, 2
  br label %61

59:                                               ; preds = %51
  %60 = add nsw i32 %.16, 2
  br label %61

61:                                               ; preds = %59, %57
  %.27 = phi i32 [ %.16, %57 ], [ %.03, %59 ]
  %.14 = phi i32 [ %.03, %57 ], [ %.16, %59 ]
  %.12 = phi i32 [ %58, %57 ], [ %.01, %59 ]
  %.2 = phi i32 [ %.01, %57 ], [ %60, %59 ]
  call void @auxsort(%struct.lua_State* noundef %0, i32 noundef %.2, i32 noundef %.27)
  br label %4, !llvm.loop !13

.loopexit:                                        ; preds = %4
  br label %62

62:                                               ; preds = %.loopexit, %27, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sort_comp(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = call i32 @lua_type(%struct.lua_State* noundef %0, i32 noundef 2) #2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef 2) #2
  %7 = add nsw i32 %1, -1
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef %7) #2
  %8 = add nsw i32 %2, -2
  call void @lua_pushvalue(%struct.lua_State* noundef %0, i32 noundef %8) #2
  call void @lua_call(%struct.lua_State* noundef %0, i32 noundef 2, i32 noundef 1) #2
  %9 = call i32 @lua_toboolean(%struct.lua_State* noundef %0, i32 noundef -1) #2
  call void @lua_settop(%struct.lua_State* noundef %0, i32 noundef -2) #2
  br label %12

10:                                               ; preds = %3
  %11 = call i32 @lua_lessthan(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %2) #2
  br label %12

12:                                               ; preds = %10, %6
  %.0 = phi i32 [ %11, %10 ], [ %9, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @set2(%struct.lua_State* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  call void @lua_rawseti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %1) #2
  call void @lua_rawseti(%struct.lua_State* noundef %0, i32 noundef 1, i32 noundef %2) #2
  ret void
}

declare dso_local i32 @lua_toboolean(%struct.lua_State* noundef, i32 noundef) #1

declare dso_local i32 @lua_lessthan(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
