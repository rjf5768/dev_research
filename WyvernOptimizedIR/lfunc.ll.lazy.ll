; ModuleID = './lfunc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/lfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, {}*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%struct.lua_longjmp = type opaque
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, %struct.Node* }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define hidden %union.Closure* @luaF_newCclosure(%struct.lua_State* noundef %0, i32 noundef %1, %struct.Table* noundef %2) #0 {
  %4 = shl i32 %1, 4
  %5 = add i32 %4, 40
  %6 = sext i32 %5 to i64
  %7 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef %6) #5
  %8 = bitcast i8* %7 to %union.Closure*
  %9 = bitcast i8* %7 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* noundef %0, %union.GCObject* noundef %9, i8 noundef zeroext 6) #5
  %10 = getelementptr inbounds i8, i8* %7, i64 10
  store i8 1, i8* %10, align 2
  %11 = getelementptr inbounds i8, i8* %7, i64 24
  %12 = bitcast i8* %11 to %struct.Table**
  store %struct.Table* %2, %struct.Table** %12, align 8
  %13 = trunc i32 %1 to i8
  %14 = getelementptr inbounds i8, i8* %7, i64 11
  store i8 %13, i8* %14, align 1
  ret %union.Closure* %8
}

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare hidden void @luaC_link(%struct.lua_State* noundef, %union.GCObject* noundef, i8 noundef zeroext) #1

; Function Attrs: noinline nounwind uwtable
define hidden %union.Closure* @luaF_newLclosure(%struct.lua_State* noundef %0, i32 noundef %1, %struct.Table* noundef %2) #0 {
  %4 = shl i32 %1, 3
  %5 = add i32 %4, 40
  %6 = sext i32 %5 to i64
  %7 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef %6) #5
  %8 = bitcast i8* %7 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* noundef %0, %union.GCObject* noundef %8, i8 noundef zeroext 6) #5
  %9 = getelementptr inbounds i8, i8* %7, i64 10
  store i8 0, i8* %9, align 2
  %10 = getelementptr inbounds i8, i8* %7, i64 24
  %11 = bitcast i8* %10 to %struct.Table**
  store %struct.Table* %2, %struct.Table** %11, align 8
  %12 = trunc i32 %1 to i8
  %13 = getelementptr inbounds i8, i8* %7, i64 11
  store i8 %12, i8* %13, align 1
  br label %14

14:                                               ; preds = %16, %3
  %.0 = phi i32 [ %1, %3 ], [ %15, %16 ]
  %15 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %21, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, i8* %7, i64 40
  %18 = bitcast i8* %17 to [1 x %struct.UpVal*]*
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %18, i64 0, i64 %19
  store %struct.UpVal* null, %struct.UpVal** %20, align 8
  br label %14, !llvm.loop !4

21:                                               ; preds = %14
  %22 = bitcast i8* %7 to %union.Closure*
  ret %union.Closure* %22
}

; Function Attrs: noinline nounwind uwtable
define hidden %struct.UpVal* @luaF_newupval(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef 40) #5
  %3 = bitcast i8* %2 to %struct.UpVal*
  %4 = bitcast i8* %2 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* noundef %0, %union.GCObject* noundef %4, i8 noundef zeroext 10) #5
  %5 = getelementptr inbounds i8, i8* %2, i64 24
  %6 = getelementptr inbounds i8, i8* %2, i64 16
  %7 = bitcast i8* %6 to i8**
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds i8, i8* %2, i64 32
  %9 = bitcast i8* %8 to i32*
  store i32 0, i32* %9, align 8
  ret %struct.UpVal* %3
}

; Function Attrs: noinline nounwind uwtable
define hidden %struct.UpVal* @luaF_findupval(%struct.lua_State* noundef %0, %struct.lua_TValue* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24
  br label %6

6:                                                ; preds = %33, %2
  %.02 = phi %union.GCObject** [ %5, %2 ], [ %34, %33 ]
  %.01 = phi %struct.UpVal* [ undef, %2 ], [ %.1, %33 ]
  %7 = load %union.GCObject*, %union.GCObject** %.02, align 8
  %.not = icmp eq %union.GCObject* %7, null
  br i1 %.not, label %14, label %8

8:                                                ; preds = %6
  %9 = bitcast %union.GCObject** %.02 to %struct.UpVal**
  %10 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %11 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %10, i64 0, i32 3
  %12 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %13 = icmp uge %struct.lua_TValue* %12, %1
  br label %14

14:                                               ; preds = %8, %6
  %.1 = phi %struct.UpVal* [ %10, %8 ], [ %.01, %6 ]
  %15 = phi i1 [ %13, %8 ], [ false, %6 ]
  br i1 %15, label %16, label %35

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 3
  %18 = load %struct.lua_TValue*, %struct.lua_TValue** %17, align 8
  %19 = icmp eq %struct.lua_TValue* %18, %1
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 2
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3
  %24 = load i8, i8* %23, align 8
  %25 = xor i8 %24, -1
  %26 = and i8 %22, %25
  %27 = and i8 %26, 3
  %.not5 = icmp eq i8 %27, 0
  br i1 %.not5, label %32, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 2
  %30 = load i8, i8* %29, align 1
  %31 = xor i8 %30, 3
  store i8 %31, i8* %29, align 1
  br label %32

32:                                               ; preds = %28, %20
  br label %60

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 0
  br label %6, !llvm.loop !6

35:                                               ; preds = %14
  %36 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef 40) #5
  %37 = bitcast i8* %36 to %struct.UpVal*
  %38 = getelementptr inbounds i8, i8* %36, i64 8
  store i8 10, i8* %38, align 8
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3
  %40 = load i8, i8* %39, align 8
  %41 = and i8 %40, 3
  %42 = getelementptr inbounds i8, i8* %36, i64 9
  store i8 %41, i8* %42, align 1
  %43 = getelementptr inbounds i8, i8* %36, i64 16
  %44 = bitcast i8* %43 to %struct.lua_TValue**
  store %struct.lua_TValue* %1, %struct.lua_TValue** %44, align 8
  %45 = load %union.GCObject*, %union.GCObject** %.02, align 8
  %46 = bitcast i8* %36 to %union.GCObject**
  store %union.GCObject* %45, %union.GCObject** %46, align 8
  %47 = bitcast %union.GCObject** %.02 to i8**
  store i8* %36, i8** %47, align 8
  %48 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 22
  %49 = getelementptr inbounds i8, i8* %36, i64 24
  %50 = bitcast i8* %49 to %struct.UpVal**
  store %struct.UpVal* %48, %struct.UpVal** %50, align 8
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 22, i32 4, i32 0, i32 1
  %52 = bitcast i32* %51 to %struct.UpVal**
  %53 = load %struct.UpVal*, %struct.UpVal** %52, align 8
  %54 = getelementptr inbounds i8, i8* %36, i64 32
  %55 = bitcast i8* %54 to %struct.UpVal**
  store %struct.UpVal* %53, %struct.UpVal** %55, align 8
  %56 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %53, i64 0, i32 4
  %57 = bitcast %union.anon* %56 to i8**
  store i8* %36, i8** %57, align 8
  %58 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 22, i32 4, i32 0, i32 1
  %59 = bitcast i32* %58 to i8**
  store i8* %36, i8** %59, align 8
  br label %60

60:                                               ; preds = %35, %32
  %.0 = phi %struct.UpVal* [ %.1, %32 ], [ %37, %35 ]
  ret %struct.UpVal* %.0
}

; Function Attrs: noinline nounwind uwtable
define hidden void @luaF_freeupval(%struct.lua_State* noundef %0, %struct.UpVal* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 3
  %4 = load %struct.lua_TValue*, %struct.lua_TValue** %3, align 8
  %5 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %1, i64 0, i32 4, i32 0
  %.not = icmp eq %struct.lua_TValue* %4, %5
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  call void @unlinkupval(%struct.UpVal* noundef %1)
  br label %7

7:                                                ; preds = %6, %2
  %8 = bitcast %struct.UpVal* %1 to i8*
  %9 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %8, i64 noundef 40, i64 noundef 0) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @unlinkupval(%struct.UpVal* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %0, i64 0, i32 4
  %3 = bitcast %union.anon* %2 to %struct.UpVal**
  %4 = load %struct.UpVal*, %struct.UpVal** %3, align 8
  %5 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %0, i64 0, i32 4, i32 0, i32 1
  %6 = bitcast i32* %5 to %struct.UpVal**
  %7 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %8 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %7, i64 0, i32 4
  %9 = bitcast %union.anon* %8 to %struct.UpVal**
  store %struct.UpVal* %4, %struct.UpVal** %9, align 8
  %10 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %0, i64 0, i32 4, i32 0, i32 1
  %11 = bitcast i32* %10 to %struct.UpVal**
  %12 = load %struct.UpVal*, %struct.UpVal** %11, align 8
  %13 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %0, i64 0, i32 4
  %14 = bitcast %union.anon* %13 to %struct.UpVal**
  %15 = load %struct.UpVal*, %struct.UpVal** %14, align 8
  %16 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %15, i64 0, i32 4, i32 0, i32 1
  %17 = bitcast i32* %16 to %struct.UpVal**
  store %struct.UpVal* %12, %struct.UpVal** %17, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden void @luaF_close(%struct.lua_State* noundef %0, %struct.lua_TValue* noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8
  br label %5

5:                                                ; preds = %41, %2
  %.0 = phi %struct.UpVal* [ undef, %2 ], [ %.1, %41 ]
  %6 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24
  %7 = load %union.GCObject*, %union.GCObject** %6, align 8
  %.not = icmp eq %union.GCObject* %7, null
  br i1 %.not, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24
  %10 = bitcast %union.GCObject** %9 to %struct.UpVal**
  %11 = load %struct.UpVal*, %struct.UpVal** %10, align 8
  %12 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %11, i64 0, i32 3
  %13 = load %struct.lua_TValue*, %struct.lua_TValue** %12, align 8
  %14 = icmp uge %struct.lua_TValue* %13, %1
  br label %15

15:                                               ; preds = %8, %5
  %.1 = phi %struct.UpVal* [ %11, %8 ], [ %.0, %5 ]
  %16 = phi i1 [ %14, %8 ], [ false, %5 ]
  br i1 %16, label %17, label %42

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 0
  %19 = load %union.GCObject*, %union.GCObject** %18, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 24
  store %union.GCObject* %19, %union.GCObject** %20, align 8
  %21 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 2
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 3
  %24 = load i8, i8* %23, align 8
  %25 = xor i8 %24, -1
  %26 = and i8 %22, %25
  %27 = and i8 %26, 3
  %.not1 = icmp eq i8 %27, 0
  br i1 %.not1, label %29, label %28

28:                                               ; preds = %17
  call void @luaF_freeupval(%struct.lua_State* noundef %0, %struct.UpVal* noundef %.1)
  br label %41

29:                                               ; preds = %17
  call void @unlinkupval(%struct.UpVal* noundef %.1)
  %30 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 3
  %31 = load %struct.lua_TValue*, %struct.lua_TValue** %30, align 8
  %32 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 4, i32 0
  %33 = bitcast %struct.lua_TValue* %31 to i64*
  %34 = bitcast %struct.lua_TValue* %32 to i64*
  %35 = load i64, i64* %33, align 8
  store i64 %35, i64* %34, align 8
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %31, i64 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 4, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 4, i32 0
  %40 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %.1, i64 0, i32 3
  store %struct.lua_TValue* %39, %struct.lua_TValue** %40, align 8
  call void @luaC_linkupval(%struct.lua_State* noundef %0, %struct.UpVal* noundef %.1) #5
  br label %41

41:                                               ; preds = %29, %28
  br label %5, !llvm.loop !7

42:                                               ; preds = %15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare hidden void @luaC_linkupval(%struct.lua_State* noundef, %struct.UpVal* noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden %struct.Proto* @luaF_newproto(%struct.lua_State* noundef %0) #0 {
  %2 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef 120) #5
  %3 = bitcast i8* %2 to %struct.Proto*
  %4 = bitcast i8* %2 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* noundef %0, %union.GCObject* noundef %4, i8 noundef zeroext 9) #5
  %5 = getelementptr inbounds i8, i8* %2, i64 16
  %6 = bitcast i8* %5 to %struct.lua_TValue**
  store %struct.lua_TValue* null, %struct.lua_TValue** %6, align 8
  %7 = getelementptr inbounds i8, i8* %2, i64 76
  %8 = bitcast i8* %7 to i32*
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds i8, i8* %2, i64 32
  %10 = bitcast i8* %9 to %struct.Proto***
  store %struct.Proto** null, %struct.Proto*** %10, align 8
  %11 = getelementptr inbounds i8, i8* %2, i64 88
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds i8, i8* %2, i64 24
  %14 = bitcast i8* %13 to i32**
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds i8, i8* %2, i64 80
  %16 = bitcast i8* %15 to i32*
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds i8, i8* %2, i64 84
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i8, i8* %2, i64 72
  %20 = bitcast i8* %19 to i32*
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds i8, i8* %2, i64 112
  store i8 0, i8* %21, align 8
  %22 = getelementptr inbounds i8, i8* %2, i64 56
  %23 = bitcast i8* %22 to %union.TString***
  store %union.TString** null, %union.TString*** %23, align 8
  %24 = getelementptr inbounds i8, i8* %2, i64 113
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds i8, i8* %2, i64 114
  store i8 0, i8* %25, align 2
  %26 = getelementptr inbounds i8, i8* %2, i64 115
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds i8, i8* %2, i64 40
  %28 = bitcast i8* %27 to i32**
  store i32* null, i32** %28, align 8
  %29 = getelementptr inbounds i8, i8* %2, i64 92
  %30 = bitcast i8* %29 to i32*
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds i8, i8* %2, i64 48
  %32 = bitcast i8* %31 to %struct.LocVar**
  store %struct.LocVar* null, %struct.LocVar** %32, align 8
  %33 = getelementptr inbounds i8, i8* %2, i64 96
  %34 = bitcast i8* %33 to i32*
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds i8, i8* %2, i64 100
  %36 = bitcast i8* %35 to i32*
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds i8, i8* %2, i64 64
  %38 = bitcast i8* %37 to %union.TString**
  store %union.TString* null, %union.TString** %38, align 8
  ret %struct.Proto* %3
}

; Function Attrs: noinline nounwind uwtable
define hidden void @luaF_freeproto(%struct.lua_State* noundef %0, %struct.Proto* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 4
  %4 = bitcast i32** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  %10 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %5, i64 noundef %9, i64 noundef 0) #5
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 5
  %12 = bitcast %struct.Proto*** %11 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 14
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 3
  %18 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %13, i64 noundef %17, i64 noundef 0) #5
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 3
  %20 = bitcast %struct.lua_TValue** %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 11
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 4
  %26 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %21, i64 noundef %25, i64 noundef 0) #5
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  %28 = bitcast i32** %27 to i8**
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %29, i64 noundef %33, i64 noundef 0) #5
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  %36 = bitcast %struct.LocVar** %35 to i8**
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 15
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 4
  %42 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %37, i64 noundef %41, i64 noundef 0) #5
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8
  %44 = bitcast %union.TString*** %43 to i8**
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 3
  %50 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %45, i64 noundef %49, i64 noundef 0) #5
  %51 = bitcast %struct.Proto* %1 to i8*
  %52 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %51, i64 noundef 120, i64 noundef 0) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden void @luaF_freeclosure(%struct.lua_State* noundef %0, %union.Closure* noundef %1) #0 {
  %3 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 3
  %4 = load i8, i8* %3, align 2
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 4
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 4
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %union.Closure, %union.Closure* %1, i64 0, i32 0, i32 4
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 3
  br label %15

15:                                               ; preds = %10, %5
  %.in = phi i32 [ %9, %5 ], [ %14, %10 ]
  %16 = add nuw nsw i32 %.in, 40
  %17 = bitcast %union.Closure* %1 to i8*
  %18 = sext i32 %16 to i64
  %19 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %17, i64 noundef %18, i64 noundef 0) #5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define hidden i8* @luaF_getlocalname(%struct.Proto* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #4 {
  br label %4

4:                                                ; preds = %37, %3
  %.02 = phi i32 [ %1, %3 ], [ %.1, %37 ]
  %.01 = phi i32 [ 0, %3 ], [ %38, %37 ]
  %5 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %.01, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %10 = load %struct.LocVar*, %struct.LocVar** %9, align 8
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %10, i64 %11, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, %2
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi i1 [ false, %4 ], [ %14, %8 ]
  br i1 %16, label %17, label %39

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %19 = load %struct.LocVar*, %struct.LocVar** %18, align 8
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %19, i64 %20, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, %2
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = add nsw i32 %.02, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %29 = load %struct.LocVar*, %struct.LocVar** %28, align 8
  %30 = zext i32 %.01 to i64
  %31 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %29, i64 %30, i32 0
  %32 = load %union.TString*, %union.TString** %31, align 8
  %33 = getelementptr inbounds %union.TString, %union.TString* %32, i64 1
  %34 = bitcast %union.TString* %33 to i8*
  br label %40

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %17
  %.1 = phi i32 [ %25, %35 ], [ %.02, %17 ]
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.01, 1
  br label %4, !llvm.loop !8

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %39, %27
  %.0 = phi i8* [ %34, %27 ], [ null, %39 ]
  ret i8* %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
