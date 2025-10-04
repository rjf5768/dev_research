; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpacked.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentpacking(%struct.ref_s* noundef %0) #0 {
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
  br label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @array_packing, align 4
  %13 = trunc i32 %12 to i16
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to i16*
  store i16 %13, i16* %16, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  store i16 4, i16* %18, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zpackedarray(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 @make_array(%struct.ref_s* noundef %6, i32 noundef 10, i32 noundef 514, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 2
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %20 = ptrtoint %struct.ref_s* %18 to i64
  %21 = ptrtoint %struct.ref_s* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 16
  %24 = icmp ugt i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 -17, i32* %2, align 4
  br label %48

26:                                               ; preds = %12
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to %struct.ref_s**
  %30 = load %struct.ref_s*, %struct.ref_s** %29, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 %33
  %35 = load i64, i64* %5, align 8
  %36 = call i32 (%struct.ref_s*, %struct.ref_s*, i64, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i64, ...)*)(%struct.ref_s* noundef %30, %struct.ref_s* noundef %34, i64 noundef %35)
  %37 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 %39
  %41 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %42 = bitcast %struct.ref_s* %40 to i8*
  %43 = bitcast %struct.ref_s* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %46 = sub i64 0, %44
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 %46
  store %struct.ref_s* %47, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %26, %25, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @make_array(%struct.ref_s* noundef, i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @refcpy(...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetpacking(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 252
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %14 = bitcast %union.v* %13 to i16*
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  store i32 %16, i32* @array_packing, align 4
  %17 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  store %struct.ref_s* %18, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zpacked_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([4 x %struct.op_def], [4 x %struct.op_def]* @zpacked_op_init.my_defs, i64 0, i64 0))
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
