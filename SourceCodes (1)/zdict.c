; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zdict.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@dict_max_size = external dso_local global i32, align 4
@osp = external dso_local global %struct.ref_s*, align 8
@dsp = external dso_local global %struct.ref_s*, align 8
@dstop = external dso_local global %struct.ref_s*, align 8
@dstack = external dso_local global [0 x %struct.ref_s], align 8
@osp_nargs = external dso_local global [6 x %struct.ref_s*], align 16
@ostop = external dso_local global %struct.ref_s*, align 8
@zdict_op_init.my_defs = internal global [14 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zbegin }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zcountdictstack }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentdict }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zdef }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zdict }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zdictstack }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zend }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zknown }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zload }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zmaxlength }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetmaxlength }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zstore }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.ref_s*)* @zwhere }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"1begin\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"0countdictstack\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"0currentdict\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"2def\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1dict\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"0dictstack\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"0end\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"2known\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"1load\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"1maxlength\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"2setmaxlength\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"2store\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"1where\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdict(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 252
  %9 = icmp eq i32 %8, 20
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %14 = bitcast %union.v* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %20 = bitcast %union.v* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @dict_max_size, align 4
  %23 = zext i32 %22 to i64
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %11
  store i32 -15, i32* %2, align 4
  br label %34

26:                                               ; preds = %17
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = call i32 @dict_create(i32 noundef %31, %struct.ref_s* noundef %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %25, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @dict_create(i32 noundef, %struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmaxlength(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 252
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %12)
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 -7, i32* %2, align 4
  br label %30

21:                                               ; preds = %11
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = call i32 @dict_maxlength(%struct.ref_s* noundef %22)
  %24 = zext i32 %23 to i64
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %27 = bitcast %union.v* %26 to i64*
  store i64 %24, i64* %27, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  store i16 20, i16* %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %20, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef) #1

declare dso_local i32 @dict_maxlength(%struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetmaxlength(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  store %struct.ref_s* %8, %struct.ref_s** %6, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 252
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %73

16:                                               ; preds = %1
  %17 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %18 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %17)
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = zext i16 %20 to i32
  %22 = xor i32 %21, -1
  %23 = and i32 %22, 256
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -7, i32* %2, align 4
  br label %73

26:                                               ; preds = %16
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 8
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 252
  %32 = icmp eq i32 %31, 20
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 -20, i32* %2, align 4
  br label %73

34:                                               ; preds = %26
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %37 = bitcast %union.v* %36 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %43 = bitcast %union.v* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @dict_max_size, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp sgt i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %34
  store i32 -15, i32* %2, align 4
  br label %73

49:                                               ; preds = %40
  %50 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 0
  %52 = bitcast %union.v* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 -1
  %57 = call i32 @dict_length(%struct.ref_s* noundef %56)
  %58 = load i32, i32* %4, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 -2, i32* %2, align 4
  br label %73

61:                                               ; preds = %49
  %62 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 -1
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @dict_resize(%struct.ref_s* noundef %63, i32 noundef %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i64 -2
  store %struct.ref_s* %70, %struct.ref_s** @osp, align 8
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %60, %48, %33, %25, %15
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @dict_length(%struct.ref_s* noundef) #1

declare dso_local i32 @dict_resize(%struct.ref_s* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zbegin(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 252
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %34

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %12)
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %17, 512
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 -7, i32* %2, align 4
  br label %34

21:                                               ; preds = %11
  %22 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** @dstop, align 8
  %24 = icmp eq %struct.ref_s* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -3, i32* %2, align 4
  br label %34

26:                                               ; preds = %21
  %27 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 1
  store %struct.ref_s* %28, %struct.ref_s** @dsp, align 8
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = bitcast %struct.ref_s* %28 to i8*
  %31 = bitcast %struct.ref_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  store %struct.ref_s* %33, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %25, %20, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zend(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %5 = icmp eq %struct.ref_s* %4, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 1)
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -4, i32* %2, align 4
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 -1
  store %struct.ref_s* %9, %struct.ref_s** @dsp, align 8
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdef(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %7 = icmp ult %struct.ref_s* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %42

9:                                                ; preds = %1
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 255
  %16 = ashr i32 %15, 2
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 -20, i32* %2, align 4
  br label %42

19:                                               ; preds = %9
  %20 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %21 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %20)
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = xor i32 %24, -1
  %26 = and i32 %25, 256
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 -7, i32* %2, align 4
  br label %42

29:                                               ; preds = %19
  %30 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = call i32 @dict_put(%struct.ref_s* noundef %30, %struct.ref_s* noundef %32, %struct.ref_s* noundef %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -2
  store %struct.ref_s* %39, %struct.ref_s** @osp, align 8
  br label %40

40:                                               ; preds = %37, %29
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %28, %18, %8
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dict_put(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zload(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %7 = icmp ult %struct.ref_s* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 255
  %15 = ashr i32 %14, 2
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 -20, i32* %2, align 4
  br label %29

18:                                               ; preds = %9
  %19 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef %19, %struct.ref_s* noundef %20, %struct.ref_s** noundef %4)
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -21, i32* %2, align 4
  br label %29

24:                                               ; preds = %18
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %27 = bitcast %struct.ref_s* %25 to i8*
  %28 = bitcast %struct.ref_s* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %23, %17, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstore(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %8 = icmp ult %struct.ref_s* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 255
  %17 = ashr i32 %16, 2
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 -20, i32* %2, align 4
  br label %45

20:                                               ; preds = %10
  %21 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %24 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef %21, %struct.ref_s* noundef %23, %struct.ref_s** noundef %4)
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = call i32 @dict_put(%struct.ref_s* noundef %27, %struct.ref_s* noundef %29, %struct.ref_s* noundef %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %45

36:                                               ; preds = %26
  br label %42

37:                                               ; preds = %20
  %38 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = bitcast %struct.ref_s* %38 to i8*
  %41 = bitcast %struct.ref_s* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  br label %42

42:                                               ; preds = %37, %36
  %43 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -2
  store %struct.ref_s* %44, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %34, %19, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zknown(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** %4, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 252
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %17 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %16)
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  %19 = load i16, i16* %18, align 8
  %20 = zext i16 %19 to i32
  %21 = xor i32 %20, -1
  %22 = and i32 %21, 512
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 -7, i32* %2, align 4
  br label %52

25:                                               ; preds = %15
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 255
  %31 = ashr i32 %30, 2
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %42

34:                                               ; preds = %25
  %35 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %37 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %38 = call i32 @dict_lookup(%struct.ref_s* noundef %35, %struct.ref_s* noundef %36, %struct.ref_s* noundef %37, %struct.ref_s** noundef %5)
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  br label %42

42:                                               ; preds = %34, %33
  %43 = phi i32 [ 0, %33 ], [ %41, %34 ]
  %44 = trunc i32 %43 to i16
  %45 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i32 0, i32 0
  %47 = bitcast %union.v* %46 to i16*
  store i16 %44, i16* %47, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 1
  store i16 4, i16* %49, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  store %struct.ref_s* %51, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %42, %24, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zwhere(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  store %struct.ref_s* %6, %struct.ref_s** %4, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %9 = icmp ult %struct.ref_s* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %72

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 255
  %17 = ashr i32 %16, 2
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %22 = bitcast %union.v* %21 to i16*
  store i16 0, i16* %22, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  store i16 4, i16* %24, align 8
  store i32 0, i32* %2, align 4
  br label %72

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %53
  %27 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %28 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %27)
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 1
  %30 = load i16, i16* %29, align 8
  %31 = zext i16 %30 to i32
  %32 = xor i32 %31, -1
  %33 = and i32 %32, 512
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 -7, i32* %2, align 4
  br label %72

36:                                               ; preds = %26
  %37 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = call i32 @dict_lookup(%struct.ref_s* noundef %37, %struct.ref_s* noundef %38, %struct.ref_s* noundef %39, %struct.ref_s** noundef %5)
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %54

43:                                               ; preds = %36
  %44 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 -1
  store %struct.ref_s* %45, %struct.ref_s** %4, align 8
  %46 = icmp ult %struct.ref_s* %45, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0)
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %50 = bitcast %union.v* %49 to i16*
  store i16 0, i16* %50, align 8
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  store i16 4, i16* %52, align 8
  store i32 0, i32* %2, align 4
  br label %72

53:                                               ; preds = %43
  br label %26

54:                                               ; preds = %42
  %55 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %56 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %57 = bitcast %struct.ref_s* %55 to i8*
  %58 = bitcast %struct.ref_s* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 1
  store %struct.ref_s* %60, %struct.ref_s** %3, align 8
  store %struct.ref_s* %60, %struct.ref_s** @osp, align 8
  %61 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %62 = icmp ugt %struct.ref_s* %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 -1
  store %struct.ref_s* %65, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %72

66:                                               ; preds = %54
  %67 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 0
  %69 = bitcast %union.v* %68 to i16*
  store i16 1, i16* %69, align 8
  %70 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 1
  store i16 4, i16* %71, align 8
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %63, %47, %35, %19, %10
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcopy_dict(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  store %struct.ref_s* %6, %struct.ref_s** %4, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 252
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %16 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %15)
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = zext i16 %18 to i32
  %20 = xor i32 %19, -1
  %21 = and i32 %20, 512
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 -7, i32* %2, align 4
  br label %56

24:                                               ; preds = %14
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %25)
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = zext i16 %28 to i32
  %30 = xor i32 %29, -1
  %31 = and i32 %30, 256
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 -7, i32* %2, align 4
  br label %56

34:                                               ; preds = %24
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = call i32 @dict_length(%struct.ref_s* noundef %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = call i32 @dict_maxlength(%struct.ref_s* noundef %39)
  %41 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %42 = call i32 @dict_maxlength(%struct.ref_s* noundef %41)
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %34
  store i32 -15, i32* %2, align 4
  br label %56

45:                                               ; preds = %38
  %46 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = call i32 @dict_copy(%struct.ref_s* noundef %46, %struct.ref_s* noundef %47)
  %49 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -1
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = bitcast %struct.ref_s* %50 to i8*
  %53 = bitcast %struct.ref_s* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false)
  %54 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -1
  store %struct.ref_s* %55, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %45, %44, %33, %23, %13
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @dict_copy(%struct.ref_s* noundef, %struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentdict(%struct.ref_s* noundef %0) #0 {
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
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %14 = bitcast %struct.ref_s* %12 to i8*
  %15 = bitcast %struct.ref_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %11, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcountdictstack(%struct.ref_s* noundef %0) #0 {
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
  %12 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %13 = ptrtoint %struct.ref_s* %12 to i64
  %14 = sub i64 %13, ptrtoint ([0 x %struct.ref_s]* @dstack to i64)
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
define dso_local i32 @zdictstack(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %6 = ptrtoint %struct.ref_s* %5 to i64
  %7 = sub i64 %6, ptrtoint ([0 x %struct.ref_s]* @dstack to i64)
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
  br label %52

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
  br label %52

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
  br label %52

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = trunc i32 %36 to i16
  %38 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 2
  store i16 %37, i16* %39, align 2
  %40 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 1
  %42 = load i16, i16* %41, align 8
  %43 = zext i16 %42 to i32
  %44 = or i32 %43, 32768
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %41, align 8
  %46 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %48 = bitcast %union.v* %47 to %struct.ref_s**
  %49 = load %struct.ref_s*, %struct.ref_s** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (%struct.ref_s*, %struct.ref_s*, i32, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i32, ...)*)(%struct.ref_s* noundef %49, %struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), i32 noundef %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %35, %34, %26, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @refcpy(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zdict_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([14 x %struct.op_def], [14 x %struct.op_def]* @zdict_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
