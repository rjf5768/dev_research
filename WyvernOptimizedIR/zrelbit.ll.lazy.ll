; ModuleID = './zrelbit.ll'
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
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 63
  %7 = zext i16 %6 to i32
  switch i32 %7, label %21 [
    i32 13, label %8
    i32 0, label %8
    i32 10, label %8
    i32 2, label %14
  ]

8:                                                ; preds = %1, %1, %1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = and i16 %10, 512
  %.not3.not = icmp eq i16 %11, 0
  br i1 %.not3.not, label %12, label %13

12:                                               ; preds = %8
  br label %47

13:                                               ; preds = %8
  br label %21

14:                                               ; preds = %1
  %15 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %0) #4
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = and i16 %17, 512
  %.not.not = icmp eq i16 %18, 0
  br i1 %.not.not, label %19, label %20

19:                                               ; preds = %14
  br label %47

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %13, %1
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %23 = load i16, i16* %22, align 8
  %24 = lshr i16 %23, 2
  %25 = and i16 %24, 63
  %26 = zext i16 %25 to i32
  switch i32 %26, label %40 [
    i32 13, label %27
    i32 0, label %27
    i32 10, label %27
    i32 2, label %33
  ]

27:                                               ; preds = %21, %21, %21
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %29 = load i16, i16* %28, align 8
  %30 = and i16 %29, 512
  %.not2.not = icmp eq i16 %30, 0
  br i1 %.not2.not, label %31, label %32

31:                                               ; preds = %27
  br label %47

32:                                               ; preds = %27
  br label %40

33:                                               ; preds = %21
  %34 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef nonnull %2) #4
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 0, i32 1
  %36 = load i16, i16* %35, align 8
  %37 = and i16 %36, 512
  %.not.not1 = icmp eq i16 %37, 0
  br i1 %.not.not1, label %38, label %39

38:                                               ; preds = %33
  br label %47

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %32, %21
  %41 = call i32 (%struct.ref_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @obj_eq to i32 (%struct.ref_s*, %struct.ref_s*, ...)*)(%struct.ref_s* noundef nonnull %2, %struct.ref_s* noundef %0) #4
  %.not = icmp ne i32 %41, 0
  %42 = zext i1 %.not to i16
  %43 = bitcast %struct.ref_s* %2 to i16*
  store i16 %42, i16* %43, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 4, i16* %44, align 8
  %45 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  store %struct.ref_s* %46, %struct.ref_s** @osp, align 8
  br label %47

47:                                               ; preds = %40, %38, %31, %19, %12
  %.0 = phi i32 [ 0, %40 ], [ -7, %38 ], [ -7, %31 ], [ -7, %19 ], [ -7, %12 ]
  ret i32 %.0
}

declare dso_local %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef) #1

declare dso_local i32 @obj_eq(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zne(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @zeq(%struct.ref_s* noundef %0)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %5 = bitcast %union.v* %4 to i16*
  %6 = load i16, i16* %5, align 8
  %7 = xor i16 %6, 1
  store i16 %7, i16* %5, align 8
  br label %8

8:                                                ; preds = %3, %1
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zge(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = call i32 @obj_compare(%struct.ref_s* noundef %0, i32 noundef 6)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  %6 = trunc i32 %2 to i16
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %8 = bitcast %union.v* %7 to i16*
  store i16 %6, i16* %8, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 4, i16* %9, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  br label %12

12:                                               ; preds = %5, %4
  %.0 = phi i32 [ %2, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgt(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = call i32 @obj_compare(%struct.ref_s* noundef %0, i32 noundef 4)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  %6 = trunc i32 %2 to i16
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %8 = bitcast %union.v* %7 to i16*
  store i16 %6, i16* %8, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 4, i16* %9, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  br label %12

12:                                               ; preds = %5, %4
  %.0 = phi i32 [ %2, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zle(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = call i32 @obj_compare(%struct.ref_s* noundef %0, i32 noundef 3)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  %6 = trunc i32 %2 to i16
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %8 = bitcast %union.v* %7 to i16*
  store i16 %6, i16* %8, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 4, i16* %9, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  br label %12

12:                                               ; preds = %5, %4
  %.0 = phi i32 [ %2, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zlt(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = call i32 @obj_compare(%struct.ref_s* noundef %0, i32 noundef 1)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  %6 = trunc i32 %2 to i16
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %8 = bitcast %union.v* %7 to i16*
  store i16 %6, i16* %8, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 4, i16* %9, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  br label %12

12:                                               ; preds = %5, %4
  %.0 = phi i32 [ %2, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmax(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = call i32 @obj_compare(%struct.ref_s* noundef %0, i32 noundef 1)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %13

5:                                                ; preds = %1
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %8 = bitcast %struct.ref_s* %7 to i8*
  %9 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %8, i8* noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %10

10:                                               ; preds = %6, %5
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  store %struct.ref_s* %12, %struct.ref_s** @osp, align 8
  br label %13

13:                                               ; preds = %10, %4
  %.0 = phi i32 [ %2, %4 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmin(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = call i32 @obj_compare(%struct.ref_s* noundef %0, i32 noundef 4)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %13

5:                                                ; preds = %1
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %10, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %8 = bitcast %struct.ref_s* %7 to i8*
  %9 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %8, i8* noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %10

10:                                               ; preds = %6, %5
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  store %struct.ref_s* %12, %struct.ref_s** @osp, align 8
  br label %13

13:                                               ; preds = %10, %4
  %.0 = phi i32 [ %2, %4 ], [ 0, %10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zand(%struct.ref_s* nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = xor i16 %3, %5
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = lshr i16 %12, 2
  %14 = and i16 %13, 63
  %15 = zext i16 %14 to i32
  switch i32 %15, label %29 [
    i32 1, label %16
    i32 5, label %23
  ]

16:                                               ; preds = %10
  %17 = bitcast %struct.ref_s* %0 to i16*
  %18 = load i16, i16* %17, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %20 = bitcast %union.v* %19 to i16*
  %21 = load i16, i16* %20, align 8
  %22 = and i16 %21, %18
  store i16 %22, i16* %20, align 8
  br label %30

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %27, %25
  store i64 %28, i64* %26, align 8
  br label %30

29:                                               ; preds = %10
  br label %33

30:                                               ; preds = %23, %16
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  br label %33

33:                                               ; preds = %30, %29, %9
  %.0 = phi i32 [ -20, %29 ], [ 0, %30 ], [ -20, %9 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @znot(%struct.ref_s* nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %17 [
    i32 1, label %7
    i32 5, label %12
  ]

7:                                                ; preds = %1
  %8 = bitcast %struct.ref_s* %0 to i16*
  %9 = load i16, i16* %8, align 8
  %.not = icmp eq i16 %9, 0
  %10 = zext i1 %.not to i16
  %11 = bitcast %struct.ref_s* %0 to i16*
  store i16 %10, i16* %11, align 8
  br label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = xor i64 %14, -1
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  br label %18

17:                                               ; preds = %1
  br label %19

18:                                               ; preds = %12, %7
  br label %19

19:                                               ; preds = %18, %17
  %.0 = phi i32 [ -20, %17 ], [ 0, %18 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zor(%struct.ref_s* nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = xor i16 %3, %5
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = lshr i16 %12, 2
  %14 = and i16 %13, 63
  %15 = zext i16 %14 to i32
  switch i32 %15, label %29 [
    i32 1, label %16
    i32 5, label %23
  ]

16:                                               ; preds = %10
  %17 = bitcast %struct.ref_s* %0 to i16*
  %18 = load i16, i16* %17, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %20 = bitcast %union.v* %19 to i16*
  %21 = load i16, i16* %20, align 8
  %22 = or i16 %21, %18
  store i16 %22, i16* %20, align 8
  br label %30

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %25
  store i64 %28, i64* %26, align 8
  br label %30

29:                                               ; preds = %10
  br label %33

30:                                               ; preds = %23, %16
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  br label %33

33:                                               ; preds = %30, %29, %9
  %.0 = phi i32 [ -20, %29 ], [ 0, %30 ], [ -20, %9 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zxor(%struct.ref_s* nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = xor i16 %3, %5
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = lshr i16 %12, 2
  %14 = and i16 %13, 63
  %15 = zext i16 %14 to i32
  switch i32 %15, label %29 [
    i32 1, label %16
    i32 5, label %23
  ]

16:                                               ; preds = %10
  %17 = bitcast %struct.ref_s* %0 to i16*
  %18 = load i16, i16* %17, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %20 = bitcast %union.v* %19 to i16*
  %21 = load i16, i16* %20, align 8
  %22 = xor i16 %21, %18
  store i16 %22, i16* %20, align 8
  br label %30

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = xor i64 %27, %25
  store i64 %28, i64* %26, align 8
  br label %30

29:                                               ; preds = %10
  br label %33

30:                                               ; preds = %23, %16
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  br label %33

33:                                               ; preds = %30, %29, %9
  %.0 = phi i32 [ -20, %29 ], [ 0, %30 ], [ -20, %9 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zbitshift(%struct.ref_s* nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %43

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = and i16 %9, 252
  %11 = icmp eq i16 %10, 20
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %43

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, -31
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 31
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  store i64 0, i64* %22, align 8
  br label %40

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %25, 2147483648
  %.not = icmp eq i64 %26, 0
  br i1 %.not, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 0, %25
  %31 = and i64 %30, 4294967295
  %32 = lshr i64 %29, %31
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  br label %39

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %25, 4294967295
  %38 = shl i64 %36, %37
  store i64 %38, i64* %35, align 8
  br label %39

39:                                               ; preds = %34, %27
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 -1
  store %struct.ref_s* %42, %struct.ref_s** @osp, align 8
  br label %43

43:                                               ; preds = %40, %12, %6
  %.0 = phi i32 [ 0, %40 ], [ -20, %12 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zrelbit_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([14 x %struct.op_def], [14 x %struct.op_def]* @zrelbit_op_init.my_defs, i64 0, i64 0)) #4
  ret void
}

declare dso_local i32 @z_op_init(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @obj_compare(%struct.ref_s* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 63
  %7 = zext i16 %6 to i32
  switch i32 %7, label %91 [
    i32 5, label %8
    i32 11, label %41
    i32 13, label %59
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = lshr i16 %10, 2
  %12 = and i16 %11, 63
  %13 = zext i16 %12 to i32
  switch i32 %13, label %34 [
    i32 5, label %14
    i32 11, label %33
  ]

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = ashr i32 %1, 2
  br label %31

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = ashr i32 %1, 1
  br label %30

30:                                               ; preds = %28, %22
  %.02 = phi i32 [ %29, %28 ], [ %1, %22 ]
  br label %31

31:                                               ; preds = %30, %20
  %.13 = phi i32 [ %21, %20 ], [ %.02, %30 ]
  %32 = and i32 %.13, 1
  br label %103

33:                                               ; preds = %8
  br label %35

34:                                               ; preds = %8
  br label %103

35:                                               ; preds = %33
  %36 = bitcast %struct.ref_s* %0 to float*
  %37 = load float, float* %36, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sitofp i64 %39 to float
  br label %92

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %43 = bitcast %union.v* %42 to float*
  %44 = load float, float* %43, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %46 = load i16, i16* %45, align 8
  %47 = lshr i16 %46, 2
  %48 = and i16 %47, 63
  %49 = zext i16 %48 to i32
  switch i32 %49, label %57 [
    i32 5, label %50
    i32 11, label %54
  ]

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to float
  br label %58

54:                                               ; preds = %41
  %55 = bitcast %struct.ref_s* %0 to float*
  %56 = load float, float* %55, align 8
  br label %58

57:                                               ; preds = %41
  br label %103

58:                                               ; preds = %54, %50
  %.01 = phi float [ %56, %54 ], [ %53, %50 ]
  br label %92

59:                                               ; preds = %2
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %61 = load i16, i16* %60, align 8
  %62 = and i16 %61, 512
  %.not.not = icmp eq i16 %62, 0
  br i1 %.not.not, label %63, label %64

63:                                               ; preds = %59
  br label %103

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %66 = load i16, i16* %65, align 8
  %67 = and i16 %66, 252
  %68 = icmp eq i16 %67, 52
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %103

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %72 = load i16, i16* %71, align 8
  %73 = and i16 %72, 512
  %.not.not5 = icmp eq i16 %73, 0
  br i1 %.not.not5, label %74, label %75

74:                                               ; preds = %70
  br label %103

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %77 = bitcast %union.v* %76 to i8**
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %80 = load i16, i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = bitcast %struct.ref_s* %0 to i8**
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %85 = load i16, i16* %84, align 2
  %86 = zext i16 %85 to i32
  %87 = call i32 (i8*, i32, i8*, i32, ...) bitcast (i32 (...)* @bytes_compare to i32 (i8*, i32, i8*, i32, ...)*)(i8* noundef %78, i32 noundef %81, i8* noundef %83, i32 noundef %86) #4
  %88 = add nsw i32 %87, 1
  %89 = lshr i32 %1, %88
  %90 = and i32 %89, 1
  br label %103

91:                                               ; preds = %2
  br label %103

92:                                               ; preds = %58, %35
  %.04 = phi float [ %44, %58 ], [ %40, %35 ]
  %.1 = phi float [ %.01, %58 ], [ %37, %35 ]
  %93 = fcmp ogt float %.04, %.1
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = ashr i32 %1, 2
  br label %101

96:                                               ; preds = %92
  %97 = fcmp oeq float %.04, %.1
  br i1 %97, label %98, label %100

98:                                               ; preds = %96
  %99 = ashr i32 %1, 1
  br label %100

100:                                              ; preds = %98, %96
  %.2 = phi i32 [ %99, %98 ], [ %1, %96 ]
  br label %101

101:                                              ; preds = %100, %94
  %.3 = phi i32 [ %95, %94 ], [ %.2, %100 ]
  %102 = and i32 %.3, 1
  br label %103

103:                                              ; preds = %101, %91, %75, %74, %69, %63, %57, %34, %31
  %.0 = phi i32 [ -20, %91 ], [ -7, %63 ], [ -7, %74 ], [ %90, %75 ], [ -20, %69 ], [ -20, %57 ], [ %102, %101 ], [ -20, %34 ], [ %32, %31 ]
  ret i32 %.0
}

declare dso_local i32 @bytes_compare(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
