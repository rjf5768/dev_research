; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zmisc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@dstack = external dso_local global [0 x %struct.ref_s], align 8
@dsp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@.str = private unnamed_addr constant [12 x i8] c"getenv name\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"getenv value\00", align 1
@zmisc_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zbind }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrenttime }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zgetenv }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetdebug }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @ztype1encrypt }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @ztype1decrypt }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zusertime }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"1bind\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"0currenttime\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1getenv\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"2setdebug\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"3type1encrypt\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"3type1decrypt\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"0usertime\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zbind(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  store %struct.ref_s* %7, %struct.ref_s** %4, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 255
  %13 = ashr i32 %12, 2
  switch i32 %13, label %15 [
    i32 0, label %14
    i32 10, label %14
  ]

14:                                               ; preds = %1, %1
  br label %16

15:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %135

16:                                               ; preds = %14
  %17 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 1
  store %struct.ref_s* %18, %struct.ref_s** %4, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = bitcast %struct.ref_s* %18 to i8*
  %21 = bitcast %struct.ref_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  br label %22

22:                                               ; preds = %131, %16
  %23 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = icmp ugt %struct.ref_s* %23, %24
  br i1 %25, label %26, label %134

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %130, %26
  %28 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 2
  %30 = load i16, i16* %29, align 2
  %31 = icmp ne i16 %30, 0
  br i1 %31, label %32, label %131

32:                                               ; preds = %27
  %33 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to %struct.ref_s**
  %36 = load %struct.ref_s*, %struct.ref_s** %35, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 1
  store %struct.ref_s* %37, %struct.ref_s** %35, align 8
  store %struct.ref_s* %36, %struct.ref_s** %5, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 2
  %40 = load i16, i16* %39, align 2
  %41 = add i16 %40, -1
  store i16 %41, i16* %39, align 2
  %42 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 8
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 255
  %47 = ashr i32 %46, 2
  switch i32 %47, label %130 [
    i32 7, label %48
    i32 0, label %95
    i32 10, label %105
  ]

48:                                               ; preds = %32
  %49 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  %51 = load i16, i16* %50, align 8
  %52 = zext i16 %51 to i32
  %53 = xor i32 %52, -1
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %94, label %56

56:                                               ; preds = %48
  %57 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %58 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %59 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef %57, %struct.ref_s* noundef %58, %struct.ref_s** noundef %6)
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %56
  %62 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 1
  %64 = load i16, i16* %63, align 8
  %65 = zext i16 %64 to i32
  %66 = and i32 %65, 255
  %67 = ashr i32 %66, 2
  %68 = icmp sge i32 %67, 16
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %77

70:                                               ; preds = %61
  %71 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 1
  %73 = load i16, i16* %72, align 8
  %74 = zext i16 %73 to i32
  %75 = and i32 %74, 255
  %76 = ashr i32 %75, 2
  br label %77

77:                                               ; preds = %70, %69
  %78 = phi i32 [ 9, %69 ], [ %76, %70 ]
  %79 = icmp eq i32 %78, 9
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 1
  %83 = load i16, i16* %82, align 8
  %84 = zext i16 %83 to i32
  %85 = xor i32 %84, -1
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %80
  %89 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %90 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %91 = bitcast %struct.ref_s* %89 to i8*
  %92 = bitcast %struct.ref_s* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  br label %93

93:                                               ; preds = %88, %80, %77, %56
  br label %94

94:                                               ; preds = %93, %48
  br label %130

95:                                               ; preds = %32
  %96 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i32 0, i32 1
  %98 = load i16, i16* %97, align 8
  %99 = zext i16 %98 to i32
  %100 = xor i32 %99, -1
  %101 = and i32 %100, 256
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %130

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %32, %104
  %106 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %106, i32 0, i32 1
  %108 = load i16, i16* %107, align 8
  %109 = zext i16 %108 to i32
  %110 = xor i32 %109, -1
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %129, label %113

113:                                              ; preds = %105
  %114 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %115 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %116 = icmp ult %struct.ref_s* %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i32 0, i32 1
  %120 = load i16, i16* %119, align 8
  %121 = zext i16 %120 to i32
  %122 = and i32 %121, -257
  %123 = trunc i32 %122 to i16
  store i16 %123, i16* %119, align 8
  %124 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %124, i32 1
  store %struct.ref_s* %125, %struct.ref_s** %4, align 8
  %126 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %127 = bitcast %struct.ref_s* %125 to i8*
  %128 = bitcast %struct.ref_s* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 16, i1 false)
  br label %129

129:                                              ; preds = %117, %113, %105
  br label %130

130:                                              ; preds = %129, %32, %103, %94
  br label %27, !llvm.loop !4

131:                                              ; preds = %27
  %132 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %132, i32 -1
  store %struct.ref_s* %133, %struct.ref_s** %4, align 8
  br label %22, !llvm.loop !6

134:                                              ; preds = %22
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %15
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrenttime(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [2 x i64], align 16
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %6 = call i32 (i64*, ...) bitcast (i32 (...)* @gs_get_clock to i32 (i64*, ...)*)(i64* noundef %5)
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 1
  store %struct.ref_s* %8, %struct.ref_s** %3, align 8
  store %struct.ref_s* %8, %struct.ref_s** @osp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %10 = icmp ugt %struct.ref_s* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %16 = load i64, i64* %15, align 16
  %17 = sitofp i64 %16 to double
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 6.000000e+04
  %22 = call double @llvm.fmuladd.f64(double %17, double 1.440000e+03, double %21)
  %23 = fptrunc double %22 to float
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 0
  %26 = bitcast %union.v* %25 to float*
  store float %23, float* %26, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 1
  store i16 44, i16* %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %14, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @gs_get_clock(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgetenv(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 252
  %12 = icmp eq i32 %11, 52
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i32
  %19 = xor i32 %18, -1
  %20 = and i32 %19, 512
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -7, i32* %2, align 4
  br label %68

23:                                               ; preds = %14
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = call i8* @ref_to_string(%struct.ref_s* noundef %24, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -25, i32* %2, align 4
  br label %68

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @getenv(i8* noundef %30)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 2
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = add nsw i32 %36, 1
  call void @alloc_free(i8* noundef %32, i32 noundef %37, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %38 = load i8*, i8** %5, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %43 = bitcast %union.v* %42 to i16*
  store i16 0, i16* %43, align 8
  %44 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  store i16 4, i16* %45, align 8
  store i32 0, i32* %2, align 4
  br label %68

46:                                               ; preds = %29
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = call i32 (i8*, %struct.ref_s*, i8*, ...) bitcast (i32 (...)* @string_to_ref to i32 (i8*, %struct.ref_s*, i8*, ...)*)(i8* noundef %47, %struct.ref_s* noundef %48, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %68

54:                                               ; preds = %46
  %55 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i64 1
  store %struct.ref_s* %56, %struct.ref_s** %3, align 8
  store %struct.ref_s* %56, %struct.ref_s** @osp, align 8
  %57 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %58 = icmp ugt %struct.ref_s* %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 -1
  store %struct.ref_s* %61, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %68

62:                                               ; preds = %54
  %63 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %65 = bitcast %union.v* %64 to i16*
  store i16 1, i16* %65, align 8
  %66 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 1
  store i16 4, i16* %67, align 8
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %59, %52, %40, %28, %22, %13
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i8* @ref_to_string(%struct.ref_s* noundef, i8* noundef) #2

declare dso_local i8* @getenv(i8* noundef) #2

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @string_to_ref(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetdebug(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 52
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = xor i32 %17, -1
  %19 = and i32 %18, 512
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 -7, i32* %2, align 4
  br label %33

22:                                               ; preds = %12
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 252
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 -20, i32* %2, align 4
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -2
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %29, %21, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztype1encrypt(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @type1crypt(%struct.ref_s* noundef %3, i32 (i8*, i8*, i32, i16*)* noundef @gs_type1_encrypt)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @type1crypt(%struct.ref_s* noundef %0, i32 (i8*, i8*, i32, i16*)* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32 (i8*, i8*, i32, i16*)*, align 8
  %6 = alloca i16, align 2
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i32 (i8*, i8*, i32, i16*)* %1, i32 (i8*, i8*, i32, i16*)** %5, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -2
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 252
  %13 = icmp eq i32 %12, 20
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -20, i32* %3, align 4
  br label %122

15:                                               ; preds = %2
  %16 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i16
  store i16 %21, i16* %6, align 2
  %22 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -2
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %25 = bitcast %union.v* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = load i16, i16* %6, align 2
  %28 = zext i16 %27 to i64
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  store i32 -15, i32* %3, align 4
  br label %122

31:                                               ; preds = %15
  %32 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 1
  %35 = load i16, i16* %34, align 8
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 252
  %38 = icmp eq i32 %37, 52
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 -20, i32* %3, align 4
  br label %122

40:                                               ; preds = %31
  %41 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -1
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 8
  %45 = zext i16 %44 to i32
  %46 = xor i32 %45, -1
  %47 = and i32 %46, 512
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 -7, i32* %3, align 4
  br label %122

50:                                               ; preds = %40
  %51 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  %53 = load i16, i16* %52, align 8
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 252
  %56 = icmp eq i32 %55, 52
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  store i32 -20, i32* %3, align 4
  br label %122

58:                                               ; preds = %50
  %59 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 1
  %61 = load i16, i16* %60, align 8
  %62 = zext i16 %61 to i32
  %63 = xor i32 %62, -1
  %64 = and i32 %63, 256
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 -7, i32* %3, align 4
  br label %122

67:                                               ; preds = %58
  %68 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i32 0, i32 2
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -1
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 2
  %75 = load i16, i16* %74, align 2
  %76 = zext i16 %75 to i32
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  store i32 -15, i32* %3, align 4
  br label %122

79:                                               ; preds = %67
  %80 = load i32 (i8*, i8*, i32, i16*)*, i32 (i8*, i8*, i32, i16*)** %5, align 8
  %81 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 0
  %83 = bitcast %union.v* %82 to i8**
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 -1
  %87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %86, i32 0, i32 0
  %88 = bitcast %union.v* %87 to i8**
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i64 -1
  %92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i32 0, i32 2
  %93 = load i16, i16* %92, align 2
  %94 = zext i16 %93 to i32
  %95 = call i32 %80(i8* noundef %84, i8* noundef %89, i32 noundef %94, i16* noundef %6)
  %96 = load i16, i16* %6, align 2
  %97 = zext i16 %96 to i64
  %98 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i64 -2
  %100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i32 0, i32 0
  %101 = bitcast %union.v* %100 to i64*
  store i64 %97, i64* %101, align 8
  %102 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i64 -1
  %104 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %105 = bitcast %struct.ref_s* %103 to i8*
  %106 = bitcast %struct.ref_s* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  %107 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i32 0, i32 2
  %109 = load i16, i16* %108, align 2
  %110 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i64 -1
  %112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 0, i32 2
  store i16 %109, i16* %112, align 2
  %113 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %113, i64 -1
  %115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %114, i32 0, i32 1
  %116 = load i16, i16* %115, align 8
  %117 = zext i16 %116 to i32
  %118 = or i32 %117, 32768
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %115, align 8
  %120 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i64 -1
  store %struct.ref_s* %121, %struct.ref_s** @osp, align 8
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %79, %78, %66, %57, %49, %39, %30, %14
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @gs_type1_encrypt(i8* noundef, i8* noundef, i32 noundef, i16* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztype1decrypt(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @type1crypt(%struct.ref_s* noundef %3, i32 (i8*, i8*, i32, i16*)* noundef @gs_type1_decrypt)
  ret i32 %4
}

declare dso_local i32 @gs_type1_decrypt(i8* noundef, i8* noundef, i32 noundef, i16* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zusertime(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [2 x i64], align 16
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %6 = call i32 (i64*, ...) bitcast (i32 (...)* @gs_get_clock to i32 (i64*, ...)*)(i64* noundef %5)
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 1
  store %struct.ref_s* %8, %struct.ref_s** %3, align 8
  store %struct.ref_s* %8, %struct.ref_s** @osp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %10 = icmp ugt %struct.ref_s* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %16 = load i64, i64* %15, align 16
  %17 = mul nsw i64 %16, 86400000
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %17, %19
  %21 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to i64*
  store i64 %20, i64* %23, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  store i16 20, i16* %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zmisc_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([8 x %struct.op_def], [8 x %struct.op_def]* @zmisc_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
