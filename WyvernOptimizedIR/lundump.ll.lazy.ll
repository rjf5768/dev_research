; ModuleID = './lundump.ll'
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
  %5 = alloca %struct.LoadState, align 8
  %6 = load i8, i8* %3, align 1
  %7 = icmp eq i8 %6, 64
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load i8, i8* %3, align 1
  %10 = icmp eq i8 %9, 61
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds i8, i8* %3, i64 1
  %13 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i64 0, i32 3
  store i8* %12, i8** %13, align 8
  br label %22

14:                                               ; preds = %8
  %15 = load i8, i8* %3, align 1
  %16 = icmp eq i8 %15, 27
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i64 0, i32 3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i64 0, i32 3
  store i8* %3, i8** %20, align 8
  br label %21

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %21, %11
  %23 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i64 0, i32 0
  store %struct.lua_State* %0, %struct.lua_State** %23, align 8
  %24 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i64 0, i32 1
  store %struct.Zio* %1, %struct.Zio** %24, align 8
  %25 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %5, i64 0, i32 2
  store %struct.Mbuffer* %2, %struct.Mbuffer** %25, align 8
  call void @LoadHeader(%struct.LoadState* noundef nonnull %5)
  %26 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 noundef 2) #6
  %27 = call %struct.Proto* @LoadFunction(%struct.LoadState* noundef nonnull %5, %union.TString* noundef %26)
  ret %struct.Proto* %27
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadHeader(%struct.LoadState* nocapture noundef readonly %0) #0 {
  %2 = alloca [12 x i8], align 1
  %3 = alloca [12 x i8], align 1
  %4 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  call void @luaU_header(i8* noundef nonnull %4)
  %5 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  call void @LoadBlock(%struct.LoadState* noundef %0, i8* noundef nonnull %5, i64 noundef 12)
  %6 = getelementptr inbounds [12 x i8], [12 x i8]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %6, i8* noundef nonnull dereferenceable(12) %7, i64 12)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %1
  call void @error(%struct.LoadState* noundef %0, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.Proto* @LoadFunction(%struct.LoadState* noundef %0, %union.TString* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i64 0, i32 15
  %6 = load i16, i16* %5, align 8
  %7 = add i16 %6, 1
  store i16 %7, i16* %5, align 8
  %8 = icmp ugt i16 %7, 200
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @error(%struct.LoadState* noundef %0, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8
  %13 = call %struct.Proto* @luaF_newproto(%struct.lua_State* noundef %12) #6
  %14 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %15, i64 0, i32 4
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = bitcast %struct.lua_TValue* %17 to %struct.Proto**
  store %struct.Proto* %13, %struct.Proto** %18, align 8
  %19 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i64 0, i32 1
  store i32 9, i32* %19, align 8
  %20 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %21 = load %struct.lua_State*, %struct.lua_State** %20, align 8
  %22 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i64 0, i32 9
  %23 = bitcast %struct.lua_TValue** %22 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %21, i64 0, i32 4
  %26 = bitcast %struct.lua_TValue** %25 to i8**
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %24 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = icmp slt i64 %30, 17
  br i1 %31, label %32, label %35

32:                                               ; preds = %10
  %33 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %34 = load %struct.lua_State*, %struct.lua_State** %33, align 8
  call void @luaD_growstack(%struct.lua_State* noundef %34, i32 noundef 1) #6
  br label %36

35:                                               ; preds = %10
  br label %36

36:                                               ; preds = %35, %32
  %37 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %38 = load %struct.lua_State*, %struct.lua_State** %37, align 8
  %39 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %38, i64 0, i32 4
  %40 = load %struct.lua_TValue*, %struct.lua_TValue** %39, align 8
  %41 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %40, i64 1
  store %struct.lua_TValue* %41, %struct.lua_TValue** %39, align 8
  %42 = call %union.TString* @LoadString(%struct.LoadState* noundef %0)
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 9
  store %union.TString* %42, %union.TString** %43, align 8
  %44 = icmp eq %union.TString* %42, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 9
  store %union.TString* %1, %union.TString** %46, align 8
  br label %47

47:                                               ; preds = %45, %36
  %48 = call i32 @LoadInt(%struct.LoadState* noundef %0)
  %49 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 16
  store i32 %48, i32* %49, align 8
  %50 = call i32 @LoadInt(%struct.LoadState* noundef %0)
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 17
  store i32 %50, i32* %51, align 4
  %52 = call i32 @LoadChar(%struct.LoadState* noundef %0)
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 19
  store i8 %53, i8* %54, align 8
  %55 = call i32 @LoadChar(%struct.LoadState* noundef %0)
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 20
  store i8 %56, i8* %57, align 1
  %58 = call i32 @LoadChar(%struct.LoadState* noundef %0)
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 21
  store i8 %59, i8* %60, align 2
  %61 = call i32 @LoadChar(%struct.LoadState* noundef %0)
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 22
  store i8 %62, i8* %63, align 1
  call void @LoadCode(%struct.LoadState* noundef %0, %struct.Proto* noundef %13)
  call void @LoadConstants(%struct.LoadState* noundef %0, %struct.Proto* noundef %13)
  call void @LoadDebug(%struct.LoadState* noundef %0, %struct.Proto* noundef %13)
  %64 = call i32 @luaG_checkcode(%struct.Proto* noundef %13) #6
  %.not = icmp eq i32 %64, 0
  br i1 %.not, label %65, label %66

65:                                               ; preds = %47
  call void @error(%struct.LoadState* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %66

66:                                               ; preds = %65, %47
  %67 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %68 = load %struct.lua_State*, %struct.lua_State** %67, align 8
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %68, i64 0, i32 4
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %69, align 8
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i64 -1
  store %struct.lua_TValue* %71, %struct.lua_TValue** %69, align 8
  %72 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %73 = load %struct.lua_State*, %struct.lua_State** %72, align 8
  %74 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %73, i64 0, i32 15
  %75 = load i16, i16* %74, align 8
  %76 = add i16 %75, -1
  store i16 %76, i16* %74, align 8
  ret %struct.Proto* %13
}

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define hidden void @luaU_header(i8* nocapture noundef writeonly %0) #2 {
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  %3 = bitcast i8* %0 to i32*
  store i32 1635077147, i32* %3, align 1
  %4 = getelementptr inbounds i8, i8* %0, i64 4
  %5 = getelementptr inbounds i8, i8* %0, i64 5
  store i8 81, i8* %4, align 1
  %6 = getelementptr inbounds i8, i8* %0, i64 6
  store i8 0, i8* %5, align 1
  %7 = bitcast i32* %2 to i8*
  %8 = load i8, i8* %7, align 4
  %9 = getelementptr inbounds i8, i8* %0, i64 7
  store i8 %8, i8* %6, align 1
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  store i8 4, i8* %9, align 1
  %11 = getelementptr inbounds i8, i8* %0, i64 9
  store i8 8, i8* %10, align 1
  %12 = getelementptr inbounds i8, i8* %0, i64 10
  store i8 4, i8* %11, align 1
  %13 = getelementptr inbounds i8, i8* %0, i64 11
  store i8 8, i8* %12, align 1
  store i8 0, i8* %13, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @LoadBlock(%struct.LoadState* nocapture noundef readonly %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 1
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8
  %6 = call i64 @luaZ_read(%struct.Zio* noundef %5, i8* noundef %1, i64 noundef %2) #6
  %.not = icmp eq i64 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %3
  call void @error(%struct.LoadState* noundef %0, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal void @error(%struct.LoadState* nocapture noundef readonly %0, i8* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 3
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* noundef %4, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* noundef %6, i8* noundef %1) #6
  %8 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  call void @luaD_throw(%struct.lua_State* noundef %9, i32 noundef 3) #6
  ret void
}

declare hidden i64 @luaZ_read(%struct.Zio* noundef, i8* noundef, i64 noundef) #1

declare hidden i8* @luaO_pushfstring(%struct.lua_State* noundef, i8* noundef, ...) #1

declare hidden void @luaD_throw(%struct.lua_State* noundef, i32 noundef) #1

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State* noundef) #1

declare hidden void @luaD_growstack(%struct.lua_State* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %union.TString* @LoadString(%struct.LoadState* nocapture noundef readonly %0) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*
  call void @LoadBlock(%struct.LoadState* noundef %0, i8* noundef nonnull %3, i64 noundef 8)
  %4 = load i64, i64* %2, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  %10 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 2
  %11 = load %struct.Mbuffer*, %struct.Mbuffer** %10, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i8* @luaZ_openspace(%struct.lua_State* noundef %9, %struct.Mbuffer* noundef %11, i64 noundef %12) #6
  %14 = load i64, i64* %2, align 8
  call void @LoadBlock(%struct.LoadState* noundef %0, i8* noundef %13, i64 noundef %14)
  %15 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %16 = load %struct.lua_State*, %struct.lua_State** %15, align 8
  %17 = load i64, i64* %2, align 8
  %18 = add i64 %17, -1
  %19 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %16, i8* noundef %13, i64 noundef %18) #6
  br label %20

20:                                               ; preds = %7, %6
  %.0 = phi %union.TString* [ null, %6 ], [ %19, %7 ]
  ret %union.TString* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LoadInt(%struct.LoadState* nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @LoadBlock(%struct.LoadState* noundef %0, i8* noundef nonnull %3, i64 noundef 4)
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @error(%struct.LoadState* noundef %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i32, i32* %2, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LoadChar(%struct.LoadState* nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  call void @LoadBlock(%struct.LoadState* noundef %0, i8* noundef nonnull %2, i64 noundef 1)
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadCode(%struct.LoadState* nocapture noundef readonly %0, %struct.Proto* nocapture noundef %1) #0 {
  %3 = call i32 @LoadInt(%struct.LoadState* noundef %0)
  %4 = icmp sgt i32 %3, -2
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %8 = sext i32 %3 to i64
  %9 = shl nsw i64 %8, 2
  %10 = call i8* @luaM_realloc_(%struct.lua_State* noundef %7, i8* noundef null, i64 noundef 0, i64 noundef %9) #6
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8
  %14 = call i8* @luaM_toobig(%struct.lua_State* noundef %13) #6
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i8* [ %10, %5 ], [ %14, %11 ]
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 4
  %18 = bitcast i32** %17 to i8**
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 12
  store i32 %3, i32* %19, align 8
  %20 = sext i32 %3 to i64
  %21 = shl nsw i64 %20, 2
  call void @LoadBlock(%struct.LoadState* noundef %0, i8* noundef %16, i64 noundef %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadConstants(%struct.LoadState* noundef %0, %struct.Proto* nocapture noundef %1) #0 {
  %3 = call i32 @LoadInt(%struct.LoadState* noundef %0)
  %4 = icmp sgt i32 %3, -2
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %8 = sext i32 %3 to i64
  %9 = shl nsw i64 %8, 4
  %10 = call i8* @luaM_realloc_(%struct.lua_State* noundef %7, i8* noundef null, i64 noundef 0, i64 noundef %9) #6
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8
  %14 = call i8* @luaM_toobig(%struct.lua_State* noundef %13) #6
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i8* [ %10, %5 ], [ %14, %11 ]
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 3
  %18 = bitcast %struct.lua_TValue** %17 to i8**
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 11
  store i32 %3, i32* %19, align 4
  br label %20

20:                                               ; preds = %27, %15
  %.0 = phi i32 [ 0, %15 ], [ %28, %27 ]
  %21 = icmp slt i32 %.0, %3
  br i1 %21, label %22, label %29

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 3
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %24, i64 %25, i32 1
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %22
  %28 = add nuw nsw i32 %.0, 1
  br label %20, !llvm.loop !4

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %56, %29
  %.1 = phi i32 [ 0, %29 ], [ %57, %56 ]
  %31 = icmp slt i32 %.1, %3
  br i1 %31, label %32, label %58

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 3
  %34 = load %struct.lua_TValue*, %struct.lua_TValue** %33, align 8
  %35 = zext i32 %.1 to i64
  %36 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %35
  %37 = call i32 @LoadChar(%struct.LoadState* noundef %0)
  switch i32 %37, label %54 [
    i32 0, label %38
    i32 1, label %40
    i32 3, label %46
    i32 4, label %50
  ]

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %35, i32 1
  store i32 0, i32* %39, align 8
  br label %55

40:                                               ; preds = %32
  %41 = call i32 @LoadChar(%struct.LoadState* noundef %0)
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = bitcast %struct.lua_TValue* %36 to i32*
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %35, i32 1
  store i32 1, i32* %45, align 8
  br label %55

46:                                               ; preds = %32
  %47 = call double @LoadNumber(%struct.LoadState* noundef %0)
  %48 = bitcast %struct.lua_TValue* %36 to double*
  store double %47, double* %48, align 8
  %49 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %35, i32 1
  store i32 3, i32* %49, align 8
  br label %55

50:                                               ; preds = %32
  %51 = call %union.TString* @LoadString(%struct.LoadState* noundef %0)
  %52 = bitcast %struct.lua_TValue* %36 to %union.TString**
  store %union.TString* %51, %union.TString** %52, align 8
  %53 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %34, i64 %35, i32 1
  store i32 4, i32* %53, align 8
  br label %55

54:                                               ; preds = %32
  call void @error(%struct.LoadState* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %55

55:                                               ; preds = %54, %50, %46, %40, %38
  br label %56

56:                                               ; preds = %55
  %57 = add nuw nsw i32 %.1, 1
  br label %30, !llvm.loop !6

58:                                               ; preds = %30
  %59 = call i32 @LoadInt(%struct.LoadState* noundef %0)
  %60 = icmp sgt i32 %59, -2
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %63 = load %struct.lua_State*, %struct.lua_State** %62, align 8
  %64 = sext i32 %59 to i64
  %65 = shl nsw i64 %64, 3
  %66 = call i8* @luaM_realloc_(%struct.lua_State* noundef %63, i8* noundef null, i64 noundef 0, i64 noundef %65) #6
  br label %71

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %69 = load %struct.lua_State*, %struct.lua_State** %68, align 8
  %70 = call i8* @luaM_toobig(%struct.lua_State* noundef %69) #6
  br label %71

71:                                               ; preds = %67, %61
  %72 = phi i8* [ %66, %61 ], [ %70, %67 ]
  %73 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 5
  %74 = bitcast %struct.Proto*** %73 to i8**
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 14
  store i32 %59, i32* %75, align 8
  br label %76

76:                                               ; preds = %83, %71
  %.2 = phi i32 [ 0, %71 ], [ %84, %83 ]
  %77 = icmp slt i32 %.2, %59
  br i1 %77, label %78, label %85

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 5
  %80 = load %struct.Proto**, %struct.Proto*** %79, align 8
  %81 = zext i32 %.2 to i64
  %82 = getelementptr inbounds %struct.Proto*, %struct.Proto** %80, i64 %81
  store %struct.Proto* null, %struct.Proto** %82, align 8
  br label %83

83:                                               ; preds = %78
  %84 = add nuw nsw i32 %.2, 1
  br label %76, !llvm.loop !7

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %96, %85
  %.3 = phi i32 [ 0, %85 ], [ %97, %96 ]
  %87 = icmp slt i32 %.3, %59
  br i1 %87, label %88, label %98

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 9
  %90 = load %union.TString*, %union.TString** %89, align 8
  %91 = call %struct.Proto* @LoadFunction(%struct.LoadState* noundef %0, %union.TString* noundef %90)
  %92 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 5
  %93 = load %struct.Proto**, %struct.Proto*** %92, align 8
  %94 = zext i32 %.3 to i64
  %95 = getelementptr inbounds %struct.Proto*, %struct.Proto** %93, i64 %94
  store %struct.Proto* %91, %struct.Proto** %95, align 8
  br label %96

96:                                               ; preds = %88
  %97 = add nuw nsw i32 %.3, 1
  br label %86, !llvm.loop !8

98:                                               ; preds = %86
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadDebug(%struct.LoadState* nocapture noundef readonly %0, %struct.Proto* nocapture noundef %1) #0 {
  %3 = call i32 @LoadInt(%struct.LoadState* noundef %0)
  %4 = icmp sgt i32 %3, -2
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %7 = load %struct.lua_State*, %struct.lua_State** %6, align 8
  %8 = sext i32 %3 to i64
  %9 = shl nsw i64 %8, 2
  %10 = call i8* @luaM_realloc_(%struct.lua_State* noundef %7, i8* noundef null, i64 noundef 0, i64 noundef %9) #6
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8
  %14 = call i8* @luaM_toobig(%struct.lua_State* noundef %13) #6
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i8* [ %10, %5 ], [ %14, %11 ]
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 6
  %18 = bitcast i32** %17 to i8**
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 13
  store i32 %3, i32* %19, align 4
  %20 = sext i32 %3 to i64
  %21 = shl nsw i64 %20, 2
  call void @LoadBlock(%struct.LoadState* noundef %0, i8* noundef %16, i64 noundef %21)
  %22 = call i32 @LoadInt(%struct.LoadState* noundef %0)
  %23 = icmp sgt i32 %22, -2
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %26 = load %struct.lua_State*, %struct.lua_State** %25, align 8
  %27 = sext i32 %22 to i64
  %28 = shl nsw i64 %27, 4
  %29 = call i8* @luaM_realloc_(%struct.lua_State* noundef %26, i8* noundef null, i64 noundef 0, i64 noundef %28) #6
  br label %34

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %32 = load %struct.lua_State*, %struct.lua_State** %31, align 8
  %33 = call i8* @luaM_toobig(%struct.lua_State* noundef %32) #6
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i8* [ %29, %24 ], [ %33, %30 ]
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  %37 = bitcast %struct.LocVar** %36 to i8**
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 15
  store i32 %22, i32* %38, align 4
  br label %39

39:                                               ; preds = %46, %34
  %.0 = phi i32 [ 0, %34 ], [ %47, %46 ]
  %40 = icmp slt i32 %.0, %22
  br i1 %40, label %41, label %48

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  %43 = load %struct.LocVar*, %struct.LocVar** %42, align 8
  %44 = zext i32 %.0 to i64
  %45 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %43, i64 %44, i32 0
  store %union.TString* null, %union.TString** %45, align 8
  br label %46

46:                                               ; preds = %41
  %47 = add nuw nsw i32 %.0, 1
  br label %39, !llvm.loop !9

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %67, %48
  %.1 = phi i32 [ 0, %48 ], [ %68, %67 ]
  %50 = icmp slt i32 %.1, %22
  br i1 %50, label %51, label %69

51:                                               ; preds = %49
  %52 = call %union.TString* @LoadString(%struct.LoadState* noundef %0)
  %53 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  %54 = load %struct.LocVar*, %struct.LocVar** %53, align 8
  %55 = zext i32 %.1 to i64
  %56 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %54, i64 %55, i32 0
  store %union.TString* %52, %union.TString** %56, align 8
  %57 = call i32 @LoadInt(%struct.LoadState* noundef %0)
  %58 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  %59 = load %struct.LocVar*, %struct.LocVar** %58, align 8
  %60 = zext i32 %.1 to i64
  %61 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %59, i64 %60, i32 1
  store i32 %57, i32* %61, align 8
  %62 = call i32 @LoadInt(%struct.LoadState* noundef %0)
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 7
  %64 = load %struct.LocVar*, %struct.LocVar** %63, align 8
  %65 = zext i32 %.1 to i64
  %66 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %64, i64 %65, i32 2
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %51
  %68 = add nuw nsw i32 %.1, 1
  br label %49, !llvm.loop !10

69:                                               ; preds = %49
  %70 = call i32 @LoadInt(%struct.LoadState* noundef %0)
  %71 = icmp sgt i32 %70, -2
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %74 = load %struct.lua_State*, %struct.lua_State** %73, align 8
  %75 = sext i32 %70 to i64
  %76 = shl nsw i64 %75, 3
  %77 = call i8* @luaM_realloc_(%struct.lua_State* noundef %74, i8* noundef null, i64 noundef 0, i64 noundef %76) #6
  br label %82

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.LoadState, %struct.LoadState* %0, i64 0, i32 0
  %80 = load %struct.lua_State*, %struct.lua_State** %79, align 8
  %81 = call i8* @luaM_toobig(%struct.lua_State* noundef %80) #6
  br label %82

82:                                               ; preds = %78, %72
  %83 = phi i8* [ %77, %72 ], [ %81, %78 ]
  %84 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8
  %85 = bitcast %union.TString*** %84 to i8**
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 10
  store i32 %70, i32* %86, align 8
  br label %87

87:                                               ; preds = %94, %82
  %.2 = phi i32 [ 0, %82 ], [ %95, %94 ]
  %88 = icmp slt i32 %.2, %70
  br i1 %88, label %89, label %96

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8
  %91 = load %union.TString**, %union.TString*** %90, align 8
  %92 = zext i32 %.2 to i64
  %93 = getelementptr inbounds %union.TString*, %union.TString** %91, i64 %92
  store %union.TString* null, %union.TString** %93, align 8
  br label %94

94:                                               ; preds = %89
  %95 = add nuw nsw i32 %.2, 1
  br label %87, !llvm.loop !11

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %105, %96
  %.3 = phi i32 [ 0, %96 ], [ %106, %105 ]
  %98 = icmp slt i32 %.3, %70
  br i1 %98, label %99, label %107

99:                                               ; preds = %97
  %100 = call %union.TString* @LoadString(%struct.LoadState* noundef %0)
  %101 = getelementptr inbounds %struct.Proto, %struct.Proto* %1, i64 0, i32 8
  %102 = load %union.TString**, %union.TString*** %101, align 8
  %103 = zext i32 %.3 to i64
  %104 = getelementptr inbounds %union.TString*, %union.TString** %102, i64 %103
  store %union.TString* %100, %union.TString** %104, align 8
  br label %105

105:                                              ; preds = %99
  %106 = add nuw nsw i32 %.3, 1
  br label %97, !llvm.loop !12

107:                                              ; preds = %97
  ret void
}

declare hidden i32 @luaG_checkcode(%struct.Proto* noundef) #1

declare hidden i8* @luaZ_openspace(%struct.lua_State* noundef, %struct.Mbuffer* noundef, i64 noundef) #1

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare hidden i8* @luaM_toobig(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal double @LoadNumber(%struct.LoadState* nocapture noundef readonly %0) #0 {
  %2 = alloca double, align 8
  %3 = bitcast double* %2 to i8*
  call void @LoadBlock(%struct.LoadState* noundef %0, i8* noundef nonnull %3, i64 noundef 8)
  %4 = load double, double* %2, align 8
  ret double %4
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }

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
