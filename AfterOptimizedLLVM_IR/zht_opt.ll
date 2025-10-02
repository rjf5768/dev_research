; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zht.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.int_state_s = type { %struct.int_state_s*, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_screen_enum_s = type opaque
%struct.gs_point_s = type { float, float }

@gs_screen_enum_sizeof = external dso_local global i32, align 4
@.str = private unnamed_addr constant [10 x i8] c"setscreen\00", align 1
@igs = external dso_local global %struct.gs_state_s*, align 8
@esp = external dso_local global %struct.ref_s*, align 8
@estop = external dso_local global %struct.ref_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@zht_op_init.my_defs = internal global [2 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetscreen }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"3setscreen\00", align 1
@istate = external dso_local global %struct.int_state_s, align 8
@ostop = external dso_local global %struct.ref_s*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetscreen(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [2 x float], align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_screen_enum_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -1
  %9 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %10 = call i32 @num_params(%struct.ref_s* noundef %8, i32 noundef 2, float* noundef %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %95

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 255
  %21 = ashr i32 %20, 2
  switch i32 %21, label %22 [
    i32 0, label %23
    i32 10, label %23
  ]

22:                                               ; preds = %15
  store i32 -20, i32* %2, align 4
  br label %95

23:                                               ; preds = %15, %15
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = xor i32 %28, -1
  %30 = and i32 %29, 3
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 -7, i32* %2, align 4
  br label %95

33:                                               ; preds = %24
  %34 = load i32, i32* @gs_screen_enum_sizeof, align 4
  %35 = call i8* @alloc(i32 noundef 1, i32 noundef %34, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %36 = bitcast i8* %35 to %struct.gs_screen_enum_s*
  store %struct.gs_screen_enum_s* %36, %struct.gs_screen_enum_s** %6, align 8
  %37 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %38 = icmp eq %struct.gs_screen_enum_s* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -25, i32* %2, align 4
  br label %95

40:                                               ; preds = %33
  %41 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %43 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %44 = load float, float* %43, align 4
  %45 = fpext float %44 to double
  %46 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %47 = load float, float* %46, align 4
  %48 = fpext float %47 to double
  %49 = call i32 @gs_screen_init(%struct.gs_screen_enum_s* noundef %41, %struct.gs_state_s* noundef %42, double noundef %45, double noundef %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %54 = bitcast %struct.gs_screen_enum_s* %53 to i8*
  %55 = load i32, i32* @gs_screen_enum_sizeof, align 4
  call void @alloc_free(i8* noundef %54, i32 noundef 1, i32 noundef %55, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %95

57:                                               ; preds = %40
  %58 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 3
  %60 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %61 = icmp ugt %struct.ref_s* %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 -5, i32* %2, align 4
  br label %95

63:                                               ; preds = %57
  %64 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 1
  store %struct.ref_s* %65, %struct.ref_s** @esp, align 8
  %66 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %68 = bitcast %union.v* %67 to i16*
  store i16 0, i16* %68, align 8
  %69 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 1
  store i16 33, i16* %70, align 8
  %71 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 1
  store %struct.ref_s* %72, %struct.ref_s** @esp, align 8
  %73 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %74 = bitcast %struct.ref_s* %72 to i8*
  %75 = bitcast %struct.ref_s* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  %76 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i32 1
  store %struct.ref_s* %77, %struct.ref_s** @esp, align 8
  %78 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %6, align 8
  %79 = bitcast %struct.gs_screen_enum_s* %78 to i8*
  %80 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i32 0, i32 0
  %82 = bitcast %union.v* %81 to i8**
  store i8* %79, i8** %82, align 8
  %83 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %84 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %83, i32 0, i32 1
  store i16 52, i16* %84, align 8
  %85 = load i32, i32* @gs_screen_enum_sizeof, align 4
  %86 = trunc i32 %85 to i16
  %87 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %88 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %87, i32 0, i32 2
  store i16 %86, i16* %88, align 2
  %89 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %90 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %89, i64 -3
  store %struct.ref_s* %90, %struct.ref_s** @osp, align 8
  %91 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %91, i64 -3
  store %struct.ref_s* %92, %struct.ref_s** %3, align 8
  %93 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %94 = call i32 @screen_sample(%struct.ref_s* noundef %93)
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %63, %62, %52, %39, %32, %22, %13
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @gs_screen_init(%struct.gs_screen_enum_s* noundef, %struct.gs_state_s* noundef, double noundef, double noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @screen_sample(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_screen_enum_s*, align 8
  %5 = alloca %struct.gs_point_s, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_s, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %10 = bitcast %union.v* %9 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.gs_screen_enum_s*
  store %struct.gs_screen_enum_s* %12, %struct.gs_screen_enum_s** %4, align 8
  %13 = load %struct.gs_screen_enum_s*, %struct.gs_screen_enum_s** %4, align 8
  %14 = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* noundef %13, %struct.gs_point_s* noundef %5)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %70

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %25 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 1) to i8*), i8* align 8 %25, i64 16, i1 false)
  %26 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -3
  store %struct.ref_s* %27, %struct.ref_s** @esp, align 8
  store i32 1, i32* %2, align 4
  br label %70

28:                                               ; preds = %19
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 2
  store %struct.ref_s* %30, %struct.ref_s** %3, align 8
  store %struct.ref_s* %30, %struct.ref_s** @osp, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %32 = icmp ugt %struct.ref_s* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -2
  store %struct.ref_s* %35, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %70

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i32 0, i32 0
  %38 = load float, float* %37, align 4
  %39 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %42 = bitcast %union.v* %41 to float*
  store float %38, float* %42, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 1
  store i16 44, i16* %45, align 8
  %46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %50 = bitcast %union.v* %49 to float*
  store float %47, float* %50, align 8
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 1
  store i16 44, i16* %52, align 8
  %53 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -1
  %55 = bitcast %struct.ref_s* %7 to i8*
  %56 = bitcast %struct.ref_s* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 1
  store %struct.ref_s* %58, %struct.ref_s** @esp, align 8
  %59 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i32 0, i32 0
  %61 = bitcast %union.v* %60 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @set_screen_continue, i32 (%struct.ref_s*)** %61, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 1
  store i16 37, i16* %63, align 8
  %64 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 2
  store i16 0, i16* %65, align 2
  %66 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 1
  store %struct.ref_s* %67, %struct.ref_s** @esp, align 8
  %68 = bitcast %struct.ref_s* %67 to i8*
  %69 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %36, %33, %22, %17
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zht_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([2 x %struct.op_def], [2 x %struct.op_def]* @zht_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* noundef, %struct.gs_point_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_screen_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 @num_params(%struct.ref_s* noundef %6, i32 noundef 1, float* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast i8* %16 to %struct.gs_screen_enum_s*
  %18 = load float, float* %4, align 4
  %19 = fpext float %18 to double
  %20 = call i32 @gs_screen_next(%struct.gs_screen_enum_s* noundef %17, double noundef %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %32

25:                                               ; preds = %12
  %26 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  store %struct.ref_s* %27, %struct.ref_s** @osp, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 -1
  store %struct.ref_s* %29, %struct.ref_s** %3, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = call i32 @screen_sample(%struct.ref_s* noundef %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %23, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @gs_screen_next(%struct.gs_screen_enum_s* noundef, double noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
