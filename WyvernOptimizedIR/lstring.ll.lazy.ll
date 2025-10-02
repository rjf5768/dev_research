; ModuleID = './lstring.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/lstring.c"
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
%union.Udata = type { %struct.anon.2 }
%struct.anon.2 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }

; Function Attrs: noinline nounwind uwtable
define hidden void @luaS_resize(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %4 = load %struct.global_State*, %struct.global_State** %3, align 8
  %5 = getelementptr inbounds %struct.global_State, %struct.global_State* %4, i64 0, i32 4
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %68

9:                                                ; preds = %2
  %10 = icmp sgt i32 %1, -2
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = sext i32 %1 to i64
  %13 = shl nsw i64 %12, 3
  %14 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef %13) #5
  br label %17

15:                                               ; preds = %9
  %16 = call i8* @luaM_toobig(%struct.lua_State* noundef %0) #5
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i8* [ %14, %11 ], [ %16, %15 ]
  %19 = bitcast i8* %18 to %union.GCObject**
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %21 = load %struct.global_State*, %struct.global_State** %20, align 8
  br label %22

22:                                               ; preds = %27, %17
  %.01 = phi i32 [ 0, %17 ], [ %28, %27 ]
  %23 = icmp slt i32 %.01, %1
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds %union.GCObject*, %union.GCObject** %19, i64 %25
  store %union.GCObject* null, %union.GCObject** %26, align 8
  br label %27

27:                                               ; preds = %24
  %28 = add nuw nsw i32 %.01, 1
  br label %22, !llvm.loop !4

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %56, %29
  %.1 = phi i32 [ 0, %29 ], [ %57, %56 ]
  %31 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i64 0, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %.1, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i64 0, i32 0, i32 0
  %36 = load %union.GCObject**, %union.GCObject*** %35, align 8
  %37 = zext i32 %.1 to i64
  %38 = getelementptr inbounds %union.GCObject*, %union.GCObject** %36, i64 %37
  %39 = load %union.GCObject*, %union.GCObject** %38, align 8
  br label %40

40:                                               ; preds = %41, %34
  %.0 = phi %union.GCObject* [ %39, %34 ], [ %43, %41 ]
  %.not = icmp eq %union.GCObject* %.0, null
  br i1 %.not, label %55, label %41

41:                                               ; preds = %40
  %42 = getelementptr %union.GCObject, %union.GCObject* %.0, i64 0, i32 0, i32 0
  %43 = load %union.GCObject*, %union.GCObject** %42, align 8
  %44 = bitcast %union.GCObject* %.0 to %struct.anon.1*
  %45 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %44, i64 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %1, -1
  %48 = and i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %union.GCObject*, %union.GCObject** %19, i64 %49
  %51 = load %union.GCObject*, %union.GCObject** %50, align 8
  %52 = getelementptr %union.GCObject, %union.GCObject* %.0, i64 0, i32 0, i32 0
  store %union.GCObject* %51, %union.GCObject** %52, align 8
  %53 = sext i32 %48 to i64
  %54 = getelementptr inbounds %union.GCObject*, %union.GCObject** %19, i64 %53
  store %union.GCObject* %.0, %union.GCObject** %54, align 8
  br label %40, !llvm.loop !6

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55
  %57 = add nuw nsw i32 %.1, 1
  br label %30, !llvm.loop !7

58:                                               ; preds = %30
  %59 = bitcast %struct.global_State* %21 to i8**
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i64 0, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 3
  %65 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %60, i64 noundef %64, i64 noundef 0) #5
  %66 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i64 0, i32 0, i32 2
  store i32 %1, i32* %66, align 4
  %67 = bitcast %struct.global_State* %21 to i8**
  store i8* %18, i8** %67, align 8
  br label %68

68:                                               ; preds = %58, %8
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare hidden i8* @luaM_toobig(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef %0, i8* noundef readonly %1, i64 noundef %2) #0 {
  %4 = trunc i64 %2 to i32
  %5 = lshr i64 %2, 5
  %.neg = xor i64 %5, -1
  br label %6

6:                                                ; preds = %8, %3
  %.02 = phi i32 [ %4, %3 ], [ %17, %8 ]
  %.01 = phi i64 [ %2, %3 ], [ %18, %8 ]
  %.not.not = icmp ugt i64 %.01, %5
  br i1 %.not.not, label %7, label %19

7:                                                ; preds = %6
  br label %8

8:                                                ; preds = %7
  %9 = shl i32 %.02, 5
  %10 = lshr i32 %.02, 2
  %11 = add i32 %9, %10
  %12 = add i64 %.01, -1
  %13 = getelementptr inbounds i8, i8* %1, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = add i32 %11, %15
  %17 = xor i32 %.02, %16
  %18 = add i64 %.01, %.neg
  br label %6, !llvm.loop !8

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %21 = load %struct.global_State*, %struct.global_State** %20, align 8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i64 0, i32 0, i32 0
  %23 = load %union.GCObject**, %union.GCObject*** %22, align 8
  %24 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i64 0, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  %27 = and i32 %.02, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %union.GCObject*, %union.GCObject** %23, i64 %28
  br label %30

30:                                               ; preds = %57, %19
  %.03.in = phi %union.GCObject** [ %29, %19 ], [ %58, %57 ]
  %.03 = load %union.GCObject*, %union.GCObject** %.03.in, align 8
  %.not = icmp eq %union.GCObject* %.03, null
  br i1 %.not, label %59, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %union.GCObject, %union.GCObject* %.03, i64 0, i32 0, i32 4
  %33 = bitcast %struct.lua_TValue** %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, %2
  br i1 %35, label %36, label %56

36:                                               ; preds = %31
  %37 = bitcast %union.GCObject* %.03 to %union.TString*
  %38 = getelementptr inbounds %union.GCObject, %union.GCObject* %.03, i64 0, i32 0, i32 5
  %39 = bitcast %struct.lua_TValue** %38 to i8*
  %bcmp = call i32 @bcmp(i8* %1, i8* nonnull %39, i64 %2)
  %40 = icmp eq i32 %bcmp, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = getelementptr inbounds %union.GCObject, %union.GCObject* %.03, i64 0, i32 0, i32 2
  %43 = load i8, i8* %42, align 1
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i64 0, i32 3
  %47 = load i8, i8* %46, align 8
  %48 = xor i8 %47, -1
  %49 = and i8 %43, %48
  %50 = and i8 %49, 3
  %.not5 = icmp eq i8 %50, 0
  br i1 %.not5, label %55, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %union.GCObject, %union.GCObject* %.03, i64 0, i32 0, i32 2
  %53 = load i8, i8* %52, align 1
  %54 = xor i8 %53, 3
  store i8 %54, i8* %52, align 1
  br label %55

55:                                               ; preds = %51, %41
  br label %61

56:                                               ; preds = %36, %31
  br label %57

57:                                               ; preds = %56
  %58 = getelementptr %union.GCObject, %union.GCObject* %.03, i64 0, i32 0, i32 0
  br label %30, !llvm.loop !9

59:                                               ; preds = %30
  %60 = call %union.TString* @newlstr(%struct.lua_State* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %.02)
  br label %61

61:                                               ; preds = %59, %55
  %.0 = phi %union.TString* [ %37, %55 ], [ %60, %59 ]
  ret %union.TString* %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal %union.TString* @newlstr(%struct.lua_State* noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = add i64 %2, 27
  %6 = icmp ult i64 %5, 26
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i8* @luaM_toobig(%struct.lua_State* noundef %0) #5
  br label %9

9:                                                ; preds = %7, %4
  %10 = add i64 %2, 25
  %11 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef %10) #5
  %12 = getelementptr inbounds i8, i8* %11, i64 16
  %13 = bitcast i8* %12 to i64*
  store i64 %2, i64* %13, align 8
  %14 = getelementptr inbounds i8, i8* %11, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 %3, i32* %15, align 4
  %16 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %17 = load %struct.global_State*, %struct.global_State** %16, align 8
  %18 = getelementptr inbounds %struct.global_State, %struct.global_State* %17, i64 0, i32 3
  %19 = load i8, i8* %18, align 8
  %20 = and i8 %19, 3
  %21 = getelementptr inbounds i8, i8* %11, i64 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  store i8 4, i8* %22, align 8
  %23 = getelementptr inbounds i8, i8* %11, i64 10
  store i8 0, i8* %23, align 2
  %24 = getelementptr inbounds i8, i8* %11, i64 24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %24, i8* align 1 %1, i64 %2, i1 false)
  %25 = getelementptr inbounds i8, i8* %11, i64 24
  %26 = getelementptr inbounds i8, i8* %25, i64 %2
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %28 = load %struct.global_State*, %struct.global_State** %27, align 8
  %29 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  %32 = and i32 %31, %3
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 0, i32 0
  %34 = load %union.GCObject**, %union.GCObject*** %33, align 8
  %35 = zext i32 %32 to i64
  %36 = getelementptr inbounds %union.GCObject*, %union.GCObject** %34, i64 %35
  %37 = load %union.GCObject*, %union.GCObject** %36, align 8
  %38 = bitcast i8* %11 to %union.GCObject**
  store %union.GCObject* %37, %union.GCObject** %38, align 8
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 0, i32 0
  %40 = load %union.GCObject**, %union.GCObject*** %39, align 8
  %41 = zext i32 %32 to i64
  %42 = getelementptr inbounds %union.GCObject*, %union.GCObject** %40, i64 %41
  %43 = bitcast %union.GCObject** %42 to i8**
  store i8* %11, i8** %43, align 8
  %44 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %9
  %51 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 1073741823
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.global_State, %struct.global_State* %28, i64 0, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = shl nsw i32 %56, 1
  call void @luaS_resize(%struct.lua_State* noundef %0, i32 noundef %57)
  br label %58

58:                                               ; preds = %54, %50, %9
  %59 = bitcast i8* %11 to %union.TString*
  ret %union.TString* %59
}

; Function Attrs: noinline nounwind uwtable
define hidden %union.Udata* @luaS_newudata(%struct.lua_State* noundef %0, i64 noundef %1, %struct.Table* noundef %2) #0 {
  %4 = icmp ugt i64 %1, -43
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = call i8* @luaM_toobig(%struct.lua_State* noundef %0) #5
  br label %7

7:                                                ; preds = %5, %3
  %8 = add i64 %1, 40
  %9 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef null, i64 noundef 0, i64 noundef %8) #5
  %10 = bitcast i8* %9 to %union.Udata*
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %12 = load %struct.global_State*, %struct.global_State** %11, align 8
  %13 = getelementptr inbounds %struct.global_State, %struct.global_State* %12, i64 0, i32 3
  %14 = load i8, i8* %13, align 8
  %15 = and i8 %14, 3
  %16 = getelementptr inbounds i8, i8* %9, i64 9
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %9, i64 8
  store i8 7, i8* %17, align 8
  %18 = getelementptr inbounds i8, i8* %9, i64 32
  %19 = bitcast i8* %18 to i64*
  store i64 %1, i64* %19, align 8
  %20 = getelementptr inbounds i8, i8* %9, i64 16
  %21 = bitcast i8* %20 to %struct.Table**
  store %struct.Table* null, %struct.Table** %21, align 8
  %22 = getelementptr inbounds i8, i8* %9, i64 24
  %23 = bitcast i8* %22 to %struct.Table**
  store %struct.Table* %2, %struct.Table** %23, align 8
  %24 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %25 = load %struct.global_State*, %struct.global_State** %24, align 8
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %25, i64 0, i32 21
  %27 = load %struct.lua_State*, %struct.lua_State** %26, align 8
  %28 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %27, i64 0, i32 0
  %29 = load %union.GCObject*, %union.GCObject** %28, align 8
  %30 = bitcast i8* %9 to %union.GCObject**
  store %union.GCObject* %29, %union.GCObject** %30, align 8
  %31 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %32 = load %struct.global_State*, %struct.global_State** %31, align 8
  %33 = getelementptr inbounds %struct.global_State, %struct.global_State* %32, i64 0, i32 21
  %34 = bitcast %struct.lua_State** %33 to i8***
  %35 = load i8**, i8*** %34, align 8
  store i8* %9, i8** %35, align 8
  ret %union.Udata* %10
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
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
!9 = distinct !{!9, !5}
