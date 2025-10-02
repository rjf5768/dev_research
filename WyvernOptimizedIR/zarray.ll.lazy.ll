; ModuleID = './zarray.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@.str = private unnamed_addr constant [6 x i8] c"array\00", align 1
@ostop = external dso_local global %struct.ref_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@osbot = external dso_local global %struct.ref_s*, align 8
@zarray_op_init.my_defs = internal global [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zaload }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zarray }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zastore }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"1aload\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"1array\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1astore\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zarray(%struct.ref_s* nocapture noundef %0) #0 {
  %2 = call i32 @make_array(%struct.ref_s* noundef %0, i32 noundef 0, i32 noundef 770, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %7 = load i16, i16* %6, align 2
  %8 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %9 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  br label %10

10:                                               ; preds = %11, %5
  %.02 = phi i16 [ %7, %5 ], [ %12, %11 ]
  %.01 = phi %struct.ref_s* [ %9, %5 ], [ %13, %11 ]
  %.not = icmp eq i16 %.02, 0
  br i1 %.not, label %15, label %11

11:                                               ; preds = %10
  %12 = add i16 %.02, -1
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 1
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  store i16 32, i16* %14, align 8
  br label %10, !llvm.loop !4

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %4
  %.0 = phi i32 [ %2, %4 ], [ 0, %15 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @make_array(%struct.ref_s* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = and i16 %6, 252
  %8 = icmp eq i16 %7, 20
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  br label %34

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %16, 268435454
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  br label %34

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i8* @alloc(i32 noundef %22, i32 noundef 16, i8* noundef %3) #4
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %34

26:                                               ; preds = %19
  %27 = bitcast %struct.ref_s* %0 to i8**
  store i8* %23, i8** %27, align 8
  %28 = shl i32 %1, 2
  %29 = add nsw i32 %28, %2
  %30 = trunc i32 %29 to i16
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 %30, i16* %31, align 8
  %32 = trunc i64 %21 to i16
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  store i16 %32, i16* %33, align 2
  br label %34

34:                                               ; preds = %26, %25, %18, %9
  %.0 = phi i32 [ -15, %18 ], [ -25, %25 ], [ 0, %26 ], [ -20, %9 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zaload(%struct.ref_s* noundef %0) #1 {
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = lshr i16 %4, 2
  %6 = and i16 %5, 63
  %7 = zext i16 %6 to i32
  switch i32 %7, label %8 [
    i32 0, label %9
    i32 10, label %9
  ]

8:                                                ; preds = %1
  br label %50

9:                                                ; preds = %1, %1
  br label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = and i16 %12, 512
  %.not.not = icmp eq i16 %13, 0
  br i1 %.not.not, label %14, label %15

14:                                               ; preds = %10
  br label %50

15:                                               ; preds = %10
  %16 = bitcast %struct.ref_s* %2 to i8*
  %17 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %16, i8* noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false)
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 2
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i64
  %21 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %22 = ptrtoint %struct.ref_s* %21 to i64
  %23 = ptrtoint %struct.ref_s* %0 to i64
  %24 = sub i64 %22, %23
  %25 = ashr exact i64 %24, 4
  %26 = icmp slt i64 %25, %20
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %50

28:                                               ; preds = %15
  %29 = bitcast %struct.ref_s* %0 to i8*
  %30 = bitcast %struct.ref_s* %2 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 2
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i64
  %35 = shl nuw nsw i64 %34, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %31, i64 %35, i1 false)
  %36 = zext i16 %33 to i64
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %36
  store %struct.ref_s* %37, %struct.ref_s** @osp, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %39 = icmp ugt %struct.ref_s* %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %44 = zext i16 %42 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 %45
  store %struct.ref_s* %46, %struct.ref_s** @osp, align 8
  br label %50

47:                                               ; preds = %28
  %48 = bitcast %struct.ref_s* %37 to i8*
  %49 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %48, i8* noundef nonnull align 8 dereferenceable(16) %49, i64 16, i1 false)
  br label %50

50:                                               ; preds = %47, %40, %27, %14, %8
  %.0 = phi i32 [ -20, %8 ], [ -7, %14 ], [ -15, %27 ], [ -16, %40 ], [ 0, %47 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zastore(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = and i16 %9, 256
  %.not.not = icmp eq i16 %10, 0
  br i1 %.not.not, label %11, label %12

11:                                               ; preds = %7
  br label %36

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %14 = load i16, i16* %13, align 2
  %15 = zext i16 %14 to i64
  %16 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %17 = ptrtoint %struct.ref_s* %0 to i64
  %18 = ptrtoint %struct.ref_s* %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 4
  %21 = icmp ult i64 %20, %15
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %36

23:                                               ; preds = %12
  %24 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %25 = load %struct.ref_s*, %struct.ref_s** %24, align 8
  %26 = sub nsw i64 0, %15
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %26
  %28 = call i32 (%struct.ref_s*, %struct.ref_s*, i64, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i64, ...)*)(%struct.ref_s* noundef %25, %struct.ref_s* noundef %27, i64 noundef %15) #4
  %29 = sub nsw i64 0, %15
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %29
  %31 = bitcast %struct.ref_s* %30 to i8*
  %32 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %31, i8* noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false)
  %33 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %34 = sub nsw i64 0, %15
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 %34
  store %struct.ref_s* %35, %struct.ref_s** @osp, align 8
  br label %36

36:                                               ; preds = %23, %22, %11, %6
  %.0 = phi i32 [ -7, %11 ], [ -17, %22 ], [ 0, %23 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local i32 @refcpy(...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @zarray_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([4 x %struct.op_def], [4 x %struct.op_def]* @zarray_op_init.my_defs, i64 0, i64 0)) #4
  ret void
}

declare dso_local i32 @z_op_init(...) #3

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
