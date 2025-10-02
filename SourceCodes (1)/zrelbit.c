; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zrelbit.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zrelbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp = external dso_local global %struct.ref_s*, align 8
@zrelbit_op_init.my_defs = internal global [14 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zand }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zbitshift }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zeq }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zge }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zgt }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zle }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zlt }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zmax }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zmin }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zne }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @znot }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zor }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.ref_s*)* @zxor }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"2and\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"2bitshift\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"2eq\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"2ge\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2gt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"2le\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"2lt\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"2max\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"2min\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"2ne\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"1not\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"2or\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"2xor\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zeq(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %6, %struct.ref_s** %4, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 255
  %12 = ashr i32 %11, 2
  switch i32 %12, label %34 [
    i32 13, label %13
    i32 0, label %13
    i32 10, label %13
    i32 2, label %23
  ]

13:                                               ; preds = %1, %1, %1
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = xor i32 %17, -1
  %19 = and i32 %18, 512
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 -7, i32* %2, align 4
  br label %77

22:                                               ; preds = %13
  br label %34

23:                                               ; preds = %1
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %24)
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = xor i32 %28, -1
  %30 = and i32 %29, 512
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 -7, i32* %2, align 4
  br label %77

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %1, %22
  %35 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  %37 = load i16, i16* %36, align 8
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 255
  %40 = ashr i32 %39, 2
  switch i32 %40, label %62 [
    i32 13, label %41
    i32 0, label %41
    i32 10, label %41
    i32 2, label %51
  ]

41:                                               ; preds = %34, %34, %34
  %42 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 8
  %45 = zext i16 %44 to i32
  %46 = xor i32 %45, -1
  %47 = and i32 %46, 512
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -7, i32* %2, align 4
  br label %77

50:                                               ; preds = %41
  br label %62

51:                                               ; preds = %34
  %52 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %53 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %52)
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 1
  %55 = load i16, i16* %54, align 8
  %56 = zext i16 %55 to i32
  %57 = xor i32 %56, -1
  %58 = and i32 %57, 512
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 -7, i32* %2, align 4
  br label %77

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %34, %50
  %63 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %64 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %65 = call i32 (%struct.ref_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @obj_eq to i32 (%struct.ref_s*, %struct.ref_s*, ...)*)(%struct.ref_s* noundef %63, %struct.ref_s* noundef %64)
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = trunc i32 %68 to i16
  %70 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %72 = bitcast %union.v* %71 to i16*
  store i16 %69, i16* %72, align 8
  %73 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 1
  store i16 4, i16* %74, align 8
  %75 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %75, i64 -1
  store %struct.ref_s* %76, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %62, %60, %49, %32, %21
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef) #1

declare dso_local i32 @obj_eq(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zne(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %5 = call i32 @zeq(%struct.ref_s* noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 0
  %12 = bitcast %union.v* %11 to i16*
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = xor i32 %14, 1
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %12, align 8
  br label %17

17:                                               ; preds = %8, %1
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zge(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = call i32 @obj_compare(%struct.ref_s* noundef %5, i32 noundef 6)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = trunc i32 %12 to i16
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %17 = bitcast %union.v* %16 to i16*
  store i16 %13, i16* %17, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  store i16 4, i16* %20, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgt(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = call i32 @obj_compare(%struct.ref_s* noundef %5, i32 noundef 4)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = trunc i32 %12 to i16
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %17 = bitcast %union.v* %16 to i16*
  store i16 %13, i16* %17, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  store i16 4, i16* %20, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zle(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = call i32 @obj_compare(%struct.ref_s* noundef %5, i32 noundef 3)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = trunc i32 %12 to i16
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %17 = bitcast %union.v* %16 to i16*
  store i16 %13, i16* %17, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  store i16 4, i16* %20, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zlt(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = call i32 @obj_compare(%struct.ref_s* noundef %5, i32 noundef 1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = trunc i32 %12 to i16
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %17 = bitcast %union.v* %16 to i16*
  store i16 %13, i16* %17, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  store i16 4, i16* %20, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmax(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = call i32 @obj_compare(%struct.ref_s* noundef %5, i32 noundef 1)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0
  %19 = bitcast %struct.ref_s* %16 to i8*
  %20 = bitcast %struct.ref_s* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  br label %21

21:                                               ; preds = %14, %11
  %22 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  store %struct.ref_s* %23, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmin(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = call i32 @obj_compare(%struct.ref_s* noundef %5, i32 noundef 4)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0
  %19 = bitcast %struct.ref_s* %16 to i8*
  %20 = bitcast %struct.ref_s* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  br label %21

21:                                               ; preds = %14, %11
  %22 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  store %struct.ref_s* %23, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zand(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 255
  %15 = ashr i32 %14, 2
  %16 = shl i32 %15, 2
  %17 = icmp eq i32 %9, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 255
  %25 = ashr i32 %24, 2
  switch i32 %25, label %51 [
    i32 1, label %26
    i32 5, label %40
  ]

26:                                               ; preds = %19
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to i16*
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to i16*
  %36 = load i16, i16* %35, align 8
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, %31
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %35, align 8
  br label %52

40:                                               ; preds = %19
  %41 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %43 = bitcast %union.v* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %48 = bitcast %union.v* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, %44
  store i64 %50, i64* %48, align 8
  br label %52

51:                                               ; preds = %19
  store i32 -20, i32* %2, align 4
  br label %55

52:                                               ; preds = %40, %26
  %53 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  store %struct.ref_s* %54, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %51, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @znot(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 255
  %9 = ashr i32 %8, 2
  switch i32 %9, label %31 [
    i32 1, label %10
    i32 5, label %22
  ]

10:                                               ; preds = %1
  %11 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %13 = bitcast %union.v* %12 to i16*
  %14 = load i16, i16* %13, align 8
  %15 = icmp ne i16 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = trunc i32 %17 to i16
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %21 = bitcast %union.v* %20 to i16*
  store i16 %18, i16* %21, align 8
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %25 = bitcast %union.v* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = xor i64 %26, -1
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to i64*
  store i64 %27, i64* %30, align 8
  br label %32

31:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %33

32:                                               ; preds = %22, %10
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 255
  %15 = ashr i32 %14, 2
  %16 = shl i32 %15, 2
  %17 = icmp eq i32 %9, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 255
  %25 = ashr i32 %24, 2
  switch i32 %25, label %51 [
    i32 1, label %26
    i32 5, label %40
  ]

26:                                               ; preds = %19
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to i16*
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to i16*
  %36 = load i16, i16* %35, align 8
  %37 = zext i16 %36 to i32
  %38 = or i32 %37, %31
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %35, align 8
  br label %52

40:                                               ; preds = %19
  %41 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %43 = bitcast %union.v* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %48 = bitcast %union.v* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %44
  store i64 %50, i64* %48, align 8
  br label %52

51:                                               ; preds = %19
  store i32 -20, i32* %2, align 4
  br label %55

52:                                               ; preds = %40, %26
  %53 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  store %struct.ref_s* %54, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %51, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zxor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 255
  %15 = ashr i32 %14, 2
  %16 = shl i32 %15, 2
  %17 = icmp eq i32 %9, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %55

19:                                               ; preds = %1
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 255
  %25 = ashr i32 %24, 2
  switch i32 %25, label %51 [
    i32 1, label %26
    i32 5, label %40
  ]

26:                                               ; preds = %19
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to i16*
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to i16*
  %36 = load i16, i16* %35, align 8
  %37 = zext i16 %36 to i32
  %38 = xor i32 %37, %31
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %35, align 8
  br label %52

40:                                               ; preds = %19
  %41 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %43 = bitcast %union.v* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %48 = bitcast %union.v* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = xor i64 %49, %44
  store i64 %50, i64* %48, align 8
  br label %52

51:                                               ; preds = %19
  store i32 -20, i32* %2, align 4
  br label %55

52:                                               ; preds = %40, %26
  %53 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  store %struct.ref_s* %54, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %51, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zbitshift(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 252
  %11 = icmp eq i32 %10, 20
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 252
  %19 = icmp eq i32 %18, 20
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 -20, i32* %2, align 4
  br label %72

21:                                               ; preds = %13
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, -31
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27, %21
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %37 = bitcast %union.v* %36 to i64*
  store i64 0, i64* %37, align 8
  br label %69

38:                                               ; preds = %27
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %41 = bitcast %union.v* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 -1
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %49 = bitcast %union.v* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 0, %51
  %53 = zext i32 %52 to i64
  %54 = lshr i64 %50, %53
  %55 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -1
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %58 = bitcast %union.v* %57 to i64*
  store i64 %54, i64* %58, align 8
  br label %68

59:                                               ; preds = %38
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 -1
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %64 = bitcast %union.v* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = zext i32 %60 to i64
  %67 = shl i64 %65, %66
  store i64 %67, i64* %64, align 8
  br label %68

68:                                               ; preds = %59, %45
  br label %69

69:                                               ; preds = %68, %33
  %70 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 -1
  store %struct.ref_s* %71, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %20, %12
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zrelbit_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([14 x %struct.op_def], [14 x %struct.op_def]* @zrelbit_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @obj_compare(%struct.ref_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 255
  %14 = ashr i32 %13, 2
  switch i32 %14, label %144 [
    i32 5, label %15
    i32 11, label %67
    i32 13, label %92
  ]

15:                                               ; preds = %2
  %16 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 255
  %21 = ashr i32 %20, 2
  switch i32 %21, label %65 [
    i32 5, label %22
    i32 11, label %54
  ]

22:                                               ; preds = %15
  %23 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %26 = bitcast %union.v* %25 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = ashr i32 %34, 2
  store i32 %35, i32* %5, align 4
  br label %51

36:                                               ; preds = %22
  %37 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %40 = bitcast %union.v* %39 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %44 = bitcast %union.v* %43 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %5, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %36
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %163

54:                                               ; preds = %15
  %55 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -1
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %58 = bitcast %union.v* %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = sitofp i64 %59 to float
  store float %60, float* %6, align 4
  %61 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i32 0, i32 0
  %63 = bitcast %union.v* %62 to float*
  %64 = load float, float* %63, align 8
  store float %64, float* %7, align 4
  br label %66

65:                                               ; preds = %15
  store i32 -20, i32* %3, align 4
  br label %163

66:                                               ; preds = %54
  br label %145

67:                                               ; preds = %2
  %68 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -1
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 0
  %71 = bitcast %union.v* %70 to float*
  %72 = load float, float* %71, align 8
  store float %72, float* %6, align 4
  %73 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 1
  %75 = load i16, i16* %74, align 8
  %76 = zext i16 %75 to i32
  %77 = and i32 %76, 255
  %78 = ashr i32 %77, 2
  switch i32 %78, label %90 [
    i32 5, label %79
    i32 11, label %85
  ]

79:                                               ; preds = %67
  %80 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 0
  %82 = bitcast %union.v* %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = sitofp i64 %83 to float
  store float %84, float* %7, align 4
  br label %91

85:                                               ; preds = %67
  %86 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 0
  %88 = bitcast %union.v* %87 to float*
  %89 = load float, float* %88, align 8
  store float %89, float* %7, align 4
  br label %91

90:                                               ; preds = %67
  store i32 -20, i32* %3, align 4
  br label %163

91:                                               ; preds = %85, %79
  br label %145

92:                                               ; preds = %2
  %93 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i64 -1
  %95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i32 0, i32 1
  %96 = load i16, i16* %95, align 8
  %97 = zext i16 %96 to i32
  %98 = xor i32 %97, -1
  %99 = and i32 %98, 512
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 -7, i32* %3, align 4
  br label %163

102:                                              ; preds = %92
  %103 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i32 0, i32 1
  %105 = load i16, i16* %104, align 8
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 252
  %108 = icmp eq i32 %107, 52
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  store i32 -20, i32* %3, align 4
  br label %163

110:                                              ; preds = %102
  %111 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 1
  %113 = load i16, i16* %112, align 8
  %114 = zext i16 %113 to i32
  %115 = xor i32 %114, -1
  %116 = and i32 %115, 512
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i32 -7, i32* %3, align 4
  br label %163

119:                                              ; preds = %110
  %120 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i64 -1
  %122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i32 0, i32 0
  %123 = bitcast %union.v* %122 to i8**
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %126 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %125, i64 -1
  %127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %126, i32 0, i32 2
  %128 = load i16, i16* %127, align 2
  %129 = zext i16 %128 to i32
  %130 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i32 0, i32 0
  %132 = bitcast %union.v* %131 to i8**
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %134, i32 0, i32 2
  %136 = load i16, i16* %135, align 2
  %137 = zext i16 %136 to i32
  %138 = call i32 (i8*, i32, i8*, i32, ...) bitcast (i32 (...)* @bytes_compare to i32 (i8*, i32, i8*, i32, ...)*)(i8* noundef %124, i32 noundef %129, i8* noundef %133, i32 noundef %137)
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* %5, align 4
  %141 = ashr i32 %140, %139
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = and i32 %142, 1
  store i32 %143, i32* %3, align 4
  br label %163

144:                                              ; preds = %2
  store i32 -20, i32* %3, align 4
  br label %163

145:                                              ; preds = %91, %66
  %146 = load float, float* %6, align 4
  %147 = load float, float* %7, align 4
  %148 = fcmp ogt float %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32, i32* %5, align 4
  %151 = ashr i32 %150, 2
  store i32 %151, i32* %5, align 4
  br label %160

152:                                              ; preds = %145
  %153 = load float, float* %6, align 4
  %154 = load float, float* %7, align 4
  %155 = fcmp oeq float %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* %5, align 4
  %158 = ashr i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %156, %152
  br label %160

160:                                              ; preds = %159, %149
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, 1
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %160, %144, %119, %118, %109, %101, %90, %65, %51
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @bytes_compare(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
