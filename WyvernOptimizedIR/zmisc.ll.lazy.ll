; ModuleID = './zmisc.ll'
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
  %2 = alloca %struct.ref_s*, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 63
  %7 = zext i16 %6 to i32
  switch i32 %7, label %9 [
    i32 0, label %8
    i32 10, label %8
  ]

8:                                                ; preds = %1, %1
  br label %10

9:                                                ; preds = %1
  br label %92

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  %12 = bitcast %struct.ref_s* %11 to i8*
  %13 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %12, i8* noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false)
  br label %14

14:                                               ; preds = %89, %10
  %.01 = phi %struct.ref_s* [ %11, %10 ], [ %90, %89 ]
  %15 = icmp ugt %struct.ref_s* %.01, %0
  br i1 %15, label %16, label %91

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %88, %16
  %.1 = phi %struct.ref_s* [ %.01, %16 ], [ %.3, %88 ]
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.1, i64 0, i32 2
  %19 = load i16, i16* %18, align 2
  %.not = icmp eq i16 %19, 0
  br i1 %.not, label %89, label %20

20:                                               ; preds = %17
  %21 = bitcast %struct.ref_s* %.1 to %struct.ref_s**
  %22 = load %struct.ref_s*, %struct.ref_s** %21, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 1
  store %struct.ref_s* %23, %struct.ref_s** %21, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.1, i64 0, i32 2
  %25 = load i16, i16* %24, align 2
  %26 = add i16 %25, -1
  store i16 %26, i16* %24, align 2
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = lshr i16 %28, 2
  %30 = and i16 %29, 63
  %31 = zext i16 %30 to i32
  switch i32 %31, label %88 [
    i32 7, label %32
    i32 0, label %67
    i32 10, label %73
  ]

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 0, i32 1
  %34 = load i16, i16* %33, align 8
  %35 = and i16 %34, 1
  %.not4.not = icmp eq i16 %35, 0
  br i1 %.not4.not, label %66, label %36

36:                                               ; preds = %32
  %37 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %38 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef %37, %struct.ref_s* noundef %22, %struct.ref_s** noundef nonnull %2) #5
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 0, i32 1
  %43 = load i16, i16* %42, align 8
  %44 = and i16 %43, 192
  %.not5 = icmp eq i16 %44, 0
  br i1 %.not5, label %46, label %45

45:                                               ; preds = %40
  br label %53

46:                                               ; preds = %40
  %47 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 0, i32 1
  %49 = load i16, i16* %48, align 8
  %50 = lshr i16 %49, 2
  %51 = and i16 %50, 63
  %52 = zext i16 %51 to i32
  br label %53

53:                                               ; preds = %46, %45
  %54 = phi i32 [ 9, %45 ], [ %52, %46 ]
  %55 = icmp eq i32 %54, 9
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 0, i32 1
  %59 = load i16, i16* %58, align 8
  %60 = and i16 %59, 1
  %.not6.not = icmp eq i16 %60, 0
  br i1 %.not6.not, label %65, label %61

61:                                               ; preds = %56
  %62 = bitcast %struct.ref_s** %2 to i8**
  %63 = load i8*, i8** %62, align 8
  %64 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %64, i8* noundef nonnull align 8 dereferenceable(16) %63, i64 16, i1 false)
  br label %65

65:                                               ; preds = %61, %56, %53, %36
  br label %66

66:                                               ; preds = %65, %32
  br label %88

67:                                               ; preds = %20
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 0, i32 1
  %69 = load i16, i16* %68, align 8
  %70 = and i16 %69, 256
  %.not3.not = icmp eq i16 %70, 0
  br i1 %.not3.not, label %71, label %72

71:                                               ; preds = %67
  br label %88

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %20
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 0, i32 1
  %75 = load i16, i16* %74, align 8
  %76 = and i16 %75, 1
  %.not2.not = icmp eq i16 %76, 0
  br i1 %.not2.not, label %87, label %77

77:                                               ; preds = %73
  %78 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %79 = icmp ult %struct.ref_s* %.1, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 0, i32 1
  %82 = load i16, i16* %81, align 8
  %83 = and i16 %82, -257
  store i16 %83, i16* %81, align 8
  %84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.1, i64 1
  %85 = bitcast %struct.ref_s* %84 to i8*
  %86 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %85, i8* noundef nonnull align 8 dereferenceable(16) %86, i64 16, i1 false)
  br label %87

87:                                               ; preds = %80, %77, %73
  %.2 = phi %struct.ref_s* [ %.1, %73 ], [ %84, %80 ], [ %.1, %77 ]
  br label %88

88:                                               ; preds = %87, %71, %66, %20
  %.3 = phi %struct.ref_s* [ %.1, %20 ], [ %.2, %87 ], [ %.1, %71 ], [ %.1, %66 ]
  br label %17, !llvm.loop !4

89:                                               ; preds = %17
  %90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.1, i64 -1
  br label %14, !llvm.loop !6

91:                                               ; preds = %14
  br label %92

92:                                               ; preds = %91, %9
  %.0 = phi i32 [ -20, %9 ], [ 0, %91 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrenttime(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [2 x i64], align 16
  %3 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %4 = call i32 (i64*, ...) bitcast (i32 (...)* @gs_get_clock to i32 (i64*, ...)*)(i64* noundef nonnull %3) #5
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %5, %struct.ref_s** @osp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %7 = icmp ugt %struct.ref_s* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  br label %23

11:                                               ; preds = %1
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %13 = load i64, i64* %12, align 16
  %14 = sitofp i64 %13 to double
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %17, 6.000000e+04
  %19 = call double @llvm.fmuladd.f64(double %14, double 1.440000e+03, double %18)
  %20 = fptrunc double %19 to float
  %21 = bitcast %struct.ref_s* %5 to float*
  store float %20, float* %21, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 44, i16* %22, align 8
  br label %23

23:                                               ; preds = %11, %8
  %.0 = phi i32 [ -16, %8 ], [ 0, %11 ]
  ret i32 %.0
}

declare dso_local i32 @gs_get_clock(...) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgetenv(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 52
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %40

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = and i16 %9, 512
  %.not.not = icmp eq i16 %10, 0
  br i1 %.not.not, label %11, label %12

11:                                               ; preds = %7
  br label %40

12:                                               ; preds = %7
  %13 = call i8* @ref_to_string(%struct.ref_s* noundef %0, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #5
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %40

16:                                               ; preds = %12
  %17 = call i8* @getenv(i8* noundef nonnull %13) #5
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = add nuw nsw i32 %20, 1
  call void @alloc_free(i8* noundef nonnull %13, i32 noundef %21, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #5
  %22 = icmp eq i8* %17, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = bitcast %struct.ref_s* %0 to i16*
  store i16 0, i16* %24, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 4, i16* %25, align 8
  br label %40

26:                                               ; preds = %16
  %27 = call i32 (i8*, %struct.ref_s*, i8*, ...) bitcast (i32 (...)* @string_to_ref to i32 (i8*, %struct.ref_s*, i8*, ...)*)(i8* noundef nonnull %17, %struct.ref_s* noundef %0, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %31, %struct.ref_s** @osp, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %33 = icmp ugt %struct.ref_s* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1
  store %struct.ref_s* %36, %struct.ref_s** @osp, align 8
  br label %40

37:                                               ; preds = %30
  %38 = bitcast %struct.ref_s* %31 to i16*
  store i16 1, i16* %38, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 4, i16* %39, align 8
  br label %40

40:                                               ; preds = %37, %34, %29, %23, %15, %11, %6
  %.0 = phi i32 [ -7, %11 ], [ -25, %15 ], [ 0, %23 ], [ %27, %29 ], [ -16, %34 ], [ 0, %37 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local i8* @ref_to_string(%struct.ref_s* noundef, i8* noundef) #2

declare dso_local i8* @getenv(i8* noundef) #2

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @string_to_ref(...) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zsetdebug(%struct.ref_s* nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 52
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = and i16 %9, 512
  %.not.not = icmp eq i16 %10, 0
  br i1 %.not.not, label %11, label %12

11:                                               ; preds = %7
  br label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = and i16 %14, 252
  %16 = icmp eq i16 %15, 4
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %21

18:                                               ; preds = %12
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  br label %21

21:                                               ; preds = %18, %17, %11, %6
  %.0 = phi i32 [ -7, %11 ], [ 0, %18 ], [ -20, %17 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztype1encrypt(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = call i32 @type1crypt(%struct.ref_s* noundef %0, i32 (i8*, i8*, i32, i16*)* noundef nonnull @gs_type1_encrypt)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @type1crypt(%struct.ref_s* nocapture noundef %0, i32 (i8*, i8*, i32, i16*)* nocapture noundef readonly %1) #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 252
  %7 = icmp eq i16 %6, 20
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %68

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i16
  store i16 %12, i16* %3, align 2
  %13 = icmp ult i64 %11, 65536
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %68

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = and i16 %17, 252
  %19 = icmp eq i16 %18, 52
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %68

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %23 = load i16, i16* %22, align 8
  %24 = and i16 %23, 512
  %.not.not = icmp eq i16 %24, 0
  br i1 %.not.not, label %25, label %26

25:                                               ; preds = %21
  br label %68

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = and i16 %28, 252
  %30 = icmp eq i16 %29, 52
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %68

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %34 = load i16, i16* %33, align 8
  %35 = and i16 %34, 256
  %.not.not1 = icmp eq i16 %35, 0
  br i1 %.not.not1, label %36, label %37

36:                                               ; preds = %32
  br label %68

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %39 = load i16, i16* %38, align 2
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %41 = load i16, i16* %40, align 2
  %42 = icmp ult i16 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %68

44:                                               ; preds = %37
  %45 = bitcast %struct.ref_s* %0 to i8**
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %48 = bitcast %union.v* %47 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  %53 = call i32 %1(i8* noundef %46, i8* noundef %49, i32 noundef %52, i16* noundef nonnull %3) #5
  %54 = load i16, i16* %3, align 2
  %55 = zext i16 %54 to i64
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %58 = bitcast %struct.ref_s* %57 to i8*
  %59 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %58, i8* noundef nonnull align 8 dereferenceable(16) %59, i64 16, i1 false)
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %61 = load i16, i16* %60, align 2
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  store i16 %61, i16* %62, align 2
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %64 = load i16, i16* %63, align 8
  %65 = or i16 %64, -32768
  store i16 %65, i16* %63, align 8
  %66 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 -1
  store %struct.ref_s* %67, %struct.ref_s** @osp, align 8
  br label %68

68:                                               ; preds = %44, %43, %36, %31, %25, %20, %14, %8
  %.0 = phi i32 [ -15, %14 ], [ -7, %25 ], [ -7, %36 ], [ -15, %43 ], [ 0, %44 ], [ -20, %31 ], [ -20, %20 ], [ -20, %8 ]
  ret i32 %.0
}

declare dso_local i32 @gs_type1_encrypt(i8* noundef, i8* noundef, i32 noundef, i16* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztype1decrypt(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = call i32 @type1crypt(%struct.ref_s* noundef %0, i32 (i8*, i8*, i32, i16*)* noundef nonnull @gs_type1_decrypt)
  ret i32 %2
}

declare dso_local i32 @gs_type1_decrypt(i8* noundef, i8* noundef, i32 noundef, i16* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zusertime(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [2 x i64], align 16
  %3 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %4 = call i32 (i64*, ...) bitcast (i32 (...)* @gs_get_clock to i32 (i64*, ...)*)(i64* noundef nonnull %3) #5
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %5, %struct.ref_s** @osp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %7 = icmp ugt %struct.ref_s* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  br label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 0
  %13 = load i64, i64* %12, align 16
  %14 = mul nsw i64 %13, 86400000
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %2, i64 0, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %14, %16
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 0, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %19, align 8
  br label %20

20:                                               ; preds = %11, %8
  %.0 = phi i32 [ -16, %8 ], [ 0, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zmisc_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([8 x %struct.op_def], [8 x %struct.op_def]* @zmisc_op_init.my_defs, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @z_op_init(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
