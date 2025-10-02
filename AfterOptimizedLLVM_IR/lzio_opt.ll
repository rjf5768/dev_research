; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/lua/lzio.c'
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
define hidden i32 @luaZ_fill(%struct.Zio* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Zio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca i8*, align 8
  store %struct.Zio* %0, %struct.Zio** %3, align 8
  %7 = load %struct.Zio*, %struct.Zio** %3, align 8
  %8 = getelementptr inbounds %struct.Zio, %struct.Zio* %7, i32 0, i32 4
  %9 = load %struct.lua_State*, %struct.lua_State** %8, align 8
  store %struct.lua_State* %9, %struct.lua_State** %5, align 8
  %10 = load %struct.Zio*, %struct.Zio** %3, align 8
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %10, i32 0, i32 2
  %12 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %11, align 8
  %13 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %14 = load %struct.Zio*, %struct.Zio** %3, align 8
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* %12(%struct.lua_State* noundef %13, i8* noundef %16, i64* noundef %4)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %1
  store i32 -1, i32* %2, align 4
  br label %38

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = sub i64 %25, 1
  %27 = load %struct.Zio*, %struct.Zio** %3, align 8
  %28 = getelementptr inbounds %struct.Zio, %struct.Zio* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.Zio*, %struct.Zio** %3, align 8
  %31 = getelementptr inbounds %struct.Zio, %struct.Zio* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.Zio*, %struct.Zio** %3, align 8
  %33 = getelementptr inbounds %struct.Zio, %struct.Zio* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %24, %23
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define hidden i32 @luaZ_lookahead(%struct.Zio* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Zio*, align 8
  store %struct.Zio* %0, %struct.Zio** %3, align 8
  %4 = load %struct.Zio*, %struct.Zio** %3, align 8
  %5 = getelementptr inbounds %struct.Zio, %struct.Zio* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.Zio*, %struct.Zio** %3, align 8
  %10 = call i32 @luaZ_fill(%struct.Zio* noundef %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %29

13:                                               ; preds = %8
  %14 = load %struct.Zio*, %struct.Zio** %3, align 8
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.Zio*, %struct.Zio** %3, align 8
  %19 = getelementptr inbounds %struct.Zio, %struct.Zio* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 -1
  store i8* %21, i8** %19, align 8
  br label %22

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.Zio*, %struct.Zio** %3, align 8
  %25 = getelementptr inbounds %struct.Zio, %struct.Zio* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define hidden void @luaZ_init(%struct.lua_State* noundef %0, %struct.Zio* noundef %1, i8* (%struct.lua_State*, i8*, i64*)* noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.lua_State*, align 8
  %6 = alloca %struct.Zio*, align 8
  %7 = alloca i8* (%struct.lua_State*, i8*, i64*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.lua_State* %0, %struct.lua_State** %5, align 8
  store %struct.Zio* %1, %struct.Zio** %6, align 8
  store i8* (%struct.lua_State*, i8*, i64*)* %2, i8* (%struct.lua_State*, i8*, i64*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.lua_State*, %struct.lua_State** %5, align 8
  %10 = load %struct.Zio*, %struct.Zio** %6, align 8
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %10, i32 0, i32 4
  store %struct.lua_State* %9, %struct.lua_State** %11, align 8
  %12 = load i8* (%struct.lua_State*, i8*, i64*)*, i8* (%struct.lua_State*, i8*, i64*)** %7, align 8
  %13 = load %struct.Zio*, %struct.Zio** %6, align 8
  %14 = getelementptr inbounds %struct.Zio, %struct.Zio* %13, i32 0, i32 2
  store i8* (%struct.lua_State*, i8*, i64*)* %12, i8* (%struct.lua_State*, i8*, i64*)** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.Zio*, %struct.Zio** %6, align 8
  %17 = getelementptr inbounds %struct.Zio, %struct.Zio* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.Zio*, %struct.Zio** %6, align 8
  %19 = getelementptr inbounds %struct.Zio, %struct.Zio* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.Zio*, %struct.Zio** %6, align 8
  %21 = getelementptr inbounds %struct.Zio, %struct.Zio* %20, i32 0, i32 1
  store i8* null, i8** %21, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define hidden i64 @luaZ_read(%struct.Zio* noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.Zio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.Zio* %0, %struct.Zio** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %9
  %13 = load %struct.Zio*, %struct.Zio** %5, align 8
  %14 = call i32 @luaZ_lookahead(%struct.Zio* noundef %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* %7, align 8
  store i64 %17, i64* %4, align 8
  br label %54

18:                                               ; preds = %12
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.Zio*, %struct.Zio** %5, align 8
  %21 = getelementptr inbounds %struct.Zio, %struct.Zio* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ule i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  br label %30

26:                                               ; preds = %18
  %27 = load %struct.Zio*, %struct.Zio** %5, align 8
  %28 = getelementptr inbounds %struct.Zio, %struct.Zio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i64 [ %25, %24 ], [ %29, %26 ]
  store i64 %31, i64* %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.Zio*, %struct.Zio** %5, align 8
  %34 = getelementptr inbounds %struct.Zio, %struct.Zio* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %35, i64 %36, i1 false)
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.Zio*, %struct.Zio** %5, align 8
  %39 = getelementptr inbounds %struct.Zio, %struct.Zio* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.Zio*, %struct.Zio** %5, align 8
  %44 = getelementptr inbounds %struct.Zio, %struct.Zio* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %42
  store i8* %46, i8** %44, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %9, !llvm.loop !4

53:                                               ; preds = %9
  store i64 0, i64* %4, align 8
  br label %54

54:                                               ; preds = %53, %16
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define hidden i8* @luaZ_openspace(%struct.lua_State* noundef %0, %struct.Mbuffer* noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.lua_State*, align 8
  %5 = alloca %struct.Mbuffer*, align 8
  %6 = alloca i64, align 8
  store %struct.lua_State* %0, %struct.lua_State** %4, align 8
  store %struct.Mbuffer* %1, %struct.Mbuffer** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %9 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ugt i64 %7, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %13, 32
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i64 32, i64* %6, align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, 1
  %19 = icmp ule i64 %18, -3
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %22 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %23 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %26 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = mul i64 %27, 1
  %29 = load i64, i64* %6, align 8
  %30 = mul i64 %29, 1
  %31 = call i8* @luaM_realloc_(%struct.lua_State* noundef %21, i8* noundef %24, i64 noundef %28, i64 noundef %30)
  br label %35

32:                                               ; preds = %16
  %33 = load %struct.lua_State*, %struct.lua_State** %4, align 8
  %34 = call i8* @luaM_toobig(%struct.lua_State* noundef %33)
  br label %35

35:                                               ; preds = %32, %20
  %36 = phi i8* [ %31, %20 ], [ %34, %32 ]
  %37 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %38 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %41 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %3
  %43 = load %struct.Mbuffer*, %struct.Mbuffer** %5, align 8
  %44 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  ret i8* %45
}

declare hidden i8* @luaM_realloc_(%struct.lua_State* noundef, i8* noundef, i64 noundef, i64 noundef) #2

declare hidden i8* @luaM_toobig(%struct.lua_State* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
