; ModuleID = './lmem.ll'
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
define hidden i8* @luaM_growaux_(%struct.lua_State* noundef %0, i8* noundef %1, i32* nocapture noundef %2, i64 noundef %3, i32 noundef %4, i8* noundef %5) #0 {
  %7 = load i32, i32* %2, align 4
  %8 = sdiv i32 %4, 2
  %.not = icmp slt i32 %7, %8
  br i1 %.not, label %13, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %.not2 = icmp slt i32 %10, %4
  br i1 %.not2, label %12, label %11

11:                                               ; preds = %9
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* noundef %0, i8* noundef %5) #2
  br label %12

12:                                               ; preds = %11, %9
  br label %19

13:                                               ; preds = %6
  %14 = load i32, i32* %2, align 4
  %15 = shl nsw i32 %14, 1
  %16 = icmp slt i32 %14, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %13
  %.0 = phi i32 [ 4, %17 ], [ %15, %13 ]
  br label %19

19:                                               ; preds = %18, %12
  %.1 = phi i32 [ %4, %12 ], [ %.0, %18 ]
  %20 = add nsw i32 %.1, 1
  %21 = sext i32 %20 to i64
  %22 = udiv i64 -3, %3
  %.not1 = icmp ult i64 %22, %21
  br i1 %.not1, label %30, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, %3
  %27 = sext i32 %.1 to i64
  %28 = mul i64 %27, %3
  %29 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %1, i64 noundef %26, i64 noundef %28)
  br label %32

30:                                               ; preds = %19
  %31 = call i8* @luaM_toobig(%struct.lua_State* noundef %0)
  br label %32

32:                                               ; preds = %30, %23
  %33 = phi i8* [ %29, %23 ], [ %31, %30 ]
  store i32 %.1, i32* %2, align 4
  ret i8* %33
}

declare hidden void @luaG_runerror(%struct.lua_State* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define hidden i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %6 = load %struct.global_State*, %struct.global_State** %5, align 8
  %7 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 1
  %8 = load i8* (i8*, i8*, i64, i64)*, i8* (i8*, i8*, i64, i64)** %7, align 8
  %9 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* %8(i8* noundef %10, i8* noundef %1, i64 noundef %2, i64 noundef %3) #2
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %15, label %14

14:                                               ; preds = %13
  call void @luaD_throw(%struct.lua_State* noundef %0, i32 noundef 4) #2
  br label %15

15:                                               ; preds = %14, %13, %4
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 14
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %17, %2
  %19 = add i64 %18, %3
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %6, i64 0, i32 14
  store i64 %19, i64* %20, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind uwtable
define hidden noalias i8* @luaM_toobig(%struct.lua_State* noundef %0) #0 {
  call void (%struct.lua_State*, i8*, ...) @luaG_runerror(%struct.lua_State* noundef %0, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0)) #2
  ret i8* null
}

declare hidden void @luaD_throw(%struct.lua_State* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
