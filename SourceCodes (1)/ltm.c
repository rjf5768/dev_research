; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/ltm.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/ltm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.0 }
%struct.anon.0 = type { %union.Value, i32, %struct.Node* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%union.Udata = type { %struct.anon.2 }
%struct.anon.2 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"userdata\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"upval\00", align 1
@luaT_typenames = hidden constant [11 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)], align 16
@luaT_init.luaT_eventname = internal constant [17 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"__eq\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"__lt\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"__le\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"__concat\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8

; Function Attrs: noinline nounwind uwtable
define hidden void @luaT_init(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %40, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 17
  br i1 %6, label %7, label %43

7:                                                ; preds = %4
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [17 x i8*], [17 x i8*]* @luaT_init.luaT_eventname, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [17 x i8*], [17 x i8*]* @luaT_init.luaT_eventname, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* noundef %16) #3
  %18 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %8, i8* noundef %12, i64 noundef %17)
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 6
  %21 = load %struct.global_State*, %struct.global_State** %20, align 8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 24
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %22, i64 0, i64 %24
  store %union.TString* %18, %union.TString** %25, align 8
  %26 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 6
  %28 = load %struct.global_State*, %struct.global_State** %27, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i32 0, i32 24
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %29, i64 0, i64 %31
  %33 = load %union.TString*, %union.TString** %32, align 8
  %34 = bitcast %union.TString* %33 to %struct.anon.1*
  %35 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %34, i32 0, i32 2
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, 32
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  br label %40

40:                                               ; preds = %7
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %4, !llvm.loop !4

43:                                               ; preds = %4
  ret void
}

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define hidden %struct.lua_TValue* @luaT_gettm(%struct.Table* noundef %0, i32 noundef %1, %union.TString* noundef %2) #0 {
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.Table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.TString*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  store %struct.Table* %0, %struct.Table** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.TString* %2, %union.TString** %7, align 8
  %9 = load %struct.Table*, %struct.Table** %5, align 8
  %10 = load %union.TString*, %union.TString** %7, align 8
  %11 = call %struct.lua_TValue* @luaH_getstr(%struct.Table* noundef %9, %union.TString* noundef %10)
  store %struct.lua_TValue* %11, %struct.lua_TValue** %8, align 8
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  %19 = trunc i32 %18 to i8
  %20 = zext i8 %19 to i32
  %21 = load %struct.Table*, %struct.Table** %5, align 8
  %22 = getelementptr inbounds %struct.Table, %struct.Table* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 2
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %20
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 2
  store %struct.lua_TValue* null, %struct.lua_TValue** %4, align 8
  br label %29

27:                                               ; preds = %3
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  store %struct.lua_TValue* %28, %struct.lua_TValue** %4, align 8
  br label %29

29:                                               ; preds = %27, %16
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  ret %struct.lua_TValue* %30
}

declare hidden %struct.lua_TValue* @luaH_getstr(%struct.Table* noundef, %union.TString* noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* noundef %0, %struct.lua_TValue* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.Table*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %9 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %28 [
    i32 5, label %11
    i32 7, label %19
  ]

11:                                               ; preds = %3
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %13 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %12, i32 0, i32 0
  %14 = bitcast %union.Value* %13 to %union.GCObject**
  %15 = load %union.GCObject*, %union.GCObject** %14, align 8
  %16 = bitcast %union.GCObject* %15 to %struct.Table*
  %17 = getelementptr inbounds %struct.Table, %struct.Table* %16, i32 0, i32 5
  %18 = load %struct.Table*, %struct.Table** %17, align 8
  store %struct.Table* %18, %struct.Table** %7, align 8
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %21 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i32 0, i32 0
  %22 = bitcast %union.Value* %21 to %union.GCObject**
  %23 = load %union.GCObject*, %union.GCObject** %22, align 8
  %24 = bitcast %union.GCObject* %23 to %union.Udata*
  %25 = bitcast %union.Udata* %24 to %struct.anon.2*
  %26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %25, i32 0, i32 3
  %27 = load %struct.Table*, %struct.Table** %26, align 8
  store %struct.Table* %27, %struct.Table** %7, align 8
  br label %39

28:                                               ; preds = %3
  %29 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 6
  %31 = load %struct.global_State*, %struct.global_State** %30, align 8
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 23
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %32, i64 0, i64 %36
  %38 = load %struct.Table*, %struct.Table** %37, align 8
  store %struct.Table* %38, %struct.Table** %7, align 8
  br label %39

39:                                               ; preds = %28, %19, %11
  %40 = load %struct.Table*, %struct.Table** %7, align 8
  %41 = icmp ne %struct.Table* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.Table*, %struct.Table** %7, align 8
  %44 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 6
  %46 = load %struct.global_State*, %struct.global_State** %45, align 8
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 24
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [17 x %union.TString*], [17 x %union.TString*]* %47, i64 0, i64 %49
  %51 = load %union.TString*, %union.TString** %50, align 8
  %52 = call %struct.lua_TValue* @luaH_getstr(%struct.Table* noundef %43, %union.TString* noundef %51)
  br label %54

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %42
  %55 = phi %struct.lua_TValue* [ %52, %42 ], [ @luaO_nilobject_, %53 ]
  ret %struct.lua_TValue* %55
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
