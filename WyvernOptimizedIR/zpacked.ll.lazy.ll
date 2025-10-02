; ModuleID = './zpacked.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@array_packing = external dso_local global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"packedarray\00", align 1
@osbot = external dso_local global %struct.ref_s*, align 8
@zpacked_op_init.my_defs = internal global [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentpacking }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zpackedarray }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetpacking }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [16 x i8] c"0currentpacking\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"1packedarray\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"1setpacking\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zcurrentpacking(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @array_packing, align 4
  %10 = trunc i32 %9 to i16
  %11 = bitcast %struct.ref_s* %2 to i16*
  store i16 %10, i16* %11, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 4, i16* %12, align 8
  br label %13

13:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zpackedarray(%struct.ref_s* noundef %0) #1 {
  %2 = call i32 @make_array(%struct.ref_s* noundef %0, i32 noundef 10, i32 noundef 514, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i64
  %9 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %10 = ptrtoint %struct.ref_s* %0 to i64
  %11 = ptrtoint %struct.ref_s* %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 4
  %14 = icmp ult i64 %13, %8
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %29

16:                                               ; preds = %5
  %17 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %18 = load %struct.ref_s*, %struct.ref_s** %17, align 8
  %19 = sub nsw i64 0, %8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %19
  %21 = call i32 (%struct.ref_s*, %struct.ref_s*, i64, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i64, ...)*)(%struct.ref_s* noundef %18, %struct.ref_s* noundef %20, i64 noundef %8) #4
  %22 = sub nsw i64 0, %8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %22
  %24 = bitcast %struct.ref_s* %23 to i8*
  %25 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %24, i8* noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false)
  %26 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %27 = sub nsw i64 0, %8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 %27
  store %struct.ref_s* %28, %struct.ref_s** @osp, align 8
  br label %29

29:                                               ; preds = %16, %15, %4
  %.0 = phi i32 [ %2, %4 ], [ -17, %15 ], [ 0, %16 ]
  ret i32 %.0
}

declare dso_local i32 @make_array(%struct.ref_s* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @refcpy(...) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @zsetpacking(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %13

7:                                                ; preds = %1
  %8 = bitcast %struct.ref_s* %0 to i16*
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  store i32 %10, i32* @array_packing, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -1
  store %struct.ref_s* %12, %struct.ref_s** @osp, align 8
  br label %13

13:                                               ; preds = %7, %6
  %.0 = phi i32 [ 0, %7 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zpacked_op_init() #1 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([4 x %struct.op_def], [4 x %struct.op_def]* @zpacked_op_init.my_defs, i64 0, i64 0)) #4
  ret void
}

declare dso_local i32 @z_op_init(...) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
