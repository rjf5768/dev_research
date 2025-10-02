; ModuleID = './lstate.ll'
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

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define hidden %struct.lua_State* @luaE_newthread(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef 184) #4
  %3 = bitcast i8* %2 to %struct.lua_State*
  %4 = bitcast i8* %2 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* noundef %0, %union.GCObject* noundef %4, i8 noundef zeroext 8) #4
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  call void @preinit_state(%struct.lua_State* noundef %3, %struct.global_State* noundef %6)
  call void @stack_init(%struct.lua_State* noundef %3, %struct.lua_State* noundef %0)
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22
  %8 = getelementptr inbounds i8, i8* %2, i64 120
  %9 = bitcast %struct.lua_TValue* %7 to i64*
  %10 = bitcast i8* %8 to i64*
  %11 = load i64, i64* %9, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds i8, i8* %2, i64 128
  %15 = bitcast i8* %14 to i32*
  store i32 %13, i32* %15, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  %17 = load i8, i8* %16, align 4
  %18 = getelementptr inbounds i8, i8* %2, i64 100
  store i8 %17, i8* %18, align 4
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds i8, i8* %2, i64 104
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  %24 = load void (%struct.lua_State*, %struct.lua_Debug*)*, void (%struct.lua_State*, %struct.lua_Debug*)** %23, align 8
  %25 = getelementptr inbounds i8, i8* %2, i64 112
  %26 = bitcast i8* %25 to void (%struct.lua_State*, %struct.lua_Debug*)**
  store void (%struct.lua_State*, %struct.lua_Debug*)* %24, void (%struct.lua_State*, %struct.lua_Debug*)** %26, align 8
  %27 = getelementptr inbounds i8, i8* %2, i64 104
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds i8, i8* %2, i64 108
  %31 = bitcast i8* %30 to i32*
  store i32 %29, i32* %31, align 4
  ret %struct.lua_State* %3
}

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare hidden void @luaC_link(%struct.lua_State* noundef, %union.GCObject* noundef, i8 noundef zeroext) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @preinit_state(%struct.lua_State* nocapture noundef %0, %struct.global_State* noundef %1) #2 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  store %struct.global_State* %1, %struct.global_State** %3, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  store %struct.lua_TValue* null, %struct.lua_TValue** %4, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 26
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %6, align 8
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 21
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %7, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 17
  store i8 0, i8* %8, align 4
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 19
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 18
  store i8 1, i8* %10, align 1
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 20
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24
  store %union.GCObject* null, %union.GCObject** %12, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 16
  store i16 0, i16* %14, align 2
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 15
  store i16 0, i16* %15, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 3
  store i8 0, i8* %16, align 2
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  store %struct.CallInfo* null, %struct.CallInfo** %17, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  store %struct.CallInfo* null, %struct.CallInfo** %18, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 8
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 27
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 1
  store i32 0, i32* %21, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stack_init(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1) #0 {
  %3 = call i8* @luaM_realloc_(%struct.lua_State* noundef %1, i8* noundef null, i64 noundef 0, i64 noundef 320) #4
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %5 = bitcast %struct.CallInfo** %4 to i8**
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %7 = bitcast %struct.CallInfo** %6 to i8**
  store i8* %3, i8** %7, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 14
  store i32 8, i32* %8, align 4
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 12
  %10 = load %struct.CallInfo*, %struct.CallInfo** %9, align 8
  %11 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %10, i64 7
  %12 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 11
  store %struct.CallInfo* %11, %struct.CallInfo** %12, align 8
  %13 = call i8* @luaM_realloc_(%struct.lua_State* noundef %1, i8* noundef null, i64 noundef 0, i64 noundef 720) #4
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %15 = bitcast %struct.lua_TValue** %14 to i8**
  store i8* %13, i8** %15, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13
  store i32 45, i32* %16, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %18 = bitcast %struct.lua_TValue** %17 to i8**
  store i8* %13, i8** %18, align 8
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %21 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 13
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -5
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %24
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %25, i64 -1
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 9
  store %struct.lua_TValue* %26, %struct.lua_TValue** %27, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %28, align 8
  %30 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %31 = load %struct.CallInfo*, %struct.CallInfo** %30, align 8
  %32 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %31, i64 0, i32 1
  store %struct.lua_TValue* %29, %struct.lua_TValue** %32, align 8
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8
  %35 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 1
  store %struct.lua_TValue* %35, %struct.lua_TValue** %33, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %40 = load %struct.CallInfo*, %struct.CallInfo** %39, align 8
  %41 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %40, i64 0, i32 0
  store %struct.lua_TValue* %38, %struct.lua_TValue** %41, align 8
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 5
  store %struct.lua_TValue* %38, %struct.lua_TValue** %42, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 4
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %43, align 8
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 20
  %46 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 7
  %47 = load %struct.CallInfo*, %struct.CallInfo** %46, align 8
  %48 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %47, i64 0, i32 2
  store %struct.lua_TValue* %45, %struct.lua_TValue** %48, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define hidden void @luaE_freethread(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 10
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  call void @luaF_close(%struct.lua_State* noundef %1, %struct.lua_TValue* noundef %4) #4
  call void @freestack(%struct.lua_State* noundef %0, %struct.lua_State* noundef %1)
  %5 = bitcast %struct.lua_State* %1 to i8*
  %6 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %5, i64 noundef 184, i64 noundef 0) #4
  ret void
}

declare hidden void @luaF_close(%struct.lua_State* noundef, %struct.lua_TValue* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @freestack(%struct.lua_State* noundef %0, %struct.lua_State* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 12
  %4 = bitcast %struct.CallInfo** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 14
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, 40
  %10 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %5, i64 noundef %9, i64 noundef 0) #4
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 10
  %12 = bitcast %struct.lua_TValue** %11 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1, i64 0, i32 13
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 4
  %18 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %13, i64 noundef %17, i64 noundef 0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i64, i64)* noundef %0, i8* noundef %1) #0 {
  %3 = call i8* %0(i8* noundef %1, i8* noundef null, i64 noundef 0, i64 noundef 616) #4
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %81

6:                                                ; preds = %2
  %7 = bitcast i8* %3 to %struct.lua_State*
  %8 = getelementptr inbounds i8, i8* %3, i64 184
  %9 = bitcast i8* %8 to %struct.global_State*
  %10 = bitcast i8* %3 to %union.GCObject**
  store %union.GCObject* null, %union.GCObject** %10, align 8
  %11 = getelementptr inbounds i8, i8* %3, i64 8
  store i8 8, i8* %11, align 8
  %12 = getelementptr inbounds i8, i8* %3, i64 216
  store i8 33, i8* %12, align 8
  %13 = getelementptr inbounds i8, i8* %3, i64 9
  store i8 97, i8* %13, align 1
  call void @preinit_state(%struct.lua_State* noundef nonnull %7, %struct.global_State* noundef nonnull %9)
  %14 = getelementptr inbounds i8, i8* %3, i64 200
  %15 = bitcast i8* %14 to i8* (i8*, i8*, i64, i64)**
  store i8* (i8*, i8*, i64, i64)* %0, i8* (i8*, i8*, i64, i64)** %15, align 8
  %16 = getelementptr inbounds i8, i8* %3, i64 208
  %17 = bitcast i8* %16 to i8**
  store i8* %1, i8** %17, align 8
  %18 = getelementptr inbounds i8, i8* %3, i64 360
  %19 = bitcast i8* %18 to i8**
  store i8* %3, i8** %19, align 8
  %20 = getelementptr inbounds i8, i8* %3, i64 368
  %21 = getelementptr inbounds i8, i8* %3, i64 392
  %22 = bitcast i8* %21 to i8**
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds i8, i8* %3, i64 368
  %24 = getelementptr inbounds i8, i8* %3, i64 400
  %25 = bitcast i8* %24 to i8**
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds i8, i8* %3, i64 296
  %27 = bitcast i8* %26 to i64*
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds i8, i8* %3, i64 196
  %29 = bitcast i8* %28 to i32*
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds i8, i8* %3, i64 192
  %31 = bitcast i8* %30 to i32*
  store i32 0, i32* %31, align 8
  %32 = bitcast i8* %8 to %union.GCObject***
  store %union.GCObject** null, %union.GCObject*** %32, align 8
  %33 = getelementptr inbounds i8, i8* %3, i64 32
  %34 = bitcast i8* %33 to %struct.global_State**
  %35 = load %struct.global_State*, %struct.global_State** %34, align 8
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i64 0, i32 20, i32 1
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds i8, i8* %3, i64 272
  %38 = bitcast i8* %37 to i8**
  store i8* null, i8** %38, align 8
  %39 = getelementptr inbounds i8, i8* %3, i64 288
  %40 = bitcast i8* %39 to i64*
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds i8, i8* %3, i64 336
  %42 = bitcast i8* %41 to i32 (%struct.lua_State*)**
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %42, align 8
  %43 = getelementptr inbounds i8, i8* %3, i64 217
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds i8, i8* %3, i64 224
  %45 = bitcast i8* %44 to i8**
  store i8* %3, i8** %45, align 8
  %46 = getelementptr inbounds i8, i8* %3, i64 220
  %47 = bitcast i8* %46 to i32*
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds i8, i8* %3, i64 224
  %49 = getelementptr inbounds i8, i8* %3, i64 232
  %50 = bitcast i8* %49 to i8**
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds i8, i8* %3, i64 240
  %52 = bitcast i8* %51 to %union.GCObject**
  store %union.GCObject* null, %union.GCObject** %52, align 8
  %53 = getelementptr inbounds i8, i8* %3, i64 248
  %54 = bitcast i8* %53 to %union.GCObject**
  store %union.GCObject* null, %union.GCObject** %54, align 8
  %55 = getelementptr inbounds i8, i8* %3, i64 256
  %56 = bitcast i8* %55 to %union.GCObject**
  store %union.GCObject* null, %union.GCObject** %56, align 8
  %57 = getelementptr inbounds i8, i8* %3, i64 264
  %58 = bitcast i8* %57 to %union.GCObject**
  store %union.GCObject* null, %union.GCObject** %58, align 8
  %59 = getelementptr inbounds i8, i8* %3, i64 304
  %60 = bitcast i8* %59 to i64*
  store i64 616, i64* %60, align 8
  %61 = getelementptr inbounds i8, i8* %3, i64 328
  %62 = bitcast i8* %61 to i32*
  store i32 200, i32* %62, align 8
  %63 = getelementptr inbounds i8, i8* %3, i64 332
  %64 = bitcast i8* %63 to i32*
  store i32 200, i32* %64, align 4
  %65 = getelementptr inbounds i8, i8* %3, i64 320
  %66 = bitcast i8* %65 to i64*
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %74, %6
  %.02 = phi i32 [ 0, %6 ], [ %75, %74 ]
  %68 = icmp ult i32 %.02, 9
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = getelementptr inbounds i8, i8* %3, i64 408
  %71 = bitcast i8* %70 to [9 x %struct.Table*]*
  %72 = zext i32 %.02 to i64
  %73 = getelementptr inbounds [9 x %struct.Table*], [9 x %struct.Table*]* %71, i64 0, i64 %72
  store %struct.Table* null, %struct.Table** %73, align 8
  br label %74

74:                                               ; preds = %69
  %75 = add nuw nsw i32 %.02, 1
  br label %67, !llvm.loop !4

76:                                               ; preds = %67
  %77 = call i32 @luaD_rawrunprotected(%struct.lua_State* noundef %7, void (%struct.lua_State*, i8*)* noundef nonnull @f_luaopen, i8* noundef null) #4
  %.not = icmp eq i32 %77, 0
  br i1 %.not, label %79, label %78

78:                                               ; preds = %76
  call void @close_state(%struct.lua_State* noundef %7)
  br label %80

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %78
  %.01 = phi %struct.lua_State* [ null, %78 ], [ %7, %79 ]
  br label %81

81:                                               ; preds = %80, %5
  %.0 = phi %struct.lua_State* [ null, %5 ], [ %.01, %80 ]
  ret %struct.lua_State* %.0
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State* noundef, void (%struct.lua_State*, i8*)* noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @f_luaopen(%struct.lua_State* noundef %0, i8* nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8
  call void @stack_init(%struct.lua_State* noundef %0, %struct.lua_State* noundef %0)
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22
  %6 = call %struct.Table* @luaH_new(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 2) #4
  %7 = bitcast %struct.lua_TValue* %5 to %struct.Table**
  store %struct.Table* %6, %struct.Table** %7, align 8
  %8 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 22, i32 1
  store i32 5, i32* %8, align 8
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %10 = load %struct.global_State*, %struct.global_State** %9, align 8
  %11 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i64 0, i32 20
  %12 = call %struct.Table* @luaH_new(%struct.lua_State* noundef %0, i32 noundef 0, i32 noundef 2) #4
  %13 = bitcast %struct.lua_TValue* %11 to %struct.Table**
  store %struct.Table* %12, %struct.Table** %13, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %10, i64 0, i32 20, i32 1
  store i32 5, i32* %14, align 8
  call void @luaS_resize(%struct.lua_State* noundef %0, i32 noundef 32) #4
  call void @luaT_init(%struct.lua_State* noundef %0) #4
  call void @luaX_init(%struct.lua_State* noundef %0) #4
  %15 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 noundef 17) #4
  %16 = getelementptr inbounds %union.TString, %union.TString* %15, i64 0, i32 0, i32 2
  %17 = load i8, i8* %16, align 1
  %18 = or i8 %17, 32
  store i8 %18, i8* %16, align 1
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 14
  %20 = load i64, i64* %19, align 8
  %21 = shl i64 %20, 2
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 13
  store i64 %21, i64* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @close_state(%struct.lua_State* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8
  %4 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 10
  %5 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  call void @luaF_close(%struct.lua_State* noundef %0, %struct.lua_TValue* noundef %5) #4
  call void @luaC_freeall(%struct.lua_State* noundef %0) #4
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %7 = bitcast %struct.global_State** %6 to i8***
  %8 = load i8**, i8*** %7, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8** %8 to %struct.stringtable*
  %11 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %10, i64 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %9, i64 noundef %14, i64 noundef 0) #4
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %17, i64 noundef %19, i64 noundef 0) #4
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12, i32 0
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 12, i32 2
  store i64 0, i64* %22, align 8
  call void @freestack(%struct.lua_State* noundef %0, %struct.lua_State* noundef %0)
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 1
  %24 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %23, align 8
  %25 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast %struct.lua_State* %0 to i8*
  %28 = call i8* %24(i8* noundef %26, i8* noundef %27, i64 noundef 616, i64 noundef 0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @lua_close(%struct.lua_State* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %3 = load %struct.global_State*, %struct.global_State** %2, align 8
  %4 = getelementptr inbounds %struct.global_State, %struct.global_State* %3, i64 0, i32 21
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 10
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  call void @luaF_close(%struct.lua_State* noundef %5, %struct.lua_TValue* noundef %7) #4
  %8 = call i64 @luaC_separateudata(%struct.lua_State* noundef %5, i32 noundef 1) #4
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 27
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %20, %1
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 12
  %12 = load %struct.CallInfo*, %struct.CallInfo** %11, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 7
  store %struct.CallInfo* %12, %struct.CallInfo** %13, align 8
  %14 = getelementptr inbounds %struct.CallInfo, %struct.CallInfo* %12, i64 0, i32 0
  %15 = load %struct.lua_TValue*, %struct.lua_TValue** %14, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 4
  store %struct.lua_TValue* %15, %struct.lua_TValue** %16, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 5
  store %struct.lua_TValue* %15, %struct.lua_TValue** %17, align 8
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 16
  store i16 0, i16* %18, align 2
  %19 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 15
  store i16 0, i16* %19, align 8
  br label %20

20:                                               ; preds = %10
  %21 = call i32 @luaD_rawrunprotected(%struct.lua_State* noundef %5, void (%struct.lua_State*, i8*)* noundef nonnull @callallgcTM, i8* noundef null) #4
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %22, label %10, !llvm.loop !6

22:                                               ; preds = %20
  call void @close_state(%struct.lua_State* noundef %5)
  ret void
}

declare hidden i64 @luaC_separateudata(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @callallgcTM(%struct.lua_State* noundef %0, i8* nocapture noundef readnone %1) #0 {
  call void @luaC_callGCTM(%struct.lua_State* noundef %0) #4
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
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
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
