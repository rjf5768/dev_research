; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zvmem.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zvmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_state_s = type { %struct.int_state_s*, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_state_s = type opaque
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.vm_save_s = type { %struct.alloc_save_s*, %struct.int_state_s*, %struct.gs_state_s* }
%struct.alloc_save_s = type opaque
%struct.dict_s = type opaque
%struct.gs_font_s = type opaque
%struct.name_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_s = type opaque

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
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_save_s*, align 8
  %6 = alloca %struct.alloc_save_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zgsave to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %7)
  store i32 %8, i32* %4, align 4
  %9 = call i8* @alloc(i32 noundef 1, i32 noundef 24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = bitcast i8* %9 to %struct.vm_save_s*
  store %struct.vm_save_s* %10, %struct.vm_save_s** %5, align 8
  %11 = call %struct.alloc_save_s* @alloc_save_state()
  store %struct.alloc_save_s* %11, %struct.alloc_save_s** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.vm_save_s*, %struct.vm_save_s** %5, align 8
  %18 = icmp eq %struct.vm_save_s* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct.alloc_save_s*, %struct.alloc_save_s** %6, align 8
  %21 = icmp eq %struct.alloc_save_s* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16
  store i32 -25, i32* %2, align 4
  br label %48

23:                                               ; preds = %19
  %24 = load %struct.alloc_save_s*, %struct.alloc_save_s** %6, align 8
  %25 = load %struct.vm_save_s*, %struct.vm_save_s** %5, align 8
  %26 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %25, i32 0, i32 0
  store %struct.alloc_save_s* %24, %struct.alloc_save_s** %26, align 8
  %27 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  %28 = load %struct.vm_save_s*, %struct.vm_save_s** %5, align 8
  %29 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %28, i32 0, i32 1
  store %struct.int_state_s* %27, %struct.int_state_s** %29, align 8
  store %struct.int_state_s* null, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %31 = call %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* noundef %30, %struct.gs_state_s* noundef null)
  %32 = load %struct.vm_save_s*, %struct.vm_save_s** %5, align 8
  %33 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %32, i32 0, i32 2
  store %struct.gs_state_s* %31, %struct.gs_state_s** %33, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 1
  store %struct.ref_s* %35, %struct.ref_s** %3, align 8
  store %struct.ref_s* %35, %struct.ref_s** @osp, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %37 = icmp ugt %struct.ref_s* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %23
  %39 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -1
  store %struct.ref_s* %40, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %48

41:                                               ; preds = %23
  %42 = load %struct.vm_save_s*, %struct.vm_save_s** %5, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 0, i32 0
  %45 = bitcast %union.v* %44 to %struct.vm_save_s**
  store %struct.vm_save_s* %42, %struct.vm_save_s** %45, align 8
  %46 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 1
  store i16 48, i16* %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %38, %22, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @zgsave(...) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local %struct.alloc_save_s* @alloc_save_state() #1

declare dso_local %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* noundef, %struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zrestore(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.vm_save_s*, align 8
  %5 = alloca %struct.alloc_save_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 252
  %13 = icmp eq i32 %12, 48
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %69

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %18 = bitcast %union.v* %17 to %struct.vm_save_s**
  %19 = load %struct.vm_save_s*, %struct.vm_save_s** %18, align 8
  store %struct.vm_save_s* %19, %struct.vm_save_s** %4, align 8
  %20 = load %struct.vm_save_s*, %struct.vm_save_s** %4, align 8
  %21 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %20, i32 0, i32 0
  %22 = load %struct.alloc_save_s*, %struct.alloc_save_s** %21, align 8
  store %struct.alloc_save_s* %22, %struct.alloc_save_s** %5, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** @osbot, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %26 = call i32 @restore_check_stack(%struct.ref_s* noundef %23, %struct.ref_s* noundef %24, %struct.alloc_save_s* noundef %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %15
  %29 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 1
  %31 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %32 = call i32 @restore_check_stack(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0), %struct.ref_s* noundef %30, %struct.alloc_save_s* noundef %31)
  store i32 %32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.ref_s*, %struct.ref_s** @dsp, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 1
  %37 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %38 = call i32 @restore_check_stack(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef %36, %struct.alloc_save_s* noundef %37)
  store i32 %38, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %28, %15
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %69

42:                                               ; preds = %34
  %43 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  %44 = call i32 @alloc_restore_state_check(%struct.alloc_save_s* noundef %43)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 -11, i32* %2, align 4
  br label %69

47:                                               ; preds = %42
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zgrestoreall to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %48)
  %50 = load %struct.alloc_save_s*, %struct.alloc_save_s** %5, align 8
  call void @alloc_restore_state(%struct.alloc_save_s* noundef %50)
  %51 = load %struct.vm_save_s*, %struct.vm_save_s** %4, align 8
  %52 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %51, i32 0, i32 1
  %53 = load %struct.int_state_s*, %struct.int_state_s** %52, align 8
  store %struct.int_state_s* %53, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %55 = load %struct.vm_save_s*, %struct.vm_save_s** %4, align 8
  %56 = getelementptr inbounds %struct.vm_save_s, %struct.vm_save_s* %55, i32 0, i32 2
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %56, align 8
  %58 = call %struct.gs_state_s* @gs_state_swap_saved(%struct.gs_state_s* noundef %54, %struct.gs_state_s* noundef %57)
  %59 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %60 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zgrestore to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %59)
  store i32 %60, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %47
  %65 = load %struct.vm_save_s*, %struct.vm_save_s** %4, align 8
  %66 = bitcast %struct.vm_save_s* %65 to i8*
  call void @alloc_free(i8* noundef %66, i32 noundef 1, i32 noundef 24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 -1
  store %struct.ref_s* %68, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %62, %46, %40, %14
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @restore_check_stack(%struct.ref_s* noundef %0, %struct.ref_s* noundef %1, %struct.alloc_save_s* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca %struct.alloc_save_s*, align 8
  %8 = alloca %struct.ref_s*, align 8
  %9 = alloca i8*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %5, align 8
  store %struct.ref_s* %1, %struct.ref_s** %6, align 8
  store %struct.alloc_save_s* %2, %struct.alloc_save_s** %7, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  store %struct.ref_s* %10, %struct.ref_s** %8, align 8
  br label %11

11:                                               ; preds = %77, %3
  %12 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %14 = icmp ult %struct.ref_s* %12, %13
  br i1 %14, label %15, label %80

15:                                               ; preds = %11
  %16 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 255
  %21 = ashr i32 %20, 2
  switch i32 %21, label %69 [
    i32 0, label %22
    i32 10, label %22
    i32 2, label %28
    i32 4, label %34
    i32 7, label %40
    i32 12, label %46
    i32 13, label %52
    i32 14, label %57
    i32 15, label %63
  ]

22:                                               ; preds = %15, %15
  %23 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %25 = bitcast %union.v* %24 to %struct.ref_s**
  %26 = load %struct.ref_s*, %struct.ref_s** %25, align 8
  %27 = bitcast %struct.ref_s* %26 to i8*
  store i8* %27, i8** %9, align 8
  br label %70

28:                                               ; preds = %15
  %29 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %31 = bitcast %union.v* %30 to %struct.dict_s**
  %32 = load %struct.dict_s*, %struct.dict_s** %31, align 8
  %33 = bitcast %struct.dict_s* %32 to i8*
  store i8* %33, i8** %9, align 8
  br label %70

34:                                               ; preds = %15
  %35 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %37 = bitcast %union.v* %36 to %struct.gs_font_s**
  %38 = load %struct.gs_font_s*, %struct.gs_font_s** %37, align 8
  %39 = bitcast %struct.gs_font_s* %38 to i8*
  store i8* %39, i8** %9, align 8
  br label %70

40:                                               ; preds = %15
  %41 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 0
  %43 = bitcast %union.v* %42 to %struct.name_s**
  %44 = load %struct.name_s*, %struct.name_s** %43, align 8
  %45 = bitcast %struct.name_s* %44 to i8*
  store i8* %45, i8** %9, align 8
  br label %70

46:                                               ; preds = %15
  %47 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %49 = bitcast %union.v* %48 to %struct.vm_save_s**
  %50 = load %struct.vm_save_s*, %struct.vm_save_s** %49, align 8
  %51 = bitcast %struct.vm_save_s* %50 to i8*
  store i8* %51, i8** %9, align 8
  br label %70

52:                                               ; preds = %15
  %53 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %55 = bitcast %union.v* %54 to i8**
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %9, align 8
  br label %70

57:                                               ; preds = %15
  %58 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 0
  %60 = bitcast %union.v* %59 to %struct.gs_color_s**
  %61 = load %struct.gs_color_s*, %struct.gs_color_s** %60, align 8
  %62 = bitcast %struct.gs_color_s* %61 to i8*
  store i8* %62, i8** %9, align 8
  br label %70

63:                                               ; preds = %15
  %64 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %66 = bitcast %union.v* %65 to %struct.gx_device_s**
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %66, align 8
  %68 = bitcast %struct.gx_device_s* %67 to i8*
  store i8* %68, i8** %9, align 8
  br label %70

69:                                               ; preds = %15
  br label %77

70:                                               ; preds = %63, %57, %52, %46, %40, %34, %28, %22
  %71 = load i8*, i8** %9, align 8
  %72 = load %struct.alloc_save_s*, %struct.alloc_save_s** %7, align 8
  %73 = call i32 @alloc_is_since_save(i8* noundef %71, %struct.alloc_save_s* noundef %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 -11, i32* %4, align 4
  br label %81

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %69
  %78 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %79 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i32 1
  store %struct.ref_s* %79, %struct.ref_s** %8, align 8
  br label %11, !llvm.loop !4

80:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %75
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @alloc_restore_state_check(%struct.alloc_save_s* noundef) #1

declare dso_local i32 @zgrestoreall(...) #1

declare dso_local void @alloc_restore_state(%struct.alloc_save_s* noundef) #1

declare dso_local i32 @zgrestore(...) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zvmstatus(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  call void @alloc_status(i64* noundef %4, i64* noundef %5)
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 3
  store %struct.ref_s* %7, %struct.ref_s** %3, align 8
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %9 = icmp ugt %struct.ref_s* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -3
  store %struct.ref_s* %12, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = call i32 @alloc_save_level()
  %15 = sext i32 %14 to i64
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -2
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to i64*
  store i64 %15, i64* %19, align 8
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -2
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 1
  store i16 20, i16* %22, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 0
  %27 = bitcast %union.v* %26 to i64*
  store i64 %23, i64* %27, align 8
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  store i16 20, i16* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 0
  %34 = bitcast %union.v* %33 to i64*
  store i64 %31, i64* %34, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 1
  store i16 20, i16* %36, align 8
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %13, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local void @alloc_status(i64* noundef, i64* noundef) #1

declare dso_local i32 @alloc_save_level() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zvmem_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([4 x %struct.op_def], [4 x %struct.op_def]* @zvmem_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @alloc_is_since_save(i8* noundef, %struct.alloc_save_s* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
