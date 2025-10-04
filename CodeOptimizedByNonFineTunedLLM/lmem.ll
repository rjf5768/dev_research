; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/lmem.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/lmem.c"
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

@.str = private unnamed_addr constant [39 x i8] c"memory allocation error: block too big\00", align 1

; Function Attrs: noinline nounwind uwtable
define hidden i8* @luaM_growaux_(%struct.lua_State* noundef %0, i8* noundef %1, i32* noundef %2, i64 noundef %3, i32 noundef %4, i8* noundef %5) #0 {
  %7 = alloca %struct.lua_State*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.lua_State* %0, %struct.lua_State** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sdiv i32 %17, 2
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %6
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %27 = load i8*, i8** %12, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* noundef %26, i8* noundef %27)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %14, align 4
  br label %38

30:                                               ; preds = %6
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 2
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 4, i32* %14, align 4
  br label %37

37:                                               ; preds = %36, %30
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %10, align 8
  %43 = udiv i64 -3, %42
  %44 = icmp ule i64 %41, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %10, align 8
  %52 = mul i64 %50, %51
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = mul i64 %54, %55
  %57 = call i8* @luaM_realloc_(%struct.lua_State* noundef %46, i8* noundef %47, i64 noundef %52, i64 noundef %56)
  br label %61

58:                                               ; preds = %38
  %59 = load %struct.lua_State*, %struct.lua_State** %7, align 8
  %60 = call i8* @luaM_toobig(%struct.lua_State* noundef %59)
  br label %61

61:                                               ; preds = %58, %45
  %62 = phi i8* [ %57, %45 ], [ %60, %58 ]
  store i8* %62, i8** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i8*, i8** %13, align 8
  ret i8* %65
}

declare hidden void @luaG_runerror(%struct.lua_State* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define hidden i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.global_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %11 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %10, i32 0, i32 6
  %12 = load %struct.global_State*, %struct.global_State** %11, align 8
  store %struct.global_State* %12, %struct.global_State** %9, align 8
  %13 = load %struct.global_State*, %struct.global_State** %9, align 8
  %14 = getelementptr inbounds %struct.global_State, %struct.global_State* %13, i32 0, i32 1
  %15 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %14, align 8
  %16 = load %struct.global_State*, %struct.global_State** %9, align 8
  %17 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i8* %15(i8* noundef %18, i8* noundef %19, i64 noundef %20, i64 noundef %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  call void @luaD_throw(%struct.lua_State* noundef %29, i32 noundef 4)
  br label %30

30:                                               ; preds = %28, %25, %4
  %31 = load %struct.global_State*, %struct.global_State** %9, align 8
  %32 = getelementptr inbounds %struct.global_State, %struct.global_State* %31, i32 0, i32 14
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %33, %34
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %35, %36
  %38 = load %struct.global_State*, %struct.global_State** %9, align 8
  %39 = getelementptr inbounds %struct.global_State, %struct.global_State* %38, i32 0, i32 14
  store i64 %37, i64* %39, align 8
  %40 = load i8*, i8** %6, align 8
  ret i8* %40
}

; Function Attrs: noinline nounwind uwtable
define hidden i8* @luaM_toobig(%struct.lua_State* noundef %0) #0 {
  %2 = alloca %struct.lua_State*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %2, align 8
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* noundef %3, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  ret i8* null
}

declare hidden void @luaD_throw(%struct.lua_State* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
