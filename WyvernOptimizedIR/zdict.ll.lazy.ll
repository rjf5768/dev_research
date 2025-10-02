; ModuleID = './zdict.ll'
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
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @dict_max_size, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp sgt i64 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %7
  br label %23

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @dict_create(i32 noundef %21, %struct.ref_s* noundef %0) #5
  br label %23

23:                                               ; preds = %18, %17, %6
  %.0 = phi i32 [ -15, %17 ], [ %22, %18 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local i32 @dict_create(i32 noundef, %struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmaxlength(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 8
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %0) #5
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = and i16 %10, 512
  %.not.not = icmp eq i16 %11, 0
  br i1 %.not.not, label %12, label %13

12:                                               ; preds = %7
  br label %18

13:                                               ; preds = %7
  %14 = call i32 @dict_maxlength(%struct.ref_s* noundef %0) #5
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 20, i16* %17, align 8
  br label %18

18:                                               ; preds = %13, %12, %6
  %.0 = phi i32 [ -7, %12 ], [ 0, %13 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef) #1

declare dso_local i32 @dict_maxlength(%struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetmaxlength(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 8
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %9 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef nonnull %8) #5
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = and i16 %11, 256
  %.not.not = icmp eq i16 %12, 0
  br i1 %.not.not, label %13, label %14

13:                                               ; preds = %7
  br label %47

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = and i16 %16, 252
  %18 = icmp eq i16 %17, 20
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %47

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @dict_max_size, align 4
  %28 = zext i32 %27 to i64
  %29 = icmp sgt i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %20
  br label %47

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %36 = call i32 @dict_length(%struct.ref_s* noundef nonnull %35) #5
  %37 = icmp ugt i32 %36, %34
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %47

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %41 = call i32 @dict_resize(%struct.ref_s* noundef nonnull %40, i32 noundef %34) #5
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -2
  store %struct.ref_s* %45, %struct.ref_s** @osp, align 8
  br label %46

46:                                               ; preds = %43, %39
  br label %47

47:                                               ; preds = %46, %38, %30, %19, %13, %6
  %.0 = phi i32 [ -7, %13 ], [ -15, %30 ], [ -2, %38 ], [ %41, %46 ], [ -20, %19 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local i32 @dict_length(%struct.ref_s* noundef) #1

declare dso_local i32 @dict_resize(%struct.ref_s* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zbegin(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 8
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  %8 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %0) #5
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = and i16 %10, 512
  %.not.not = icmp eq i16 %11, 0
  br i1 %.not.not, label %12, label %13

12:                                               ; preds = %7
  br label %25

13:                                               ; preds = %7
  %14 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** @dstop, align 8
  %16 = icmp eq %struct.ref_s* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %25

18:                                               ; preds = %13
  %19 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  store %struct.ref_s* %20, %struct.ref_s** @dsp, align 8
  %21 = bitcast %struct.ref_s* %20 to i8*
  %22 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %21, i8* noundef nonnull align 8 dereferenceable(16) %22, i64 16, i1 false)
  %23 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  store %struct.ref_s* %24, %struct.ref_s** @osp, align 8
  br label %25

25:                                               ; preds = %18, %17, %12, %6
  %.0 = phi i32 [ -7, %12 ], [ -3, %17 ], [ 0, %18 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zend(%struct.ref_s* nocapture noundef readnone %0) #3 {
  %2 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %3 = icmp eq %struct.ref_s* %2, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 1)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @dsp, align 8
  br label %8

8:                                                ; preds = %5, %4
  %.0 = phi i32 [ -4, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdef(%struct.ref_s* noundef %0) #0 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = and i16 %7, 252
  %9 = icmp eq i16 %8, 32
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %26

11:                                               ; preds = %5
  %12 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %13 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %12) #5
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = and i16 %15, 256
  %.not.not = icmp eq i16 %16, 0
  br i1 %.not.not, label %17, label %18

17:                                               ; preds = %11
  br label %26

18:                                               ; preds = %11
  %19 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %21 = call i32 @dict_put(%struct.ref_s* noundef %19, %struct.ref_s* noundef nonnull %20, %struct.ref_s* noundef %0) #5
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -2
  store %struct.ref_s* %24, %struct.ref_s** @osp, align 8
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %17, %10, %4
  %.0 = phi i32 [ -17, %4 ], [ -20, %10 ], [ -7, %17 ], [ %21, %25 ]
  ret i32 %.0
}

declare dso_local i32 @dict_put(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zload(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %4 = icmp ugt %struct.ref_s* %3, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = and i16 %8, 252
  %10 = icmp eq i16 %9, 32
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %21

12:                                               ; preds = %6
  %13 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %14 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef %13, %struct.ref_s* noundef %0, %struct.ref_s** noundef nonnull %2) #5
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %21

17:                                               ; preds = %12
  %18 = bitcast %struct.ref_s** %2 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %20, i8* noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false)
  br label %21

21:                                               ; preds = %17, %16, %11, %5
  %.0 = phi i32 [ -17, %5 ], [ -20, %11 ], [ -21, %16 ], [ 0, %17 ]
  ret i32 %.0
}

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstore(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %4 = icmp ugt %struct.ref_s* %3, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = and i16 %8, 252
  %10 = icmp eq i16 %9, 32
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %30

12:                                               ; preds = %6
  %13 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %15 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef %13, %struct.ref_s* noundef nonnull %14, %struct.ref_s** noundef nonnull %2) #5
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %20 = call i32 @dict_put(%struct.ref_s* noundef %18, %struct.ref_s* noundef nonnull %19, %struct.ref_s* noundef %0) #5
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %22, label %21

21:                                               ; preds = %17
  br label %30

22:                                               ; preds = %17
  br label %27

23:                                               ; preds = %12
  %24 = bitcast %struct.ref_s** %2 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %25, i8* noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false)
  br label %27

27:                                               ; preds = %23, %22
  %28 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -2
  store %struct.ref_s* %29, %struct.ref_s** @osp, align 8
  br label %30

30:                                               ; preds = %27, %21, %11, %5
  %.0 = phi i32 [ -17, %5 ], [ -20, %11 ], [ %20, %21 ], [ 0, %27 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zknown(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 252
  %7 = icmp eq i16 %6, 8
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %30

9:                                                ; preds = %1
  %10 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef nonnull %3) #5
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = and i16 %12, 512
  %.not.not = icmp eq i16 %13, 0
  br i1 %.not.not, label %14, label %15

14:                                               ; preds = %9
  br label %30

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = and i16 %17, 252
  %19 = icmp eq i16 %18, 32
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %24

21:                                               ; preds = %15
  %22 = call i32 @dict_lookup(%struct.ref_s* noundef nonnull %3, %struct.ref_s* noundef nonnull %3, %struct.ref_s* noundef %0, %struct.ref_s** noundef nonnull %2) #5
  %23 = icmp sgt i32 %22, 0
  %phi.cast = zext i1 %23 to i16
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i16 [ 0, %20 ], [ %phi.cast, %21 ]
  %26 = bitcast %struct.ref_s* %3 to i16*
  store i16 %25, i16* %26, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 4, i16* %27, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  store %struct.ref_s* %29, %struct.ref_s** @osp, align 8
  br label %30

30:                                               ; preds = %24, %14, %8
  %.0 = phi i32 [ -7, %14 ], [ 0, %24 ], [ -20, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zwhere(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %5 = icmp ugt %struct.ref_s* %4, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %45

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = and i16 %9, 252
  %11 = icmp eq i16 %10, 32
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = bitcast %struct.ref_s* %0 to i16*
  store i16 0, i16* %13, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 4, i16* %14, align 8
  br label %45

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %32, %15
  %.01 = phi %struct.ref_s* [ %3, %15 ], [ %27, %32 ]
  %17 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %.01) #5
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0, i32 1
  %19 = load i16, i16* %18, align 8
  %20 = and i16 %19, 512
  %.not.not = icmp eq i16 %20, 0
  br i1 %.not.not, label %21, label %22

21:                                               ; preds = %16
  br label %45

22:                                               ; preds = %16
  %23 = call i32 @dict_lookup(%struct.ref_s* noundef %.01, %struct.ref_s* noundef %.01, %struct.ref_s* noundef %0, %struct.ref_s** noundef nonnull %2) #5
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %33

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1
  %28 = icmp ult %struct.ref_s* %27, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0)
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = bitcast %struct.ref_s* %0 to i16*
  store i16 0, i16* %30, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 4, i16* %31, align 8
  br label %45

32:                                               ; preds = %26
  br label %16

33:                                               ; preds = %25
  %34 = bitcast %struct.ref_s* %0 to i8*
  %35 = bitcast %struct.ref_s* %.01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %34, i8* noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false)
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %36, %struct.ref_s** @osp, align 8
  %37 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %38 = icmp ugt %struct.ref_s* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 -1
  store %struct.ref_s* %41, %struct.ref_s** @osp, align 8
  br label %45

42:                                               ; preds = %33
  %43 = bitcast %struct.ref_s* %36 to i16*
  store i16 1, i16* %43, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 4, i16* %44, align 8
  br label %45

45:                                               ; preds = %42, %39, %29, %21, %12, %6
  %.0 = phi i32 [ -17, %6 ], [ 0, %12 ], [ -7, %21 ], [ -16, %39 ], [ 0, %42 ], [ 0, %29 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcopy_dict(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = and i16 %4, 252
  %6 = icmp eq i16 %5, 8
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  %9 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef nonnull %2) #5
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = and i16 %11, 512
  %.not.not = icmp eq i16 %12, 0
  br i1 %.not.not, label %13, label %14

13:                                               ; preds = %8
  br label %34

14:                                               ; preds = %8
  %15 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %0) #5
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = and i16 %17, 256
  %.not.not1 = icmp eq i16 %18, 0
  br i1 %.not.not1, label %19, label %20

19:                                               ; preds = %14
  br label %34

20:                                               ; preds = %14
  %21 = call i32 @dict_length(%struct.ref_s* noundef %0) #5
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %22, label %26

22:                                               ; preds = %20
  %23 = call i32 @dict_maxlength(%struct.ref_s* noundef %0) #5
  %24 = call i32 @dict_maxlength(%struct.ref_s* noundef nonnull %2) #5
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %20
  br label %34

27:                                               ; preds = %22
  %28 = call i32 @dict_copy(%struct.ref_s* noundef nonnull %2, %struct.ref_s* noundef %0) #5
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %30 = bitcast %struct.ref_s* %29 to i8*
  %31 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %30, i8* noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false)
  %32 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  store %struct.ref_s* %33, %struct.ref_s** @osp, align 8
  br label %34

34:                                               ; preds = %27, %26, %19, %13, %7
  %.0 = phi i32 [ -7, %13 ], [ -7, %19 ], [ -15, %26 ], [ 0, %27 ], [ -20, %7 ]
  ret i32 %.0
}

declare dso_local i32 @dict_copy(%struct.ref_s* noundef, %struct.ref_s* noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zcurrentdict(%struct.ref_s* noundef %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** bitcast (%struct.ref_s** @dsp to i8**), align 8
  %10 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %10, i8* noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %11

11:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zcountdictstack(%struct.ref_s* noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %16

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %10 = ptrtoint %struct.ref_s* %9 to i64
  %11 = sub i64 %10, ptrtoint ([0 x %struct.ref_s]* @dstack to i64)
  %12 = ashr exact i64 %11, 4
  %13 = add nsw i64 %12, 1
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %15, align 8
  br label %16

16:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdictstack(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %3 = ptrtoint %struct.ref_s* %2 to i64
  %4 = sub i64 %3, ptrtoint ([0 x %struct.ref_s]* @dstack to i64)
  %5 = lshr exact i64 %4, 4
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = and i16 %9, 252
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %33

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = and i16 %15, 256
  %.not.not = icmp eq i16 %16, 0
  br i1 %.not.not, label %17, label %18

17:                                               ; preds = %13
  br label %33

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp sgt i32 %7, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %33

24:                                               ; preds = %18
  %25 = trunc i32 %7 to i16
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  store i16 %25, i16* %26, align 2
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = or i16 %28, -32768
  store i16 %29, i16* %27, align 8
  %30 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %31 = load %struct.ref_s*, %struct.ref_s** %30, align 8
  %32 = call i32 (%struct.ref_s*, %struct.ref_s*, i32, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i32, ...)*)(%struct.ref_s* noundef %31, %struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), i32 noundef %7) #5
  br label %33

33:                                               ; preds = %24, %23, %17, %12
  %.0 = phi i32 [ -7, %17 ], [ -15, %23 ], [ 0, %24 ], [ -20, %12 ]
  ret i32 %.0
}

declare dso_local i32 @refcpy(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zdict_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([14 x %struct.op_def], [14 x %struct.op_def]* @zdict_op_init.my_defs, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @z_op_init(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
