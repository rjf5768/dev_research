; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zarray.c'
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
define dso_local i32 @zarray(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = call i32 @make_array(%struct.ref_s* noundef %7, i32 noundef 0, i32 noundef 770, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 2
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %5, align 2
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to %struct.ref_s**
  %20 = load %struct.ref_s*, %struct.ref_s** %19, align 8
  store %struct.ref_s* %20, %struct.ref_s** %6, align 8
  br label %21

21:                                               ; preds = %25, %13
  %22 = load i16, i16* %5, align 2
  %23 = add i16 %22, -1
  store i16 %23, i16* %5, align 2
  %24 = icmp ne i16 %22, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 1
  store %struct.ref_s* %27, %struct.ref_s** %6, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 1
  store i16 32, i16* %28, align 8
  br label %21, !llvm.loop !4

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @make_array(%struct.ref_s* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ref_s*, align 8
  %11 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 252
  %17 = icmp eq i32 %16, 20
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 -20, i32* %5, align 4
  br label %61

19:                                               ; preds = %4
  %20 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %22 = bitcast %union.v* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i32 0, i32 0
  %28 = bitcast %union.v* %27 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %29, 268435454
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %19
  store i32 -15, i32* %5, align 4
  br label %61

32:                                               ; preds = %25
  %33 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i8* @alloc(i32 noundef %38, i32 noundef 16, i8* noundef %39)
  %41 = bitcast i8* %40 to %struct.ref_s*
  store %struct.ref_s* %41, %struct.ref_s** %10, align 8
  %42 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %43 = icmp eq %struct.ref_s* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 -25, i32* %5, align 4
  br label %61

45:                                               ; preds = %32
  %46 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %47 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %49 = bitcast %union.v* %48 to %struct.ref_s**
  store %struct.ref_s* %46, %struct.ref_s** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 %50, 2
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = trunc i32 %53 to i16
  %55 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 1
  store i16 %54, i16* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = trunc i32 %57 to i16
  %59 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 2
  store i16 %58, i16* %60, align 2
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %45, %44, %31, %18
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zaload(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 255
  %10 = ashr i32 %9, 2
  switch i32 %10, label %11 [
    i32 0, label %12
    i32 10, label %12
  ]

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %68

12:                                               ; preds = %1, %1
  br label %13

13:                                               ; preds = %12
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = xor i32 %17, -1
  %19 = and i32 %18, 512
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 -7, i32* %2, align 4
  br label %68

22:                                               ; preds = %13
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = bitcast %struct.ref_s* %4 to i8*
  %25 = bitcast %struct.ref_s* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 2
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i64
  %29 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = ptrtoint %struct.ref_s* %29 to i64
  %32 = ptrtoint %struct.ref_s* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 16
  %35 = icmp sgt i64 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  store i32 -15, i32* %2, align 4
  br label %68

37:                                               ; preds = %22
  %38 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %39 = bitcast %struct.ref_s* %38 to i8*
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 0
  %41 = bitcast %union.v* %40 to %struct.ref_s**
  %42 = load %struct.ref_s*, %struct.ref_s** %41, align 8
  %43 = bitcast %struct.ref_s* %42 to i8*
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 2
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i64
  %47 = mul i64 %46, 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %43, i64 %47, i1 false)
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 2
  %49 = load i16, i16* %48, align 2
  %50 = zext i16 %49 to i32
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i64 %52
  store %struct.ref_s* %53, %struct.ref_s** %3, align 8
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  %54 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %55 = icmp ugt %struct.ref_s* %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %37
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 2
  %58 = load i16, i16* %57, align 2
  %59 = zext i16 %58 to i32
  %60 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %61 = sext i32 %59 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i64 %62
  store %struct.ref_s* %63, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %68

64:                                               ; preds = %37
  %65 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %66 = bitcast %struct.ref_s* %65 to i8*
  %67 = bitcast %struct.ref_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %56, %36, %21, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zastore(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i64, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %17, 256
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -7, i32* %2, align 4
  br label %57

21:                                               ; preds = %12
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 2
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i64
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %29 = ptrtoint %struct.ref_s* %27 to i64
  %30 = ptrtoint %struct.ref_s* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 16
  %33 = icmp ugt i64 %26, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 -17, i32* %2, align 4
  br label %57

35:                                               ; preds = %21
  %36 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 0
  %38 = bitcast %union.v* %37 to %struct.ref_s**
  %39 = load %struct.ref_s*, %struct.ref_s** %38, align 8
  %40 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i64 %42
  %44 = load i64, i64* %4, align 8
  %45 = call i32 (%struct.ref_s*, %struct.ref_s*, i64, ...) bitcast (i32 (...)* @refcpy to i32 (%struct.ref_s*, %struct.ref_s*, i64, ...)*)(%struct.ref_s* noundef %39, %struct.ref_s* noundef %43, i64 noundef %44)
  %46 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = sub nsw i64 0, %47
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i64 %48
  %50 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %51 = bitcast %struct.ref_s* %49 to i8*
  %52 = bitcast %struct.ref_s* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 16, i1 false)
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %55 = sub i64 0, %53
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 %55
  store %struct.ref_s* %56, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %35, %34, %20, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @refcpy(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @zarray_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([4 x %struct.op_def], [4 x %struct.op_def]* @zarray_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #2

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
