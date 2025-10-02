; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/lundump.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/lundump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%struct.LocVar = type { %union.TString*, i32, i32 }
%union.TString = type { %struct.anon }
%struct.anon = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%union.GCObject = type { %struct.lua_State }
%struct.lua_State = type { %union.GCObject*, i8, i8, i8, %struct.lua_TValue*, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, i32, i32, i16, i16, i8, i8, i32, i32, void (%struct.lua_State*, %struct.lua_Debug*)*, %struct.lua_TValue, %struct.lua_TValue, %union.GCObject*, %union.GCObject*, %struct.lua_longjmp*, i64 }
%struct.global_State = type { %struct.stringtable, i8* (i8*, i8*, i64, i64)*, i8*, i8, i8, i32, %union.GCObject*, %union.GCObject**, %union.GCObject*, %union.GCObject*, %union.GCObject*, %union.GCObject*, %struct.Mbuffer, i64, i64, i64, i64, i32, i32, {}*, %struct.lua_TValue, %struct.lua_State*, %struct.UpVal, [9 x %struct.Table*], [17 x %union.TString*] }
%struct.stringtable = type { %union.GCObject**, i32, i32 }
%struct.Mbuffer = type { i8*, i64, i64 }
%struct.UpVal = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, %union.anon }
%union.anon = type { %struct.lua_TValue }
%struct.Table = type { %union.GCObject*, i8, i8, i8, i8, %struct.Table*, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %union.GCObject*, i32 }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.1 }
%struct.anon.1 = type { %union.Value, i32, %struct.Node* }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.LoadState = type { %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"binary string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"bad header\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"unexpected end\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: %s in precompiled chunk\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"code too deep\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"bad code\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"bad integer\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"bad constant\00", align 1

; Function Attrs: noinline nounwind uwtable
define hidden %struct.Proto* @luaU_undump(%struct.lua_State* noundef %0, %struct.Zio* noundef %1, %struct.Mbuffer* noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Zio*, align 8
  %7 = alloca %struct.Mbuffer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.LoadState, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Zio* %1, %struct.Zio** %6, align 8
  store %struct.Mbuffer* %2, %struct.Mbuffer** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 64
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 61
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %4
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %9, i32 0, i32 3
  store i8* %21, i8** %22, align 8
  br label %36

23:                                               ; preds = %14
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %9, i32 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  br label %35

32:                                               ; preds = %23
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %9, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %32, %30
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %38 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %9, i32 0, i32 0
  store %struct.lua_State* %37, %struct.lua_State** %38, align 8
  %39 = load %struct.Zio*, %struct.Zio** %6, align 8
  %40 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %9, i32 0, i32 1
  store %struct.Zio* %39, %struct.Zio** %40, align 8
  %41 = load %struct.Mbuffer*, %struct.Mbuffer** %7, align 8
  %42 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %9, i32 0, i32 2
  store %struct.Mbuffer* %41, %struct.Mbuffer** %42, align 8
  call void @LoadHeader(%struct.LoadState* noundef %9)
  %43 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %44 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %43, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 noundef 2)
  %45 = call %struct.Proto* @LoadFunction(%struct.LoadState* noundef %9, %union.TString* noundef %44)
  ret %struct.Proto* %45
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadHeader(%struct.LoadState* noundef %0) #0 {
  %2 = alloca %struct.LoadState*, align 8
  %3 = alloca [12 x i8], align 1
  %4 = alloca [12 x i8], align 1
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  call void @luaU_header(i8* noundef %5)
  %6 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  call void @LoadBlock(%struct.LoadState* noundef %6, i8* noundef %7, i64 noundef 12)
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %9 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %10 = call i32 @memcmp(i8* noundef %8, i8* noundef %9, i64 noundef 12) #4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* noundef %13, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.Proto* @LoadFunction(%struct.LoadState* noundef %0, %union.TString* noundef %1) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca %union.TString*, align 8
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca %struct.lua_TValue*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store %union.TString* %1, %union.TString** %4, align 8
  %7 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %8 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %7, i32 0, i32 0
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %10 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %9, i32 0, i32 15
  %11 = load i16, i16* %10, align 8
  %12 = add i16 %11, 1
  store i16 %12, i16* %10, align 8
  %13 = zext i16 %12 to i32
  %14 = icmp sgt i32 %13, 200
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  call void @error(%struct.LoadState* noundef %16, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %19 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %18, i32 0, i32 0
  %20 = load %struct.lua_State*, %struct.lua_State** %19, align 8
  %21 = call %struct.Proto* @luaF_newproto(%struct.lua_State* noundef %20)
  store %struct.Proto* %21, %struct.Proto** %5, align 8
  %22 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %23 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %22, i32 0, i32 0
  %24 = load %struct.lua_State*, %struct.lua_State** %23, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %24, i32 0, i32 4
  %26 = load %struct.lua_TValue*, %struct.lua_TValue** %25, align 8
  store %struct.lua_TValue* %26, %struct.lua_TValue** %6, align 8
  %27 = load %struct.Proto*, %struct.Proto** %5, align 8
  %28 = bitcast %struct.Proto* %27 to %union.GCObject*
  %29 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %30 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %29, i32 0, i32 0
  %31 = bitcast %union.Value* %30 to %union.GCObject**
  store %union.GCObject* %28, %union.GCObject** %31, align 8
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %33 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %32, i32 0, i32 1
  store i32 9, i32* %33, align 8
  %34 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %35 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %34, i32 0, i32 0
  %36 = load %struct.lua_State*, %struct.lua_State** %35, align 8
  %37 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %36, i32 0, i32 9
  %38 = load %struct.lua_TValue*, %struct.lua_TValue** %37, align 8
  %39 = bitcast %struct.lua_TValue* %38 to i8*
  %40 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %41 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %40, i32 0, i32 0
  %42 = load %struct.lua_State*, %struct.lua_State** %41, align 8
  %43 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %42, i32 0, i32 4
  %44 = load %struct.lua_TValue*, %struct.lua_TValue** %43, align 8
  %45 = bitcast %struct.lua_TValue* %44 to i8*
  %46 = ptrtoint i8* %39 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = icmp sle i64 %48, 16
  br i1 %49, label %50, label %54

50:                                               ; preds = %17
  %51 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %52 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %51, i32 0, i32 0
  %53 = load %struct.lua_State*, %struct.lua_State** %52, align 8
  call void @luaD_growstack(%struct.lua_State* noundef %53, i32 noundef 1)
  br label %55

54:                                               ; preds = %17
  br label %55

55:                                               ; preds = %54, %50
  %56 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %57 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %56, i32 0, i32 0
  %58 = load %struct.lua_State*, %struct.lua_State** %57, align 8
  %59 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %58, i32 0, i32 4
  %60 = load %struct.lua_TValue*, %struct.lua_TValue** %59, align 8
  %61 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %60, i32 1
  store %struct.lua_TValue* %61, %struct.lua_TValue** %59, align 8
  %62 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %63 = call %union.TString* @LoadString(%struct.LoadState* noundef %62)
  %64 = load %struct.Proto*, %struct.Proto** %5, align 8
  %65 = getelementptr inbounds %struct.Proto, %struct.Proto* %64, i32 0, i32 9
  store %union.TString* %63, %union.TString** %65, align 8
  %66 = load %struct.Proto*, %struct.Proto** %5, align 8
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i32 0, i32 9
  %68 = load %union.TString*, %union.TString** %67, align 8
  %69 = icmp eq %union.TString* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %55
  %71 = load %union.TString*, %union.TString** %4, align 8
  %72 = load %struct.Proto*, %struct.Proto** %5, align 8
  %73 = getelementptr inbounds %struct.Proto, %struct.Proto* %72, i32 0, i32 9
  store %union.TString* %71, %union.TString** %73, align 8
  br label %74

74:                                               ; preds = %70, %55
  %75 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %76 = call i32 @LoadInt(%struct.LoadState* noundef %75)
  %77 = load %struct.Proto*, %struct.Proto** %5, align 8
  %78 = getelementptr inbounds %struct.Proto, %struct.Proto* %77, i32 0, i32 16
  store i32 %76, i32* %78, align 8
  %79 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %80 = call i32 @LoadInt(%struct.LoadState* noundef %79)
  %81 = load %struct.Proto*, %struct.Proto** %5, align 8
  %82 = getelementptr inbounds %struct.Proto, %struct.Proto* %81, i32 0, i32 17
  store i32 %80, i32* %82, align 4
  %83 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %84 = call i32 @LoadChar(%struct.LoadState* noundef %83)
  %85 = trunc i32 %84 to i8
  %86 = load %struct.Proto*, %struct.Proto** %5, align 8
  %87 = getelementptr inbounds %struct.Proto, %struct.Proto* %86, i32 0, i32 19
  store i8 %85, i8* %87, align 8
  %88 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %89 = call i32 @LoadChar(%struct.LoadState* noundef %88)
  %90 = trunc i32 %89 to i8
  %91 = load %struct.Proto*, %struct.Proto** %5, align 8
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %91, i32 0, i32 20
  store i8 %90, i8* %92, align 1
  %93 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %94 = call i32 @LoadChar(%struct.LoadState* noundef %93)
  %95 = trunc i32 %94 to i8
  %96 = load %struct.Proto*, %struct.Proto** %5, align 8
  %97 = getelementptr inbounds %struct.Proto, %struct.Proto* %96, i32 0, i32 21
  store i8 %95, i8* %97, align 2
  %98 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %99 = call i32 @LoadChar(%struct.LoadState* noundef %98)
  %100 = trunc i32 %99 to i8
  %101 = load %struct.Proto*, %struct.Proto** %5, align 8
  %102 = getelementptr inbounds %struct.Proto, %struct.Proto* %101, i32 0, i32 22
  store i8 %100, i8* %102, align 1
  %103 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %104 = load %struct.Proto*, %struct.Proto** %5, align 8
  call void @LoadCode(%struct.LoadState* noundef %103, %struct.Proto* noundef %104)
  %105 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %106 = load %struct.Proto*, %struct.Proto** %5, align 8
  call void @LoadConstants(%struct.LoadState* noundef %105, %struct.Proto* noundef %106)
  %107 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %108 = load %struct.Proto*, %struct.Proto** %5, align 8
  call void @LoadDebug(%struct.LoadState* noundef %107, %struct.Proto* noundef %108)
  %109 = load %struct.Proto*, %struct.Proto** %5, align 8
  %110 = call i32 @luaG_checkcode(%struct.Proto* noundef %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %74
  %113 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  call void @error(%struct.LoadState* noundef %113, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %74
  %115 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %116 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %115, i32 0, i32 0
  %117 = load %struct.lua_State*, %struct.lua_State** %116, align 8
  %118 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %117, i32 0, i32 4
  %119 = load %struct.lua_TValue*, %struct.lua_TValue** %118, align 8
  %120 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %119, i32 -1
  store %struct.lua_TValue* %120, %struct.lua_TValue** %118, align 8
  %121 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %122 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %121, i32 0, i32 0
  %123 = load %struct.lua_State*, %struct.lua_State** %122, align 8
  %124 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %123, i32 0, i32 15
  %125 = load i16, i16* %124, align 8
  %126 = add i16 %125, -1
  store i16 %126, i16* %124, align 8
  %127 = load %struct.Proto*, %struct.Proto** %5, align 8
  ret %struct.Proto* %127
}

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden void @luaU_header(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i8*, i8** %2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4, i1 false)
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 4
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %8, i8** %2, align 8
  store i8 81, i8* %7, align 1
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %2, align 8
  store i8 0, i8* %9, align 1
  %11 = bitcast i32* %3 to i8*
  %12 = load i8, i8* %11, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %2, align 8
  store i8 %12, i8* %13, align 1
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %2, align 8
  store i8 4, i8* %15, align 1
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %2, align 8
  store i8 8, i8* %17, align 1
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %2, align 8
  store i8 4, i8* %19, align 1
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %2, align 8
  store i8 8, i8* %21, align 1
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %2, align 8
  store i8 0, i8* %23, align 1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @LoadBlock(%struct.LoadState* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.LoadState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.LoadState* %0, %struct.LoadState** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  %9 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %8, i32 0, i32 1
  %10 = load %struct.Zio*, %struct.Zio** %9, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @luaZ_read(%struct.Zio* noundef %10, i8* noundef %11, i64 noundef %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.LoadState*, %struct.LoadState** %4, align 8
  call void @error(%struct.LoadState* noundef %17, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @error(%struct.LoadState* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca i8*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %6 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i32 0, i32 0
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %8 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %9 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* noundef %7, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* noundef %10, i8* noundef %11)
  %13 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %14 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %13, i32 0, i32 0
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  call void @luaD_throw(%struct.lua_State* noundef %15, i32 noundef 3)
  ret void
}

declare hidden i64 @luaZ_read(%struct.Zio* noundef, i8* noundef, i64 noundef) #1

declare hidden i8* @luaO_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

declare hidden void @luaD_throw(%struct.lua_State* noundef, i32 noundef) #1

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State* noundef) #1

declare hidden void @luaD_growstack(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %union.TString* @LoadString(%struct.LoadState* noundef %0) #0 {
  %2 = alloca %union.TString*, align 8
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  %6 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %7 = bitcast i64* %4 to i8*
  call void @LoadBlock(%struct.LoadState* noundef %6, i8* noundef %7, i64 noundef 8)
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %union.TString* null, %union.TString** %2, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %13 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %12, i32 0, i32 0
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8
  %15 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %16 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %15, i32 0, i32 2
  %17 = load %struct.Mbuffer*, %struct.Mbuffer** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i8* @luaZ_openspace(%struct.lua_State* noundef %14, %struct.Mbuffer* noundef %17, i64 noundef %18)
  store i8* %19, i8** %5, align 8
  %20 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %4, align 8
  call void @LoadBlock(%struct.LoadState* noundef %20, i8* noundef %21, i64 noundef %22)
  %23 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %24 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %23, i32 0, i32 0
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = sub i64 %27, 1
  %29 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %25, i8* noundef %26, i64 noundef %28)
  store %union.TString* %29, %union.TString** %2, align 8
  br label %30

30:                                               ; preds = %11, %10
  %31 = load %union.TString*, %union.TString** %2, align 8
  ret %union.TString* %31
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LoadInt(%struct.LoadState* noundef %0) #0 {
  %2 = alloca %struct.LoadState*, align 8
  %3 = alloca i32, align 4
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %5 = bitcast i32* %3 to i8*
  call void @LoadBlock(%struct.LoadState* noundef %4, i8* noundef %5, i64 noundef 4)
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @error(%struct.LoadState* noundef %9, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i32, i32* %3, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LoadChar(%struct.LoadState* noundef %0) #0 {
  %2 = alloca %struct.LoadState*, align 8
  %3 = alloca i8, align 1
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  call void @LoadBlock(%struct.LoadState* noundef %4, i8* noundef %3, i64 noundef 1)
  %5 = load i8, i8* %3, align 1
  %6 = sext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadCode(%struct.LoadState* noundef %0, %struct.Proto* noundef %1) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %6 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %7 = call i32 @LoadInt(%struct.LoadState* noundef %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = icmp ule i64 %10, 4611686018427387903
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %14 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %13, i32 0, i32 0
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = call i8* @luaM_realloc_(%struct.lua_State* noundef %15, i8* noundef null, i64 noundef 0, i64 noundef %18)
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %22 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %21, i32 0, i32 0
  %23 = load %struct.lua_State*, %struct.lua_State** %22, align 8
  %24 = call i8* @luaM_toobig(%struct.lua_State* noundef %23)
  br label %25

25:                                               ; preds = %20, %12
  %26 = phi i8* [ %19, %12 ], [ %24, %20 ]
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.Proto*, %struct.Proto** %4, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 4
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.Proto*, %struct.Proto** %4, align 8
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 8
  %33 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %34 = load %struct.Proto*, %struct.Proto** %4, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  call void @LoadBlock(%struct.LoadState* noundef %33, i8* noundef %37, i64 noundef %40)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadConstants(%struct.LoadState* noundef %0, %struct.Proto* noundef %1) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lua_TValue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lua_TValue*, align 8
  %10 = alloca %struct.lua_TValue*, align 8
  %11 = alloca %struct.lua_TValue*, align 8
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %12 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %13 = call i32 @LoadInt(%struct.LoadState* noundef %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = icmp ule i64 %16, 1152921504606846975
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %20 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %19, i32 0, i32 0
  %21 = load %struct.lua_State*, %struct.lua_State** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 16
  %25 = call i8* @luaM_realloc_(%struct.lua_State* noundef %21, i8* noundef null, i64 noundef 0, i64 noundef %24)
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %28 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %27, i32 0, i32 0
  %29 = load %struct.lua_State*, %struct.lua_State** %28, align 8
  %30 = call i8* @luaM_toobig(%struct.lua_State* noundef %29)
  br label %31

31:                                               ; preds = %26, %18
  %32 = phi i8* [ %25, %18 ], [ %30, %26 ]
  %33 = bitcast i8* %32 to %struct.lua_TValue*
  %34 = load %struct.Proto*, %struct.Proto** %4, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 3
  store %struct.lua_TValue* %33, %struct.lua_TValue** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.Proto*, %struct.Proto** %4, align 8
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %37, i32 0, i32 11
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %51, %31
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.Proto*, %struct.Proto** %4, align 8
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 3
  %46 = load %struct.lua_TValue*, %struct.lua_TValue** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %46, i64 %48
  %50 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %39, !llvm.loop !4

54:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %105, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %108

59:                                               ; preds = %55
  %60 = load %struct.Proto*, %struct.Proto** %4, align 8
  %61 = getelementptr inbounds %struct.Proto, %struct.Proto* %60, i32 0, i32 3
  %62 = load %struct.lua_TValue*, %struct.lua_TValue** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %62, i64 %64
  store %struct.lua_TValue* %65, %struct.lua_TValue** %7, align 8
  %66 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %67 = call i32 @LoadChar(%struct.LoadState* noundef %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  switch i32 %68, label %102 [
    i32 0, label %69
    i32 1, label %72
    i32 3, label %83
    i32 4, label %92
  ]

69:                                               ; preds = %59
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i32 0, i32 1
  store i32 0, i32* %71, align 8
  br label %104

72:                                               ; preds = %59
  %73 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %73, %struct.lua_TValue** %9, align 8
  %74 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %75 = call i32 @LoadChar(%struct.LoadState* noundef %74)
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %79 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %78, i32 0, i32 0
  %80 = bitcast %union.Value* %79 to i32*
  store i32 %77, i32* %80, align 8
  %81 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %82 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %81, i32 0, i32 1
  store i32 1, i32* %82, align 8
  br label %104

83:                                               ; preds = %59
  %84 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %84, %struct.lua_TValue** %10, align 8
  %85 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %86 = call double @LoadNumber(%struct.LoadState* noundef %85)
  %87 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %88 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %87, i32 0, i32 0
  %89 = bitcast %union.Value* %88 to double*
  store double %86, double* %89, align 8
  %90 = load %struct.lua_TValue*, %struct.lua_TValue** %10, align 8
  %91 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %90, i32 0, i32 1
  store i32 3, i32* %91, align 8
  br label %104

92:                                               ; preds = %59
  %93 = load %struct.lua_TValue*, %struct.lua_TValue** %7, align 8
  store %struct.lua_TValue* %93, %struct.lua_TValue** %11, align 8
  %94 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %95 = call %union.TString* @LoadString(%struct.LoadState* noundef %94)
  %96 = bitcast %union.TString* %95 to %union.GCObject*
  %97 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %98 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %97, i32 0, i32 0
  %99 = bitcast %union.Value* %98 to %union.GCObject**
  store %union.GCObject* %96, %union.GCObject** %99, align 8
  %100 = load %struct.lua_TValue*, %struct.lua_TValue** %11, align 8
  %101 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %100, i32 0, i32 1
  store i32 4, i32* %101, align 8
  br label %104

102:                                              ; preds = %59
  %103 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  call void @error(%struct.LoadState* noundef %103, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %92, %83, %72, %69
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %55, !llvm.loop !6

108:                                              ; preds = %55
  %109 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %110 = call i32 @LoadInt(%struct.LoadState* noundef %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = icmp ule i64 %113, 2305843009213693951
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %117 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %116, i32 0, i32 0
  %118 = load %struct.lua_State*, %struct.lua_State** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 8
  %122 = call i8* @luaM_realloc_(%struct.lua_State* noundef %118, i8* noundef null, i64 noundef 0, i64 noundef %121)
  br label %128

123:                                              ; preds = %108
  %124 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %125 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %124, i32 0, i32 0
  %126 = load %struct.lua_State*, %struct.lua_State** %125, align 8
  %127 = call i8* @luaM_toobig(%struct.lua_State* noundef %126)
  br label %128

128:                                              ; preds = %123, %115
  %129 = phi i8* [ %122, %115 ], [ %127, %123 ]
  %130 = bitcast i8* %129 to %struct.Proto**
  %131 = load %struct.Proto*, %struct.Proto** %4, align 8
  %132 = getelementptr inbounds %struct.Proto, %struct.Proto* %131, i32 0, i32 5
  store %struct.Proto** %130, %struct.Proto*** %132, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.Proto*, %struct.Proto** %4, align 8
  %135 = getelementptr inbounds %struct.Proto, %struct.Proto* %134, i32 0, i32 14
  store i32 %133, i32* %135, align 8
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %147, %128
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load %struct.Proto*, %struct.Proto** %4, align 8
  %142 = getelementptr inbounds %struct.Proto, %struct.Proto* %141, i32 0, i32 5
  %143 = load %struct.Proto**, %struct.Proto*** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.Proto*, %struct.Proto** %143, i64 %145
  store %struct.Proto* null, %struct.Proto** %146, align 8
  br label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %136, !llvm.loop !7

150:                                              ; preds = %136
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %167, %150
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %170

155:                                              ; preds = %151
  %156 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %157 = load %struct.Proto*, %struct.Proto** %4, align 8
  %158 = getelementptr inbounds %struct.Proto, %struct.Proto* %157, i32 0, i32 9
  %159 = load %union.TString*, %union.TString** %158, align 8
  %160 = call %struct.Proto* @LoadFunction(%struct.LoadState* noundef %156, %union.TString* noundef %159)
  %161 = load %struct.Proto*, %struct.Proto** %4, align 8
  %162 = getelementptr inbounds %struct.Proto, %struct.Proto* %161, i32 0, i32 5
  %163 = load %struct.Proto**, %struct.Proto*** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.Proto*, %struct.Proto** %163, i64 %165
  store %struct.Proto* %160, %struct.Proto** %166, align 8
  br label %167

167:                                              ; preds = %155
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %151, !llvm.loop !8

170:                                              ; preds = %151
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadDebug(%struct.LoadState* noundef %0, %struct.Proto* noundef %1) #0 {
  %3 = alloca %struct.LoadState*, align 8
  %4 = alloca %struct.Proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.LoadState* %0, %struct.LoadState** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %7 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %8 = call i32 @LoadInt(%struct.LoadState* noundef %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = icmp ule i64 %11, 4611686018427387903
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %15 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %14, i32 0, i32 0
  %16 = load %struct.lua_State*, %struct.lua_State** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = call i8* @luaM_realloc_(%struct.lua_State* noundef %16, i8* noundef null, i64 noundef 0, i64 noundef %19)
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %23 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %22, i32 0, i32 0
  %24 = load %struct.lua_State*, %struct.lua_State** %23, align 8
  %25 = call i8* @luaM_toobig(%struct.lua_State* noundef %24)
  br label %26

26:                                               ; preds = %21, %13
  %27 = phi i8* [ %20, %13 ], [ %25, %21 ]
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.Proto*, %struct.Proto** %4, align 8
  %30 = getelementptr inbounds %struct.Proto, %struct.Proto* %29, i32 0, i32 6
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.Proto*, %struct.Proto** %4, align 8
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 4
  %34 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %35 = load %struct.Proto*, %struct.Proto** %4, align 8
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  call void @LoadBlock(%struct.LoadState* noundef %34, i8* noundef %38, i64 noundef %41)
  %42 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %43 = call i32 @LoadInt(%struct.LoadState* noundef %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = icmp ule i64 %46, 1152921504606846975
  br i1 %47, label %48, label %56

48:                                               ; preds = %26
  %49 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %50 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %49, i32 0, i32 0
  %51 = load %struct.lua_State*, %struct.lua_State** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 16
  %55 = call i8* @luaM_realloc_(%struct.lua_State* noundef %51, i8* noundef null, i64 noundef 0, i64 noundef %54)
  br label %61

56:                                               ; preds = %26
  %57 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %58 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %57, i32 0, i32 0
  %59 = load %struct.lua_State*, %struct.lua_State** %58, align 8
  %60 = call i8* @luaM_toobig(%struct.lua_State* noundef %59)
  br label %61

61:                                               ; preds = %56, %48
  %62 = phi i8* [ %55, %48 ], [ %60, %56 ]
  %63 = bitcast i8* %62 to %struct.LocVar*
  %64 = load %struct.Proto*, %struct.Proto** %4, align 8
  %65 = getelementptr inbounds %struct.Proto, %struct.Proto* %64, i32 0, i32 7
  store %struct.LocVar* %63, %struct.LocVar** %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.Proto*, %struct.Proto** %4, align 8
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i32 0, i32 15
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %81, %61
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.Proto*, %struct.Proto** %4, align 8
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %74, i32 0, i32 7
  %76 = load %struct.LocVar*, %struct.LocVar** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %76, i64 %78
  %80 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %79, i32 0, i32 0
  store %union.TString* null, %union.TString** %80, align 8
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %69, !llvm.loop !9

84:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %117, %84
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %85
  %90 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %91 = call %union.TString* @LoadString(%struct.LoadState* noundef %90)
  %92 = load %struct.Proto*, %struct.Proto** %4, align 8
  %93 = getelementptr inbounds %struct.Proto, %struct.Proto* %92, i32 0, i32 7
  %94 = load %struct.LocVar*, %struct.LocVar** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %94, i64 %96
  %98 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %97, i32 0, i32 0
  store %union.TString* %91, %union.TString** %98, align 8
  %99 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %100 = call i32 @LoadInt(%struct.LoadState* noundef %99)
  %101 = load %struct.Proto*, %struct.Proto** %4, align 8
  %102 = getelementptr inbounds %struct.Proto, %struct.Proto* %101, i32 0, i32 7
  %103 = load %struct.LocVar*, %struct.LocVar** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %103, i64 %105
  %107 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %106, i32 0, i32 1
  store i32 %100, i32* %107, align 8
  %108 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %109 = call i32 @LoadInt(%struct.LoadState* noundef %108)
  %110 = load %struct.Proto*, %struct.Proto** %4, align 8
  %111 = getelementptr inbounds %struct.Proto, %struct.Proto* %110, i32 0, i32 7
  %112 = load %struct.LocVar*, %struct.LocVar** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %112, i64 %114
  %116 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %115, i32 0, i32 2
  store i32 %109, i32* %116, align 4
  br label %117

117:                                              ; preds = %89
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %85, !llvm.loop !10

120:                                              ; preds = %85
  %121 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %122 = call i32 @LoadInt(%struct.LoadState* noundef %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = icmp ule i64 %125, 2305843009213693951
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %129 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %128, i32 0, i32 0
  %130 = load %struct.lua_State*, %struct.lua_State** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 8
  %134 = call i8* @luaM_realloc_(%struct.lua_State* noundef %130, i8* noundef null, i64 noundef 0, i64 noundef %133)
  br label %140

135:                                              ; preds = %120
  %136 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %137 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %136, i32 0, i32 0
  %138 = load %struct.lua_State*, %struct.lua_State** %137, align 8
  %139 = call i8* @luaM_toobig(%struct.lua_State* noundef %138)
  br label %140

140:                                              ; preds = %135, %127
  %141 = phi i8* [ %134, %127 ], [ %139, %135 ]
  %142 = bitcast i8* %141 to %union.TString**
  %143 = load %struct.Proto*, %struct.Proto** %4, align 8
  %144 = getelementptr inbounds %struct.Proto, %struct.Proto* %143, i32 0, i32 8
  store %union.TString** %142, %union.TString*** %144, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.Proto*, %struct.Proto** %4, align 8
  %147 = getelementptr inbounds %struct.Proto, %struct.Proto* %146, i32 0, i32 10
  store i32 %145, i32* %147, align 8
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %159, %140
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = load %struct.Proto*, %struct.Proto** %4, align 8
  %154 = getelementptr inbounds %struct.Proto, %struct.Proto* %153, i32 0, i32 8
  %155 = load %union.TString**, %union.TString*** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %union.TString*, %union.TString** %155, i64 %157
  store %union.TString* null, %union.TString** %158, align 8
  br label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %148, !llvm.loop !11

162:                                              ; preds = %148
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %176, %162
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load %struct.LoadState*, %struct.LoadState** %3, align 8
  %169 = call %union.TString* @LoadString(%struct.LoadState* noundef %168)
  %170 = load %struct.Proto*, %struct.Proto** %4, align 8
  %171 = getelementptr inbounds %struct.Proto, %struct.Proto* %170, i32 0, i32 8
  %172 = load %union.TString**, %union.TString*** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %union.TString*, %union.TString** %172, i64 %174
  store %union.TString* %169, %union.TString** %175, align 8
  br label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %5, align 4
  br label %163, !llvm.loop !12

179:                                              ; preds = %163
  ret void
}

declare hidden i32 @luaG_checkcode(%struct.Proto* noundef) #1

declare hidden i8* @luaZ_openspace(%struct.lua_State* noundef, %struct.Mbuffer* noundef, i64 noundef) #1

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare hidden i8* @luaM_toobig(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal double @LoadNumber(%struct.LoadState* noundef %0) #0 {
  %2 = alloca %struct.LoadState*, align 8
  %3 = alloca double, align 8
  store %struct.LoadState* %0, %struct.LoadState** %2, align 8
  %4 = load %struct.LoadState*, %struct.LoadState** %2, align 8
  %5 = bitcast double* %3 to i8*
  call void @LoadBlock(%struct.LoadState* noundef %4, i8* noundef %5, i64 noundef 8)
  %6 = load double, double* %3, align 8
  ret double %6
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

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
