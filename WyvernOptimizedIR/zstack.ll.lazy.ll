; ModuleID = './zstack.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp_nargs = external dso_local global [6 x %struct.ref_s*], align 16
@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@osbot = external dso_local global %struct.ref_s*, align 8
@zstack_op_init.my_defs = internal global [10 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zclear_stack }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zcleartomark }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zcount }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcounttomark }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zdup }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zexch }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zindex }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zpop }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zroll }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"0clear\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"0cleartomark\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0count\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"0counttomark\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"1dup\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"2exch\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"2index\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1pop\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"2roll\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zpop(%struct.ref_s* noundef readnone %0) #0 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %8

8:                                                ; preds = %5, %4
  %.0 = phi i32 [ -17, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zexch(%struct.ref_s* noundef %0) #1 {
  %2 = alloca %struct.ref_s, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %4 = icmp ugt %struct.ref_s* %3, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %8 = bitcast %struct.ref_s* %2 to i8*
  %9 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %8, i8* noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %11 = bitcast %struct.ref_s* %10 to i8*
  %12 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %11, i8* noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false)
  %13 = bitcast %struct.ref_s* %0 to i8*
  %14 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %13, i8* noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false)
  br label %15

15:                                               ; preds = %6, %5
  %.0 = phi i32 [ -17, %5 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zdup(%struct.ref_s* noundef %0) #1 {
  %2 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 0), align 16
  %3 = icmp ugt %struct.ref_s* %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %6, %struct.ref_s** @osp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %8 = icmp ugt %struct.ref_s* %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  br label %15

12:                                               ; preds = %5
  %13 = bitcast %struct.ref_s* %6 to i8*
  %14 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %13, i8* noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false)
  br label %15

15:                                               ; preds = %12, %9, %4
  %.0 = phi i32 [ -17, %4 ], [ -16, %9 ], [ 0, %12 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zindex(%struct.ref_s* noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %11 = ptrtoint %struct.ref_s* %0 to i64
  %12 = ptrtoint %struct.ref_s* %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 4
  %.not = icmp ult i64 %9, %14
  br i1 %.not, label %16, label %15

15:                                               ; preds = %7
  br label %24

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = xor i64 %18, -1
  %sext = shl i64 %19, 32
  %20 = ashr exact i64 %sext, 32
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %20
  %22 = bitcast %struct.ref_s* %0 to i8*
  %23 = bitcast %struct.ref_s* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %22, i8* noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false)
  br label %24

24:                                               ; preds = %16, %15, %6
  %.0 = phi i32 [ -15, %15 ], [ 0, %16 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @zroll(%struct.ref_s* noundef %0) #3 {
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 252
  %7 = icmp eq i16 %6, 20
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %79

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = and i16 %11, 252
  %13 = icmp eq i16 %12, 20
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %79

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %19 = ptrtoint %struct.ref_s* %3 to i64
  %20 = ptrtoint %struct.ref_s* %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 4
  %23 = icmp ugt i64 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %79

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -2
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  br label %79

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %sext = shl i64 %27, 32
  %36 = ashr exact i64 %sext, 32
  %37 = srem i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -2
  store %struct.ref_s* %40, %struct.ref_s** @osp, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %42 = icmp slt i32 %38, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = add nsw i32 %38, %28
  br label %49

45:                                               ; preds = %33
  %46 = icmp eq i32 %38, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %79

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %43
  %.03 = phi i32 [ %44, %43 ], [ %38, %48 ]
  %50 = sub nsw i32 %28, %.03
  %sext5 = shl i64 %27, 32
  %51 = ashr exact i64 %sext5, 32
  %52 = sub nsw i64 0, %51
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i64 %52
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 1
  br label %55

55:                                               ; preds = %72, %49
  %.04 = phi i32 [ 0, %49 ], [ %77, %72 ]
  %.02 = phi i32 [ %28, %49 ], [ %62, %72 ]
  %.not = icmp eq i32 %.02, 0
  br i1 %.not, label %78, label %56

56:                                               ; preds = %55
  %57 = zext i32 %.04 to i64
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 %57
  %59 = bitcast %struct.ref_s* %2 to i8*
  %60 = bitcast %struct.ref_s* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %59, i8* noundef nonnull align 8 dereferenceable(16) %60, i64 16, i1 false)
  br label %61

61:                                               ; preds = %65, %56
  %.1 = phi i32 [ %.02, %56 ], [ %62, %65 ]
  %.01 = phi i32 [ %.04, %56 ], [ %64, %65 ]
  %62 = add nsw i32 %.1, -1
  %63 = add nsw i32 %.01, %50
  %64 = srem i32 %63, %28
  %.not6 = icmp eq i32 %64, %.04
  br i1 %.not6, label %72, label %65

65:                                               ; preds = %61
  %66 = sext i32 %.01 to i64
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 %66
  %68 = sext i32 %64 to i64
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 %68
  %70 = bitcast %struct.ref_s* %67 to i8*
  %71 = bitcast %struct.ref_s* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %70, i8* noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false)
  br label %61, !llvm.loop !4

72:                                               ; preds = %61
  %73 = sext i32 %.01 to i64
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 %73
  %75 = bitcast %struct.ref_s* %74 to i8*
  %76 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %75, i8* noundef nonnull align 8 dereferenceable(16) %76, i64 16, i1 false)
  %77 = add nuw nsw i32 %.04, 1
  br label %55, !llvm.loop !6

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %78, %47, %30, %24, %14, %8
  %.0 = phi i32 [ -15, %24 ], [ 0, %30 ], [ 0, %78 ], [ 0, %47 ], [ -20, %14 ], [ -20, %8 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zclear_stack(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1
  store %struct.ref_s* %3, %struct.ref_s** @osp, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zcount(%struct.ref_s* noundef %0) #0 {
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
  %9 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %10 = ptrtoint %struct.ref_s* %2 to i64
  %11 = ptrtoint %struct.ref_s* %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 4
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %15, align 8
  br label %16

16:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @zcleartomark(%struct.ref_s* noundef %0) #4 {
  br label %2

2:                                                ; preds = %11, %1
  %.01 = phi %struct.ref_s* [ %0, %1 ], [ %12, %11 ]
  %3 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %.not = icmp ult %struct.ref_s* %.01, %3
  br i1 %.not, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 24
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  br label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1
  br label %2, !llvm.loop !7

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %9
  %.0 = phi i32 [ 0, %9 ], [ -24, %13 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @zcounttomark(%struct.ref_s* noundef %0) #4 {
  br label %2

2:                                                ; preds = %24, %1
  %.01 = phi %struct.ref_s* [ %0, %1 ], [ %25, %24 ]
  %3 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %.not = icmp ult %struct.ref_s* %.01, %3
  br i1 %.not, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 24
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %12 = icmp ugt %struct.ref_s* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  store %struct.ref_s* %15, %struct.ref_s** @osp, align 8
  br label %27

16:                                               ; preds = %9
  %17 = ptrtoint %struct.ref_s* %10 to i64
  %18 = ptrtoint %struct.ref_s* %.01 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 4
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 0, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %23, align 8
  br label %27

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1
  br label %2, !llvm.loop !8

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %16, %13
  %.0 = phi i32 [ -16, %13 ], [ 0, %16 ], [ -24, %26 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zstack_op_init() #5 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([10 x %struct.op_def], [10 x %struct.op_def]* @zstack_op_init.my_defs, i64 0, i64 0)) #7
  ret void
}

declare dso_local i32 @z_op_init(...) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
