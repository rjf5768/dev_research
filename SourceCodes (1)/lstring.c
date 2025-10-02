; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/lstring.c'
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
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%union.Udata = type { %struct.anon.2 }
%struct.anon.2 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }

; Function Attrs: noinline nounwind uwtable
define hidden void @luaS_resize(%struct.lua_State* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.GCObject**, align 8
  %6 = alloca %struct.stringtable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.GCObject*, align 8
  %9 = alloca %union.GCObject*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %12, i32 0, i32 6
  %14 = load %struct.global_State*, %struct.global_State** %13, align 8
  %15 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i32 0, i32 4
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %121

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = icmp ule i64 %23, 2305843009213693951
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = call i8* @luaM_realloc_(%struct.lua_State* noundef %26, i8* noundef null, i64 noundef 0, i64 noundef %29)
  br label %34

31:                                               ; preds = %20
  %32 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %33 = call i8* @luaM_toobig(%struct.lua_State* noundef %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i8* [ %30, %25 ], [ %33, %31 ]
  %36 = bitcast i8* %35 to %union.GCObject**
  store %union.GCObject** %36, %union.GCObject*** %5, align 8
  %37 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %38 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %37, i32 0, i32 6
  %39 = load %struct.global_State*, %struct.global_State** %38, align 8
  %40 = getelementptr inbounds %struct.global_State, %struct.global_State* %39, i32 0, i32 0
  store %struct.stringtable* %40, %struct.stringtable** %6, align 8
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %50, %34
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %union.GCObject**, %union.GCObject*** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %union.GCObject*, %union.GCObject** %46, i64 %48
  store %union.GCObject* null, %union.GCObject** %49, align 8
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %41, !llvm.loop !4

53:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %100, %53
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %57 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %103

60:                                               ; preds = %54
  %61 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %62 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %61, i32 0, i32 0
  %63 = load %union.GCObject**, %union.GCObject*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %union.GCObject*, %union.GCObject** %63, i64 %65
  %67 = load %union.GCObject*, %union.GCObject** %66, align 8
  store %union.GCObject* %67, %union.GCObject** %8, align 8
  br label %68

68:                                               ; preds = %71, %60
  %69 = load %union.GCObject*, %union.GCObject** %8, align 8
  %70 = icmp ne %union.GCObject* %69, null
  br i1 %70, label %71, label %99

71:                                               ; preds = %68
  %72 = load %union.GCObject*, %union.GCObject** %8, align 8
  %73 = bitcast %union.GCObject* %72 to %struct.GCheader*
  %74 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %73, i32 0, i32 0
  %75 = load %union.GCObject*, %union.GCObject** %74, align 8
  store %union.GCObject* %75, %union.GCObject** %9, align 8
  %76 = load %union.GCObject*, %union.GCObject** %8, align 8
  %77 = bitcast %union.GCObject* %76 to %union.TString*
  %78 = bitcast %union.TString* %77 to %struct.anon.1*
  %79 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %4, align 4
  %83 = sub nsw i32 %82, 1
  %84 = and i32 %81, %83
  store i32 %84, i32* %11, align 4
  %85 = load %union.GCObject**, %union.GCObject*** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %union.GCObject*, %union.GCObject** %85, i64 %87
  %89 = load %union.GCObject*, %union.GCObject** %88, align 8
  %90 = load %union.GCObject*, %union.GCObject** %8, align 8
  %91 = bitcast %union.GCObject* %90 to %struct.GCheader*
  %92 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %91, i32 0, i32 0
  store %union.GCObject* %89, %union.GCObject** %92, align 8
  %93 = load %union.GCObject*, %union.GCObject** %8, align 8
  %94 = load %union.GCObject**, %union.GCObject*** %5, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %union.GCObject*, %union.GCObject** %94, i64 %96
  store %union.GCObject* %93, %union.GCObject** %97, align 8
  %98 = load %union.GCObject*, %union.GCObject** %9, align 8
  store %union.GCObject* %98, %union.GCObject** %8, align 8
  br label %68, !llvm.loop !6

99:                                               ; preds = %68
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %54, !llvm.loop !7

103:                                              ; preds = %54
  %104 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %105 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %106 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %105, i32 0, i32 0
  %107 = load %union.GCObject**, %union.GCObject*** %106, align 8
  %108 = bitcast %union.GCObject** %107 to i8*
  %109 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %110 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 8
  %114 = call i8* @luaM_realloc_(%struct.lua_State* noundef %104, i8* noundef %108, i64 noundef %113, i64 noundef 0)
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %117 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %union.GCObject**, %union.GCObject*** %5, align 8
  %119 = load %struct.stringtable*, %struct.stringtable** %6, align 8
  %120 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %119, i32 0, i32 0
  store %union.GCObject** %118, %union.GCObject*** %120, align 8
  br label %121

121:                                              ; preds = %103, %19
  ret void
}

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare hidden i8* @luaM_toobig(%struct.lua_State* noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %union.TString*, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.GCObject*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.TString*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* %7, align 8
  %16 = lshr i64 %15, 5
  %17 = add i64 %16, 1
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %38, %3
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 5
  %27 = load i32, i32* %9, align 4
  %28 = lshr i32 %27, 2
  %29 = add i32 %26, %28
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %11, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add i32 %29, %35
  %37 = xor i32 %24, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %11, align 8
  br label %19, !llvm.loop !8

42:                                               ; preds = %19
  %43 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %44 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %43, i32 0, i32 6
  %45 = load %struct.global_State*, %struct.global_State** %44, align 8
  %46 = getelementptr inbounds %struct.global_State, %struct.global_State* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %46, i32 0, i32 0
  %48 = load %union.GCObject**, %union.GCObject*** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %51 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %50, i32 0, i32 6
  %52 = load %struct.global_State*, %struct.global_State** %51, align 8
  %53 = getelementptr inbounds %struct.global_State, %struct.global_State* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %49, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %union.GCObject*, %union.GCObject** %48, i64 %58
  %60 = load %union.GCObject*, %union.GCObject** %59, align 8
  store %union.GCObject* %60, %union.GCObject** %8, align 8
  br label %61

61:                                               ; preds = %108, %42
  %62 = load %union.GCObject*, %union.GCObject** %8, align 8
  %63 = icmp ne %union.GCObject* %62, null
  br i1 %63, label %64, label %113

64:                                               ; preds = %61
  %65 = load %union.GCObject*, %union.GCObject** %8, align 8
  %66 = bitcast %union.GCObject* %65 to %union.TString*
  store %union.TString* %66, %union.TString** %12, align 8
  %67 = load %union.TString*, %union.TString** %12, align 8
  %68 = bitcast %union.TString* %67 to %struct.anon.1*
  %69 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %107

73:                                               ; preds = %64
  %74 = load i8*, i8** %6, align 8
  %75 = load %union.TString*, %union.TString** %12, align 8
  %76 = getelementptr inbounds %union.TString, %union.TString* %75, i64 1
  %77 = bitcast %union.TString* %76 to i8*
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @memcmp(i8* noundef %74, i8* noundef %77, i64 noundef %78) #4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %73
  %82 = load %union.GCObject*, %union.GCObject** %8, align 8
  %83 = bitcast %union.GCObject* %82 to %struct.GCheader*
  %84 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %83, i32 0, i32 2
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %88 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %87, i32 0, i32 6
  %89 = load %struct.global_State*, %struct.global_State** %88, align 8
  %90 = getelementptr inbounds %struct.global_State, %struct.global_State* %89, i32 0, i32 3
  %91 = load i8, i8* %90, align 8
  %92 = zext i8 %91 to i32
  %93 = xor i32 %92, 3
  %94 = and i32 %86, %93
  %95 = and i32 %94, 3
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %81
  %98 = load %union.GCObject*, %union.GCObject** %8, align 8
  %99 = bitcast %union.GCObject* %98 to %struct.GCheader*
  %100 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %99, i32 0, i32 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = xor i32 %102, 3
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %100, align 1
  br label %105

105:                                              ; preds = %97, %81
  %106 = load %union.TString*, %union.TString** %12, align 8
  store %union.TString* %106, %union.TString** %4, align 8
  br label %119

107:                                              ; preds = %73, %64
  br label %108

108:                                              ; preds = %107
  %109 = load %union.GCObject*, %union.GCObject** %8, align 8
  %110 = bitcast %union.GCObject* %109 to %struct.GCheader*
  %111 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %110, i32 0, i32 0
  %112 = load %union.GCObject*, %union.GCObject** %111, align 8
  store %union.GCObject* %112, %union.GCObject** %8, align 8
  br label %61, !llvm.loop !9

113:                                              ; preds = %61
  %114 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call %union.TString* @newlstr(%struct.lua_State* noundef %114, i8* noundef %115, i64 noundef %116, i32 noundef %117)
  store %union.TString* %118, %union.TString** %4, align 8
  br label %119

119:                                              ; preds = %113, %105
  %120 = load %union.TString*, %union.TString** %4, align 8
  ret %union.TString* %120
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal %union.TString* @newlstr(%struct.lua_State* noundef %0, i8* noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.TString*, align 8
  %10 = alloca %struct.stringtable*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %7, align 8
  %12 = add i64 %11, 1
  %13 = icmp ugt i64 %12, -27
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %16 = call i8* @luaM_toobig(%struct.lua_State* noundef %15)
  br label %17

17:                                               ; preds = %14, %4
  %18 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, 1
  %21 = mul i64 %20, 1
  %22 = add i64 %21, 24
  %23 = call i8* @luaM_realloc_(%struct.lua_State* noundef %18, i8* noundef null, i64 noundef 0, i64 noundef %22)
  %24 = bitcast i8* %23 to %union.TString*
  store %union.TString* %24, %union.TString** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %union.TString*, %union.TString** %9, align 8
  %27 = bitcast %union.TString* %26 to %struct.anon.1*
  %28 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %27, i32 0, i32 5
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %union.TString*, %union.TString** %9, align 8
  %31 = bitcast %union.TString* %30 to %struct.anon.1*
  %32 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 4
  %33 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %34 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %33, i32 0, i32 6
  %35 = load %struct.global_State*, %struct.global_State** %34, align 8
  %36 = getelementptr inbounds %struct.global_State, %struct.global_State* %35, i32 0, i32 3
  %37 = load i8, i8* %36, align 8
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 3
  %40 = trunc i32 %39 to i8
  %41 = load %union.TString*, %union.TString** %9, align 8
  %42 = bitcast %union.TString* %41 to %struct.anon.1*
  %43 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %42, i32 0, i32 2
  store i8 %40, i8* %43, align 1
  %44 = load %union.TString*, %union.TString** %9, align 8
  %45 = bitcast %union.TString* %44 to %struct.anon.1*
  %46 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %45, i32 0, i32 1
  store i8 4, i8* %46, align 8
  %47 = load %union.TString*, %union.TString** %9, align 8
  %48 = bitcast %union.TString* %47 to %struct.anon.1*
  %49 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %48, i32 0, i32 3
  store i8 0, i8* %49, align 2
  %50 = load %union.TString*, %union.TString** %9, align 8
  %51 = getelementptr inbounds %union.TString, %union.TString* %50, i64 1
  %52 = bitcast %union.TString* %51 to i8*
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = mul i64 %54, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 1 %53, i64 %55, i1 false)
  %56 = load %union.TString*, %union.TString** %9, align 8
  %57 = getelementptr inbounds %union.TString, %union.TString* %56, i64 1
  %58 = bitcast %union.TString* %57 to i8*
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %62 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %61, i32 0, i32 6
  %63 = load %struct.global_State*, %struct.global_State** %62, align 8
  %64 = getelementptr inbounds %struct.global_State, %struct.global_State* %63, i32 0, i32 0
  store %struct.stringtable* %64, %struct.stringtable** %10, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %67 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = and i32 %65, %69
  store i32 %70, i32* %8, align 4
  %71 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %72 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %71, i32 0, i32 0
  %73 = load %union.GCObject**, %union.GCObject*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %union.GCObject*, %union.GCObject** %73, i64 %75
  %77 = load %union.GCObject*, %union.GCObject** %76, align 8
  %78 = load %union.TString*, %union.TString** %9, align 8
  %79 = bitcast %union.TString* %78 to %struct.anon.1*
  %80 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %79, i32 0, i32 0
  store %union.GCObject* %77, %union.GCObject** %80, align 8
  %81 = load %union.TString*, %union.TString** %9, align 8
  %82 = bitcast %union.TString* %81 to %union.GCObject*
  %83 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %84 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %83, i32 0, i32 0
  %85 = load %union.GCObject**, %union.GCObject*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %union.GCObject*, %union.GCObject** %85, i64 %87
  store %union.GCObject* %82, %union.GCObject** %88, align 8
  %89 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %90 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %94 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %97 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ugt i32 %95, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %17
  %101 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %102 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %103, 1073741822
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %107 = load %struct.stringtable*, %struct.stringtable** %10, align 8
  %108 = getelementptr inbounds %struct.stringtable, %struct.stringtable* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 2
  call void @luaS_resize(%struct.lua_State* noundef %106, i32 noundef %110)
  br label %111

111:                                              ; preds = %105, %100, %17
  %112 = load %union.TString*, %union.TString** %9, align 8
  ret %union.TString* %112
}

; Function Attrs: noinline nounwind uwtable
define hidden %union.Udata* @luaS_newudata(%struct.lua_State* noundef %0, i64 noundef %1, %struct.Table* noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %union.Udata*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.Table* %2, %struct.Table** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp ugt i64 %8, -43
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %12 = call i8* @luaM_toobig(%struct.lua_State* noundef %11)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add i64 %15, 40
  %17 = call i8* @luaM_realloc_(%struct.lua_State* noundef %14, i8* noundef null, i64 noundef 0, i64 noundef %16)
  %18 = bitcast i8* %17 to %union.Udata*
  store %union.Udata* %18, %union.Udata** %7, align 8
  %19 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 6
  %21 = load %struct.global_State*, %struct.global_State** %20, align 8
  %22 = getelementptr inbounds %struct.global_State, %struct.global_State* %21, i32 0, i32 3
  %23 = load i8, i8* %22, align 8
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 3
  %26 = trunc i32 %25 to i8
  %27 = load %union.Udata*, %union.Udata** %7, align 8
  %28 = bitcast %union.Udata* %27 to %struct.anon.2*
  %29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %28, i32 0, i32 2
  store i8 %26, i8* %29, align 1
  %30 = load %union.Udata*, %union.Udata** %7, align 8
  %31 = bitcast %union.Udata* %30 to %struct.anon.2*
  %32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %31, i32 0, i32 1
  store i8 7, i8* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %union.Udata*, %union.Udata** %7, align 8
  %35 = bitcast %union.Udata* %34 to %struct.anon.2*
  %36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %35, i32 0, i32 5
  store i64 %33, i64* %36, align 8
  %37 = load %union.Udata*, %union.Udata** %7, align 8
  %38 = bitcast %union.Udata* %37 to %struct.anon.2*
  %39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 3
  store %struct.Table* null, %struct.Table** %39, align 8
  %40 = load %struct.Table*, %struct.Table** %6, align 8
  %41 = load %union.Udata*, %union.Udata** %7, align 8
  %42 = bitcast %union.Udata* %41 to %struct.anon.2*
  %43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 4
  store %struct.Table* %40, %struct.Table** %43, align 8
  %44 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i32 0, i32 6
  %46 = load %struct.global_State*, %struct.global_State** %45, align 8
  %47 = getelementptr inbounds %struct.global_State, %struct.global_State* %46, i32 0, i32 21
  %48 = load %struct.lua_State*, %struct.lua_State** %47, align 8
  %49 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %48, i32 0, i32 0
  %50 = load %union.GCObject*, %union.GCObject** %49, align 8
  %51 = load %union.Udata*, %union.Udata** %7, align 8
  %52 = bitcast %union.Udata* %51 to %struct.anon.2*
  %53 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %52, i32 0, i32 0
  store %union.GCObject* %50, %union.GCObject** %53, align 8
  %54 = load %union.Udata*, %union.Udata** %7, align 8
  %55 = bitcast %union.Udata* %54 to %union.GCObject*
  %56 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %57 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %56, i32 0, i32 6
  %58 = load %struct.global_State*, %struct.global_State** %57, align 8
  %59 = getelementptr inbounds %struct.global_State, %struct.global_State* %58, i32 0, i32 21
  %60 = load %struct.lua_State*, %struct.lua_State** %59, align 8
  %61 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %60, i32 0, i32 0
  store %union.GCObject* %55, %union.GCObject** %61, align 8
  %62 = load %union.Udata*, %union.Udata** %7, align 8
  ret %union.Udata* %62
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
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
