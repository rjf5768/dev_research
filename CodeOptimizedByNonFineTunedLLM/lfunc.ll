; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/lfunc.c'
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
%struct.LClosure = type { %union.GCObject*, i8, i8, i8, i8, %union.GCObject*, %struct.Table*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.GCheader = type { %union.GCObject*, i8, i8 }
%struct.anon.0 = type { %struct.UpVal*, %struct.UpVal* }

; Function Attrs: noinline nounwind uwtable
define hidden %union.Closure* @luaF_newCclosure(%struct.lua_State* noundef %0, i32 noundef %1, %struct.Table* noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %union.Closure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.Table* %2, %struct.Table** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 16, %11
  %13 = trunc i64 %12 to i32
  %14 = add nsw i32 56, %13
  %15 = sext i32 %14 to i64
  %16 = call i8* @luaM_realloc_(%struct.lua_State* noundef %8, i8* noundef null, i64 noundef 0, i64 noundef %15)
  %17 = bitcast i8* %16 to %union.Closure*
  store %union.Closure* %17, %union.Closure** %7, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = load %union.Closure*, %union.Closure** %7, align 8
  %20 = bitcast %union.Closure* %19 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* noundef %18, %union.GCObject* noundef %20, i8 noundef zeroext 6)
  %21 = load %union.Closure*, %union.Closure** %7, align 8
  %22 = bitcast %union.Closure* %21 to %struct.CClosure*
  %23 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %22, i32 0, i32 3
  store i8 1, i8* %23, align 2
  %24 = load %struct.Table*, %struct.Table** %6, align 8
  %25 = load %union.Closure*, %union.Closure** %7, align 8
  %26 = bitcast %union.Closure* %25 to %struct.CClosure*
  %27 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %26, i32 0, i32 6
  store %struct.Table* %24, %struct.Table** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = trunc i32 %28 to i8
  %30 = load %union.Closure*, %union.Closure** %7, align 8
  %31 = bitcast %union.Closure* %30 to %struct.CClosure*
  %32 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %31, i32 0, i32 4
  store i8 %29, i8* %32, align 1
  %33 = load %union.Closure*, %union.Closure** %7, align 8
  ret %union.Closure* %33
}

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #1

declare hidden void @luaC_link(%struct.lua_State* noundef, %union.GCObject* noundef, i8 noundef zeroext) #1

; Function Attrs: noinline nounwind uwtable
define hidden %union.Closure* @luaF_newLclosure(%struct.lua_State* noundef %0, i32 noundef %1, %struct.Table* noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Table*, align 8
  %7 = alloca %union.Closure*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.Table* %2, %struct.Table** %6, align 8
  %8 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = trunc i64 %12 to i32
  %14 = add nsw i32 48, %13
  %15 = sext i32 %14 to i64
  %16 = call i8* @luaM_realloc_(%struct.lua_State* noundef %8, i8* noundef null, i64 noundef 0, i64 noundef %15)
  %17 = bitcast i8* %16 to %union.Closure*
  store %union.Closure* %17, %union.Closure** %7, align 8
  %18 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %19 = load %union.Closure*, %union.Closure** %7, align 8
  %20 = bitcast %union.Closure* %19 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* noundef %18, %union.GCObject* noundef %20, i8 noundef zeroext 6)
  %21 = load %union.Closure*, %union.Closure** %7, align 8
  %22 = bitcast %union.Closure* %21 to %struct.LClosure*
  %23 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %22, i32 0, i32 3
  store i8 0, i8* %23, align 2
  %24 = load %struct.Table*, %struct.Table** %6, align 8
  %25 = load %union.Closure*, %union.Closure** %7, align 8
  %26 = bitcast %union.Closure* %25 to %struct.LClosure*
  %27 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %26, i32 0, i32 6
  store %struct.Table* %24, %struct.Table** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = trunc i32 %28 to i8
  %30 = load %union.Closure*, %union.Closure** %7, align 8
  %31 = bitcast %union.Closure* %30 to %struct.LClosure*
  %32 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %31, i32 0, i32 4
  store i8 %29, i8* %32, align 1
  br label %33

33:                                               ; preds = %37, %3
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %union.Closure*, %union.Closure** %7, align 8
  %39 = bitcast %union.Closure* %38 to %struct.LClosure*
  %40 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %39, i32 0, i32 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1 x %struct.UpVal*], [1 x %struct.UpVal*]* %40, i64 0, i64 %42
  store %struct.UpVal* null, %struct.UpVal** %43, align 8
  br label %33, !llvm.loop !4

44:                                               ; preds = %33
  %45 = load %union.Closure*, %union.Closure** %7, align 8
  ret %union.Closure* %45
}

; Function Attrs: noinline nounwind uwtable
define hidden %struct.UpVal* @luaF_newupval(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaM_realloc_(%struct.lua_State* noundef %4, i8* noundef null, i64 noundef 0, i64 noundef 40)
  %6 = bitcast i8* %5 to %struct.UpVal*
  store %struct.UpVal* %6, %struct.UpVal** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.UpVal*, %struct.UpVal** %3, align 8
  %9 = bitcast %struct.UpVal* %8 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* noundef %7, %union.GCObject* noundef %9, i8 noundef zeroext 10)
  %10 = load %struct.UpVal*, %struct.UpVal** %3, align 8
  %11 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %10, i32 0, i32 4
  %12 = bitcast %union.anon* %11 to %struct.lua_TValue*
  %13 = load %struct.UpVal*, %struct.UpVal** %3, align 8
  %14 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %13, i32 0, i32 3
  store %struct.lua_TValue* %12, %struct.lua_TValue** %14, align 8
  %15 = load %struct.UpVal*, %struct.UpVal** %3, align 8
  %16 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %15, i32 0, i32 3
  %17 = load %struct.lua_TValue*, %struct.lua_TValue** %16, align 8
  %18 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  %19 = load %struct.UpVal*, %struct.UpVal** %3, align 8
  ret %struct.UpVal* %19
}

; Function Attrs: noinline nounwind uwtable
define hidden %struct.UpVal* @luaF_findupval(%struct.lua_State* noundef %0, %struct.lua_TValue* noundef %1) #0 {
  %3 = alloca %struct.UpVal*, align 8
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.lua_TValue*, align 8
  %6 = alloca %struct.global_State*, align 8
  %7 = alloca %union.GCObject**, align 8
  %8 = alloca %struct.UpVal*, align 8
  %9 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %5, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %12 = load %struct.global_State*, %struct.global_State** %11, align 8
  store %struct.global_State* %12, %struct.global_State** %6, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %14 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %13, i32 0, i32 24
  store %union.GCObject** %14, %union.GCObject*** %7, align 8
  br label %15

15:                                               ; preds = %61, %2
  %16 = load %union.GCObject**, %union.GCObject*** %7, align 8
  %17 = load %union.GCObject*, %union.GCObject** %16, align 8
  %18 = icmp ne %union.GCObject* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %union.GCObject**, %union.GCObject*** %7, align 8
  %21 = load %union.GCObject*, %union.GCObject** %20, align 8
  %22 = bitcast %union.GCObject* %21 to %struct.UpVal*
  store %struct.UpVal* %22, %struct.UpVal** %8, align 8
  %23 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %22, i32 0, i32 3
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %26 = icmp uge %struct.lua_TValue* %24, %25
  br label %27

27:                                               ; preds = %19, %15
  %28 = phi i1 [ false, %15 ], [ %26, %19 ]
  br i1 %28, label %29, label %64

29:                                               ; preds = %27
  %30 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %31 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %30, i32 0, i32 3
  %32 = load %struct.lua_TValue*, %struct.lua_TValue** %31, align 8
  %33 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %34 = icmp eq %struct.lua_TValue* %32, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %37 = bitcast %struct.UpVal* %36 to %union.GCObject*
  %38 = bitcast %union.GCObject* %37 to %struct.GCheader*
  %39 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %38, i32 0, i32 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load %struct.global_State*, %struct.global_State** %6, align 8
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i32 0, i32 3
  %44 = load i8, i8* %43, align 8
  %45 = zext i8 %44 to i32
  %46 = xor i32 %45, 3
  %47 = and i32 %41, %46
  %48 = and i32 %47, 3
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %35
  %51 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %52 = bitcast %struct.UpVal* %51 to %union.GCObject*
  %53 = bitcast %union.GCObject* %52 to %struct.GCheader*
  %54 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %53, i32 0, i32 2
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %56, 3
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  br label %59

59:                                               ; preds = %50, %35
  %60 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  store %struct.UpVal* %60, %struct.UpVal** %3, align 8
  br label %120

61:                                               ; preds = %29
  %62 = load %struct.UpVal*, %struct.UpVal** %8, align 8
  %63 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %62, i32 0, i32 0
  store %union.GCObject** %63, %union.GCObject*** %7, align 8
  br label %15, !llvm.loop !6

64:                                               ; preds = %27
  %65 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %66 = call i8* @luaM_realloc_(%struct.lua_State* noundef %65, i8* noundef null, i64 noundef 0, i64 noundef 40)
  %67 = bitcast i8* %66 to %struct.UpVal*
  store %struct.UpVal* %67, %struct.UpVal** %9, align 8
  %68 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %69 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %68, i32 0, i32 1
  store i8 10, i8* %69, align 8
  %70 = load %struct.global_State*, %struct.global_State** %6, align 8
  %71 = getelementptr inbounds %struct.global_State, %struct.global_State* %70, i32 0, i32 3
  %72 = load i8, i8* %71, align 8
  %73 = zext i8 %72 to i32
  %74 = and i32 %73, 3
  %75 = trunc i32 %74 to i8
  %76 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %77 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %76, i32 0, i32 2
  store i8 %75, i8* %77, align 1
  %78 = load %struct.lua_TValue*, %struct.lua_TValue** %5, align 8
  %79 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %80 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %79, i32 0, i32 3
  store %struct.lua_TValue* %78, %struct.lua_TValue** %80, align 8
  %81 = load %union.GCObject**, %union.GCObject*** %7, align 8
  %82 = load %union.GCObject*, %union.GCObject** %81, align 8
  %83 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %84 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %83, i32 0, i32 0
  store %union.GCObject* %82, %union.GCObject** %84, align 8
  %85 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %86 = bitcast %struct.UpVal* %85 to %union.GCObject*
  %87 = load %union.GCObject**, %union.GCObject*** %7, align 8
  store %union.GCObject* %86, %union.GCObject** %87, align 8
  %88 = load %struct.global_State*, %struct.global_State** %6, align 8
  %89 = getelementptr inbounds %struct.global_State, %struct.global_State* %88, i32 0, i32 22
  %90 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %91 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %90, i32 0, i32 4
  %92 = bitcast %union.anon* %91 to %struct.anon.0*
  %93 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %92, i32 0, i32 0
  store %struct.UpVal* %89, %struct.UpVal** %93, align 8
  %94 = load %struct.global_State*, %struct.global_State** %6, align 8
  %95 = getelementptr inbounds %struct.global_State, %struct.global_State* %94, i32 0, i32 22
  %96 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %95, i32 0, i32 4
  %97 = bitcast %union.anon* %96 to %struct.anon.0*
  %98 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %97, i32 0, i32 1
  %99 = load %struct.UpVal*, %struct.UpVal** %98, align 8
  %100 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %101 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %100, i32 0, i32 4
  %102 = bitcast %union.anon* %101 to %struct.anon.0*
  %103 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %102, i32 0, i32 1
  store %struct.UpVal* %99, %struct.UpVal** %103, align 8
  %104 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %105 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %106 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %105, i32 0, i32 4
  %107 = bitcast %union.anon* %106 to %struct.anon.0*
  %108 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %107, i32 0, i32 1
  %109 = load %struct.UpVal*, %struct.UpVal** %108, align 8
  %110 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %109, i32 0, i32 4
  %111 = bitcast %union.anon* %110 to %struct.anon.0*
  %112 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %111, i32 0, i32 0
  store %struct.UpVal* %104, %struct.UpVal** %112, align 8
  %113 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  %114 = load %struct.global_State*, %struct.global_State** %6, align 8
  %115 = getelementptr inbounds %struct.global_State, %struct.global_State* %114, i32 0, i32 22
  %116 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %115, i32 0, i32 4
  %117 = bitcast %union.anon* %116 to %struct.anon.0*
  %118 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %117, i32 0, i32 1
  store %struct.UpVal* %113, %struct.UpVal** %118, align 8
  %119 = load %struct.UpVal*, %struct.UpVal** %9, align 8
  store %struct.UpVal* %119, %struct.UpVal** %3, align 8
  br label %120

120:                                              ; preds = %64, %59
  %121 = load %struct.UpVal*, %struct.UpVal** %3, align 8
  ret %struct.UpVal* %121
}

; Function Attrs: noinline nounwind uwtable
define hidden void @luaF_freeupval(%struct.lua_State* noundef %0, %struct.UpVal* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.UpVal*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.UpVal* %1, %struct.UpVal** %4, align 8
  %5 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %6 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %5, i32 0, i32 3
  %7 = load %struct.lua_TValue*, %struct.lua_TValue** %6, align 8
  %8 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %9 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %8, i32 0, i32 4
  %10 = bitcast %union.anon* %9 to %struct.lua_TValue*
  %11 = icmp ne %struct.lua_TValue* %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  call void @unlinkupval(%struct.UpVal* noundef %13)
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %16 = load %struct.UpVal*, %struct.UpVal** %4, align 8
  %17 = bitcast %struct.UpVal* %16 to i8*
  %18 = call i8* @luaM_realloc_(%struct.lua_State* noundef %15, i8* noundef %17, i64 noundef 40, i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @unlinkupval(%struct.UpVal* noundef %0) #0 {
  %2 = alloca %struct.UpVal*, align 8
  store %struct.UpVal* %0, %struct.UpVal** %2, align 8
  %3 = load %struct.UpVal*, %struct.UpVal** %2, align 8
  %4 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %3, i32 0, i32 4
  %5 = bitcast %union.anon* %4 to %struct.anon.0*
  %6 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %5, i32 0, i32 0
  %7 = load %struct.UpVal*, %struct.UpVal** %6, align 8
  %8 = load %struct.UpVal*, %struct.UpVal** %2, align 8
  %9 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %8, i32 0, i32 4
  %10 = bitcast %union.anon* %9 to %struct.anon.0*
  %11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 1
  %12 = load %struct.UpVal*, %struct.UpVal** %11, align 8
  %13 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %12, i32 0, i32 4
  %14 = bitcast %union.anon* %13 to %struct.anon.0*
  %15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %14, i32 0, i32 0
  store %struct.UpVal* %7, %struct.UpVal** %15, align 8
  %16 = load %struct.UpVal*, %struct.UpVal** %2, align 8
  %17 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %16, i32 0, i32 4
  %18 = bitcast %union.anon* %17 to %struct.anon.0*
  %19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %18, i32 0, i32 1
  %20 = load %struct.UpVal*, %struct.UpVal** %19, align 8
  %21 = load %struct.UpVal*, %struct.UpVal** %2, align 8
  %22 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %21, i32 0, i32 4
  %23 = bitcast %union.anon* %22 to %struct.anon.0*
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %23, i32 0, i32 0
  %25 = load %struct.UpVal*, %struct.UpVal** %24, align 8
  %26 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %25, i32 0, i32 4
  %27 = bitcast %union.anon* %26 to %struct.anon.0*
  %28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %27, i32 0, i32 1
  store %struct.UpVal* %20, %struct.UpVal** %28, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden void @luaF_close(%struct.lua_State* noundef %0, %struct.lua_TValue* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.lua_TValue*, align 8
  %5 = alloca %struct.UpVal*, align 8
  %6 = alloca %struct.global_State*, align 8
  %7 = alloca %union.GCObject*, align 8
  %8 = alloca %struct.lua_TValue*, align 8
  %9 = alloca %struct.lua_TValue*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.lua_TValue* %1, %struct.lua_TValue** %4, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %12 = load %struct.global_State*, %struct.global_State** %11, align 8
  store %struct.global_State* %12, %struct.global_State** %6, align 8
  br label %13

13:                                               ; preds = %79, %2
  %14 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %14, i32 0, i32 24
  %16 = load %union.GCObject*, %union.GCObject** %15, align 8
  %17 = icmp ne %union.GCObject* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %20 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %19, i32 0, i32 24
  %21 = load %union.GCObject*, %union.GCObject** %20, align 8
  %22 = bitcast %union.GCObject* %21 to %struct.UpVal*
  store %struct.UpVal* %22, %struct.UpVal** %5, align 8
  %23 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %22, i32 0, i32 3
  %24 = load %struct.lua_TValue*, %struct.lua_TValue** %23, align 8
  %25 = load %struct.lua_TValue*, %struct.lua_TValue** %4, align 8
  %26 = icmp uge %struct.lua_TValue* %24, %25
  br label %27

27:                                               ; preds = %18, %13
  %28 = phi i1 [ false, %13 ], [ %26, %18 ]
  br i1 %28, label %29, label %80

29:                                               ; preds = %27
  %30 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %31 = bitcast %struct.UpVal* %30 to %union.GCObject*
  store %union.GCObject* %31, %union.GCObject** %7, align 8
  %32 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %33 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %32, i32 0, i32 0
  %34 = load %union.GCObject*, %union.GCObject** %33, align 8
  %35 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %36 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %35, i32 0, i32 24
  store %union.GCObject* %34, %union.GCObject** %36, align 8
  %37 = load %union.GCObject*, %union.GCObject** %7, align 8
  %38 = bitcast %union.GCObject* %37 to %struct.GCheader*
  %39 = getelementptr inbounds %struct.GCheader, %struct.GCheader* %38, i32 0, i32 2
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load %struct.global_State*, %struct.global_State** %6, align 8
  %43 = getelementptr inbounds %struct.global_State, %struct.global_State* %42, i32 0, i32 3
  %44 = load i8, i8* %43, align 8
  %45 = zext i8 %44 to i32
  %46 = xor i32 %45, 3
  %47 = and i32 %41, %46
  %48 = and i32 %47, 3
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %29
  %51 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %52 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  call void @luaF_freeupval(%struct.lua_State* noundef %51, %struct.UpVal* noundef %52)
  br label %79

53:                                               ; preds = %29
  %54 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  call void @unlinkupval(%struct.UpVal* noundef %54)
  %55 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %56 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %55, i32 0, i32 3
  %57 = load %struct.lua_TValue*, %struct.lua_TValue** %56, align 8
  store %struct.lua_TValue* %57, %struct.lua_TValue** %8, align 8
  %58 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %59 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %58, i32 0, i32 4
  %60 = bitcast %union.anon* %59 to %struct.lua_TValue*
  store %struct.lua_TValue* %60, %struct.lua_TValue** %9, align 8
  %61 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %62 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %61, i32 0, i32 0
  %63 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %64 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %63, i32 0, i32 0
  %65 = bitcast %union.Value* %62 to i8*
  %66 = bitcast %union.Value* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  %67 = load %struct.lua_TValue*, %struct.lua_TValue** %8, align 8
  %68 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.lua_TValue*, %struct.lua_TValue** %9, align 8
  %71 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %73 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %72, i32 0, i32 4
  %74 = bitcast %union.anon* %73 to %struct.lua_TValue*
  %75 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  %76 = getelementptr inbounds %struct.UpVal, %struct.UpVal* %75, i32 0, i32 3
  store %struct.lua_TValue* %74, %struct.lua_TValue** %76, align 8
  %77 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %78 = load %struct.UpVal*, %struct.UpVal** %5, align 8
  call void @luaC_linkupval(%struct.lua_State* noundef %77, %struct.UpVal* noundef %78)
  br label %79

79:                                               ; preds = %53, %50
  br label %13, !llvm.loop !7

80:                                               ; preds = %27
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare hidden void @luaC_linkupval(%struct.lua_State* noundef, %struct.UpVal* noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden %struct.Proto* @luaF_newproto(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  %3 = alloca %struct.Proto*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %4 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %5 = call i8* @luaM_realloc_(%struct.lua_State* noundef %4, i8* noundef null, i64 noundef 0, i64 noundef 120)
  %6 = bitcast i8* %5 to %struct.Proto*
  store %struct.Proto* %6, %struct.Proto** %3, align 8
  %7 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  %8 = load %struct.Proto*, %struct.Proto** %3, align 8
  %9 = bitcast %struct.Proto* %8 to %union.GCObject*
  call void @luaC_link(%struct.lua_State* noundef %7, %union.GCObject* noundef %9, i8 noundef zeroext 9)
  %10 = load %struct.Proto*, %struct.Proto** %3, align 8
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 3
  store %struct.lua_TValue* null, %struct.lua_TValue** %11, align 8
  %12 = load %struct.Proto*, %struct.Proto** %3, align 8
  %13 = getelementptr inbounds %struct.Proto, %struct.Proto* %12, i32 0, i32 11
  store i32 0, i32* %13, align 4
  %14 = load %struct.Proto*, %struct.Proto** %3, align 8
  %15 = getelementptr inbounds %struct.Proto, %struct.Proto* %14, i32 0, i32 5
  store %struct.Proto** null, %struct.Proto*** %15, align 8
  %16 = load %struct.Proto*, %struct.Proto** %3, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 14
  store i32 0, i32* %17, align 8
  %18 = load %struct.Proto*, %struct.Proto** %3, align 8
  %19 = getelementptr inbounds %struct.Proto, %struct.Proto* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.Proto*, %struct.Proto** %3, align 8
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i32 0, i32 12
  store i32 0, i32* %21, align 8
  %22 = load %struct.Proto*, %struct.Proto** %3, align 8
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i32 0, i32 13
  store i32 0, i32* %23, align 4
  %24 = load %struct.Proto*, %struct.Proto** %3, align 8
  %25 = getelementptr inbounds %struct.Proto, %struct.Proto* %24, i32 0, i32 10
  store i32 0, i32* %25, align 8
  %26 = load %struct.Proto*, %struct.Proto** %3, align 8
  %27 = getelementptr inbounds %struct.Proto, %struct.Proto* %26, i32 0, i32 19
  store i8 0, i8* %27, align 8
  %28 = load %struct.Proto*, %struct.Proto** %3, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 8
  store %union.TString** null, %union.TString*** %29, align 8
  %30 = load %struct.Proto*, %struct.Proto** %3, align 8
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 20
  store i8 0, i8* %31, align 1
  %32 = load %struct.Proto*, %struct.Proto** %3, align 8
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 21
  store i8 0, i8* %33, align 2
  %34 = load %struct.Proto*, %struct.Proto** %3, align 8
  %35 = getelementptr inbounds %struct.Proto, %struct.Proto* %34, i32 0, i32 22
  store i8 0, i8* %35, align 1
  %36 = load %struct.Proto*, %struct.Proto** %3, align 8
  %37 = getelementptr inbounds %struct.Proto, %struct.Proto* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = load %struct.Proto*, %struct.Proto** %3, align 8
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %38, i32 0, i32 15
  store i32 0, i32* %39, align 4
  %40 = load %struct.Proto*, %struct.Proto** %3, align 8
  %41 = getelementptr inbounds %struct.Proto, %struct.Proto* %40, i32 0, i32 7
  store %struct.LocVar* null, %struct.LocVar** %41, align 8
  %42 = load %struct.Proto*, %struct.Proto** %3, align 8
  %43 = getelementptr inbounds %struct.Proto, %struct.Proto* %42, i32 0, i32 16
  store i32 0, i32* %43, align 8
  %44 = load %struct.Proto*, %struct.Proto** %3, align 8
  %45 = getelementptr inbounds %struct.Proto, %struct.Proto* %44, i32 0, i32 17
  store i32 0, i32* %45, align 4
  %46 = load %struct.Proto*, %struct.Proto** %3, align 8
  %47 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i32 0, i32 9
  store %union.TString* null, %union.TString** %47, align 8
  %48 = load %struct.Proto*, %struct.Proto** %3, align 8
  ret %struct.Proto* %48
}

; Function Attrs: noinline nounwind uwtable
define hidden void @luaF_freeproto(%struct.lua_State* noundef %0, %struct.Proto* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %struct.Proto*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %struct.Proto* %1, %struct.Proto** %4, align 8
  %5 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %6 = load %struct.Proto*, %struct.Proto** %4, align 8
  %7 = getelementptr inbounds %struct.Proto, %struct.Proto* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load %struct.Proto*, %struct.Proto** %4, align 8
  %11 = getelementptr inbounds %struct.Proto, %struct.Proto* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = call i8* @luaM_realloc_(%struct.lua_State* noundef %5, i8* noundef %9, i64 noundef %14, i64 noundef 0)
  %16 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %17 = load %struct.Proto*, %struct.Proto** %4, align 8
  %18 = getelementptr inbounds %struct.Proto, %struct.Proto* %17, i32 0, i32 5
  %19 = load %struct.Proto**, %struct.Proto*** %18, align 8
  %20 = bitcast %struct.Proto** %19 to i8*
  %21 = load %struct.Proto*, %struct.Proto** %4, align 8
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i32 0, i32 14
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = call i8* @luaM_realloc_(%struct.lua_State* noundef %16, i8* noundef %20, i64 noundef %25, i64 noundef 0)
  %27 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %28 = load %struct.Proto*, %struct.Proto** %4, align 8
  %29 = getelementptr inbounds %struct.Proto, %struct.Proto* %28, i32 0, i32 3
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8
  %31 = bitcast %struct.lua_TValue* %30 to i8*
  %32 = load %struct.Proto*, %struct.Proto** %4, align 8
  %33 = getelementptr inbounds %struct.Proto, %struct.Proto* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 16
  %37 = call i8* @luaM_realloc_(%struct.lua_State* noundef %27, i8* noundef %31, i64 noundef %36, i64 noundef 0)
  %38 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %39 = load %struct.Proto*, %struct.Proto** %4, align 8
  %40 = getelementptr inbounds %struct.Proto, %struct.Proto* %39, i32 0, i32 6
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load %struct.Proto*, %struct.Proto** %4, align 8
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = call i8* @luaM_realloc_(%struct.lua_State* noundef %38, i8* noundef %42, i64 noundef %47, i64 noundef 0)
  %49 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %50 = load %struct.Proto*, %struct.Proto** %4, align 8
  %51 = getelementptr inbounds %struct.Proto, %struct.Proto* %50, i32 0, i32 7
  %52 = load %struct.LocVar*, %struct.LocVar** %51, align 8
  %53 = bitcast %struct.LocVar* %52 to i8*
  %54 = load %struct.Proto*, %struct.Proto** %4, align 8
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %54, i32 0, i32 15
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 16
  %59 = call i8* @luaM_realloc_(%struct.lua_State* noundef %49, i8* noundef %53, i64 noundef %58, i64 noundef 0)
  %60 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %61 = load %struct.Proto*, %struct.Proto** %4, align 8
  %62 = getelementptr inbounds %struct.Proto, %struct.Proto* %61, i32 0, i32 8
  %63 = load %union.TString**, %union.TString*** %62, align 8
  %64 = bitcast %union.TString** %63 to i8*
  %65 = load %struct.Proto*, %struct.Proto** %4, align 8
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 8
  %70 = call i8* @luaM_realloc_(%struct.lua_State* noundef %60, i8* noundef %64, i64 noundef %69, i64 noundef 0)
  %71 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %72 = load %struct.Proto*, %struct.Proto** %4, align 8
  %73 = bitcast %struct.Proto* %72 to i8*
  %74 = call i8* @luaM_realloc_(%struct.lua_State* noundef %71, i8* noundef %73, i64 noundef 120, i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden void @luaF_freeclosure(%struct.lua_State* noundef %0, %union.Closure* noundef %1) #0 {
  %3 = alloca %struct.lua_State*, align 8
  %4 = alloca %union.Closure*, align 8
  %5 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %3, align 8
  store %union.Closure* %1, %union.Closure** %4, align 8
  %6 = load %union.Closure*, %union.Closure** %4, align 8
  %7 = bitcast %union.Closure* %6 to %struct.CClosure*
  %8 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %7, i32 0, i32 3
  %9 = load i8, i8* %8, align 2
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %union.Closure*, %union.Closure** %4, align 8
  %14 = bitcast %union.Closure* %13 to %struct.CClosure*
  %15 = getelementptr inbounds %struct.CClosure, %struct.CClosure* %14, i32 0, i32 4
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 16, %19
  %21 = trunc i64 %20 to i32
  %22 = add nsw i32 56, %21
  br label %34

23:                                               ; preds = %2
  %24 = load %union.Closure*, %union.Closure** %4, align 8
  %25 = bitcast %union.Closure* %24 to %struct.LClosure*
  %26 = getelementptr inbounds %struct.LClosure, %struct.LClosure* %25, i32 0, i32 4
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = add nsw i32 48, %32
  br label %34

34:                                               ; preds = %23, %12
  %35 = phi i32 [ %22, %12 ], [ %33, %23 ]
  store i32 %35, i32* %5, align 4
  %36 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %37 = load %union.Closure*, %union.Closure** %4, align 8
  %38 = bitcast %union.Closure* %37 to i8*
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = call i8* @luaM_realloc_(%struct.lua_State* noundef %36, i8* noundef %38, i64 noundef %40, i64 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden i8* @luaF_getlocalname(%struct.Proto* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Proto* %0, %struct.Proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %57, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.Proto*, %struct.Proto** %5, align 8
  %12 = getelementptr inbounds %struct.Proto, %struct.Proto* %11, i32 0, i32 15
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.Proto*, %struct.Proto** %5, align 8
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i32 0, i32 7
  %18 = load %struct.LocVar*, %struct.LocVar** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %20
  %22 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %23, %24
  br label %26

26:                                               ; preds = %15, %9
  %27 = phi i1 [ false, %9 ], [ %25, %15 ]
  br i1 %27, label %28, label %60

28:                                               ; preds = %26
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.Proto*, %struct.Proto** %5, align 8
  %31 = getelementptr inbounds %struct.Proto, %struct.Proto* %30, i32 0, i32 7
  %32 = load %struct.LocVar*, %struct.LocVar** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %32, i64 %34
  %36 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %29, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.Proto*, %struct.Proto** %5, align 8
  %46 = getelementptr inbounds %struct.Proto, %struct.Proto* %45, i32 0, i32 7
  %47 = load %struct.LocVar*, %struct.LocVar** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %47, i64 %49
  %51 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %50, i32 0, i32 0
  %52 = load %union.TString*, %union.TString** %51, align 8
  %53 = getelementptr inbounds %union.TString, %union.TString* %52, i64 1
  %54 = bitcast %union.TString* %53 to i8*
  store i8* %54, i8** %4, align 8
  br label %61

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %28
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %9, !llvm.loop !8

60:                                               ; preds = %26
  store i8* null, i8** %4, align 8
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i8*, i8** %4, align 8
  ret i8* %62
}

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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
