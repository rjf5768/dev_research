; ModuleID = './ldump.ll'
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
%_wyvern_thunk_type.10 = type { i8* (%_wyvern_thunk_type.10*)*, i8*, i1 }
%_wyvern_thunk_type.14 = type { i64 (%_wyvern_thunk_type.14*)*, i64, i1, i32, i64 }

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaU_dump(%struct.lua_State* noundef %0, %struct.Proto* nocapture noundef readonly %1, i32 (%struct.lua_State*, i8*, i64, i8*)* noundef %2, i8* noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.DumpState, align 8
  %7 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  %8 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 1
  store i32 (%struct.lua_State*, i8*, i64, i8*)* %2, i32 (%struct.lua_State*, i8*, i64, i8*)** %8, align 8
  %9 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 2
  store i8* %3, i8** %9, align 8
  %10 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 3
  store i32 %4, i32* %10, align 8
  %11 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 4
  store i32 0, i32* %11, align 4
  call void @DumpHeader(%struct.DumpState* noundef nonnull %6)
  call void @DumpFunction(%struct.Proto* noundef %1, %union.TString* noundef null, %struct.DumpState* noundef nonnull %6)
  %12 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %6, i64 0, i32 4
  %13 = load i32, i32* %12, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpHeader(%struct.DumpState* nocapture noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.10, align 8
  %2 = alloca [12 x i8], align 1
  %3 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  call void @luaU_header(i8* noundef nonnull %3) #3
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8* (%_wyvern_thunk_type.10*)* @_wyvern_slice_memo_DumpHeader_7137985, i8* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_DumpBlock_0927885464(%_wyvern_thunk_type.10* noundef nonnull %_wyvern_thunk_alloca, i64 noundef 12, %struct.DumpState* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpFunction(%struct.Proto* nocapture noundef readonly %0, %union.TString* noundef readnone %1, %struct.DumpState* nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 9
  %5 = load %union.TString*, %union.TString** %4, align 8
  %6 = icmp eq %union.TString* %5, %1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 3
  %9 = load i32, i32* %8, align 8
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %7, %3
  br label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 9
  %13 = load %union.TString*, %union.TString** %12, align 8
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi %union.TString* [ null, %10 ], [ %13, %11 ]
  call void @DumpString(%union.TString* noundef %15, %struct.DumpState* noundef %2)
  %16 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 16
  %17 = load i32, i32* %16, align 8
  call void @DumpInt(i32 noundef %17, %struct.DumpState* noundef %2)
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 17
  %19 = load i32, i32* %18, align 4
  call void @DumpInt(i32 noundef %19, %struct.DumpState* noundef %2)
  %20 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 19
  %21 = load i8, i8* %20, align 8
  %22 = zext i8 %21 to i32
  call void @DumpChar(i32 noundef %22, %struct.DumpState* noundef %2)
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 20
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  call void @DumpChar(i32 noundef %25, %struct.DumpState* noundef %2)
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 21
  %27 = load i8, i8* %26, align 2
  %28 = zext i8 %27 to i32
  call void @DumpChar(i32 noundef %28, %struct.DumpState* noundef %2)
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 22
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  call void @DumpChar(i32 noundef %31, %struct.DumpState* noundef %2)
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 4
  %33 = bitcast i32** %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 12
  %36 = load i32, i32* %35, align 8
  call void @DumpVector(i8* noundef %34, i32 noundef %36, i64 noundef 4, %struct.DumpState* noundef %2)
  call void @DumpConstants(%struct.Proto* noundef %0, %struct.DumpState* noundef %2)
  call void @DumpDebug(%struct.Proto* noundef %0, %struct.DumpState* noundef %2)
  ret void
}

declare hidden void @luaU_header(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @DumpBlock(i8* noundef %0, i64 noundef %1, %struct.DumpState* nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 1
  %9 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %8, align 8
  %10 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 0
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8
  %12 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 %9(%struct.lua_State* noundef %11, i8* noundef %0, i64 noundef %1, i8* noundef %13) #3
  %15 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %2, i64 0, i32 4
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpString(%union.TString* noundef %0, %struct.DumpState* nocapture noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = icmp eq %union.TString* %0, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  br i1 false, label %7, label %9

7:                                                ; preds = %6, %2
  store i64 0, i64* %3, align 8
  %8 = bitcast i64* %3 to i8*
  call void @DumpBlock(i8* noundef nonnull %8, i64 noundef 8, %struct.DumpState* noundef %1)
  br label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds %union.TString, %union.TString* %0, i64 0, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* %4, align 8
  %13 = bitcast i64* %4 to i8*
  call void @DumpBlock(i8* noundef nonnull %13, i64 noundef 8, %struct.DumpState* noundef %1)
  %14 = getelementptr inbounds %union.TString, %union.TString* %0, i64 1
  %15 = bitcast %union.TString* %14 to i8*
  %16 = load i64, i64* %4, align 8
  call void @DumpBlock(i8* noundef nonnull %15, i64 noundef %16, %struct.DumpState* noundef %1)
  br label %17

17:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpInt(i32 noundef %0, %struct.DumpState* nocapture noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = bitcast i32* %3 to i8*
  call void @DumpBlock(i8* noundef nonnull %4, i64 noundef 4, %struct.DumpState* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpChar(i32 noundef %0, %struct.DumpState* nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = trunc i32 %0 to i8
  store i8 %4, i8* %3, align 1
  call void @DumpBlock(i8* noundef nonnull %3, i64 noundef 1, %struct.DumpState* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpVector(i8* noundef %0, i32 noundef %1, i64 noundef %2, %struct.DumpState* nocapture noundef %3) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.14, align 8
  call void @DumpInt(i32 noundef %1, %struct.DumpState* noundef %3)
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca, i64 0, i32 0
  store i64 (%_wyvern_thunk_type.14*)* @_wyvern_slice_memo_DumpVector_79394901, i64 (%_wyvern_thunk_type.14*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %1, i32* %_wyvern_thunk_arg_gep_, align 4
  %_wyvern_thunk_arg_gep_1 = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunk_alloca, i64 0, i32 4
  store i64 %2, i64* %_wyvern_thunk_arg_gep_1, align 8
  call void @_wyvern_calleeclone_DumpBlock_1859609677(i8* noundef %0, %_wyvern_thunk_type.14* noundef nonnull %_wyvern_thunk_alloca, %struct.DumpState* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpConstants(%struct.Proto* nocapture noundef readonly %0, %struct.DumpState* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 11
  %4 = load i32, i32* %3, align 4
  call void @DumpInt(i32 noundef %4, %struct.DumpState* noundef %1)
  br label %5

5:                                                ; preds = %28, %2
  %.0 = phi i32 [ 0, %2 ], [ %29, %28 ]
  %6 = icmp slt i32 %.0, %4
  br i1 %6, label %7, label %30

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 3
  %9 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %10
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %10, i32 1
  %13 = load i32, i32* %12, align 8
  call void @DumpChar(i32 noundef %13, %struct.DumpState* noundef %1)
  %14 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %9, i64 %10, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %26 [
    i32 0, label %16
    i32 1, label %17
    i32 3, label %20
    i32 4, label %23
  ]

16:                                               ; preds = %7
  br label %27

17:                                               ; preds = %7
  %18 = bitcast %struct.lua_TValue* %11 to i32*
  %19 = load i32, i32* %18, align 8
  call void @DumpChar(i32 noundef %19, %struct.DumpState* noundef %1)
  br label %27

20:                                               ; preds = %7
  %21 = bitcast %struct.lua_TValue* %11 to double*
  %22 = load double, double* %21, align 8
  call void @DumpNumber(double noundef %22, %struct.DumpState* noundef %1)
  br label %27

23:                                               ; preds = %7
  %24 = bitcast %struct.lua_TValue* %11 to %union.TString**
  %25 = load %union.TString*, %union.TString** %24, align 8
  call void @DumpString(%union.TString* noundef %25, %struct.DumpState* noundef %1)
  br label %27

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26, %23, %20, %17, %16
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !4

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 14
  %32 = load i32, i32* %31, align 8
  call void @DumpInt(i32 noundef %32, %struct.DumpState* noundef %1)
  br label %33

33:                                               ; preds = %43, %30
  %.1 = phi i32 [ 0, %30 ], [ %44, %43 ]
  %34 = icmp slt i32 %.1, %32
  br i1 %34, label %35, label %45

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 5
  %37 = load %struct.Proto**, %struct.Proto*** %36, align 8
  %38 = zext i32 %.1 to i64
  %39 = getelementptr inbounds %struct.Proto*, %struct.Proto** %37, i64 %38
  %40 = load %struct.Proto*, %struct.Proto** %39, align 8
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 9
  %42 = load %union.TString*, %union.TString** %41, align 8
  call void @DumpFunction(%struct.Proto* noundef %40, %union.TString* noundef %42, %struct.DumpState* noundef %1)
  br label %43

43:                                               ; preds = %35
  %44 = add nuw nsw i32 %.1, 1
  br label %33, !llvm.loop !6

45:                                               ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpDebug(%struct.Proto* nocapture noundef readonly %0, %struct.DumpState* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 3
  %4 = load i32, i32* %3, align 8
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %2
  br label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 13
  %8 = load i32, i32* %7, align 4
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i32 [ 0, %5 ], [ %8, %6 ]
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 6
  %12 = bitcast i32** %11 to i8**
  %13 = load i8*, i8** %12, align 8
  call void @DumpVector(i8* noundef %13, i32 noundef %10, i64 noundef 4, %struct.DumpState* noundef %1)
  %14 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 3
  %15 = load i32, i32* %14, align 8
  %.not1 = icmp eq i32 %15, 0
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %9
  br label %20

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 15
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ 0, %16 ], [ %19, %17 ]
  call void @DumpInt(i32 noundef %21, %struct.DumpState* noundef %1)
  br label %22

22:                                               ; preds = %40, %20
  %.0 = phi i32 [ 0, %20 ], [ %41, %40 ]
  %23 = icmp slt i32 %.0, %21
  br i1 %23, label %24, label %42

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %26 = load %struct.LocVar*, %struct.LocVar** %25, align 8
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %26, i64 %27, i32 0
  %29 = load %union.TString*, %union.TString** %28, align 8
  call void @DumpString(%union.TString* noundef %29, %struct.DumpState* noundef %1)
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %31 = load %struct.LocVar*, %struct.LocVar** %30, align 8
  %32 = zext i32 %.0 to i64
  %33 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %31, i64 %32, i32 1
  %34 = load i32, i32* %33, align 8
  call void @DumpInt(i32 noundef %34, %struct.DumpState* noundef %1)
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 7
  %36 = load %struct.LocVar*, %struct.LocVar** %35, align 8
  %37 = zext i32 %.0 to i64
  %38 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %36, i64 %37, i32 2
  %39 = load i32, i32* %38, align 4
  call void @DumpInt(i32 noundef %39, %struct.DumpState* noundef %1)
  br label %40

40:                                               ; preds = %24
  %41 = add nuw nsw i32 %.0, 1
  br label %22, !llvm.loop !7

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 3
  %44 = load i32, i32* %43, align 8
  %.not2 = icmp eq i32 %44, 0
  br i1 %.not2, label %46, label %45

45:                                               ; preds = %42
  br label %49

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 10
  %48 = load i32, i32* %47, align 8
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 0, %45 ], [ %48, %46 ]
  call void @DumpInt(i32 noundef %50, %struct.DumpState* noundef %1)
  br label %51

51:                                               ; preds = %59, %49
  %.1 = phi i32 [ 0, %49 ], [ %60, %59 ]
  %52 = icmp slt i32 %.1, %50
  br i1 %52, label %53, label %61

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %0, i64 0, i32 8
  %55 = load %union.TString**, %union.TString*** %54, align 8
  %56 = zext i32 %.1 to i64
  %57 = getelementptr inbounds %union.TString*, %union.TString** %55, i64 %56
  %58 = load %union.TString*, %union.TString** %57, align 8
  call void @DumpString(%union.TString* noundef %58, %struct.DumpState* noundef %1)
  br label %59

59:                                               ; preds = %53
  %60 = add nuw nsw i32 %.1, 1
  br label %51, !llvm.loop !8

61:                                               ; preds = %51
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DumpNumber(double noundef %0, %struct.DumpState* nocapture noundef %1) #0 {
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = bitcast double* %3 to i8*
  call void @DumpBlock(i8* noundef nonnull %4, i64 noundef 8, %struct.DumpState* noundef %1)
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i8* @_wyvern_slice_memo_DumpHeader_7137985(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #2 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8*, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [12 x i8], align 1
  %1 = getelementptr inbounds [12 x i8], [12 x i8]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i8* %1, i8** %_wyvern_memo_val_addr, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_DumpBlock_0927885464(%_wyvern_thunk_type.10* noundef %_wyvern_thunkptr, i64 noundef %0, %struct.DumpState* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 1
  %8 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %7, align 8
  %9 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 0
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8
  %11 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8* (%_wyvern_thunk_type.10*)*, i8* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8* %_wyvern_thunkfptr(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #3
  %13 = call i32 %8(%struct.lua_State* noundef %10, i8* noundef %_wyvern_thunkcall, i64 noundef %0, i8* noundef %12) #3
  %14 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 4
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i64 @_wyvern_slice_memo_DumpVector_79394901(%_wyvern_thunk_type.14* %_wyvern_thunkptr) #2 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i64, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %_wyvern_arg_addr_1 = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 4
  %_wyvern_arg_2 = load i64, i64* %_wyvern_arg_addr_1, align 8
  %0 = sext i32 %_wyvern_arg_ to i64
  %1 = mul i64 %_wyvern_arg_2, %0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i64 %1, i64* %_wyvern_memo_val_addr, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_DumpBlock_1859609677(i8* noundef %0, %_wyvern_thunk_type.14* noundef %_wyvern_thunkptr, %struct.DumpState* nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 1
  %8 = load i32 (%struct.lua_State*, i8*, i64, i8*)*, i32 (%struct.lua_State*, i8*, i64, i8*)** %7, align 8
  %9 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 0
  %10 = load %struct.lua_State*, %struct.lua_State** %9, align 8
  %11 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.14, %_wyvern_thunk_type.14* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i64 (%_wyvern_thunk_type.14*)*, i64 (%_wyvern_thunk_type.14*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i64 %_wyvern_thunkfptr(%_wyvern_thunk_type.14* %_wyvern_thunkptr) #3
  %13 = call i32 %8(%struct.lua_State* noundef %10, i8* noundef %0, i64 noundef %_wyvern_thunkcall, i8* noundef %12) #3
  %14 = getelementptr inbounds %struct.DumpState, %struct.DumpState* %1, i64 0, i32 4
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %6, %2
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }
attributes #3 = { nounwind }

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
