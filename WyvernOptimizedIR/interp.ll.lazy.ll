; ModuleID = './interp.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/interp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.stream_s = type { i8*, i8*, i8*, i32, i8, i8, i64, %struct.stream_procs, i32, %struct._IO_FILE*, %struct.stream_s*, i16, i32 }
%struct.stream_procs = type { i32 (%struct.stream_s*)*, i32 (%struct.stream_s*, i8)*, i32 (%struct.stream_s*, i64*)*, i32 (%struct.stream_s*, i64)*, i32 (%struct.stream_s*)*, i32 (%struct.stream_s*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }

@ostack = internal global [520 x %struct.ref_s] zeroinitializer, align 16
@osbot = dso_local global %struct.ref_s* null, align 8
@osp = dso_local global %struct.ref_s* null, align 8
@ostop = dso_local global %struct.ref_s* null, align 8
@osp_nargs = dso_local global [6 x %struct.ref_s*] zeroinitializer, align 16
@estack = dso_local global [151 x %struct.ref_s] zeroinitializer, align 16
@esp = dso_local global %struct.ref_s* null, align 8
@estop = dso_local global %struct.ref_s* null, align 8
@dstack = dso_local global [20 x %struct.ref_s] zeroinitializer, align 16
@dsp = dso_local global %struct.ref_s* null, align 8
@dstop = dso_local global %struct.ref_s* null, align 8
@special_ops = internal global [7 x i32 (%struct.ref_s*)*] [i32 (%struct.ref_s*)* @zadd, i32 (%struct.ref_s*)* @zdup, i32 (%struct.ref_s*)* @zexch, i32 (%struct.ref_s*)* @zifelse, i32 (%struct.ref_s*)* @zle, i32 (%struct.ref_s*)* @zpop, i32 (%struct.ref_s*)* @zsub], align 16
@name_errordict = external dso_local global %struct.ref_s, align 8
@name_ErrorNames = external dso_local global %struct.ref_s, align 8
@error_object = dso_local global %struct.ref_s zeroinitializer, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @interp_init(i32 noundef %0) #0 {
  store %struct.ref_s* getelementptr inbounds ([520 x %struct.ref_s], [520 x %struct.ref_s]* @ostack, i64 0, i64 10), %struct.ref_s** @osbot, align 8
  store %struct.ref_s* getelementptr inbounds ([520 x %struct.ref_s], [520 x %struct.ref_s]* @ostack, i64 0, i64 9), %struct.ref_s** @osp, align 8
  store %struct.ref_s* getelementptr inbounds ([520 x %struct.ref_s], [520 x %struct.ref_s]* @ostack, i64 0, i64 509), %struct.ref_s** @ostop, align 8
  br label %2

2:                                                ; preds = %8, %1
  %.01 = phi %struct.ref_s* [ getelementptr inbounds ([520 x %struct.ref_s], [520 x %struct.ref_s]* @ostack, i64 0, i64 0), %1 ], [ %9, %8 ]
  %3 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %4 = icmp ult %struct.ref_s* %.01, %3
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = bitcast %struct.ref_s* %.01 to i16*
  store i16 0, i16* %6, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  store i16 -4, i16* %7, align 8
  br label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 1
  br label %2, !llvm.loop !4

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %20, %10
  %.0 = phi i32 [ 1, %10 ], [ %21, %20 ]
  %12 = icmp ult i32 %.0, 6
  br i1 %12, label %13, label %22

13:                                               ; preds = %11
  %14 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -1
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 %15
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds [6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 %18
  store %struct.ref_s* %17, %struct.ref_s** %19, align 8
  br label %20

20:                                               ; preds = %13
  %21 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !6

22:                                               ; preds = %11
  store %struct.ref_s* getelementptr inbounds ([151 x %struct.ref_s], [151 x %struct.ref_s]* @estack, i64 0, i64 0), %struct.ref_s** @esp, align 8
  store %struct.ref_s* getelementptr inbounds ([151 x %struct.ref_s], [151 x %struct.ref_s]* @estack, i64 0, i64 150), %struct.ref_s** @estop, align 8
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds [20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %25, %struct.ref_s** @dsp, align 8
  store %struct.ref_s* getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i64 0, i64 19), %struct.ref_s** @dstop, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @interp_fix_op(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = bitcast %struct.ref_s* %0 to i32 (%struct.ref_s*)**
  %3 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %2, align 8
  br label %4

4:                                                ; preds = %14, %1
  %.0 = phi i32 [ 7, %1 ], [ %5, %14 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp sgt i32 %.0, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [7 x i32 (%struct.ref_s*)*], [7 x i32 (%struct.ref_s*)*]* @special_ops, i64 0, i64 %8
  %10 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %9, align 8
  %11 = icmp ne i32 (%struct.ref_s*)* %3, %10
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ]
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %4, !llvm.loop !7

15:                                               ; preds = %12
  %16 = icmp sgt i32 %.0, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = bitcast %struct.ref_s* %0 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* %3, i32 (%struct.ref_s*)** %18, align 8
  %.0.tr = trunc i32 %.0 to i16
  %19 = shl i16 %.0.tr, 2
  %20 = add i16 %19, 61
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 %20, i16* %21, align 8
  br label %22

22:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @interpret(%struct.ref_s* noundef %0, i32 noundef %1) #1 {
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 1
  store %struct.ref_s* %8, %struct.ref_s** @esp, align 8
  %9 = bitcast %struct.ref_s* %8 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @interp_exit, i32 (%struct.ref_s*)** %9, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 1, i32 1
  store i16 37, i16* %10, align 8
  br label %11

11:                                               ; preds = %57, %2
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = call i32 @interp(%struct.ref_s* noundef %12)
  %14 = icmp eq i32 %13, -100
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %64

16:                                               ; preds = %11
  %17 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %20 = icmp ult %struct.ref_s* %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  store %struct.ref_s* %23, %struct.ref_s** @osp, align 8
  br label %24

24:                                               ; preds = %21, %16
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %25, label %26

25:                                               ; preds = %24
  br label %64

26:                                               ; preds = %24
  %27 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_errordict, %struct.ref_s** noundef nonnull %5) #5
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %31 = call i32 @dict_lookup(%struct.ref_s* noundef %30, %struct.ref_s* noundef %30, %struct.ref_s* noundef nonnull @name_ErrorNames, %struct.ref_s** noundef nonnull %6) #5
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %26
  br label %64

34:                                               ; preds = %29
  switch i32 %13, label %36 [
    i32 -3, label %35
    i32 -5, label %35
    i32 -16, label %35
    i32 -25, label %35
  ]

35:                                               ; preds = %34, %34, %34, %34
  br label %64

36:                                               ; preds = %34
  %37 = icmp sgt i32 %13, -2
  br i1 %37, label %45, label %38

38:                                               ; preds = %36
  %39 = sub nsw i32 0, %13
  %40 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 0, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %36
  br label %64

46:                                               ; preds = %38
  %47 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %48 = bitcast %struct.ref_s** %6 to %struct.ref_s***
  %49 = load %struct.ref_s**, %struct.ref_s*** %48, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** %49, align 8
  %51 = xor i32 %13, -1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 %52
  %54 = call i32 @dict_lookup(%struct.ref_s* noundef %47, %struct.ref_s* noundef %47, %struct.ref_s* noundef %53, %struct.ref_s** noundef nonnull %3) #5
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %64

57:                                               ; preds = %46
  %58 = bitcast %struct.ref_s** %3 to i8**
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %60, i8* noundef nonnull align 8 dereferenceable(16) %59, i64 16, i1 false)
  store %struct.ref_s* %4, %struct.ref_s** %3, align 8
  %61 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 1
  store %struct.ref_s* %62, %struct.ref_s** @osp, align 8
  %63 = bitcast %struct.ref_s* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %63, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i64 16, i1 false)
  br label %11

64:                                               ; preds = %56, %45, %35, %33, %25, %15
  %.0 = phi i32 [ 0, %15 ], [ %13, %33 ], [ %13, %45 ], [ %13, %56 ], [ %13, %35 ], [ %13, %25 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @interp_exit(%struct.ref_s* nocapture noundef readnone %0) #2 {
  ret i32 -100
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @interp(%struct.ref_s* noundef %0) #1 {
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.stream_s*, align 8
  %5 = alloca %struct.stream_s, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %.not = icmp ult %struct.ref_s* %6, %7
  br i1 %.not, label %10, label %8

8:                                                ; preds = %1
  store %struct.ref_s* %6, %struct.ref_s** @esp, align 8
  %9 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  br label %432

10:                                               ; preds = %1
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 1
  %13 = bitcast %struct.ref_s* %12 to i8*
  %14 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %13, i8* noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false)
  br label %400

15:                                               ; preds = %.backedge, %.preheader17
  %.09 = phi %struct.ref_s* [ %.09.ph, %.preheader17 ], [ %.09.be, %.backedge ]
  %.06 = phi %struct.ref_s* [ %.06.ph, %.preheader17 ], [ %.06.be, %.backedge ]
  %.03 = phi i32 [ %.03.ph, %.preheader17 ], [ %.03.be, %.backedge ]
  %.02 = phi %struct.ref_s* [ %.02.ph, %.preheader17 ], [ %.02.be, %.backedge ]
  br label %16

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 1
  %18 = load i16, i16* %17, align 8
  %trunc = trunc i16 %18 to i8
  switch i8 %trunc, label %.loopexit18 [
    i8 0, label %19
    i8 1, label %19
    i8 8, label %19
    i8 9, label %19
    i8 12, label %19
    i8 13, label %19
    i8 40, label %19
    i8 41, label %19
    i8 52, label %19
    i8 53, label %19
    i8 2, label %21
    i8 4, label %21
    i8 5, label %21
    i8 10, label %21
    i8 14, label %21
    i8 16, label %21
    i8 17, label %21
    i8 20, label %21
    i8 21, label %21
    i8 24, label %21
    i8 25, label %21
    i8 28, label %21
    i8 32, label %21
    i8 36, label %21
    i8 42, label %21
    i8 44, label %21
    i8 45, label %21
    i8 48, label %21
    i8 49, label %21
    i8 54, label %21
    i8 56, label %21
    i8 57, label %21
    i8 60, label %21
    i8 61, label %21
    i8 65, label %22
    i8 69, label %34
    i8 73, label %48
    i8 77, label %67
    i8 81, label %121
    i8 85, label %136
    i8 89, label %148
    i8 33, label %160
    i8 37, label %161
    i8 29, label %204
    i8 15, label %314
    i8 55, label %347
  ]

19:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %20 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %20, i64 16, i1 false)
  br label %432

21:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  br label %392

22:                                               ; preds = %16
  %23 = call i32 @zadd(%struct.ref_s* noundef %.06) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %26 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false)
  br label %432

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -1
  %29 = add nsw i32 %.03, -1
  %30 = icmp sgt i32 %.03, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %.backedge

.backedge:                                        ; preds = %31, %45, %64, %97, %120, %133, %145, %157, %201, %248, %289, %302, %313, %334, %366
  %.09.be = phi %struct.ref_s* [ %367, %366 ], [ %335, %334 ], [ %.09, %313 ], [ %.09, %302 ], [ %.09, %289 ], [ %.211, %248 ], [ %.09, %201 ], [ %.09, %157 ], [ %.09, %145 ], [ %.09, %133 ], [ %.09, %97 ], [ %.110, %120 ], [ %.09, %64 ], [ %.09, %45 ], [ %.09, %31 ]
  %.06.be = phi %struct.ref_s* [ %.06, %366 ], [ %.06, %334 ], [ %.06, %313 ], [ %297, %302 ], [ %253, %289 ], [ %.06, %248 ], [ %165, %201 ], [ %154, %157 ], [ %142, %145 ], [ %127, %133 ], [ %86, %97 ], [ %86, %120 ], [ %.06, %64 ], [ %40, %45 ], [ %28, %31 ]
  %.03.be = phi i32 [ 0, %366 ], [ 0, %334 ], [ 0, %313 ], [ %300, %302 ], [ %287, %289 ], [ %242, %248 ], [ %199, %201 ], [ %155, %157 ], [ %143, %145 ], [ %131, %133 ], [ 0, %97 ], [ %110, %120 ], [ %62, %64 ], [ %43, %45 ], [ %29, %31 ]
  %.02.be = phi %struct.ref_s* [ %2, %366 ], [ %2, %334 ], [ %.01, %313 ], [ %303, %302 ], [ %290, %289 ], [ %238, %248 ], [ %202, %201 ], [ %158, %157 ], [ %146, %145 ], [ %134, %133 ], [ %101, %97 ], [ %106, %120 ], [ %65, %64 ], [ %46, %45 ], [ %32, %31 ]
  br label %15

33:                                               ; preds = %27
  br label %406

34:                                               ; preds = %16
  %35 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %36 = icmp ult %struct.ref_s* %.06, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %38 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false)
  br label %432

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 1
  %41 = bitcast %struct.ref_s* %40 to i8*
  %42 = bitcast %struct.ref_s* %.06 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %41, i8* noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false)
  %43 = add nsw i32 %.03, -1
  %44 = icmp sgt i32 %.03, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %.backedge

47:                                               ; preds = %39
  br label %406

48:                                               ; preds = %16
  %49 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 2), align 16
  %50 = icmp ult %struct.ref_s* %.06, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %52 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %52, i64 16, i1 false)
  br label %432

53:                                               ; preds = %48
  %54 = bitcast %struct.ref_s* %2 to i8*
  %55 = bitcast %struct.ref_s* %.06 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %54, i8* noundef nonnull align 8 dereferenceable(16) %55, i64 16, i1 false)
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -1
  %57 = bitcast %struct.ref_s* %.06 to i8*
  %58 = bitcast %struct.ref_s* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %57, i8* noundef nonnull align 8 dereferenceable(16) %58, i64 16, i1 false)
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -1
  %60 = bitcast %struct.ref_s* %59 to i8*
  %61 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %60, i8* noundef nonnull align 8 dereferenceable(16) %61, i64 16, i1 false)
  %62 = add nsw i32 %.03, -1
  %63 = icmp sgt i32 %.03, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %.backedge

66:                                               ; preds = %53
  br label %406

67:                                               ; preds = %16
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -2, i32 1
  %69 = load i16, i16* %68, align 8
  %70 = and i16 %69, 252
  %.not239 = icmp eq i16 %70, 4
  br i1 %.not239, label %73, label %71

71:                                               ; preds = %67
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %72 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %72, i64 16, i1 false)
  br label %432

73:                                               ; preds = %67
  %74 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %.not240 = icmp ult %struct.ref_s* %.09, %74
  br i1 %.not240, label %77, label %75

75:                                               ; preds = %73
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %76 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %76, i64 16, i1 false)
  br label %432

77:                                               ; preds = %73
  %78 = icmp sgt i32 %.03, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  %81 = bitcast %struct.ref_s* %.09 to %struct.ref_s**
  store %struct.ref_s* %80, %struct.ref_s** %81, align 8
  %82 = trunc i32 %.03 to i16
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 0, i32 2
  store i16 %82, i16* %83, align 2
  br label %85

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %79
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -3
  %87 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -2, i32 0
  %88 = bitcast %union.v* %87 to i16*
  %89 = load i16, i16* %88, align 8
  %.not241 = icmp eq i16 %89, 0
  br i1 %.not241, label %92, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -1
  br label %93

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi %struct.ref_s* [ %91, %90 ], [ %.06, %92 ]
  %95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i64 0, i32 1
  %96 = load i16, i16* %95, align 8
  %trunc242 = trunc i16 %96 to i8
  switch i8 %trunc242, label %97 [
    i8 3, label %102
    i8 43, label %103
  ]

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 1
  %99 = bitcast %struct.ref_s* %98 to i8*
  %100 = bitcast %struct.ref_s* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %99, i8* noundef nonnull align 8 dereferenceable(16) %100, i64 16, i1 false)
  %101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 1
  br label %.backedge

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %93
  br label %104

104:                                              ; preds = %103
  %105 = bitcast %struct.ref_s* %94 to %struct.ref_s**
  %106 = load %struct.ref_s*, %struct.ref_s** %105, align 8
  %107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i64 0, i32 2
  %108 = load i16, i16* %107, align 2
  %109 = zext i16 %108 to i32
  %110 = add nsw i32 %109, -1
  %111 = icmp ult i16 %108, 2
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = icmp eq i16 %108, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %112
  br label %.preheader

115:                                              ; preds = %112
  br label %120

116:                                              ; preds = %104
  %117 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 1
  %118 = bitcast %struct.ref_s* %117 to i8*
  %119 = bitcast %struct.ref_s* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %118, i8* noundef nonnull align 8 dereferenceable(16) %119, i64 16, i1 false)
  br label %120

120:                                              ; preds = %116, %115
  %.110 = phi %struct.ref_s* [ %.09, %115 ], [ %117, %116 ]
  br label %.backedge

121:                                              ; preds = %16
  %122 = call i32 (%struct.ref_s*, i32, ...) bitcast (i32 (...)* @obj_compare to i32 (%struct.ref_s*, i32, ...)*)(%struct.ref_s* noundef %.06, i32 noundef 3) #5
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %125 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %125, i64 16, i1 false)
  br label %432

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -1
  %128 = trunc i32 %122 to i16
  %129 = bitcast %struct.ref_s* %127 to i16*
  store i16 %128, i16* %129, align 8
  %130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -1, i32 1
  store i16 4, i16* %130, align 8
  %131 = add nsw i32 %.03, -1
  %132 = icmp sgt i32 %.03, 1
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %.backedge

135:                                              ; preds = %126
  br label %406

136:                                              ; preds = %16
  %137 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %138 = icmp ult %struct.ref_s* %.06, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %140 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %140, i64 16, i1 false)
  br label %432

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -1
  %143 = add nsw i32 %.03, -1
  %144 = icmp sgt i32 %.03, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %.backedge

147:                                              ; preds = %141
  br label %406

148:                                              ; preds = %16
  %149 = call i32 @zsub(%struct.ref_s* noundef %.06) #5
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %152 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %152, i64 16, i1 false)
  br label %432

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 -1
  %155 = add nsw i32 %.03, -1
  %156 = icmp sgt i32 %.03, 1
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %.backedge

159:                                              ; preds = %153
  br label %406

160:                                              ; preds = %16
  br label %.backedge21

.backedge21:                                      ; preds = %160, %182, %270, %344, %389, %396
  %.17.be = phi %struct.ref_s* [ %397, %396 ], [ %.06, %389 ], [ %.06, %344 ], [ %253, %270 ], [ %165, %182 ], [ %.06, %160 ]
  br label %400

161:                                              ; preds = %16
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %.06, %struct.ref_s** @osp, align 8
  %162 = bitcast %struct.ref_s* %.02 to i32 (%struct.ref_s*)**
  %163 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %162, align 8
  %164 = call i32 %163(%struct.ref_s* noundef %.06) #5
  %165 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %.not238 = icmp eq i32 %164, 0
  br i1 %.not238, label %198, label %166

166:                                              ; preds = %161
  switch i32 %164, label %.loopexit20 [
    i32 1, label %167
    i32 -20, label %186
  ]

167:                                              ; preds = %166
  %168 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %169 = icmp ugt %struct.ref_s* %168, %.09
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = icmp sgt i32 %.03, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  %174 = bitcast %struct.ref_s* %.09 to %struct.ref_s**
  store %struct.ref_s* %173, %struct.ref_s** %174, align 8
  %175 = trunc i32 %.03 to i16
  %176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 0, i32 2
  store i16 %175, i16* %176, align 2
  br label %178

177:                                              ; preds = %170
  br label %178

178:                                              ; preds = %177, %172
  br label %184

179:                                              ; preds = %167
  %180 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %181 = icmp eq %struct.ref_s* %180, %.09
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %.backedge21

183:                                              ; preds = %179
  br label %184

184:                                              ; preds = %183, %178
  %185 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  br label %.preheader

186:                                              ; preds = %166
  %187 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %188 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %187, i64 -1
  %189 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 2
  %190 = load i16, i16* %189, align 2
  %191 = zext i16 %190 to i64
  %192 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %188, i64 %191
  %193 = icmp ult %struct.ref_s* %165, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %186
  br label %195

195:                                              ; preds = %194, %186
  %.013 = phi i32 [ -17, %194 ], [ %164, %186 ]
  br label %196

.loopexit20:                                      ; preds = %166
  br label %196

196:                                              ; preds = %.loopexit20, %195
  %.114 = phi i32 [ %.013, %195 ], [ %164, %.loopexit20 ]
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %197 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %197, i64 16, i1 false)
  br label %432

198:                                              ; preds = %161
  %199 = add nsw i32 %.03, -1
  %200 = icmp sgt i32 %.03, 1
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %.backedge

203:                                              ; preds = %198
  br label %406

204:                                              ; preds = %16
  %205 = bitcast %struct.ref_s* %.02 to %struct.name_s**
  %206 = load %struct.name_s*, %struct.name_s** %205, align 8
  %207 = getelementptr inbounds %struct.name_s, %struct.name_s* %206, i64 0, i32 4
  %208 = load %struct.ref_s*, %struct.ref_s** %207, align 8
  %209 = icmp ugt %struct.ref_s* %208, inttoptr (i64 1 to %struct.ref_s*)
  br i1 %209, label %218, label %210

210:                                              ; preds = %204
  %211 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %212 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([20 x %struct.ref_s], [20 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef %211, %struct.ref_s* noundef %.02, %struct.ref_s** noundef nonnull %3) #5
  %213 = icmp slt i32 %212, 1
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %215 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %215, i64 16, i1 false)
  br label %432

216:                                              ; preds = %210
  %217 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  br label %218

218:                                              ; preds = %216, %204
  %.01 = phi %struct.ref_s* [ %208, %204 ], [ %217, %216 ]
  %219 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %220 = load i16, i16* %219, align 8
  %trunc233 = trunc i16 %220 to i8
  switch i8 %trunc233, label %305 [
    i8 3, label %221
    i8 43, label %221
    i8 37, label %249
    i8 2, label %292
    i8 4, label %292
    i8 20, label %292
    i8 42, label %292
    i8 44, label %292
    i8 54, label %292
  ]

221:                                              ; preds = %218, %218
  %222 = icmp sgt i32 %.03, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  %225 = bitcast %struct.ref_s* %.09 to %struct.ref_s**
  store %struct.ref_s* %224, %struct.ref_s** %225, align 8
  %226 = trunc i32 %.03 to i16
  %227 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 0, i32 2
  store i16 %226, i16* %227, align 2
  br label %229

228:                                              ; preds = %221
  br label %229

229:                                              ; preds = %228, %223
  %230 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %.not237 = icmp ult %struct.ref_s* %.09, %230
  br i1 %.not237, label %233, label %231

231:                                              ; preds = %229
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %232 = bitcast %struct.ref_s* %.01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %232, i64 16, i1 false)
  br label %432

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 1
  %235 = bitcast %struct.ref_s* %234 to i8*
  %236 = bitcast %struct.ref_s* %.01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %235, i8* noundef nonnull align 8 dereferenceable(16) %236, i64 16, i1 false)
  %237 = bitcast %struct.ref_s* %.01 to %struct.ref_s**
  %238 = load %struct.ref_s*, %struct.ref_s** %237, align 8
  %239 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 2
  %240 = load i16, i16* %239, align 2
  %241 = zext i16 %240 to i32
  %242 = add nsw i32 %241, -1
  %243 = icmp ult i16 %240, 2
  br i1 %243, label %244, label %248

244:                                              ; preds = %233
  %245 = icmp eq i16 %240, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %244
  br label %.preheader

247:                                              ; preds = %244
  br label %248

248:                                              ; preds = %247, %233
  %.211 = phi %struct.ref_s* [ %.09, %247 ], [ %234, %233 ]
  br label %.backedge

249:                                              ; preds = %218
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %.06, %struct.ref_s** @osp, align 8
  %250 = bitcast %struct.ref_s* %.01 to i32 (%struct.ref_s*)**
  %251 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %250, align 8
  %252 = call i32 %251(%struct.ref_s* noundef %.06) #5
  %253 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %.not235 = icmp eq i32 %252, 0
  br i1 %.not235, label %286, label %254

254:                                              ; preds = %249
  switch i32 %252, label %.loopexit19 [
    i32 1, label %255
    i32 -20, label %274
  ]

255:                                              ; preds = %254
  %256 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %257 = icmp ugt %struct.ref_s* %256, %.09
  br i1 %257, label %258, label %267

258:                                              ; preds = %255
  %259 = icmp sgt i32 %.03, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  %262 = bitcast %struct.ref_s* %.09 to %struct.ref_s**
  store %struct.ref_s* %261, %struct.ref_s** %262, align 8
  %263 = trunc i32 %.03 to i16
  %264 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 0, i32 2
  store i16 %263, i16* %264, align 2
  br label %266

265:                                              ; preds = %258
  br label %266

266:                                              ; preds = %265, %260
  br label %272

267:                                              ; preds = %255
  %268 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %269 = icmp eq %struct.ref_s* %268, %.09
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  br label %.backedge21

271:                                              ; preds = %267
  br label %272

272:                                              ; preds = %271, %266
  %273 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  br label %.preheader

274:                                              ; preds = %254
  %275 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %276 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %275, i64 -1
  %277 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 2
  %278 = load i16, i16* %277, align 2
  %279 = zext i16 %278 to i64
  %280 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %276, i64 %279
  %281 = icmp ult %struct.ref_s* %253, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %283

283:                                              ; preds = %282, %274
  %.215 = phi i32 [ -17, %282 ], [ %252, %274 ]
  br label %284

.loopexit19:                                      ; preds = %254
  br label %284

284:                                              ; preds = %.loopexit19, %283
  %.316 = phi i32 [ %.215, %283 ], [ %252, %.loopexit19 ]
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %285 = bitcast %struct.ref_s* %.01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %285, i64 16, i1 false)
  br label %432

286:                                              ; preds = %249
  %287 = add nsw i32 %.03, -1
  %288 = icmp sgt i32 %.03, 1
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %.backedge

291:                                              ; preds = %286
  br label %406

292:                                              ; preds = %218, %218, %218, %218, %218, %218
  %293 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %.not234 = icmp ult %struct.ref_s* %.06, %293
  br i1 %.not234, label %296, label %294

294:                                              ; preds = %292
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %295 = bitcast %struct.ref_s* %.01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %295, i64 16, i1 false)
  br label %432

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 1
  %298 = bitcast %struct.ref_s* %297 to i8*
  %299 = bitcast %struct.ref_s* %.01 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %298, i8* noundef nonnull align 8 dereferenceable(16) %299, i64 16, i1 false)
  %300 = add nsw i32 %.03, -1
  %301 = icmp sgt i32 %.03, 1
  br i1 %301, label %302, label %304

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %.backedge

304:                                              ; preds = %296
  br label %406

305:                                              ; preds = %218
  %306 = icmp sgt i32 %.03, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %305
  %308 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  %309 = bitcast %struct.ref_s* %.09 to %struct.ref_s**
  store %struct.ref_s* %308, %struct.ref_s** %309, align 8
  %310 = trunc i32 %.03 to i16
  %311 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 0, i32 2
  store i16 %310, i16* %311, align 2
  br label %313

312:                                              ; preds = %305
  br label %313

313:                                              ; preds = %312, %307
  br label %.backedge

314:                                              ; preds = %16
  %315 = call i32 (%struct.ref_s*, %struct.stream_s**, ...) bitcast (i32 (...)* @file_check_read to i32 (%struct.ref_s*, %struct.stream_s**, ...)*)(%struct.ref_s* noundef %.02, %struct.stream_s** noundef nonnull %4) #5
  %316 = icmp slt i32 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %314
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %318 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %318, i64 16, i1 false)
  br label %432

319:                                              ; preds = %314
  store %struct.ref_s* %.06, %struct.ref_s** @osp, align 8
  %320 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %321 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* noundef %320, i32 noundef 0, %struct.ref_s* noundef nonnull %2) #5
  switch i32 %321, label %345 [
    i32 0, label %322
    i32 1, label %338
  ]

322:                                              ; preds = %319
  %323 = icmp sgt i32 %.03, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %322
  %325 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  %326 = bitcast %struct.ref_s* %.09 to %struct.ref_s**
  store %struct.ref_s* %325, %struct.ref_s** %326, align 8
  %327 = trunc i32 %.03 to i16
  %328 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 0, i32 2
  store i16 %327, i16* %328, align 2
  br label %330

329:                                              ; preds = %322
  br label %330

330:                                              ; preds = %329, %324
  %331 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %.not232 = icmp ult %struct.ref_s* %.09, %331
  br i1 %.not232, label %334, label %332

332:                                              ; preds = %330
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %333 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %333, i64 16, i1 false)
  br label %432

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 1
  %336 = bitcast %struct.ref_s* %335 to i8*
  %337 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %336, i8* noundef nonnull align 8 dereferenceable(16) %337, i64 16, i1 false)
  br label %.backedge

338:                                              ; preds = %319
  %339 = load %struct.stream_s*, %struct.stream_s** %4, align 8
  %340 = call i32 (%struct.ref_s*, %struct.stream_s*, ...) bitcast (i32 (...)* @file_close to i32 (%struct.ref_s*, %struct.stream_s*, ...)*)(%struct.ref_s* noundef %.02, %struct.stream_s* noundef %339) #5
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %338
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %343 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %343, i64 16, i1 false)
  br label %432

344:                                              ; preds = %338
  br label %.backedge21

345:                                              ; preds = %319
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %346 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %346, i64 16, i1 false)
  br label %432

347:                                              ; preds = %16
  %348 = bitcast %struct.ref_s* %.02 to i8**
  %349 = load i8*, i8** %348, align 8
  %350 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 2
  %351 = load i16, i16* %350, align 2
  %352 = zext i16 %351 to i32
  call void @sread_string(%struct.stream_s* noundef nonnull %5, i8* noundef %349, i32 noundef %352) #5
  store %struct.ref_s* %.06, %struct.ref_s** @osp, align 8
  %353 = call i32 (%struct.stream_s*, i32, %struct.ref_s*, ...) bitcast (i32 (...)* @scan_token to i32 (%struct.stream_s*, i32, %struct.ref_s*, ...)*)(%struct.stream_s* noundef nonnull %5, i32 noundef 1, %struct.ref_s* noundef nonnull %2) #5
  switch i32 %353, label %390 [
    i32 0, label %354
    i32 1, label %389
  ]

354:                                              ; preds = %347
  %355 = icmp sgt i32 %.03, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %354
  %357 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  %358 = bitcast %struct.ref_s* %.09 to %struct.ref_s**
  store %struct.ref_s* %357, %struct.ref_s** %358, align 8
  %359 = trunc i32 %.03 to i16
  %360 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 0, i32 2
  store i16 %359, i16* %360, align 2
  br label %362

361:                                              ; preds = %354
  br label %362

362:                                              ; preds = %361, %356
  %363 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %.not231 = icmp ult %struct.ref_s* %.09, %363
  br i1 %.not231, label %366, label %364

364:                                              ; preds = %362
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %365 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %365, i64 16, i1 false)
  br label %432

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 1
  %368 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 1
  %369 = load i16, i16* %368, align 8
  %370 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 1, i32 1
  store i16 %369, i16* %370, align 8
  %371 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i64 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 1
  %374 = bitcast %struct.ref_s* %367 to i8**
  store i8* %373, i8** %374, align 8
  %375 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i64 0, i32 2
  %376 = load i8*, i8** %375, align 8
  %377 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i64 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i8, i8* %376, i64 %379
  %381 = getelementptr inbounds %struct.stream_s, %struct.stream_s* %5, i64 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = ptrtoint i8* %380 to i64
  %384 = ptrtoint i8* %382 to i64
  %385 = xor i64 %384, -1
  %386 = add i64 %385, %383
  %387 = trunc i64 %386 to i16
  %388 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.09, i64 1, i32 2
  store i16 %387, i16* %388, align 2
  br label %.backedge

389:                                              ; preds = %347
  br label %.backedge21

390:                                              ; preds = %347
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %391 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %391, i64 16, i1 false)
  br label %432

.loopexit18:                                      ; preds = %16
  br label %392

392:                                              ; preds = %.loopexit18, %21
  %393 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %.not243 = icmp ult %struct.ref_s* %.06, %393
  br i1 %.not243, label %396, label %394

394:                                              ; preds = %392
  store %struct.ref_s* %.09, %struct.ref_s** @esp, align 8
  %395 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* @error_object to i8*), i8* noundef nonnull align 8 dereferenceable(16) %395, i64 16, i1 false)
  br label %432

396:                                              ; preds = %392
  %397 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.06, i64 1
  %398 = bitcast %struct.ref_s* %397 to i8*
  %399 = bitcast %struct.ref_s* %.02 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %398, i8* noundef nonnull align 8 dereferenceable(16) %399, i64 16, i1 false)
  br label %.backedge21

400:                                              ; preds = %.backedge21, %10
  %.312 = phi %struct.ref_s* [ %12, %10 ], [ %.09, %.backedge21 ]
  %.17 = phi %struct.ref_s* [ %11, %10 ], [ %.17.be, %.backedge21 ]
  %.14 = phi i32 [ 0, %10 ], [ %.03, %.backedge21 ]
  %.1 = phi %struct.ref_s* [ %0, %10 ], [ %.02, %.backedge21 ]
  %401 = add nsw i32 %.14, -1
  %402 = icmp sgt i32 %.14, 1
  br i1 %402, label %403, label %405

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.1, i64 1
  br label %.preheader17

405:                                              ; preds = %400
  br label %406

406:                                              ; preds = %405, %304, %291, %203, %159, %147, %135, %66, %47, %33
  %.4 = phi %struct.ref_s* [ %.09, %304 ], [ %.09, %291 ], [ %.09, %203 ], [ %.09, %159 ], [ %.09, %147 ], [ %.09, %135 ], [ %.09, %66 ], [ %.09, %47 ], [ %.09, %33 ], [ %.312, %405 ]
  %.28 = phi %struct.ref_s* [ %297, %304 ], [ %253, %291 ], [ %165, %203 ], [ %154, %159 ], [ %142, %147 ], [ %127, %135 ], [ %.06, %66 ], [ %40, %47 ], [ %28, %33 ], [ %.17, %405 ]
  %.25 = phi i32 [ %300, %304 ], [ %287, %291 ], [ %199, %203 ], [ %155, %159 ], [ %143, %147 ], [ %131, %135 ], [ %62, %66 ], [ %43, %47 ], [ %29, %33 ], [ %401, %405 ]
  %.2 = phi %struct.ref_s* [ %.02, %304 ], [ %.02, %291 ], [ %.02, %203 ], [ %.02, %159 ], [ %.02, %147 ], [ %.02, %135 ], [ %.02, %66 ], [ %.02, %47 ], [ %.02, %33 ], [ %.1, %405 ]
  %.not230 = icmp eq i32 %.25, 0
  br i1 %.not230, label %407, label %410

407:                                              ; preds = %406
  %408 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.4, i64 -1
  %409 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.2, i64 1
  br label %.preheader17

410:                                              ; preds = %406
  br label %.preheader

.preheader:                                       ; preds = %114, %184, %246, %272, %410
  %.5.ph = phi %struct.ref_s* [ %.09, %114 ], [ %185, %184 ], [ %234, %246 ], [ %273, %272 ], [ %.4, %410 ]
  %.3.ph = phi %struct.ref_s* [ %86, %114 ], [ %165, %184 ], [ %.06, %246 ], [ %253, %272 ], [ %.28, %410 ]
  br label %411

411:                                              ; preds = %.preheader, %429
  %.5 = phi %struct.ref_s* [ %427, %429 ], [ %.5.ph, %.preheader ]
  %412 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.5, i64 0, i32 1
  %413 = load i16, i16* %412, align 8
  %trunc236 = trunc i16 %413 to i8
  switch i8 %trunc236, label %414 [
    i8 3, label %416
    i8 43, label %417
  ]

414:                                              ; preds = %411
  %415 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.5, i64 -1
  br label %.preheader17

416:                                              ; preds = %411
  br label %417

417:                                              ; preds = %416, %411
  br label %418

418:                                              ; preds = %417
  %419 = bitcast %struct.ref_s* %.5 to %struct.ref_s**
  %420 = load %struct.ref_s*, %struct.ref_s** %419, align 8
  %421 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.5, i64 0, i32 2
  %422 = load i16, i16* %421, align 2
  %423 = zext i16 %422 to i32
  %424 = add nsw i32 %423, -1
  %425 = icmp ult i16 %422, 2
  br i1 %425, label %426, label %.loopexit

426:                                              ; preds = %418
  %427 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.5, i64 -1
  %428 = icmp eq i16 %422, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %426
  br label %411

430:                                              ; preds = %426
  br label %431

.loopexit:                                        ; preds = %418
  br label %431

431:                                              ; preds = %.loopexit, %430
  %.6 = phi %struct.ref_s* [ %427, %430 ], [ %.5, %.loopexit ]
  br label %.preheader17

.preheader17:                                     ; preds = %403, %407, %414, %431
  %.09.ph = phi %struct.ref_s* [ %408, %407 ], [ %.6, %431 ], [ %415, %414 ], [ %.312, %403 ]
  %.06.ph = phi %struct.ref_s* [ %.28, %407 ], [ %.3.ph, %431 ], [ %.3.ph, %414 ], [ %.17, %403 ]
  %.03.ph = phi i32 [ %.25, %407 ], [ %424, %431 ], [ 0, %414 ], [ %401, %403 ]
  %.02.ph = phi %struct.ref_s* [ %409, %407 ], [ %420, %431 ], [ %.5, %414 ], [ %404, %403 ]
  br label %15

432:                                              ; preds = %394, %390, %364, %345, %342, %332, %317, %294, %284, %231, %214, %196, %151, %139, %124, %75, %71, %51, %37, %25, %19, %8
  %.0 = phi i32 [ -5, %8 ], [ -16, %394 ], [ %353, %390 ], [ -5, %364 ], [ %315, %317 ], [ %321, %345 ], [ %340, %342 ], [ -5, %332 ], [ -16, %294 ], [ %.316, %284 ], [ -5, %231 ], [ -21, %214 ], [ %.114, %196 ], [ %149, %151 ], [ -17, %139 ], [ %122, %124 ], [ -20, %71 ], [ -5, %75 ], [ -17, %51 ], [ -17, %37 ], [ %23, %25 ], [ -7, %19 ]
  ret i32 %.0
}

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @zadd(%struct.ref_s* noundef) #3

declare dso_local i32 @zdup(%struct.ref_s* noundef) #3

declare dso_local i32 @zexch(%struct.ref_s* noundef) #3

declare dso_local i32 @zifelse(%struct.ref_s* noundef) #3

declare dso_local i32 @zle(%struct.ref_s* noundef) #3

declare dso_local i32 @zpop(%struct.ref_s* noundef) #3

declare dso_local i32 @zsub(%struct.ref_s* noundef) #3

declare dso_local i32 @obj_compare(...) #3

declare dso_local i32 @file_check_read(...) #3

declare dso_local i32 @scan_token(...) #3

declare dso_local i32 @file_close(...) #3

declare dso_local void @sread_string(%struct.stream_s* noundef, i8* noundef, i32 noundef) #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
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
!7 = distinct !{!7, !5}
