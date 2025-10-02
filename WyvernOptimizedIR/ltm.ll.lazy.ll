; ModuleID = './ltm.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/ltm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { %union.GCObject* }
%union.GCObject = type { %struct.lua_State }
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
%union.TString = type { %struct.anon.1 }
%struct.anon.1 = type { %union.GCObject*, i8, i8, i8, i32, i64 }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.lua_longjmp = type opaque
%struct.anon.2 = type { %union.GCObject*, i8, i8, %struct.Table*, %struct.Table*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"userdata\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"upval\00", align 1
@luaT_typenames = hidden constant [11 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)], align 16
@luaT_init.luaT_eventname = internal constant [17 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"__eq\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"__lt\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"__le\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"__concat\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue, align 8

; Function Attrs: noinline nounwind uwtable
define hidden void @luaT_init(%struct.lua_State* noundef %0) #0 {
  br label %2

2:                                                ; preds = %26, %1
  %.0 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %3 = icmp ult i32 %.0, 17
  br i1 %3, label %4, label %28

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [17 x i8*], [17 x i8*]* @luaT_init.luaT_eventname, i64 0, i64 %5
  %7 = load i8*, i8** %6, align 8
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [17 x i8*], [17 x i8*]* @luaT_init.luaT_eventname, i64 0, i64 %8
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %10) #3
  %12 = call %union.TString* @luaS_newlstr(%struct.lua_State* noundef %0, i8* noundef %7, i64 noundef %11) #4
  %13 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %14 = load %struct.global_State*, %struct.global_State** %13, align 8
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds %struct.global_State, %struct.global_State* %14, i64 0, i32 24, i64 %15
  store %union.TString* %12, %union.TString** %16, align 8
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 24, i64 %19
  %21 = bitcast %union.TString** %20 to %struct.anon.1**
  %22 = load %struct.anon.1*, %struct.anon.1** %21, align 8
  %23 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %22, i64 0, i32 2
  %24 = load i8, i8* %23, align 1
  %25 = or i8 %24, 32
  store i8 %25, i8* %23, align 1
  br label %26

26:                                               ; preds = %4
  %27 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

28:                                               ; preds = %2
  ret void
}

declare hidden %union.TString* @luaS_newlstr(%struct.lua_State* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define hidden %struct.lua_TValue* @luaT_gettm(%struct.Table* noundef %0, i32 noundef %1, %union.TString* noundef %2) #0 {
  %4 = call %struct.lua_TValue* @luaH_getstr(%struct.Table* noundef %0, %union.TString* noundef %2) #4
  %5 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %4, i64 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = shl i32 1, %1
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %0, i64 0, i32 3
  %11 = load i8, i8* %10, align 2
  %12 = trunc i32 %9 to i8
  %13 = or i8 %11, %12
  store i8 %13, i8* %10, align 2
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %8
  %.0 = phi %struct.lua_TValue* [ null, %8 ], [ %4, %14 ]
  ret %struct.lua_TValue* %.0
}

declare hidden %struct.lua_TValue* @luaH_getstr(%struct.Table* noundef, %union.TString* noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* nocapture noundef readonly %0, %struct.lua_TValue* nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %14 [
    i32 5, label %6
    i32 7, label %10
  ]

6:                                                ; preds = %3
  %7 = bitcast %struct.lua_TValue* %1 to %struct.Table**
  %8 = load %struct.Table*, %struct.Table** %7, align 8
  %9 = getelementptr inbounds %struct.Table, %struct.Table* %8, i64 0, i32 5
  br label %21

10:                                               ; preds = %3
  %11 = bitcast %struct.lua_TValue* %1 to %struct.anon.2**
  %12 = load %struct.anon.2*, %struct.anon.2** %11, align 8
  %13 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %12, i64 0, i32 3
  br label %21

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %16 = load %struct.global_State*, %struct.global_State** %15, align 8
  %17 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1, i64 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.global_State, %struct.global_State* %16, i64 0, i32 23, i64 %19
  br label %21

21:                                               ; preds = %14, %10, %6
  %.0.in = phi %struct.Table** [ %20, %14 ], [ %13, %10 ], [ %9, %6 ]
  %.0 = load %struct.Table*, %struct.Table** %.0.in, align 8
  %.not = icmp eq %struct.Table* %.0, null
  br i1 %.not, label %29, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %0, i64 0, i32 6
  %24 = load %struct.global_State*, %struct.global_State** %23, align 8
  %25 = zext i32 %2 to i64
  %26 = getelementptr inbounds %struct.global_State, %struct.global_State* %24, i64 0, i32 24, i64 %25
  %27 = load %union.TString*, %union.TString** %26, align 8
  %28 = call %struct.lua_TValue* @luaH_getstr(%struct.Table* noundef nonnull %.0, %union.TString* noundef %27) #4
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %22
  %31 = phi %struct.lua_TValue* [ %28, %22 ], [ @luaO_nilobject_, %29 ]
  ret %struct.lua_TValue* %31
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
