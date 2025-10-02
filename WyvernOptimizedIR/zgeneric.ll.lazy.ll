; ModuleID = './zgeneric.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zgeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osbot = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@esp = external dso_local global %struct.ref_s*, align 8
@estop = external dso_local global %struct.ref_s*, align 8
@zgeneric_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zcopy }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zforall }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zget }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zgetinterval }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zlength }, %struct.op_def { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zput }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zputinterval }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"1copy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"2forall\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"2get\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"3getinterval\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1length\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"3put\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"3putinterval\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcopy(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %50 [
    i32 5, label %7
    i32 0, label %45
    i32 10, label %45
    i32 13, label %45
    i32 2, label %48
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %11 = ptrtoint %struct.ref_s* %0 to i64
  %12 = ptrtoint %struct.ref_s* %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 4
  %15 = icmp ugt i64 %9, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %65

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %sext = shl i64 %19, 32
  %21 = ashr exact i64 %sext, 32
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 %21
  %23 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %24 = icmp ugt %struct.ref_s* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %65

26:                                               ; preds = %17
  %27 = bitcast %struct.ref_s* %0 to i8*
  %sext1 = shl i64 %19, 32
  %28 = ashr exact i64 %sext1, 32
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %29
  %31 = bitcast %struct.ref_s* %30 to i8*
  %sext2 = shl i64 %19, 32
  %32 = ashr exact i64 %sext2, 28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 %31, i64 %32, i1 false)
  %33 = shl i64 %19, 32
  %sext3 = add i64 %33, -4294967296
  %34 = ashr exact i64 %sext3, 32
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %34
  store %struct.ref_s* %35, %struct.ref_s** @osp, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %37 = icmp ugt %struct.ref_s* %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %40 = shl i64 %19, 32
  %sext4 = add i64 %40, -4294967296
  %41 = ashr exact i64 %sext4, 32
  %42 = sub nsw i64 0, %41
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 %42
  store %struct.ref_s* %43, %struct.ref_s** @osp, align 8
  br label %65

44:                                               ; preds = %26
  br label %65

45:                                               ; preds = %1, %1, %1
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %47 = call i32 @copy_interval(%struct.ref_s* noundef %0, i32 noundef 0, %struct.ref_s* noundef nonnull %46)
  br label %51

48:                                               ; preds = %1
  %49 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zcopy_dict to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #5
  br label %65

50:                                               ; preds = %1
  br label %65

51:                                               ; preds = %45
  %.not = icmp eq i32 %47, 0
  br i1 %.not, label %53, label %52

52:                                               ; preds = %51
  br label %65

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %55 = load i16, i16* %54, align 2
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  store i16 %55, i16* %56, align 2
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %58 = bitcast %struct.ref_s* %57 to i8*
  %59 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %58, i8* noundef nonnull align 8 dereferenceable(16) %59, i64 16, i1 false)
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %61 = load i16, i16* %60, align 8
  %62 = or i16 %61, -32768
  store i16 %62, i16* %60, align 8
  %63 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 -1
  store %struct.ref_s* %64, %struct.ref_s** @osp, align 8
  br label %65

65:                                               ; preds = %53, %52, %50, %48, %44, %38, %25, %16
  %.0 = phi i32 [ -20, %50 ], [ %49, %48 ], [ %47, %52 ], [ 0, %53 ], [ -15, %16 ], [ -16, %25 ], [ -16, %38 ], [ 0, %44 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @copy_interval(%struct.ref_s* nocapture noundef readonly %0, i32 noundef %1, %struct.ref_s* nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = xor i16 %5, %7
  %9 = and i16 %8, 252
  %.not = icmp eq i16 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %3
  br label %59

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 1
  %13 = load i16, i16* %12, align 8
  %14 = and i16 %13, 512
  %.not1.not = icmp eq i16 %14, 0
  br i1 %.not1.not, label %15, label %16

15:                                               ; preds = %11
  br label %59

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = and i16 %18, 256
  %.not2.not = icmp eq i16 %19, 0
  br i1 %.not2.not, label %20, label %21

20:                                               ; preds = %16
  br label %59

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 2
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = sub i32 %27, %1
  %29 = icmp ult i32 %28, %24
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %59

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %33 = load i16, i16* %32, align 8
  %34 = lshr i16 %33, 2
  %35 = and i16 %34, 63
  %36 = zext i16 %35 to i32
  switch i32 %36, label %58 [
    i32 0, label %37
    i32 10, label %37
    i32 13, label %48
  ]

37:                                               ; preds = %31, %31
  %38 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %39 = load %struct.ref_s*, %struct.ref_s** %38, align 8
  %40 = zext i32 %1 to i64
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 %40
  %42 = bitcast %struct.ref_s* %2 to %struct.ref_s**
  %43 = load %struct.ref_s*, %struct.ref_s** %42, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 2
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = call i32 (%struct.ref_s*, %struct.ref_s*, i32, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i32, ...)*)(%struct.ref_s* noundef %41, %struct.ref_s* noundef %43, i32 noundef %46) #5
  br label %58

48:                                               ; preds = %31
  %49 = bitcast %struct.ref_s* %0 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = zext i32 %1 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = bitcast %struct.ref_s* %2 to i8**
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 2
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 %54, i64 %57, i1 false)
  br label %58

58:                                               ; preds = %48, %37, %31
  br label %59

59:                                               ; preds = %58, %30, %20, %15, %10
  %.0 = phi i32 [ -20, %10 ], [ -7, %15 ], [ -7, %20 ], [ -15, %30 ], [ 0, %58 ]
  ret i32 %.0
}

declare dso_local i32 @zcopy_dict(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zlength(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 63
  %7 = zext i16 %6 to i32
  switch i32 %7, label %37 [
    i32 0, label %8
    i32 10, label %8
    i32 13, label %8
    i32 2, label %19
    i32 7, label %30
  ]

8:                                                ; preds = %1, %1, %1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = and i16 %10, 512
  %.not.not1 = icmp eq i16 %11, 0
  br i1 %.not.not1, label %12, label %13

12:                                               ; preds = %8
  br label %38

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i64
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 20, i16* %18, align 8
  br label %38

19:                                               ; preds = %1
  %20 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef %0) #5
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = and i16 %22, 512
  %.not.not = icmp eq i16 %23, 0
  br i1 %.not.not, label %24, label %25

24:                                               ; preds = %19
  br label %38

25:                                               ; preds = %19
  %26 = call i32 @dict_length(%struct.ref_s* noundef %0) #5
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 20, i16* %29, align 8
  br label %38

30:                                               ; preds = %1
  %31 = call i32 (%struct.ref_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @name_string_ref to i32 (%struct.ref_s*, %struct.ref_s*, ...)*)(%struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull %2) #5
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 2
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 20, i16* %36, align 8
  br label %38

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %37, %30, %25, %24, %13, %12
  %.0 = phi i32 [ -20, %37 ], [ 0, %30 ], [ -7, %24 ], [ 0, %25 ], [ -7, %12 ], [ 0, %13 ]
  ret i32 %.0
}

declare dso_local %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef) #2

declare dso_local i32 @dict_length(%struct.ref_s* noundef) #2

declare dso_local i32 @name_string_ref(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zget(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 63
  %8 = zext i16 %7 to i32
  switch i32 %8, label %76 [
    i32 2, label %9
    i32 0, label %20
    i32 10, label %20
    i32 13, label %45
  ]

9:                                                ; preds = %1
  %10 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef nonnull %3) #5
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = and i16 %12, 512
  %.not3.not = icmp eq i16 %13, 0
  br i1 %.not3.not, label %14, label %15

14:                                               ; preds = %9
  br label %84

15:                                               ; preds = %9
  %16 = call i32 @dict_lookup(%struct.ref_s* noundef nonnull %3, %struct.ref_s* noundef nonnull %3, %struct.ref_s* noundef %0, %struct.ref_s** noundef nonnull %2) #5
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %84

19:                                               ; preds = %15
  br label %77

20:                                               ; preds = %1, %1
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = and i16 %22, 252
  %24 = icmp eq i16 %23, 20
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %84

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = and i16 %28, 512
  %.not1.not = icmp eq i16 %29, 0
  br i1 %.not1.not, label %30, label %31

30:                                               ; preds = %26
  br label %84

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i64
  %.not2 = icmp ult i64 %33, %36
  br i1 %.not2, label %38, label %37

37:                                               ; preds = %31
  br label %84

38:                                               ; preds = %31
  %39 = bitcast %struct.ref_s* %3 to %struct.ref_s**
  %40 = load %struct.ref_s*, %struct.ref_s** %39, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %42, 4294967295
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 %43
  store %struct.ref_s* %44, %struct.ref_s** %2, align 8
  br label %77

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %47 = load i16, i16* %46, align 8
  %48 = and i16 %47, 252
  %49 = icmp eq i16 %48, 20
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %84

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %53 = load i16, i16* %52, align 8
  %54 = and i16 %53, 512
  %.not.not = icmp eq i16 %54, 0
  br i1 %.not.not, label %55, label %56

55:                                               ; preds = %51
  br label %84

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i64
  %.not = icmp ult i64 %58, %61
  br i1 %.not, label %63, label %62

62:                                               ; preds = %56
  br label %84

63:                                               ; preds = %56
  %64 = bitcast %struct.ref_s* %3 to i8**
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, 4294967295
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 20, i16* %73, align 8
  %74 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 -1
  store %struct.ref_s* %75, %struct.ref_s** @osp, align 8
  br label %84

76:                                               ; preds = %1
  br label %84

77:                                               ; preds = %38, %19
  %78 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %79 = bitcast %struct.ref_s** %2 to i8**
  %80 = load i8*, i8** %79, align 8
  %81 = bitcast %struct.ref_s* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %81, i8* noundef nonnull align 8 dereferenceable(16) %80, i64 16, i1 false)
  %82 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 -1
  store %struct.ref_s* %83, %struct.ref_s** @osp, align 8
  br label %84

84:                                               ; preds = %77, %76, %63, %62, %55, %50, %37, %30, %25, %18, %14
  %.0 = phi i32 [ -20, %76 ], [ -7, %55 ], [ -15, %62 ], [ 0, %63 ], [ -20, %50 ], [ -7, %30 ], [ -15, %37 ], [ 0, %77 ], [ -20, %25 ], [ -7, %14 ], [ -21, %18 ]
  ret i32 %.0
}

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zput(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 63
  %8 = zext i16 %7 to i32
  switch i32 %8, label %94 [
    i32 2, label %9
    i32 0, label %19
    i32 10, label %50
    i32 13, label %51
  ]

9:                                                ; preds = %1
  %10 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef nonnull %3) #5
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = and i16 %12, 256
  %.not3.not = icmp eq i16 %13, 0
  br i1 %.not3.not, label %14, label %15

14:                                               ; preds = %9
  br label %98

15:                                               ; preds = %9
  %16 = call i32 @dict_put(%struct.ref_s* noundef nonnull %3, %struct.ref_s* noundef nonnull %2, %struct.ref_s* noundef %0) #5
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %18, label %17

17:                                               ; preds = %15
  br label %98

18:                                               ; preds = %15
  br label %95

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = and i16 %21, 252
  %23 = icmp eq i16 %22, 20
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %98

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %27 = load i16, i16* %26, align 8
  %28 = and i16 %27, 256
  %.not1.not = icmp eq i16 %28, 0
  br i1 %.not1.not, label %29, label %30

29:                                               ; preds = %25
  br label %98

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 2
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i64
  %.not2 = icmp slt i64 %36, %39
  br i1 %.not2, label %41, label %40

40:                                               ; preds = %34, %30
  br label %98

41:                                               ; preds = %34
  %42 = bitcast %struct.ref_s* %3 to %struct.ref_s**
  %43 = load %struct.ref_s*, %struct.ref_s** %42, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, 4294967295
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 %46
  %48 = bitcast %struct.ref_s* %47 to i8*
  %49 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %48, i8* noundef nonnull align 8 dereferenceable(16) %49, i64 16, i1 false)
  br label %95

50:                                               ; preds = %1
  br label %98

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %53 = load i16, i16* %52, align 8
  %54 = and i16 %53, 252
  %55 = icmp eq i16 %54, 20
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %98

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %59 = load i16, i16* %58, align 8
  %60 = and i16 %59, 256
  %.not.not = icmp eq i16 %60, 0
  br i1 %.not.not, label %61, label %62

61:                                               ; preds = %57
  br label %98

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 2
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i64
  %.not = icmp slt i64 %68, %71
  br i1 %.not, label %73, label %72

72:                                               ; preds = %66, %62
  br label %98

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %75 = load i16, i16* %74, align 8
  %76 = and i16 %75, 252
  %77 = icmp eq i16 %76, 20
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  br label %98

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ugt i64 %81, 255
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %98

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i8
  %88 = bitcast %struct.ref_s* %3 to i8**
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = and i64 %91, 4294967295
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  store i8 %87, i8* %93, align 1
  br label %95

94:                                               ; preds = %1
  br label %98

95:                                               ; preds = %84, %41, %18
  %96 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %97 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %96, i64 -3
  store %struct.ref_s* %97, %struct.ref_s** @osp, align 8
  br label %98

98:                                               ; preds = %95, %94, %83, %78, %72, %61, %56, %50, %40, %29, %24, %17, %14
  %.0 = phi i32 [ -20, %94 ], [ -7, %61 ], [ -15, %72 ], [ -15, %83 ], [ 0, %95 ], [ -20, %78 ], [ -20, %56 ], [ -7, %50 ], [ -7, %29 ], [ -15, %40 ], [ -20, %24 ], [ -7, %14 ], [ %16, %17 ]
  ret i32 %.0
}

declare dso_local i32 @dict_put(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zgetinterval(%struct.ref_s* nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 252
  %7 = icmp eq i16 %6, 20
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %74

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = and i16 %11, 252
  %13 = icmp eq i16 %12, 20
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %74

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = lshr i16 %17, 2
  %19 = and i16 %18, 63
  %20 = zext i16 %19 to i32
  switch i32 %20, label %21 [
    i32 0, label %22
    i32 10, label %22
    i32 13, label %22
  ]

21:                                               ; preds = %15
  br label %74

22:                                               ; preds = %15, %15, %15
  br label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %25 = load i16, i16* %24, align 8
  %26 = and i16 %25, 512
  %.not.not = icmp eq i16 %26, 0
  br i1 %.not.not, label %27, label %28

27:                                               ; preds = %23
  br label %74

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 2
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i64
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %74

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i64
  %44 = sub i64 %43, %38
  %45 = and i64 %44, 4294967295
  %46 = icmp ugt i64 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %74

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %52 = load i16, i16* %51, align 8
  %53 = lshr i16 %52, 2
  %54 = and i16 %53, 63
  %55 = zext i16 %54 to i32
  switch i32 %55, label %66 [
    i32 0, label %56
    i32 10, label %56
    i32 13, label %61
  ]

56:                                               ; preds = %48, %48
  %57 = bitcast %struct.ref_s* %3 to %struct.ref_s**
  %58 = load %struct.ref_s*, %struct.ref_s** %57, align 8
  %59 = and i64 %38, 4294967295
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 %59
  store %struct.ref_s* %60, %struct.ref_s** %57, align 8
  br label %66

61:                                               ; preds = %48
  %62 = bitcast %struct.ref_s* %3 to i8**
  %63 = load i8*, i8** %62, align 8
  %64 = and i64 %38, 4294967295
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %62, align 8
  br label %66

66:                                               ; preds = %61, %56, %48
  %67 = trunc i64 %50 to i16
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 2
  store i16 %67, i16* %68, align 2
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %70 = load i16, i16* %69, align 8
  %71 = or i16 %70, -32768
  store i16 %71, i16* %69, align 8
  %72 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 -2
  store %struct.ref_s* %73, %struct.ref_s** @osp, align 8
  br label %74

74:                                               ; preds = %66, %47, %35, %27, %21, %14, %8
  %.0 = phi i32 [ -20, %21 ], [ -7, %27 ], [ -15, %35 ], [ -15, %47 ], [ 0, %66 ], [ -20, %14 ], [ -20, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zputinterval(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 252
  %7 = icmp eq i16 %6, 20
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = lshr i16 %11, 2
  %13 = and i16 %12, 63
  %14 = zext i16 %13 to i32
  switch i32 %14, label %15 [
    i32 10, label %16
    i32 0, label %17
    i32 13, label %17
  ]

15:                                               ; preds = %9
  br label %41

16:                                               ; preds = %9
  br label %41

17:                                               ; preds = %9, %9
  br label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = and i16 %20, 256
  %.not.not = icmp eq i16 %21, 0
  br i1 %.not.not, label %22, label %23

22:                                               ; preds = %18
  br label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 2
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i64
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %41

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @copy_interval(%struct.ref_s* noundef nonnull %3, i32 noundef %34, %struct.ref_s* noundef %0)
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -3
  store %struct.ref_s* %39, %struct.ref_s** @osp, align 8
  br label %40

40:                                               ; preds = %37, %31
  br label %41

41:                                               ; preds = %40, %30, %22, %16, %15, %8
  %.0 = phi i32 [ -20, %15 ], [ -7, %22 ], [ -15, %30 ], [ 0, %40 ], [ -7, %16 ], [ -20, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zforall(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 63
  %7 = zext i16 %6 to i32
  switch i32 %7, label %8 [
    i32 0, label %9
    i32 10, label %9
    i32 13, label %15
    i32 2, label %21
  ]

8:                                                ; preds = %1
  br label %53

9:                                                ; preds = %1, %1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = and i16 %11, 512
  %.not.not4 = icmp eq i16 %12, 0
  br i1 %.not.not4, label %13, label %14

13:                                               ; preds = %9
  br label %53

14:                                               ; preds = %9
  br label %29

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = and i16 %17, 512
  %.not.not3 = icmp eq i16 %18, 0
  br i1 %.not.not3, label %19, label %20

19:                                               ; preds = %15
  br label %53

20:                                               ; preds = %15
  br label %29

21:                                               ; preds = %1
  %22 = call %struct.ref_s* @dict_access_ref(%struct.ref_s* noundef nonnull %2) #5
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = and i16 %24, 512
  %.not.not = icmp eq i16 %25, 0
  br i1 %.not.not, label %26, label %27

26:                                               ; preds = %21
  br label %53

27:                                               ; preds = %21
  %28 = call i32 @dict_first(%struct.ref_s* noundef nonnull %2) #5
  %phi.cast = zext i32 %28 to i64
  br label %29

29:                                               ; preds = %27, %20, %14
  %.02 = phi i64 [ %phi.cast, %27 ], [ 0, %20 ], [ 0, %14 ]
  %.01 = phi i32 (%struct.ref_s*)* [ @dict_continue, %27 ], [ @string_continue, %20 ], [ @array_continue, %14 ]
  %30 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 6
  %32 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %33 = icmp ugt %struct.ref_s* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %53

35:                                               ; preds = %29
  %36 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 1
  store %struct.ref_s* %37, %struct.ref_s** @esp, align 8
  %38 = bitcast %struct.ref_s* %37 to i16*
  store i16 2, i16* %38, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 1, i32 1
  store i16 33, i16* %39, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 2
  store %struct.ref_s* %40, %struct.ref_s** @esp, align 8
  %41 = bitcast %struct.ref_s* %40 to i8*
  %42 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %41, i8* noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false)
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 3
  store %struct.ref_s* %43, %struct.ref_s** @esp, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 0, i32 0, i32 0
  store i64 %.02, i64* %44, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 3, i32 1
  store i16 20, i16* %45, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 4
  store %struct.ref_s* %46, %struct.ref_s** @esp, align 8
  %47 = bitcast %struct.ref_s* %46 to i8*
  %48 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %47, i8* noundef nonnull align 8 dereferenceable(16) %48, i64 16, i1 false)
  %49 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -2
  store %struct.ref_s* %50, %struct.ref_s** @osp, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %52 = call i32 %.01(%struct.ref_s* noundef nonnull %51) #5
  br label %53

53:                                               ; preds = %35, %34, %26, %19, %13, %8
  %.0 = phi i32 [ -20, %8 ], [ -7, %26 ], [ -5, %34 ], [ %52, %35 ], [ -7, %19 ], [ -7, %13 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal i32 @array_continue(%struct.ref_s* noundef %0) #4 {
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2, i32 2
  %5 = load i16, i16* %4, align 2
  %6 = add i16 %5, -1
  store i16 %6, i16* %4, align 2
  %.not = icmp eq i16 %5, 0
  br i1 %.not, label %30, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %8, %struct.ref_s** @osp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %10 = icmp ugt %struct.ref_s* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  br label %34

14:                                               ; preds = %7
  %15 = bitcast %struct.ref_s* %3 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast %struct.ref_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %17, i8* noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false)
  %18 = bitcast %struct.ref_s* %3 to %struct.ref_s**
  %19 = load %struct.ref_s*, %struct.ref_s** %18, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 1
  store %struct.ref_s* %20, %struct.ref_s** %18, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1
  store %struct.ref_s* %22, %struct.ref_s** @esp, align 8
  %23 = bitcast %struct.ref_s* %22 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @array_continue, i32 (%struct.ref_s*)** %23, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1, i32 1
  store i16 37, i16* %24, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1, i32 2
  store i16 0, i16* %25, align 2
  %26 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 1
  store %struct.ref_s* %27, %struct.ref_s** @esp, align 8
  %28 = bitcast %struct.ref_s* %27 to i8*
  %29 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %28, i8* noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false)
  br label %33

30:                                               ; preds = %1
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -4
  store %struct.ref_s* %32, %struct.ref_s** @esp, align 8
  br label %33

33:                                               ; preds = %30, %14
  br label %34

34:                                               ; preds = %33, %11
  %.0 = phi i32 [ -16, %11 ], [ 1, %33 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define internal i32 @string_continue(%struct.ref_s* noundef %0) #4 {
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2, i32 2
  %5 = load i16, i16* %4, align 2
  %6 = add i16 %5, -1
  store i16 %6, i16* %4, align 2
  %.not = icmp eq i16 %5, 0
  br i1 %.not, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %8, %struct.ref_s** @osp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %10 = icmp ugt %struct.ref_s* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  br label %37

14:                                               ; preds = %7
  %15 = bitcast %struct.ref_s* %3 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 0, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %20, align 8
  %21 = bitcast %struct.ref_s* %3 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %21, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 1
  store %struct.ref_s* %25, %struct.ref_s** @esp, align 8
  %26 = bitcast %struct.ref_s* %25 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @string_continue, i32 (%struct.ref_s*)** %26, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 1, i32 1
  store i16 37, i16* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 1, i32 2
  store i16 0, i16* %28, align 2
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 1
  store %struct.ref_s* %30, %struct.ref_s** @esp, align 8
  %31 = bitcast %struct.ref_s* %30 to i8*
  %32 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %31, i8* noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false)
  br label %36

33:                                               ; preds = %1
  %34 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -4
  store %struct.ref_s* %35, %struct.ref_s** @esp, align 8
  br label %36

36:                                               ; preds = %33, %14
  br label %37

37:                                               ; preds = %36, %11
  %.0 = phi i32 [ -16, %11 ], [ 1, %36 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dict_continue(%struct.ref_s* noundef %0) #0 {
  %2 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  store %struct.ref_s* %5, %struct.ref_s** @osp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %7 = icmp ugt %struct.ref_s* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -2
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  br label %36

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 -2
  %13 = trunc i64 %4 to i32
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  %15 = call i32 @dict_next(%struct.ref_s* noundef nonnull %12, i32 noundef %13, %struct.ref_s* noundef nonnull %14) #5
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = sext i32 %15 to i64
  %19 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -1, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1
  store %struct.ref_s* %22, %struct.ref_s** @esp, align 8
  %23 = bitcast %struct.ref_s* %22 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @dict_continue, i32 (%struct.ref_s*)** %23, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1, i32 1
  store i16 37, i16* %24, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1, i32 2
  store i16 0, i16* %25, align 2
  %26 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 1
  store %struct.ref_s* %27, %struct.ref_s** @esp, align 8
  %28 = bitcast %struct.ref_s* %27 to i8*
  %29 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %28, i8* noundef nonnull align 8 dereferenceable(16) %29, i64 16, i1 false)
  br label %35

30:                                               ; preds = %11
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -2
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -4
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  br label %35

35:                                               ; preds = %30, %17
  br label %36

36:                                               ; preds = %35, %8
  %.0 = phi i32 [ -16, %8 ], [ 1, %35 ]
  ret i32 %.0
}

declare dso_local i32 @dict_first(%struct.ref_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @zgeneric_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([8 x %struct.op_def], [8 x %struct.op_def]* @zgeneric_op_init.my_defs, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @z_op_init(...) #2

declare dso_local i32 @dict_next(%struct.ref_s* noundef, i32 noundef, %struct.ref_s* noundef) #2

declare dso_local i32 @refcpy(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
