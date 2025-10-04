; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/lstate.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/lstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%union.Value = type { %union.GCObject* }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_longjmp = type opaque
%struct.LG = type { %struct.lua_State, %struct.global_State }
%struct.anon = type { %struct.UpVal*, %struct.UpVal* }

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define hidden %struct.lua_State* @luaE_newthread(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %7 = call i8* @luaM_realloc_(%struct.lua_State* noundef %6, i8* noundef null, i64 noundef 0, i64 noundef 184)
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = bitcast i8* %8 to %struct.lua_State*
  store %struct.lua_State* %9, %struct.lua_State** %3, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %12 = bitcast %struct.lua_State* %11 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* noundef %10, %union.GCObject* noundef %12, i8 noundef zeroext 8)
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 6
  %16 = load %struct.global_State*, %struct.global_State** %15, align 8
  call void @preinit_state(%struct.lua_State* noundef %13, %struct.global_State* noundef %16)
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @stack_init(%struct.lua_State* noundef %17, %struct.lua_State* noundef %18)
  %19 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 22
  store %struct.lua_TValue* %20, %struct.lua_TValue** %4, align 8
  %21 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 22
  store %struct.lua_TValue* %22, %struct.lua_TValue** %5, align 8
  %23 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %24 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %23, i32 0, i32 0
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i32 0, i32 0
  %27 = bitcast %union.Value* %24 to i8*
  %28 = bitcast %union.Value* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %35 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %34, i32 0, i32 17
  %36 = load i8, i8* %35, align 4
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 17
  store i8 %36, i8* %38, align 4
  %39 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 19
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 19
  store i32 %41, i32* %43, align 8
  %44 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 21
  %46 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %45, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %48 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %47, i32 0, i32 21
  store void (%struct.lua_State*, %struct.lua_Debug*)* %46, void (%struct.lua_State*, %struct.lua_Debug*)** %48, align 8
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %49, i32 0, i32 19
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 20
  store i32 %51, i32* %53, align 4
  %54 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret %struct.lua_State* %54
}

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare hidden void @luaC_link(%struct.lua_State* noundef, %union.GCObject* noundef, i8 noundef zeroext) #1

; Function Attrs: noinline nounwind uwtable
define internal void @preinit_state(%struct.lua_State* noundef %0, %struct.global_State* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.global_State* %1, %struct.global_State** %4, align 8
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 6
  store %struct.global_State* %5, %struct.global_State** %7, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 10
  store %struct.lua_TValue* null, %struct.lua_TValue** %9, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 13
  store i32 0, i32* %11, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 26
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %13, align 8
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 21
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %15, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %16, i32 0, i32 17
  store i8 0, i8* %17, align 4
  %18 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %18, i32 0, i32 19
  store i32 0, i32* %19, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 18
  store i8 1, i8* %21, align 1
  %22 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 19
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 20
  store i32 %24, i32* %26, align 4
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 24
  store %union.GCObject* null, %union.GCObject** %28, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 14
  store i32 0, i32* %30, align 4
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 16
  store i16 0, i16* %32, align 2
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 15
  store i16 0, i16* %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 3
  store i8 0, i8* %36, align 2
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 7
  store %struct.CallInfo* null, %struct.CallInfo** %38, align 8
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %39, i32 0, i32 12
  store %struct.CallInfo* null, %struct.CallInfo** %40, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 27
  store i64 0, i64* %44, align 8
  %45 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %45, i32 0, i32 22
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i32 0, i32 1
  store i32 0, i32* %47, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stack_init(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_State* %1, %struct.lua_State** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %6 = call i8* @luaM_realloc_(%struct.lua_State* noundef %5, i8* noundef null, i64 noundef 0, i64 noundef 320)
  %7 = bitcast i8* %6 to %struct.CallInfo*
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 12
  store %struct.CallInfo* %7, %struct.CallInfo** %9, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 12
  %12 = load %struct.CallInfo*, %struct.CallInfo** %11, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 7
  store %struct.CallInfo* %12, %struct.CallInfo** %14, align 8
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i32 0, i32 14
  store i32 8, i32* %16, align 4
  %17 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 12
  %19 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 14
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %19, i64 %23
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %24, i64 -1
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %26, i32 0, i32 11
  store %struct.CallInfo* %25, %struct.CallInfo** %27, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %29 = call i8* @luaM_realloc_(%struct.lua_State* noundef %28, i8* noundef null, i64 noundef 0, i64 noundef 720)
  %30 = bitcast i8* %29 to %struct.lua_TValue*
  %31 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 10
  store %struct.lua_TValue* %30, %struct.lua_TValue** %32, align 8
  %33 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 13
  store i32 45, i32* %34, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 10
  %37 = load %struct.lua_TValue*, %struct.lua_TValue** %36, align 8
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i32 0, i32 4
  store %struct.lua_TValue* %37, %struct.lua_TValue** %39, align 8
  %40 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %41 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %40, i32 0, i32 10
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %41, align 8
  %43 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 5
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %42, i64 %47
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %48, i64 -1
  %50 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 9
  store %struct.lua_TValue* %49, %struct.lua_TValue** %51, align 8
  %52 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %53 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %52, i32 0, i32 4
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %53, align 8
  %55 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %56 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %55, i32 0, i32 7
  %57 = load %struct.CallInfo*, %struct.CallInfo** %56, align 8
  %58 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %57, i32 0, i32 1
  store %struct.lua_TValue* %54, %struct.lua_TValue** %58, align 8
  %59 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %60 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %59, i32 0, i32 4
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %60, align 8
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 1
  store %struct.lua_TValue* %62, %struct.lua_TValue** %60, align 8
  %63 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 0, i32 1
  store i32 0, i32* %63, align 8
  %64 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %65 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %64, i32 0, i32 4
  %66 = load %struct.lua_TValue*, %struct.lua_TValue** %65, align 8
  %67 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i32 0, i32 7
  %69 = load %struct.CallInfo*, %struct.CallInfo** %68, align 8
  %70 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %69, i32 0, i32 0
  store %struct.lua_TValue* %66, %struct.lua_TValue** %70, align 8
  %71 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %72 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %71, i32 0, i32 5
  store %struct.lua_TValue* %66, %struct.lua_TValue** %72, align 8
  %73 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %73, i32 0, i32 4
  %75 = load %struct.lua_TValue*, %struct.lua_TValue** %74, align 8
  %76 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %75, i64 20
  %77 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %78 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %77, i32 0, i32 7
  %79 = load %struct.CallInfo*, %struct.CallInfo** %78, align 8
  %80 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %79, i32 0, i32 2
  store %struct.lua_TValue* %76, %struct.lua_TValue** %80, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define hidden void @luaE_freethread(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_State* %1, %struct.lua_State** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 10
  %8 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  call void @luaF_close(%struct.lua_State* noundef %5, %struct.lua_TValue* noundef %8)
  %9 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  call void @freestack(%struct.lua_State* noundef %10, %struct.lua_State* noundef %11)
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = bitcast %struct.lua_State* %13 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = call i8* @luaM_realloc_(%struct.lua_State* noundef %12, i8* noundef %15, i64 noundef 184, i64 noundef 0)
  ret void
}

declare hidden void @luaF_close(%struct.lua_State* noundef, %struct.lua_TValue* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @freestack(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_State* %1, %struct.lua_State** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i32 0, i32 12
  %8 = load %struct.CallInfo*, %struct.CallInfo** %7, align 8
  %9 = bitcast %struct.CallInfo* %8 to i8*
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 14
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 40
  %15 = call i8* @luaM_realloc_(%struct.lua_State* noundef %5, i8* noundef %9, i64 noundef %14, i64 noundef 0)
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 10
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %18, align 8
  %20 = bitcast %struct.lua_TValue* %19 to i8*
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i32 0, i32 13
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 16
  %26 = call i8* @luaM_realloc_(%struct.lua_State* noundef %16, i8* noundef %20, i64 noundef %25, i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8* (i8*, i8*, i64, i64)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca %struct.global_State*, align 8
  %9 = alloca i8*, align 8
  store i8* (i8*, i8*, i64, i64)* %0, i8* (i8*, i8*, i64, i64)** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* %10(i8* noundef %11, i8* noundef null, i64 noundef 0, i64 noundef 616)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.lua_State* null, %struct.lua_State** %3, align 8
  br label %142

16:                                               ; preds = %2
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = bitcast i8* %18 to %struct.lua_State*
  store %struct.lua_State* %19, %struct.lua_State** %7, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %21 = bitcast %struct.lua_State* %20 to %struct.LG*
  %22 = getelementptr inbounds %struct.LG, %struct.LG* %21, i32 0, i32 1
  store %struct.global_State* %22, %struct.global_State** %8, align 8
  %23 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %23, i32 0, i32 0
  store %union.GCObject* null, %union.GCObject** %24, align 8
  %25 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %26 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %25, i32 0, i32 1
  store i8 8, i8* %26, align 8
  %27 = load %struct.global_State*, %struct.global_State** %8, align 8
  %28 = getelementptr inbounds %struct.global_State, %struct.global_State* %27, i32 0, i32 3
  store i8 33, i8* %28, align 8
  %29 = load %struct.global_State*, %struct.global_State** %8, align 8
  %30 = getelementptr inbounds %struct.global_State, %struct.global_State* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 8
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 3
  %34 = trunc i32 %33 to i8
  %35 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 2
  store i8 %34, i8* %36, align 1
  %37 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 2
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, 96
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %38, align 1
  %43 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %44 = load %struct.global_State*, %struct.global_State** %8, align 8
  call void @preinit_state(%struct.lua_State* noundef %43, %struct.global_State* noundef %44)
  %45 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %4, align 8
  %46 = load %struct.global_State*, %struct.global_State** %8, align 8
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 1
  store i8* (i8*, i8*, i64, i64)* %45, i8* (i8*, i8*, i64, i64)** %47, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.global_State*, %struct.global_State** %8, align 8
  %50 = getelementptr inbounds %struct.global_State, %struct.global_State* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %52 = load %struct.global_State*, %struct.global_State** %8, align 8
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %52, i32 0, i32 21
  store %struct.lua_State* %51, %struct.lua_State** %53, align 8
  %54 = load %struct.global_State*, %struct.global_State** %8, align 8
  %55 = getelementptr inbounds %struct.global_State, %struct.global_State* %54, i32 0, i32 22
  %56 = load %struct.global_State*, %struct.global_State** %8, align 8
  %57 = getelementptr inbounds %struct.global_State, %struct.global_State* %56, i32 0, i32 22
  %58 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %57, i32 0, i32 4
  %59 = bitcast %union.anon* %58 to %struct.anon*
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  store %struct.UpVal* %55, %struct.UpVal** %60, align 8
  %61 = load %struct.global_State*, %struct.global_State** %8, align 8
  %62 = getelementptr inbounds %struct.global_State, %struct.global_State* %61, i32 0, i32 22
  %63 = load %struct.global_State*, %struct.global_State** %8, align 8
  %64 = getelementptr inbounds %struct.global_State, %struct.global_State* %63, i32 0, i32 22
  %65 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %64, i32 0, i32 4
  %66 = bitcast %union.anon* %65 to %struct.anon*
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 1
  store %struct.UpVal* %62, %struct.UpVal** %67, align 8
  %68 = load %struct.global_State*, %struct.global_State** %8, align 8
  %69 = getelementptr inbounds %struct.global_State, %struct.global_State* %68, i32 0, i32 13
  store i64 0, i64* %69, align 8
  %70 = load %struct.global_State*, %struct.global_State** %8, align 8
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %71, i32 0, i32 2
  store i32 0, i32* %72, align 4
  %73 = load %struct.global_State*, %struct.global_State** %8, align 8
  %74 = getelementptr inbounds %struct.global_State, %struct.global_State* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %74, i32 0, i32 1
  store i32 0, i32* %75, align 8
  %76 = load %struct.global_State*, %struct.global_State** %8, align 8
  %77 = getelementptr inbounds %struct.global_State, %struct.global_State* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %77, i32 0, i32 0
  store %union.GCObject** null, %union.GCObject*** %78, align 8
  %79 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %80 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %79, i32 0, i32 6
  %81 = load %struct.global_State*, %struct.global_State** %80, align 8
  %82 = getelementptr inbounds %struct.global_State, %struct.global_State* %81, i32 0, i32 20
  %83 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %82, i32 0, i32 1
  store i32 0, i32* %83, align 8
  %84 = load %struct.global_State*, %struct.global_State** %8, align 8
  %85 = getelementptr inbounds %struct.global_State, %struct.global_State* %84, i32 0, i32 12
  %86 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %85, i32 0, i32 0
  store i8* null, i8** %86, align 8
  %87 = load %struct.global_State*, %struct.global_State** %8, align 8
  %88 = getelementptr inbounds %struct.global_State, %struct.global_State* %87, i32 0, i32 12
  %89 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.global_State*, %struct.global_State** %8, align 8
  %91 = getelementptr inbounds %struct.global_State, %struct.global_State* %90, i32 0, i32 19
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %91, align 8
  %92 = load %struct.global_State*, %struct.global_State** %8, align 8
  %93 = getelementptr inbounds %struct.global_State, %struct.global_State* %92, i32 0, i32 4
  store i8 0, i8* %93, align 1
  %94 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %95 = bitcast %struct.lua_State* %94 to %union.GCObject*
  %96 = load %struct.global_State*, %struct.global_State** %8, align 8
  %97 = getelementptr inbounds %struct.global_State, %struct.global_State* %96, i32 0, i32 6
  store %union.GCObject* %95, %union.GCObject** %97, align 8
  %98 = load %struct.global_State*, %struct.global_State** %8, align 8
  %99 = getelementptr inbounds %struct.global_State, %struct.global_State* %98, i32 0, i32 5
  store i32 0, i32* %99, align 4
  %100 = load %struct.global_State*, %struct.global_State** %8, align 8
  %101 = getelementptr inbounds %struct.global_State, %struct.global_State* %100, i32 0, i32 6
  %102 = load %struct.global_State*, %struct.global_State** %8, align 8
  %103 = getelementptr inbounds %struct.global_State, %struct.global_State* %102, i32 0, i32 7
  store %union.GCObject** %101, %union.GCObject*** %103, align 8
  %104 = load %struct.global_State*, %struct.global_State** %8, align 8
  %105 = getelementptr inbounds %struct.global_State, %struct.global_State* %104, i32 0, i32 8
  store %union.GCObject* null, %union.GCObject** %105, align 8
  %106 = load %struct.global_State*, %struct.global_State** %8, align 8
  %107 = getelementptr inbounds %struct.global_State, %struct.global_State* %106, i32 0, i32 9
  store %union.GCObject* null, %union.GCObject** %107, align 8
  %108 = load %struct.global_State*, %struct.global_State** %8, align 8
  %109 = getelementptr inbounds %struct.global_State, %struct.global_State* %108, i32 0, i32 10
  store %union.GCObject* null, %union.GCObject** %109, align 8
  %110 = load %struct.global_State*, %struct.global_State** %8, align 8
  %111 = getelementptr inbounds %struct.global_State, %struct.global_State* %110, i32 0, i32 11
  store %union.GCObject* null, %union.GCObject** %111, align 8
  %112 = load %struct.global_State*, %struct.global_State** %8, align 8
  %113 = getelementptr inbounds %struct.global_State, %struct.global_State* %112, i32 0, i32 14
  store i64 616, i64* %113, align 8
  %114 = load %struct.global_State*, %struct.global_State** %8, align 8
  %115 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i32 0, i32 17
  store i32 200, i32* %115, align 8
  %116 = load %struct.global_State*, %struct.global_State** %8, align 8
  %117 = getelementptr inbounds %struct.global_State, %struct.global_State* %116, i32 0, i32 18
  store i32 200, i32* %117, align 4
  %118 = load %struct.global_State*, %struct.global_State** %8, align 8
  %119 = getelementptr inbounds %struct.global_State, %struct.global_State* %118, i32 0, i32 16
  store i64 0, i64* %119, align 8
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %129, %16
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 9
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.global_State*, %struct.global_State** %8, align 8
  %125 = getelementptr inbounds %struct.global_State, %struct.global_State* %124, i32 0, i32 23
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %125, i64 0, i64 %127
  store %struct.Table* null, %struct.Table** %128, align 8
  br label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %120, !llvm.loop !4

132:                                              ; preds = %120
  %133 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %134 = call i32 @luaD_rawrunprotected(%struct.lua_State* noundef %133, void (%struct.lua_State*, i8*)* noundef @f_luaopen, i8* noundef null)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  call void @close_state(%struct.lua_State* noundef %137)
  store %struct.lua_State* null, %struct.lua_State** %7, align 8
  br label %140

138:                                              ; preds = %132
  %139 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  store %struct.lua_State* %141, %struct.lua_State** %3, align 8
  br label %142

142:                                              ; preds = %140, %15
  %143 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  ret %struct.lua_State* %143
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State* noundef, void (%struct.lua_State*, i8*)* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @f_luaopen(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.global_State*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  %7 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 6
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  store %struct.global_State* %10, %struct.global_State** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @stack_init(%struct.lua_State* noundef %12, %struct.lua_State* noundef %13)
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 22
  store %struct.lua_TValue* %15, %struct.lua_TValue** %6, align 8
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = call %struct.Table* @luaH_new(%struct.lua_State* noundef %16, i32 noundef 0, i32 noundef 2)
  %18 = bitcast %struct.Table* %17 to %union.GCObject*
  %19 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %20 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %19, i32 0, i32 0
  %21 = bitcast %union.Value* %20 to %union.GCObject**
  store %union.GCObject* %18, %union.GCObject** %21, align 8
  %22 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %22, i32 0, i32 1
  store i32 5, i32* %23, align 8
  %24 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 6
  %26 = load %struct.global_State*, %struct.global_State** %25, align 8
  %27 = getelementptr inbounds %struct.global_State, %struct.global_State* %26, i32 0, i32 20
  store %struct.lua_TValue* %27, %struct.lua_TValue** %7, align 8
  %28 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %29 = call %struct.Table* @luaH_new(%struct.lua_State* noundef %28, i32 noundef 0, i32 noundef 2)
  %30 = bitcast %struct.Table* %29 to %union.GCObject*
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i32 0, i32 0
  %33 = bitcast %union.Value* %32 to %union.GCObject**
  store %union.GCObject* %30, %union.GCObject** %33, align 8
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i32 0, i32 1
  store i32 5, i32* %35, align 8
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaS_resize(%struct.lua_State* noundef %36, i32 noundef 32)
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaT_init(%struct.lua_State* noundef %37)
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaX_init(%struct.lua_State* noundef %38)
  %39 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %40 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %39, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 noundef 17)
  %41 = bitcast %union.TString* %40 to %struct.anon.1*
  %42 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %41, i32 0, i32 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, 32
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %42, align 1
  %47 = load %struct.global_State*, %struct.global_State** %5, align 8
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %47, i32 0, i32 14
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 4, %49
  %51 = load %struct.global_State*, %struct.global_State** %5, align 8
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %51, i32 0, i32 13
  store i64 %50, i64* %52, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @close_state(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i32 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  store %struct.global_State* %6, %struct.global_State** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %8, i32 0, i32 10
  %10 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  call void @luaF_close(%struct.lua_State* noundef %7, %struct.lua_TValue* noundef %10)
  %11 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @luaC_freeall(%struct.lua_State* noundef %11)
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 6
  %15 = load %struct.global_State*, %struct.global_State** %14, align 8
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %16, i32 0, i32 0
  %18 = load %union.GCObject**, %union.GCObject*** %17, align 8
  %19 = bitcast %union.GCObject** %18 to i8*
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 6
  %22 = load %struct.global_State*, %struct.global_State** %21, align 8
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = call i8* @luaM_realloc_(%struct.lua_State* noundef %12, i8* noundef %19, i64 noundef %27, i64 noundef 0)
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = load %struct.global_State*, %struct.global_State** %3, align 8
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %30, i32 0, i32 12
  %32 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.global_State*, %struct.global_State** %3, align 8
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %34, i32 0, i32 12
  %36 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %37, 1
  %39 = call i8* @luaM_realloc_(%struct.lua_State* noundef %29, i8* noundef %33, i64 noundef %38, i64 noundef 0)
  %40 = load %struct.global_State*, %struct.global_State** %3, align 8
  %41 = getelementptr inbounds %struct.global_State, %struct.global_State* %40, i32 0, i32 12
  %42 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  %43 = load %struct.global_State*, %struct.global_State** %3, align 8
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %43, i32 0, i32 12
  %45 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %47 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @freestack(%struct.lua_State* noundef %46, %struct.lua_State* noundef %47)
  %48 = load %struct.global_State*, %struct.global_State** %3, align 8
  %49 = getelementptr inbounds %struct.global_State, %struct.global_State* %48, i32 0, i32 1
  %50 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %49, align 8
  %51 = load %struct.global_State*, %struct.global_State** %3, align 8
  %52 = getelementptr inbounds %struct.global_State, %struct.global_State* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %55 = bitcast %struct.lua_State* %54 to i8*
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = call i8* %50(i8* noundef %53, i8* noundef %56, i64 noundef 616, i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lua_close(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i32 0, i32 6
  %5 = load %struct.global_State*, %struct.global_State** %4, align 8
  %6 = getelementptr inbounds %struct.global_State, %struct.global_State* %5, i32 0, i32 21
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  store %struct.lua_State* %7, %struct.lua_State** %2, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 10
  %11 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  call void @luaF_close(%struct.lua_State* noundef %8, %struct.lua_TValue* noundef %11)
  %12 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %13 = call i64 @luaC_separateudata(%struct.lua_State* noundef %12, i32 noundef 1)
  %14 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 27
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %35, %1
  %17 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i32 0, i32 12
  %19 = load %struct.CallInfo*, %struct.CallInfo** %18, align 8
  %20 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %20, i32 0, i32 7
  store %struct.CallInfo* %19, %struct.CallInfo** %21, align 8
  %22 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %22, i32 0, i32 7
  %24 = load %struct.CallInfo*, %struct.CallInfo** %23, align 8
  %25 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %24, i32 0, i32 0
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  %27 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i32 0, i32 4
  store %struct.lua_TValue* %26, %struct.lua_TValue** %28, align 8
  %29 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %29, i32 0, i32 5
  store %struct.lua_TValue* %26, %struct.lua_TValue** %30, align 8
  %31 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %32 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %31, i32 0, i32 16
  store i16 0, i16* %32, align 2
  %33 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 15
  store i16 0, i16* %34, align 8
  br label %35

35:                                               ; preds = %16
  %36 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %37 = call i32 @luaD_rawrunprotected(%struct.lua_State* noundef %36, void (%struct.lua_State*, i8*)* noundef @callallgcTM, i8* noundef null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %16, label %39, !llvm.loop !6

39:                                               ; preds = %35
  %40 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %41 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void @close_state(%struct.lua_State* noundef %41)
  ret void
}

declare hidden i64 @luaC_separateudata(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @callallgcTM(%struct.lua_State* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  call void @luaC_callGCTM(%struct.lua_State* noundef %6)
  ret void
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State* noundef, i32 noundef, i32 noundef) #1

declare hidden void @luaS_resize(%struct.lua_State* noundef, i32 noundef) #1

declare hidden void @luaT_init(%struct.lua_State* noundef) #1

declare hidden void @luaX_init(%struct.lua_State* noundef) #1

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

declare hidden void @luaC_freeall(%struct.lua_State* noundef) #1

declare hidden void @luaC_callGCTM(%struct.lua_State* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
