; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zcolor.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_state_s = type opaque
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_color_s = type opaque

@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@igs = external dso_local global %struct.gs_state_s*, align 8
@zcolor_op_init.my_defs = internal global [3 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentgscolor }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetgscolor }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"0currentgscolor\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"1setgscolor\00", align 1
@gs_color_sizeof = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"make_color\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentgscolor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 1
  store %struct.ref_s* %6, %struct.ref_s** %3, align 8
  store %struct.ref_s* %6, %struct.ref_s** @osp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %8 = icmp ugt %struct.ref_s* %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -1
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = call i32 @make_color(%struct.ref_s* noundef %13)
  store i32 %14, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %20 = bitcast %union.v* %19 to %struct.gs_color_s**
  %21 = load %struct.gs_color_s*, %struct.gs_color_s** %20, align 8
  %22 = call i32 @gs_currentgscolor(%struct.gs_state_s* noundef %17, %struct.gs_color_s* noundef %21)
  store i32 %22, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16, %12
  %25 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  store %struct.ref_s* %26, %struct.ref_s** @osp, align 8
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @make_color(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_color_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load i32, i32* @gs_color_sizeof, align 4
  %6 = call i8* @alloc(i32 noundef 1, i32 noundef %5, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %7 = bitcast i8* %6 to %struct.gs_color_s*
  store %struct.gs_color_s* %7, %struct.gs_color_s** %4, align 8
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %9 = icmp eq %struct.gs_color_s* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -25, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to %struct.gs_color_s**
  store %struct.gs_color_s* %12, %struct.gs_color_s** %15, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  store i16 56, i16* %17, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %11, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @gs_currentgscolor(%struct.gs_state_s* noundef, %struct.gs_color_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetgscolor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 56
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to %struct.gs_color_s**
  %17 = load %struct.gs_color_s*, %struct.gs_color_s** %16, align 8
  %18 = call i32 @gs_setgscolor(%struct.gs_state_s* noundef %13, %struct.gs_color_s* noundef %17)
  store i32 %18, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %12
  %23 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  store %struct.ref_s* %24, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %20, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @gs_setgscolor(%struct.gs_state_s* noundef, %struct.gs_color_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zcolor_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([3 x %struct.op_def], [3 x %struct.op_def]* @zcolor_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
