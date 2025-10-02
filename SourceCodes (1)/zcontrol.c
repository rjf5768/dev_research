; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zcontrol.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp_nargs = external dso_local global [6 x %struct.ref_s*], align 16
@esp = external dso_local global %struct.ref_s*, align 8
@estop = external dso_local global %struct.ref_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@estack = external dso_local global [0 x %struct.ref_s], align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@zcontrol_op_init.my_defs = internal global [13 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zcountexecstack }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zexec }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zexecstack }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zexit }, %struct.op_def { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zif }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zifelse }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zfor }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zloop }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zquit }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zrepeat }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zstop }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zstopped }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"0countexecstack\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"1exec\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"0execstack\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0exit\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2if\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"3ifelse\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"4for\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"1loop\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"0quit\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"2repeat\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"0stop\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"1stopped\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zexec(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %6 = icmp ult %struct.ref_s* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 1
  %11 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %12 = icmp ugt %struct.ref_s* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 -5, i32* %2, align 4
  br label %23

14:                                               ; preds = %8
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 1
  store %struct.ref_s* %16, %struct.ref_s** @esp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = bitcast %struct.ref_s* %17 to i8*
  %20 = bitcast %struct.ref_s* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %14, %13, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zif(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to i16*
  %17 = load i16, i16* %16, align 8
  %18 = icmp ne i16 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 1
  %22 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %23 = icmp ugt %struct.ref_s* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -5, i32* %2, align 4
  br label %35

25:                                               ; preds = %19
  %26 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 1
  store %struct.ref_s* %27, %struct.ref_s** @esp, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = bitcast %struct.ref_s* %28 to i8*
  %31 = bitcast %struct.ref_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  br label %32

32:                                               ; preds = %25, %12
  %33 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -2
  store %struct.ref_s* %34, %struct.ref_s** @osp, align 8
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %24, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zifelse(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -2
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 1
  %15 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %16 = icmp ugt %struct.ref_s* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -5, i32* %2, align 4
  br label %42

18:                                               ; preds = %12
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 1
  store %struct.ref_s* %20, %struct.ref_s** @esp, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to i16*
  %25 = load i16, i16* %24, align 8
  %26 = icmp ne i16 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 0
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %32 = bitcast %struct.ref_s* %29 to i8*
  %33 = bitcast %struct.ref_s* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  br label %39

34:                                               ; preds = %18
  %35 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %37 = bitcast %struct.ref_s* %35 to i8*
  %38 = bitcast %struct.ref_s* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -3
  store %struct.ref_s* %41, %struct.ref_s** @osp, align 8
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %17, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zfor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %7 = call i32 @num_params(%struct.ref_s* noundef %6, i32 noundef 3, float* noundef null)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %115

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 7
  %15 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %16 = icmp ugt %struct.ref_s* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -5, i32* %2, align 4
  br label %115

18:                                               ; preds = %12
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 1
  store %struct.ref_s* %20, %struct.ref_s** @esp, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to i16*
  store i16 2, i16* %23, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  store i16 33, i16* %25, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 1
  store %struct.ref_s* %27, %struct.ref_s** @esp, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -3
  %30 = bitcast %struct.ref_s* %27 to i8*
  %31 = bitcast %struct.ref_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 1
  store %struct.ref_s* %33, %struct.ref_s** @esp, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -2
  %36 = bitcast %struct.ref_s* %33 to i8*
  %37 = bitcast %struct.ref_s* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 1
  store %struct.ref_s* %39, %struct.ref_s** @esp, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -1
  %42 = bitcast %struct.ref_s* %39 to i8*
  %43 = bitcast %struct.ref_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 1
  store %struct.ref_s* %45, %struct.ref_s** @esp, align 8
  %46 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %47 = bitcast %struct.ref_s* %45 to i8*
  %48 = bitcast %struct.ref_s* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -4
  store %struct.ref_s* %50, %struct.ref_s** @osp, align 8
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 -4
  store %struct.ref_s* %52, %struct.ref_s** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 7
  br i1 %54, label %55, label %58

55:                                               ; preds = %18
  %56 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %57 = call i32 @for_int_continue(%struct.ref_s* noundef %56)
  store i32 %57, i32* %2, align 4
  br label %115

58:                                               ; preds = %18
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 -3
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %66 = bitcast %union.v* %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = sitofp i64 %67 to float
  %69 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -3
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 0
  %72 = bitcast %union.v* %71 to float*
  store float %68, float* %72, align 8
  %73 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i64 -3
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i32 0, i32 1
  store i16 44, i16* %75, align 8
  br label %76

76:                                               ; preds = %62, %58
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 -2
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 0, i32 0
  %84 = bitcast %union.v* %83 to i64*
  %85 = load i64, i64* %84, align 8
  %86 = sitofp i64 %85 to float
  %87 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i64 -2
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 0
  %90 = bitcast %union.v* %89 to float*
  store float %86, float* %90, align 8
  %91 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 -2
  %93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 1
  store i16 44, i16* %93, align 8
  br label %94

94:                                               ; preds = %80, %76
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i64 -1
  %101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i32 0, i32 0
  %102 = bitcast %union.v* %101 to i64*
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to float
  %105 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i64 -1
  %107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 0
  %108 = bitcast %union.v* %107 to float*
  store float %104, float* %108, align 8
  %109 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i64 -1
  %111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i32 0, i32 1
  store i16 44, i16* %111, align 8
  br label %112

112:                                              ; preds = %98, %94
  %113 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %114 = call i32 @for_real_continue(%struct.ref_s* noundef %113)
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %112, %55, %17, %10
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @for_int_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %10 = bitcast %union.v* %9 to i64*
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to i64*
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %20, %25
  br i1 %26, label %35, label %38

27:                                               ; preds = %1
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %32 = bitcast %union.v* %31 to i64*
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %28, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %19
  %36 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -5
  store %struct.ref_s* %37, %struct.ref_s** @esp, align 8
  store i32 1, i32* %2, align 4
  br label %75

38:                                               ; preds = %27, %19
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 1
  store %struct.ref_s* %40, %struct.ref_s** %3, align 8
  store %struct.ref_s* %40, %struct.ref_s** @osp, align 8
  %41 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %42 = icmp ugt %struct.ref_s* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -1
  store %struct.ref_s* %45, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %75

46:                                               ; preds = %38
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -3
  %50 = bitcast %struct.ref_s* %47 to i8*
  %51 = bitcast %struct.ref_s* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %52, %53
  %55 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -3
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %58 = bitcast %union.v* %57 to i64*
  store i64 %54, i64* %58, align 8
  %59 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %60 = bitcast %struct.ref_s* %4 to i8*
  %61 = bitcast %struct.ref_s* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 1
  store %struct.ref_s* %63, %struct.ref_s** @esp, align 8
  %64 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %66 = bitcast %union.v* %65 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @for_int_continue, i32 (%struct.ref_s*)** %66, align 8
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 1
  store i16 37, i16* %68, align 8
  %69 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 2
  store i16 0, i16* %70, align 2
  %71 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 1
  store %struct.ref_s* %72, %struct.ref_s** @esp, align 8
  %73 = bitcast %struct.ref_s* %72 to i8*
  %74 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  store i32 1, i32* %2, align 4
  br label %75

75:                                               ; preds = %46, %43, %35
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @for_real_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %10 = bitcast %union.v* %9 to float*
  %11 = load float, float* %10, align 8
  store float %11, float* %5, align 4
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to float*
  %16 = load float, float* %15, align 8
  store float %16, float* %6, align 4
  %17 = load float, float* %6, align 4
  %18 = fcmp oge float %17, 0.000000e+00
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load float, float* %5, align 4
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 0
  %24 = bitcast %union.v* %23 to float*
  %25 = load float, float* %24, align 8
  %26 = fcmp ogt float %20, %25
  br i1 %26, label %35, label %38

27:                                               ; preds = %1
  %28 = load float, float* %5, align 4
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %32 = bitcast %union.v* %31 to float*
  %33 = load float, float* %32, align 8
  %34 = fcmp olt float %28, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %19
  %36 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -5
  store %struct.ref_s* %37, %struct.ref_s** @esp, align 8
  store i32 1, i32* %2, align 4
  br label %75

38:                                               ; preds = %27, %19
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 1
  store %struct.ref_s* %40, %struct.ref_s** %3, align 8
  store %struct.ref_s* %40, %struct.ref_s** @osp, align 8
  %41 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %42 = icmp ugt %struct.ref_s* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -1
  store %struct.ref_s* %45, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %75

46:                                               ; preds = %38
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -3
  %50 = bitcast %struct.ref_s* %47 to i8*
  %51 = bitcast %struct.ref_s* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = load float, float* %5, align 4
  %53 = load float, float* %6, align 4
  %54 = fadd float %52, %53
  %55 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -3
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 0
  %58 = bitcast %union.v* %57 to float*
  store float %54, float* %58, align 8
  %59 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %60 = bitcast %struct.ref_s* %4 to i8*
  %61 = bitcast %struct.ref_s* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 1
  store %struct.ref_s* %63, %struct.ref_s** @esp, align 8
  %64 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %66 = bitcast %union.v* %65 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @for_real_continue, i32 (%struct.ref_s*)** %66, align 8
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 1
  store i16 37, i16* %68, align 8
  %69 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 2
  store i16 0, i16* %70, align 2
  %71 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 1
  store %struct.ref_s* %72, %struct.ref_s** @esp, align 8
  %73 = bitcast %struct.ref_s* %72 to i8*
  %74 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  store i32 1, i32* %2, align 4
  br label %75

75:                                               ; preds = %46, %43, %35
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrepeat(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 20
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 -15, i32* %2, align 4
  br label %50

20:                                               ; preds = %12
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 5
  %23 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %24 = icmp ugt %struct.ref_s* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -5, i32* %2, align 4
  br label %50

26:                                               ; preds = %20
  %27 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 1
  store %struct.ref_s* %28, %struct.ref_s** @esp, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %31 = bitcast %union.v* %30 to i16*
  store i16 2, i16* %31, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  store i16 33, i16* %33, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 1
  store %struct.ref_s* %35, %struct.ref_s** @esp, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -1
  %38 = bitcast %struct.ref_s* %35 to i8*
  %39 = bitcast %struct.ref_s* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 1
  store %struct.ref_s* %41, %struct.ref_s** @esp, align 8
  %42 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %43 = bitcast %struct.ref_s* %41 to i8*
  %44 = bitcast %struct.ref_s* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 16, i1 false)
  %45 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -2
  store %struct.ref_s* %46, %struct.ref_s** @osp, align 8
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -2
  %49 = call i32 @repeat_continue(%struct.ref_s* noundef %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %26, %25, %19, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @repeat_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca %struct.ref_s, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %5 = bitcast %struct.ref_s* %3 to i8*
  %6 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %10 = bitcast %union.v* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 1
  store %struct.ref_s* %16, %struct.ref_s** @esp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @repeat_continue, i32 (%struct.ref_s*)** %19, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  store i16 37, i16* %21, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 2
  store i16 0, i16* %23, align 2
  %24 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 1
  store %struct.ref_s* %25, %struct.ref_s** @esp, align 8
  %26 = bitcast %struct.ref_s* %25 to i8*
  %27 = bitcast %struct.ref_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -3
  store %struct.ref_s* %30, %struct.ref_s** @esp, align 8
  br label %31

31:                                               ; preds = %28, %14
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zloop(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %6 = icmp ult %struct.ref_s* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 4
  %11 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %12 = icmp ugt %struct.ref_s* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 -5, i32* %2, align 4
  br label %32

14:                                               ; preds = %8
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 1
  store %struct.ref_s* %16, %struct.ref_s** @esp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to i16*
  store i16 2, i16* %19, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  store i16 33, i16* %21, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 1
  store %struct.ref_s* %23, %struct.ref_s** @esp, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = bitcast %struct.ref_s* %23 to i8*
  %26 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  store %struct.ref_s* %28, %struct.ref_s** @osp, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -1
  %31 = call i32 @loop_continue(%struct.ref_s* noundef %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %14, %13, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @loop_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca %struct.ref_s, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %5 = bitcast %struct.ref_s* %3 to i8*
  %6 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 16, i1 false)
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 1
  store %struct.ref_s* %8, %struct.ref_s** @esp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %11 = bitcast %union.v* %10 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @loop_continue, i32 (%struct.ref_s*)** %11, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  store i16 37, i16* %13, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 2
  store i16 0, i16* %15, align 2
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 1
  store %struct.ref_s* %17, %struct.ref_s** @esp, align 8
  %18 = bitcast %struct.ref_s* %17 to i8*
  %19 = bitcast %struct.ref_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 16, i1 false)
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zexit(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %5, %struct.ref_s** %4, align 8
  br label %6

6:                                                ; preds = %31, %1
  %7 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %8 = icmp uge %struct.ref_s* %7, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0)
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 255
  %15 = ashr i32 %14, 2
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %28

17:                                               ; preds = %9
  %18 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 -1
  store %struct.ref_s* %19, %struct.ref_s** %4, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %21 = bitcast %union.v* %20 to i16*
  %22 = load i16, i16* %21, align 8
  %23 = zext i16 %22 to i32
  switch i32 %23, label %27 [
    i32 2, label %24
    i32 3, label %26
  ]

24:                                               ; preds = %17
  %25 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  store %struct.ref_s* %25, %struct.ref_s** @esp, align 8
  store i32 1, i32* %2, align 4
  br label %33

26:                                               ; preds = %17
  store i32 -8, i32* %2, align 4
  br label %33

27:                                               ; preds = %17
  br label %31

28:                                               ; preds = %9
  %29 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 -1
  store %struct.ref_s* %30, %struct.ref_s** %4, align 8
  br label %31

31:                                               ; preds = %28, %27
  br label %6, !llvm.loop !4

32:                                               ; preds = %6
  store i32 -8, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %26, %24
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstop(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %5, %struct.ref_s** %4, align 8
  br label %6

6:                                                ; preds = %40, %1
  %7 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %8 = icmp uge %struct.ref_s* %7, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0)
  br i1 %8, label %9, label %43

9:                                                ; preds = %6
  %10 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 255
  %15 = ashr i32 %14, 2
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %40

17:                                               ; preds = %9
  %18 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %20 = bitcast %union.v* %19 to i16*
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %40

24:                                               ; preds = %17
  %25 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  store %struct.ref_s* %26, %struct.ref_s** @esp, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 1
  store %struct.ref_s* %28, %struct.ref_s** %3, align 8
  store %struct.ref_s* %28, %struct.ref_s** @osp, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %30 = icmp ugt %struct.ref_s* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  store %struct.ref_s* %33, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %44

34:                                               ; preds = %24
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %37 = bitcast %union.v* %36 to i16*
  store i16 1, i16* %37, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 1
  store i16 4, i16* %39, align 8
  store i32 1, i32* %2, align 4
  br label %44

40:                                               ; preds = %17, %9
  %41 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 -1
  store %struct.ref_s* %42, %struct.ref_s** %4, align 8
  br label %6, !llvm.loop !6

43:                                               ; preds = %6
  store i32 -8, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %34, %31
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstopped(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %6 = icmp ult %struct.ref_s* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 3
  %11 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %12 = icmp ugt %struct.ref_s* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 -5, i32* %2, align 4
  br label %36

14:                                               ; preds = %8
  %15 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 1
  store %struct.ref_s* %16, %struct.ref_s** @esp, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to i16*
  store i16 3, i16* %19, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  store i16 33, i16* %21, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 1
  store %struct.ref_s* %23, %struct.ref_s** @esp, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %26 = bitcast %union.v* %25 to i16*
  store i16 0, i16* %26, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  store i16 4, i16* %28, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 1
  store %struct.ref_s* %30, %struct.ref_s** @esp, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = bitcast %struct.ref_s* %30 to i8*
  %33 = bitcast %struct.ref_s* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  store %struct.ref_s* %35, %struct.ref_s** @osp, align 8
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %14, %13, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcountexecstack(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 1
  store %struct.ref_s* %5, %struct.ref_s** %3, align 8
  store %struct.ref_s* %5, %struct.ref_s** @osp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %7 = icmp ugt %struct.ref_s* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = ptrtoint %struct.ref_s* %12 to i64
  %14 = sub i64 %13, ptrtoint ([0 x %struct.ref_s]* @estack to i64)
  %15 = sdiv exact i64 %14, 16
  %16 = add nsw i64 %15, 1
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to i64*
  store i64 %16, i64* %19, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 1
  store i16 20, i16* %21, align 8
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %11, %8
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zexecstack(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = ptrtoint %struct.ref_s* %5 to i64
  %7 = sub i64 %6, ptrtoint ([0 x %struct.ref_s]* @estack to i64)
  %8 = sdiv exact i64 %7, 16
  %9 = add nsw i64 %8, 1
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 252
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = xor i32 %22, -1
  %24 = and i32 %23, 256
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -7, i32* %2, align 4
  br label %59

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 2
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp sgt i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -15, i32* %2, align 4
  br label %59

35:                                               ; preds = %27
  %36 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %37 = icmp uge %struct.ref_s* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0), %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -5, i32* %2, align 4
  br label %59

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = trunc i32 %40 to i16
  %42 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 2
  store i16 %41, i16* %43, align 2
  %44 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  %46 = load i16, i16* %45, align 8
  %47 = zext i16 %46 to i32
  %48 = or i32 %47, 32768
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %45, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 1
  store %struct.ref_s* %51, %struct.ref_s** @esp, align 8
  %52 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 0
  %54 = bitcast %union.v* %53 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @continue_execstack, i32 (%struct.ref_s*)** %54, align 8
  %55 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 1
  store i16 37, i16* %56, align 8
  %57 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 2
  store i16 0, i16* %58, align 2
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %39, %38, %34, %26, %17
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @continue_execstack(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 2
  %6 = load i16, i16* %5, align 2
  %7 = zext i16 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %10 = bitcast %union.v* %9 to %struct.ref_s**
  %11 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 (%struct.ref_s*, %struct.ref_s*, i32, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i32, ...)*)(%struct.ref_s* noundef %11, %struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0), i32 noundef %12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zquit(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = call i32 (i32, ...) bitcast (i32 (...)* @gs_exit to i32 (i32, ...)*)(i32 noundef 0)
  %5 = load i32, i32* %2, align 4
  ret i32 %5
}

declare dso_local i32 @gs_exit(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @zcontrol_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([13 x %struct.op_def], [13 x %struct.op_def]* @zcontrol_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #2

declare dso_local i32 @refcpy(...) #2

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
!6 = distinct !{!6, !5}
