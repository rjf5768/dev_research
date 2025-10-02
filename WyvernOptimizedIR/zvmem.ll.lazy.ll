; ModuleID = './zvmem.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zvmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_state_s = type { %struct.int_state_s*, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_state_s = type opaque
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.alloc_save_s = type opaque
%struct.vm_save_s = type { %struct.alloc_save_s*, %struct.int_state_s*, %struct.gs_state_s* }

@.str = private unnamed_addr constant [6 x i8] c"zsave\00", align 1
@istate = external dso_local global %struct.int_state_s, align 8
@igs = external dso_local global %struct.gs_state_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@osbot = external dso_local global %struct.ref_s*, align 8
@estack = external dso_local global [0 x %struct.ref_s], align 8
@esp = external dso_local global %struct.ref_s*, align 8
@dstack = external dso_local global [0 x %struct.ref_s], align 8
@dsp = external dso_local global %struct.ref_s*, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"zrestore\00", align 1
@zvmem_op_init.my_defs = internal global [4 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zrestore }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zsave }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zvmstatus }, %struct.op_def zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"1restore\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"0save\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"0vmstatus\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsave(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zgsave to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #2
  %3 = call i8* @alloc(i32 noundef 1, i32 noundef 24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #2
  %4 = call %struct.alloc_save_s* @alloc_save_state() #2
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = icmp eq i8* %3, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = icmp eq %struct.alloc_save_s* %4, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9, %7
  br label %30

12:                                               ; preds = %9
  %13 = bitcast i8* %3 to %struct.alloc_save_s**
  store %struct.alloc_save_s* %4, %struct.alloc_save_s** %13, align 8
  %14 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 0), align 8
  %15 = getelementptr inbounds i8, i8* %3, i64 8
  %16 = bitcast i8* %15 to %struct.int_state_s**
  store %struct.int_state_s* %14, %struct.int_state_s** %16, align 8
  store %struct.int_state_s* null, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 0), align 8
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %18 = call %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* noundef %17, %struct.gs_state_s* noundef null) #2
  %19 = getelementptr inbounds i8, i8* %3, i64 16
  %20 = bitcast i8* %19 to %struct.gs_state_s**
  store %struct.gs_state_s* %18, %struct.gs_state_s** %20, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %21, %struct.ref_s** @osp, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %23 = icmp ugt %struct.ref_s* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -1
  store %struct.ref_s* %26, %struct.ref_s** @osp, align 8
  br label %30

27:                                               ; preds = %12
  %28 = bitcast %struct.ref_s* %21 to i8**
  store i8* %3, i8** %28, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 48, i16* %29, align 8
  br label %30

30:                                               ; preds = %27, %24, %11, %6
  %.0 = phi i32 [ %2, %6 ], [ -25, %11 ], [ -16, %24 ], [ 0, %27 ]
  ret i32 %.0
}

declare dso_local i32 @zgsave(...) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local %struct.alloc_save_s* @alloc_save_state() #1

declare dso_local %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* noundef, %struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrestore(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 48
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %45

7:                                                ; preds = %1
  %8 = bitcast %struct.ref_s* %0 to %struct.vm_save_s**
  %9 = load %struct.vm_save_s*, %struct.vm_save_s** %8, align 8
  %10 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %9, i64 0, i32 0
  %11 = load %struct.alloc_save_s*, %struct.alloc_save_s** %10, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %13 = call i32 @restore_check_stack(%struct.ref_s* noundef %12, %struct.ref_s* noundef %0, %struct.alloc_save_s* noundef %11)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %7
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 1
  %18 = call i32 @restore_check_stack(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0), %struct.ref_s* noundef nonnull %17, %struct.alloc_save_s* noundef %11)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 1
  %23 = call i32 @restore_check_stack(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef nonnull %22, %struct.alloc_save_s* noundef %11)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15, %7
  %.01 = phi i32 [ %13, %7 ], [ %18, %15 ], [ %23, %20 ]
  br label %45

26:                                               ; preds = %20
  %27 = call i32 @alloc_restore_state_check(%struct.alloc_save_s* noundef %11) #2
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %45

30:                                               ; preds = %26
  %31 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zgrestoreall to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #2
  call void @alloc_restore_state(%struct.alloc_save_s* noundef %11) #2
  %32 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %9, i64 0, i32 1
  %33 = load %struct.int_state_s*, %struct.int_state_s** %32, align 8
  store %struct.int_state_s* %33, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 0), align 8
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %35 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %9, i64 0, i32 2
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %35, align 8
  %37 = call %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* noundef %34, %struct.gs_state_s* noundef %36) #2
  %38 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zgrestore to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #2
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %30
  %42 = bitcast %struct.vm_save_s* %9 to i8*
  call void @alloc_free(i8* noundef %42, i32 noundef 1, i32 noundef 24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #2
  %43 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  store %struct.ref_s* %44, %struct.ref_s** @osp, align 8
  br label %45

45:                                               ; preds = %41, %40, %29, %25, %6
  %.0 = phi i32 [ %.01, %25 ], [ -11, %29 ], [ %38, %40 ], [ 0, %41 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @restore_check_stack(%struct.ref_s* noundef readonly %0, %struct.ref_s* noundef readnone %1, %struct.alloc_save_s* noundef %2) #0 {
  br label %4

4:                                                ; preds = %25, %3
  %.02 = phi %struct.ref_s* [ %0, %3 ], [ %26, %25 ]
  %5 = icmp ult %struct.ref_s* %.02, %1
  br i1 %5, label %6, label %27

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = lshr i16 %8, 2
  %10 = and i16 %9, 63
  %11 = zext i16 %10 to i32
  switch i32 %11, label %20 [
    i32 0, label %12
    i32 10, label %12
    i32 2, label %13
    i32 4, label %14
    i32 7, label %15
    i32 12, label %16
    i32 13, label %17
    i32 14, label %18
    i32 15, label %19
  ]

12:                                               ; preds = %6, %6
  br label %21

13:                                               ; preds = %6
  br label %21

14:                                               ; preds = %6
  br label %21

15:                                               ; preds = %6
  br label %21

16:                                               ; preds = %6
  br label %21

17:                                               ; preds = %6
  br label %21

18:                                               ; preds = %6
  br label %21

19:                                               ; preds = %6
  br label %21

20:                                               ; preds = %6
  br label %25

21:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12
  %.01.in = bitcast %struct.ref_s* %.02 to i8**
  %.01 = load i8*, i8** %.01.in, align 8
  %22 = call i32 @alloc_is_since_save(i8* noundef %.01, %struct.alloc_save_s* noundef %2) #2
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %24, label %23

23:                                               ; preds = %21
  br label %28

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.02, i64 1
  br label %4, !llvm.loop !4

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %23
  %.0 = phi i32 [ -11, %23 ], [ 0, %27 ]
  ret i32 %.0
}

declare dso_local i32 @alloc_restore_state_check(%struct.alloc_save_s* noundef) #1

declare dso_local i32 @zgrestoreall(...) #1

declare dso_local void @alloc_restore_state(%struct.alloc_save_s* noundef) #1

declare dso_local i32 @zgrestore(...) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zvmstatus(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @alloc_status(i64* noundef nonnull %2, i64* noundef nonnull %3) #2
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 3
  store %struct.ref_s* %4, %struct.ref_s** @osp, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %6 = icmp ugt %struct.ref_s* %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -3
  store %struct.ref_s* %9, %struct.ref_s** @osp, align 8
  br label %21

10:                                               ; preds = %1
  %11 = call i32 @alloc_save_level() #2
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %14, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 20, i16* %17, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 0, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 3, i32 1
  store i16 20, i16* %20, align 8
  br label %21

21:                                               ; preds = %10, %7
  %.0 = phi i32 [ -16, %7 ], [ 0, %10 ]
  ret i32 %.0
}

declare dso_local void @alloc_status(i64* noundef, i64* noundef) #1

declare dso_local i32 @alloc_save_level() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zvmem_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([4 x %struct.op_def], [4 x %struct.op_def]* @zvmem_op_init.my_defs, i64 0, i64 0)) #2
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @alloc_is_since_save(i8* noundef, %struct.alloc_save_s* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
