; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/ldump.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/ldump.c"
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
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.DumpState = type { %struct.lua_State*, i32 (%struct.lua_State*, i8*, i64, i8*)*, i8*, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaU_dump(%struct.lua_State* noundef %0, %struct.Proto* noundef %1, i32 (%struct.lua_State*, i8*, i64, i8*)* noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.lua_State*, align 8
  %7 = alloca %struct.Proto*, align 8
  %8 = alloca i32 (%struct.lua_State*, i8*, i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.DumpState, align 8
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8
  store %struct.Proto* %1, %struct.Proto** %7, align 8
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %2, i32 (%struct.lua_State*, i8*, i64, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %13 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 0
  store %struct.lua_State* %12, %struct.lua_State** %13, align 8
  %14 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %8, align 8
  %15 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 1
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %14, i32 (%struct.lua_State*, i8*, i64, i8*)** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 4
  store i32 0, i32* %20, align 4
  call void @DumpHeader(%struct.DumpState* noundef %11)
  %21 = load %struct.Proto*, %struct.Proto** %7, align 8
  call void @DumpFunction(%struct.Proto* noundef %21, %union.TString* noundef null, %struct.DumpState* noundef %11)
  %22 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %11, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpHeader(%struct.DumpState* noundef %0) #0 {
  %2 = alloca %struct.DumpState*, align 8
  %3 = alloca [12 x i8], align 1
  store %struct.DumpState* %0, %struct.DumpState** %2, align 8
  %4 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  call void @luaU_header(i8* noundef %4)
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %6 = load %struct.DumpState*, %struct.DumpState** %2, align 8
  call void @DumpBlock(i8* noundef %5, i64 noundef 12, %struct.DumpState* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpFunction(%struct.Proto* noundef %0, %union.TString* noundef %1, %struct.DumpState* noundef %2) #0 {
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca %union.TString*, align 8
  %6 = alloca %struct.DumpState*, align 8
  store %struct.Proto* %0, %struct.Proto** %4, align 8
  store %union.TString* %1, %union.TString** %5, align 8
  store %struct.DumpState* %2, %struct.DumpState** %6, align 8
  %7 = load %struct.Proto*, %struct.Proto** %4, align 8
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i32 0, i32 9
  %9 = load %union.TString*, %union.TString** %8, align 8
  %10 = load %union.TString*, %union.TString** %5, align 8
  %11 = icmp eq %union.TString* %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %14 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  br label %22

18:                                               ; preds = %12
  %19 = load %struct.Proto*, %struct.Proto** %4, align 8
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %19, i32 0, i32 9
  %21 = load %union.TString*, %union.TString** %20, align 8
  br label %22

22:                                               ; preds = %18, %17
  %23 = phi %union.TString* [ null, %17 ], [ %21, %18 ]
  %24 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpString(%union.TString* noundef %23, %struct.DumpState* noundef %24)
  %25 = load %struct.Proto*, %struct.Proto** %4, align 8
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %25, i32 0, i32 16
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpInt(i32 noundef %27, %struct.DumpState* noundef %28)
  %29 = load %struct.Proto*, %struct.Proto** %4, align 8
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 17
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpInt(i32 noundef %31, %struct.DumpState* noundef %32)
  %33 = load %struct.Proto*, %struct.Proto** %4, align 8
  %34 = getelementptr inbounds %struct.Proto, %struct.Proto* %33, i32 0, i32 19
  %35 = load i8, i8* %34, align 8
  %36 = zext i8 %35 to i32
  %37 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpChar(i32 noundef %36, %struct.DumpState* noundef %37)
  %38 = load %struct.Proto*, %struct.Proto** %4, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 20
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpChar(i32 noundef %41, %struct.DumpState* noundef %42)
  %43 = load %struct.Proto*, %struct.Proto** %4, align 8
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 21
  %45 = load i8, i8* %44, align 2
  %46 = zext i8 %45 to i32
  %47 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpChar(i32 noundef %46, %struct.DumpState* noundef %47)
  %48 = load %struct.Proto*, %struct.Proto** %4, align 8
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %48, i32 0, i32 22
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpChar(i32 noundef %51, %struct.DumpState* noundef %52)
  %53 = load %struct.Proto*, %struct.Proto** %4, align 8
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load %struct.Proto*, %struct.Proto** %4, align 8
  %58 = getelementptr inbounds %struct.Proto, %struct.Proto* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpVector(i8* noundef %56, i32 noundef %59, i64 noundef 4, %struct.DumpState* noundef %60)
  %61 = load %struct.Proto*, %struct.Proto** %4, align 8
  %62 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpConstants(%struct.Proto* noundef %61, %struct.DumpState* noundef %62)
  %63 = load %struct.Proto*, %struct.Proto** %4, align 8
  %64 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  call void @DumpDebug(%struct.Proto* noundef %63, %struct.DumpState* noundef %64)
  ret void
}

declare hidden void @luaU_header(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @DumpBlock(i8* noundef %0, i64 noundef %1, %struct.DumpState* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.DumpState*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.DumpState* %2, %struct.DumpState** %6, align 8
  %7 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %8 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %13 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %12, i32 0, i32 1
  %14 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %13, align 8
  %15 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %16 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %15, i32 0, i32 0
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %21 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 %14(%struct.lua_State* noundef %17, i8* noundef %18, i64 noundef %19, i8* noundef %22)
  %24 = load %struct.DumpState*, %struct.DumpState** %6, align 8
  %25 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpString(%union.TString* noundef %0, %struct.DumpState* noundef %1) #0 {
  %3 = alloca %union.TString*, align 8
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %union.TString* %0, %union.TString** %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %7 = load %union.TString*, %union.TString** %3, align 8
  %8 = icmp eq %union.TString* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %union.TString*, %union.TString** %3, align 8
  %11 = getelementptr inbounds %union.TString, %union.TString* %10, i64 1
  %12 = bitcast %union.TString* %11 to i8*
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %2
  store i64 0, i64* %5, align 8
  %15 = bitcast i64* %5 to i8*
  %16 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* noundef %15, i64 noundef 8, %struct.DumpState* noundef %16)
  br label %30

17:                                               ; preds = %9
  %18 = load %union.TString*, %union.TString** %3, align 8
  %19 = bitcast %union.TString* %18 to %struct.anon.1*
  %20 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %6, align 8
  %23 = bitcast i64* %6 to i8*
  %24 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* noundef %23, i64 noundef 8, %struct.DumpState* noundef %24)
  %25 = load %union.TString*, %union.TString** %3, align 8
  %26 = getelementptr inbounds %union.TString, %union.TString* %25, i64 1
  %27 = bitcast %union.TString* %26 to i8*
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* noundef %27, i64 noundef %28, %struct.DumpState* noundef %29)
  br label %30

30:                                               ; preds = %17, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpInt(i32 noundef %0, %struct.DumpState* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.DumpState*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %5 = bitcast i32* %3 to i8*
  %6 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* noundef %5, i64 noundef 4, %struct.DumpState* noundef %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpChar(i32 noundef %0, %struct.DumpState* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %5, align 1
  %8 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* noundef %5, i64 noundef 1, %struct.DumpState* noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpVector(i8* noundef %0, i32 noundef %1, i64 noundef %2, %struct.DumpState* noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.DumpState*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.DumpState* %3, %struct.DumpState** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.DumpState*, %struct.DumpState** %8, align 8
  call void @DumpInt(i32 noundef %9, %struct.DumpState* noundef %10)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %7, align 8
  %15 = mul i64 %13, %14
  %16 = load %struct.DumpState*, %struct.DumpState** %8, align 8
  call void @DumpBlock(i8* noundef %11, i64 noundef %15, %struct.DumpState* noundef %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpConstants(%struct.Proto* noundef %0, %struct.DumpState* noundef %1) #0 {
  %3 = alloca %struct.Proto*, align 8
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_TValue*, align 8
  store %struct.Proto* %0, %struct.Proto** %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %8 = load %struct.Proto*, %struct.Proto** %3, align 8
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 noundef %11, %struct.DumpState* noundef %12)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %53, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %13
  %18 = load %struct.Proto*, %struct.Proto** %3, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 3
  %20 = load %struct.lua_TValue*, %struct.lua_TValue** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %20, i64 %22
  store %struct.lua_TValue* %23, %struct.lua_TValue** %7, align 8
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %25 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpChar(i32 noundef %26, %struct.DumpState* noundef %27)
  %28 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %29 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %51 [
    i32 0, label %31
    i32 1, label %32
    i32 3, label %38
    i32 4, label %44
  ]

31:                                               ; preds = %17
  br label %52

32:                                               ; preds = %17
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %34 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %33, i32 0, i32 0
  %35 = bitcast %union.Value* %34 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpChar(i32 noundef %36, %struct.DumpState* noundef %37)
  br label %52

38:                                               ; preds = %17
  %39 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %40 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %39, i32 0, i32 0
  %41 = bitcast %union.Value* %40 to double*
  %42 = load double, double* %41, align 8
  %43 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpNumber(double noundef %42, %struct.DumpState* noundef %43)
  br label %52

44:                                               ; preds = %17
  %45 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %46 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %45, i32 0, i32 0
  %47 = bitcast %union.Value* %46 to %union.GCObject**
  %48 = load %union.GCObject*, %union.GCObject** %47, align 8
  %49 = bitcast %union.GCObject* %48 to %union.TString*
  %50 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpString(%union.TString* noundef %49, %struct.DumpState* noundef %50)
  br label %52

51:                                               ; preds = %17
  br label %52

52:                                               ; preds = %51, %44, %38, %32, %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %13, !llvm.loop !4

56:                                               ; preds = %13
  %57 = load %struct.Proto*, %struct.Proto** %3, align 8
  %58 = getelementptr inbounds %struct.Proto, %struct.Proto* %57, i32 0, i32 14
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 noundef %60, %struct.DumpState* noundef %61)
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %78, %56
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.Proto*, %struct.Proto** %3, align 8
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i32 0, i32 5
  %69 = load %struct.Proto**, %struct.Proto*** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.Proto*, %struct.Proto** %69, i64 %71
  %73 = load %struct.Proto*, %struct.Proto** %72, align 8
  %74 = load %struct.Proto*, %struct.Proto** %3, align 8
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i32 0, i32 9
  %76 = load %union.TString*, %union.TString** %75, align 8
  %77 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpFunction(%struct.Proto* noundef %73, %union.TString* noundef %76, %struct.DumpState* noundef %77)
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %62, !llvm.loop !6

81:                                               ; preds = %62
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpDebug(%struct.Proto* noundef %0, %struct.DumpState* noundef %1) #0 {
  %3 = alloca %struct.Proto*, align 8
  %4 = alloca %struct.DumpState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %7 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  %8 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.Proto*, %struct.Proto** %3, align 8
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 4
  br label %16

16:                                               ; preds = %12, %11
  %17 = phi i32 [ 0, %11 ], [ %15, %12 ]
  store i32 %17, i32* %6, align 4
  %18 = load %struct.Proto*, %struct.Proto** %3, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpVector(i8* noundef %21, i32 noundef %22, i64 noundef 4, %struct.DumpState* noundef %23)
  %24 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  %25 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.Proto*, %struct.Proto** %3, align 8
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 15
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i32 [ 0, %28 ], [ %32, %29 ]
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 noundef %35, %struct.DumpState* noundef %36)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %69, %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = load %struct.Proto*, %struct.Proto** %3, align 8
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i32 0, i32 7
  %44 = load %struct.LocVar*, %struct.LocVar** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %44, i64 %46
  %48 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %47, i32 0, i32 0
  %49 = load %union.TString*, %union.TString** %48, align 8
  %50 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpString(%union.TString* noundef %49, %struct.DumpState* noundef %50)
  %51 = load %struct.Proto*, %struct.Proto** %3, align 8
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %51, i32 0, i32 7
  %53 = load %struct.LocVar*, %struct.LocVar** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %53, i64 %55
  %57 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 noundef %58, %struct.DumpState* noundef %59)
  %60 = load %struct.Proto*, %struct.Proto** %3, align 8
  %61 = getelementptr inbounds %struct.Proto, %struct.Proto* %60, i32 0, i32 7
  %62 = load %struct.LocVar*, %struct.LocVar** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %62, i64 %64
  %66 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 noundef %67, %struct.DumpState* noundef %68)
  br label %69

69:                                               ; preds = %41
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %37, !llvm.loop !7

72:                                               ; preds = %37
  %73 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  %74 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %82

78:                                               ; preds = %72
  %79 = load %struct.Proto*, %struct.Proto** %3, align 8
  %80 = getelementptr inbounds %struct.Proto, %struct.Proto* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  br label %82

82:                                               ; preds = %78, %77
  %83 = phi i32 [ 0, %77 ], [ %81, %78 ]
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpInt(i32 noundef %84, %struct.DumpState* noundef %85)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %99, %82
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load %struct.Proto*, %struct.Proto** %3, align 8
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %91, i32 0, i32 8
  %93 = load %union.TString**, %union.TString*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %union.TString*, %union.TString** %93, i64 %95
  %97 = load %union.TString*, %union.TString** %96, align 8
  %98 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpString(%union.TString* noundef %97, %struct.DumpState* noundef %98)
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %86, !llvm.loop !8

102:                                              ; preds = %86
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpNumber(double noundef %0, %struct.DumpState* noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.DumpState*, align 8
  store double %0, double* %3, align 8
  store %struct.DumpState* %1, %struct.DumpState** %4, align 8
  %5 = bitcast double* %3 to i8*
  %6 = load %struct.DumpState*, %struct.DumpState** %4, align 8
  call void @DumpBlock(i8* noundef %5, i64 noundef 8, %struct.DumpState* noundef %6)
  ret void
}

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
