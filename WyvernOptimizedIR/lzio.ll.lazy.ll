; ModuleID = './lzio.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/lua/lzio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
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

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaZ_fill(%struct.Zio* nocapture noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 4
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8
  %5 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 2
  %6 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %5, align 8
  %7 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 3
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* %6(%struct.lua_State* noundef %4, i8* noundef %8, i64* noundef nonnull %2) #4
  %10 = icmp eq i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %1
  br label %23

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = add i64 %16, -1
  %18 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1
  %20 = getelementptr inbounds i8, i8* %9, i64 1
  store i8* %20, i8** %19, align 8
  %21 = load i8, i8* %9, align 1
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %15, %14
  %.0 = phi i32 [ -1, %14 ], [ %22, %15 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaZ_lookahead(%struct.Zio* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = call i32 @luaZ_fill(%struct.Zio* noundef %0)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %22

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8* %15, i8** %13, align 8
  br label %16

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %17, %8
  %.0 = phi i32 [ -1, %8 ], [ %21, %17 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define hidden void @luaZ_init(%struct.lua_State* noundef %0, %struct.Zio* nocapture noundef writeonly %1, i8* (%struct.lua_State*, i8*, i64*)* noundef %2, i8* noundef %3) #1 {
  %5 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 4
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  %6 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 2
  store i8* (%struct.lua_State*, i8*, i64*)* %2, i8* (%struct.lua_State*, i8*, i64*)** %6, align 8
  %7 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 3
  store i8* %3, i8** %7, align 8
  %8 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.Zio, %struct.Zio* %1, i64 0, i32 1
  store i8* null, i8** %9, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden i64 @luaZ_read(%struct.Zio* nocapture noundef %0, i8* nocapture noundef writeonly %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %16, %3
  %.02 = phi i8* [ %1, %3 ], [ %26, %16 ]
  %.01 = phi i64 [ %2, %3 ], [ %27, %16 ]
  %.not = icmp eq i64 %.01, 0
  br i1 %.not, label %28, label %5

5:                                                ; preds = %4
  %6 = call i32 @luaZ_lookahead(%struct.Zio* noundef %0)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %29

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %.not4 = icmp ugt i64 %.01, %11
  br i1 %.not4, label %13, label %12

12:                                               ; preds = %9
  br label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0
  %15 = load i64, i64* %14, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = phi i64 [ %.01, %12 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1
  %19 = load i8*, i8** %18, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %.02, i8* align 1 %19, i64 %17, i1 false)
  %20 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, %17
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds %struct.Zio, %struct.Zio* %0, i64 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %17
  store i8* %25, i8** %23, align 8
  %26 = getelementptr inbounds i8, i8* %.02, i64 %17
  %27 = sub i64 %.01, %17
  br label %4, !llvm.loop !4

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %8
  %.0 = phi i64 [ %.01, %8 ], [ 0, %28 ]
  ret i64 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define hidden i8* @luaZ_openspace(%struct.lua_State* noundef %0, %struct.Mbuffer* nocapture noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i64 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ult i64 %5, %2
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = icmp ult i64 %2, 32
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %7
  %.0 = phi i64 [ 32, %9 ], [ %2, %7 ]
  %11 = add i64 %.0, 1
  %12 = icmp ult i64 %11, -2
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i64 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i8* @luaM_realloc_(%struct.lua_State* noundef %0, i8* noundef %15, i64 noundef %17, i64 noundef %.0) #4
  br label %21

19:                                               ; preds = %10
  %20 = call i8* @luaM_toobig(%struct.lua_State* noundef %0) #4
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi i8* [ %18, %13 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i64 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i64 0, i32 2
  store i64 %.0, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %3
  %26 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  ret i8* %27
}

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #3

declare hidden i8* @luaM_toobig(%struct.lua_State* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
