; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/linit.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/linit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@lualibs = internal constant [9 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_base }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_package }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_table }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_io }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_os }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_string }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_math }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @luaopen_debug }, %struct.luaL_Reg zeroinitializer], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"debug\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @luaL_openlibs(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.luaL_Reg*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  store %struct.luaL_Reg* getelementptr inbounds ([9 x %struct.luaL_Reg], [9 x %struct.luaL_Reg]* @lualibs, i64 0, i64 0), %struct.luaL_Reg** %3, align 8
  br label %4

4:                                                ; preds = %19, %1
  %5 = load %struct.luaL_Reg*, %struct.luaL_Reg** %3, align 8
  %6 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %5, i32 0, i32 1
  %7 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %6, align 8
  %8 = icmp ne i32 (%struct.lua_State*)* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load %struct.luaL_Reg*, %struct.luaL_Reg** %3, align 8
  %12 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %11, i32 0, i32 1
  %13 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %12, align 8
  call void @lua_pushcclosure(%struct.lua_State* noundef %10, i32 (%struct.lua_State*)* noundef %13, i32 noundef 0)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = load %struct.luaL_Reg*, %struct.luaL_Reg** %3, align 8
  %16 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  call void @lua_pushstring(%struct.lua_State* noundef %14, i8* noundef %17)
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @lua_call(%struct.lua_State* noundef %18, i32 noundef 1, i32 noundef 0)
  br label %19

19:                                               ; preds = %9
  %20 = load %struct.luaL_Reg*, %struct.luaL_Reg** %3, align 8
  %21 = getelementptr inbounds %struct.luaL_Reg, %struct.luaL_Reg* %20, i32 1
  store %struct.luaL_Reg* %21, %struct.luaL_Reg** %3, align 8
  br label %4, !llvm.loop !4

22:                                               ; preds = %4
  ret void
}

declare dso_local void @lua_pushcclosure(%struct.lua_State* noundef, i32 (%struct.lua_State*)* noundef, i32 noundef) #1

declare dso_local void @lua_pushstring(%struct.lua_State* noundef, i8* noundef) #1

declare dso_local void @lua_call(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @luaopen_base(%struct.lua_State* noundef) #1

declare dso_local i32 @luaopen_package(%struct.lua_State* noundef) #1

declare dso_local i32 @luaopen_table(%struct.lua_State* noundef) #1

declare dso_local i32 @luaopen_io(%struct.lua_State* noundef) #1

declare dso_local i32 @luaopen_os(%struct.lua_State* noundef) #1

declare dso_local i32 @luaopen_string(%struct.lua_State* noundef) #1

declare dso_local i32 @luaopen_math(%struct.lua_State* noundef) #1

declare dso_local i32 @luaopen_debug(%struct.lua_State* noundef) #1

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
