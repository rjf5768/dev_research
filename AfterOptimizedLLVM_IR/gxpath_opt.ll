; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxpath.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.line_segment = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.curve_segment = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxpath.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"bad type in gx_path_release: %x!\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"gx_path_release\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gx_path_new_subpath\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"gx_path_add_line\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"gx_path_add_curve\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"gx_path_close_subpath\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_path_init(%struct.gx_path_s* noundef %0, %struct.gs_memory_procs* noundef %1) #0 {
  %3 = alloca %struct.gx_path_s*, align 8
  %4 = alloca %struct.gs_memory_procs*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %3, align 8
  store %struct.gs_memory_procs* %1, %struct.gs_memory_procs** %4, align 8
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %6 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %5, i32 0, i32 0
  %7 = load %struct.gs_memory_procs*, %struct.gs_memory_procs** %4, align 8
  %8 = bitcast %struct.gs_memory_procs* %6 to i8*
  %9 = bitcast %struct.gs_memory_procs* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 2
  store %struct.segment_s* null, %struct.segment_s** %11, align 8
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 10
  store i8 0, i8* %13, align 8
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 5
  store %struct.subpath* null, %struct.subpath** %15, align 8
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %17 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 4
  store %struct.subpath* null, %struct.subpath** %17, align 8
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %19 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 6
  store i32 0, i32* %19, align 8
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %21 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 7
  store i32 0, i32* %21, align 4
  %22 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %23 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %22, i32 0, i32 8
  store i32 0, i32* %23, align 8
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %25 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %24, i32 0, i32 11
  store i8 0, i8* %25, align 1
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 12
  store i8 0, i8* %27, align 2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_path_release(%struct.gx_path_s* noundef %0) #0 {
  %2 = alloca %struct.gx_path_s*, align 8
  %3 = alloca %struct.segment_s*, align 8
  %4 = alloca %struct.segment_s*, align 8
  %5 = alloca i32, align 4
  store %struct.gx_path_s* %0, %struct.gx_path_s** %2, align 8
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %6, i32 0, i32 4
  %8 = load %struct.subpath*, %struct.subpath** %7, align 8
  %9 = icmp eq %struct.subpath* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 12
  %14 = load i8, i8* %13, align 2
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %56

17:                                               ; preds = %11
  %18 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %19 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %18, i32 0, i32 5
  %20 = load %struct.subpath*, %struct.subpath** %19, align 8
  %21 = getelementptr inbounds %struct.subpath, %struct.subpath* %20, i32 0, i32 4
  %22 = load %struct.segment_s*, %struct.segment_s** %21, align 8
  store %struct.segment_s* %22, %struct.segment_s** %3, align 8
  br label %23

23:                                               ; preds = %44, %17
  %24 = load %struct.segment_s*, %struct.segment_s** %3, align 8
  %25 = icmp ne %struct.segment_s* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = load %struct.segment_s*, %struct.segment_s** %3, align 8
  %28 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %27, i32 0, i32 0
  %29 = load %struct.segment_s*, %struct.segment_s** %28, align 8
  store %struct.segment_s* %29, %struct.segment_s** %4, align 8
  %30 = load %struct.segment_s*, %struct.segment_s** %3, align 8
  %31 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %36 [
    i32 0, label %33
    i32 1, label %34
    i32 2, label %34
    i32 3, label %35
  ]

33:                                               ; preds = %26
  store i32 64, i32* %5, align 4
  br label %44

34:                                               ; preds = %26, %26
  store i32 40, i32* %5, align 4
  br label %44

35:                                               ; preds = %26
  store i32 72, i32* %5, align 4
  br label %44

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 noundef 75)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = load %struct.segment_s*, %struct.segment_s** %3, align 8
  %41 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 noundef %42)
  call void @exit(i32 noundef 1) #4
  unreachable

44:                                               ; preds = %35, %34, %33
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %46 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %46, i32 0, i32 1
  %48 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %47, align 8
  %49 = load %struct.segment_s*, %struct.segment_s** %3, align 8
  %50 = bitcast %struct.segment_s* %49 to i8*
  %51 = load i32, i32* %5, align 4
  call void %48(i8* noundef %50, i32 noundef 1, i32 noundef %51, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.segment_s*, %struct.segment_s** %4, align 8
  store %struct.segment_s* %52, %struct.segment_s** %3, align 8
  br label %23, !llvm.loop !4

53:                                               ; preds = %23
  %54 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %55 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %54, i32 0, i32 4
  store %struct.subpath* null, %struct.subpath** %55, align 8
  br label %56

56:                                               ; preds = %53, %16, %10
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @gx_path_share(%struct.gx_path_s* noundef %0) #0 {
  %2 = alloca %struct.gx_path_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %2, align 8
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %3, i32 0, i32 4
  %5 = load %struct.subpath*, %struct.subpath** %4, align 8
  %6 = icmp ne %struct.subpath* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 12
  store i8 1, i8* %9, align 2
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_new_subpath(%struct.gx_path_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gx_path_s*, align 8
  %4 = alloca %struct.subpath*, align 8
  %5 = alloca %struct.subpath*, align 8
  %6 = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %3, align 8
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 5
  %9 = load %struct.subpath*, %struct.subpath** %8, align 8
  store %struct.subpath* %9, %struct.subpath** %4, align 8
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 12
  %12 = load i8, i8* %11, align 2
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %16 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %15)
  store %struct.subpath* %16, %struct.subpath** %4, align 8
  %17 = icmp ne %struct.subpath* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 -13, i32* %2, align 4
  br label %79

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %22 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %22, i32 0, i32 0
  %24 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %23, align 8
  %25 = call i8* %24(i32 noundef 1, i32 noundef 64, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %26 = bitcast i8* %25 to %struct.subpath*
  store %struct.subpath* %26, %struct.subpath** %5, align 8
  %27 = icmp ne %struct.subpath* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 -13, i32* %2, align 4
  br label %79

29:                                               ; preds = %20
  %30 = load %struct.subpath*, %struct.subpath** %5, align 8
  %31 = getelementptr inbounds %struct.subpath, %struct.subpath* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.subpath*, %struct.subpath** %5, align 8
  %33 = getelementptr inbounds %struct.subpath, %struct.subpath* %32, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %33, align 8
  %34 = load %struct.subpath*, %struct.subpath** %5, align 8
  %35 = bitcast %struct.subpath* %34 to %struct.segment_s*
  %36 = load %struct.subpath*, %struct.subpath** %5, align 8
  %37 = getelementptr inbounds %struct.subpath, %struct.subpath* %36, i32 0, i32 4
  store %struct.segment_s* %35, %struct.segment_s** %37, align 8
  %38 = load %struct.subpath*, %struct.subpath** %5, align 8
  %39 = getelementptr inbounds %struct.subpath, %struct.subpath* %38, i32 0, i32 6
  store i32 0, i32* %39, align 4
  %40 = load %struct.subpath*, %struct.subpath** %5, align 8
  %41 = getelementptr inbounds %struct.subpath, %struct.subpath* %40, i32 0, i32 5
  store i32 0, i32* %41, align 8
  %42 = load %struct.subpath*, %struct.subpath** %5, align 8
  %43 = getelementptr inbounds %struct.subpath, %struct.subpath* %42, i32 0, i32 7
  store i8 0, i8* %43, align 8
  %44 = load %struct.subpath*, %struct.subpath** %5, align 8
  %45 = getelementptr inbounds %struct.subpath, %struct.subpath* %44, i32 0, i32 3
  %46 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %47 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %46, i32 0, i32 9
  %48 = bitcast %struct.gs_fixed_point_s* %45 to i8*
  %49 = bitcast %struct.gs_fixed_point_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 16, i1 false)
  %50 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %51 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %50, i32 0, i32 11
  store i8 1, i8* %51, align 1
  %52 = load %struct.subpath*, %struct.subpath** %4, align 8
  %53 = icmp ne %struct.subpath* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %29
  %55 = load %struct.subpath*, %struct.subpath** %5, align 8
  %56 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %57 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %56, i32 0, i32 4
  store %struct.subpath* %55, %struct.subpath** %57, align 8
  %58 = load %struct.subpath*, %struct.subpath** %5, align 8
  %59 = getelementptr inbounds %struct.subpath, %struct.subpath* %58, i32 0, i32 0
  store %struct.segment_s* null, %struct.segment_s** %59, align 8
  br label %71

60:                                               ; preds = %29
  %61 = load %struct.subpath*, %struct.subpath** %4, align 8
  %62 = getelementptr inbounds %struct.subpath, %struct.subpath* %61, i32 0, i32 4
  %63 = load %struct.segment_s*, %struct.segment_s** %62, align 8
  store %struct.segment_s* %63, %struct.segment_s** %6, align 8
  %64 = load %struct.subpath*, %struct.subpath** %5, align 8
  %65 = bitcast %struct.subpath* %64 to %struct.segment_s*
  %66 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %67 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %66, i32 0, i32 1
  store %struct.segment_s* %65, %struct.segment_s** %67, align 8
  %68 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %69 = load %struct.subpath*, %struct.subpath** %5, align 8
  %70 = getelementptr inbounds %struct.subpath, %struct.subpath* %69, i32 0, i32 0
  store %struct.segment_s* %68, %struct.segment_s** %70, align 8
  br label %71

71:                                               ; preds = %60, %54
  %72 = load %struct.subpath*, %struct.subpath** %5, align 8
  %73 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %74 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %73, i32 0, i32 5
  store %struct.subpath* %72, %struct.subpath** %74, align 8
  %75 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %76 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %71, %28, %18
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %0) #0 {
  %2 = alloca %struct.subpath*, align 8
  %3 = alloca %struct.gx_path_s*, align 8
  %4 = alloca %struct.gx_path_s, align 8
  %5 = alloca i32, align 4
  store %struct.gx_path_s* %0, %struct.gx_path_s** %3, align 8
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %7 = call i32 @gx_path_copy(%struct.gx_path_s* noundef %6, %struct.gx_path_s* noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.subpath* null, %struct.subpath** %2, align 8
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %13 = bitcast %struct.gx_path_s* %12 to i8*
  %14 = bitcast %struct.gx_path_s* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 144, i1 false)
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 12
  store i8 0, i8* %16, align 2
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 5
  %19 = load %struct.subpath*, %struct.subpath** %18, align 8
  store %struct.subpath* %19, %struct.subpath** %2, align 8
  br label %20

20:                                               ; preds = %11, %10
  %21 = load %struct.subpath*, %struct.subpath** %2, align 8
  ret %struct.subpath* %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_point(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.gx_path_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 11
  store i8 0, i8* %8, align 1
  %9 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %9, i32 0, i32 10
  store i8 1, i8* %10, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %17 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i32 0, i32 1
  store i64 %15, i64* %18, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_relative_point(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gx_path_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %8, i32 0, i32 10
  %10 = load i8, i8* %9, align 8
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 -14, i32* %4, align 4
  br label %28

13:                                               ; preds = %3
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %15 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %14, i32 0, i32 11
  store i8 0, i8* %15, align 1
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %18 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %16
  store i64 %21, i64* %19, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %24 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %22
  store i64 %27, i64* %25, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_line(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gx_path_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.subpath*, align 8
  %9 = alloca %struct.line_segment*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %13 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %12, i32 0, i32 5
  %14 = load %struct.subpath*, %struct.subpath** %13, align 8
  store %struct.subpath* %14, %struct.subpath** %8, align 8
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %16 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %15, i32 0, i32 11
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %3
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %21 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 10
  %22 = load i8, i8* %21, align 8
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 -14, i32* %4, align 4
  br label %97

25:                                               ; preds = %19
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %27 = call i32 @gx_path_new_subpath(%struct.gx_path_s* noundef %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %97

32:                                               ; preds = %25
  %33 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %34 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %33, i32 0, i32 5
  %35 = load %struct.subpath*, %struct.subpath** %34, align 8
  store %struct.subpath* %35, %struct.subpath** %8, align 8
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %38 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %37, i32 0, i32 12
  %39 = load i8, i8* %38, align 2
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %43 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %42)
  store %struct.subpath* %43, %struct.subpath** %8, align 8
  %44 = icmp ne %struct.subpath* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 -13, i32* %4, align 4
  br label %97

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %49 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %49, i32 0, i32 0
  %51 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %50, align 8
  %52 = call i8* %51(i32 noundef 1, i32 noundef 40, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %53 = bitcast i8* %52 to %struct.line_segment*
  store %struct.line_segment* %53, %struct.line_segment** %9, align 8
  %54 = icmp ne %struct.line_segment* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  store i32 -13, i32* %4, align 4
  br label %97

56:                                               ; preds = %47
  %57 = load %struct.line_segment*, %struct.line_segment** %9, align 8
  %58 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = load %struct.line_segment*, %struct.line_segment** %9, align 8
  %60 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %59, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %60, align 8
  %61 = load %struct.subpath*, %struct.subpath** %8, align 8
  %62 = getelementptr inbounds %struct.subpath, %struct.subpath* %61, i32 0, i32 4
  %63 = load %struct.segment_s*, %struct.segment_s** %62, align 8
  store %struct.segment_s* %63, %struct.segment_s** %11, align 8
  %64 = load %struct.line_segment*, %struct.line_segment** %9, align 8
  %65 = bitcast %struct.line_segment* %64 to %struct.segment_s*
  %66 = load %struct.segment_s*, %struct.segment_s** %11, align 8
  %67 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %66, i32 0, i32 1
  store %struct.segment_s* %65, %struct.segment_s** %67, align 8
  %68 = load %struct.segment_s*, %struct.segment_s** %11, align 8
  %69 = load %struct.line_segment*, %struct.line_segment** %9, align 8
  %70 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %69, i32 0, i32 0
  store %struct.segment_s* %68, %struct.segment_s** %70, align 8
  %71 = load %struct.line_segment*, %struct.line_segment** %9, align 8
  %72 = bitcast %struct.line_segment* %71 to %struct.segment_s*
  %73 = load %struct.subpath*, %struct.subpath** %8, align 8
  %74 = getelementptr inbounds %struct.subpath, %struct.subpath* %73, i32 0, i32 4
  store %struct.segment_s* %72, %struct.segment_s** %74, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %77 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.line_segment*, %struct.line_segment** %9, align 8
  %80 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %80, i32 0, i32 0
  store i64 %75, i64* %81, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %84 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %84, i32 0, i32 1
  store i64 %82, i64* %85, align 8
  %86 = load %struct.line_segment*, %struct.line_segment** %9, align 8
  %87 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %87, i32 0, i32 1
  store i64 %82, i64* %88, align 8
  %89 = load %struct.subpath*, %struct.subpath** %8, align 8
  %90 = getelementptr inbounds %struct.subpath, %struct.subpath* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %94 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %56, %55, %45, %30, %24
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_rectangle(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.gx_path_s*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @gx_path_add_pgram(%struct.gx_path_s* noundef %11, i64 noundef %12, i64 noundef %13, i64 noundef %14, i64 noundef %15, i64 noundef %16, i64 noundef %17)
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_pgram(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gx_path_s*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.gx_path_s* %0, %struct.gx_path_s** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @gx_path_add_point(%struct.gx_path_s* noundef %17, i64 noundef %18, i64 noundef %19)
  store i32 %20, i32* %16, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %7
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %23, i64 noundef %24, i64 noundef %25)
  store i32 %26, i32* %16, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %22
  %29 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %29, i64 noundef %30, i64 noundef %31)
  store i32 %32, i32* %16, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %14, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %12, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %15, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* %13, align 8
  %45 = sub nsw i64 %43, %44
  %46 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %35, i64 noundef %40, i64 noundef %45)
  store i32 %46, i32* %16, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %34
  %49 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %50 = call i32 @gx_path_close_subpath(%struct.gx_path_s* noundef %49)
  store i32 %50, i32* %16, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %34, %28, %22, %7
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %8, align 4
  br label %55

54:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %52
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_close_subpath(%struct.gx_path_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gx_path_s*, align 8
  %4 = alloca %struct.subpath*, align 8
  %5 = alloca %struct.line_segment*, align 8
  %6 = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %3, align 8
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %7, i32 0, i32 5
  %9 = load %struct.subpath*, %struct.subpath** %8, align 8
  store %struct.subpath* %9, %struct.subpath** %4, align 8
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %11 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %10, i32 0, i32 11
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %130

15:                                               ; preds = %1
  %16 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %17 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.subpath*, %struct.subpath** %4, align 8
  %21 = getelementptr inbounds %struct.subpath, %struct.subpath* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %15
  %26 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %27 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.subpath*, %struct.subpath** %4, align 8
  %31 = getelementptr inbounds %struct.subpath, %struct.subpath* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %25
  %36 = load %struct.subpath*, %struct.subpath** %4, align 8
  %37 = getelementptr inbounds %struct.subpath, %struct.subpath* %36, i32 0, i32 4
  %38 = load %struct.segment_s*, %struct.segment_s** %37, align 8
  %39 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %44 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %43, i32 0, i32 12
  %45 = load i8, i8* %44, align 2
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %49 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %48)
  %50 = icmp ne %struct.subpath* null, %49
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 -13, i32* %2, align 4
  br label %130

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %42
  %54 = load %struct.subpath*, %struct.subpath** %4, align 8
  %55 = getelementptr inbounds %struct.subpath, %struct.subpath* %54, i32 0, i32 4
  %56 = load %struct.segment_s*, %struct.segment_s** %55, align 8
  %57 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %56, i32 0, i32 2
  store i32 2, i32* %57, align 8
  store %struct.line_segment* null, %struct.line_segment** %5, align 8
  br label %125

58:                                               ; preds = %35, %25, %15
  %59 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %60 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %59, i32 0, i32 12
  %61 = load i8, i8* %60, align 2
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %65 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %64)
  store %struct.subpath* %65, %struct.subpath** %4, align 8
  %66 = icmp ne %struct.subpath* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 -13, i32* %2, align 4
  br label %130

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %58
  %70 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %71 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %71, i32 0, i32 0
  %73 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %72, align 8
  %74 = call i8* %73(i32 noundef 1, i32 noundef 40, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %75 = bitcast i8* %74 to %struct.line_segment*
  store %struct.line_segment* %75, %struct.line_segment** %5, align 8
  %76 = icmp ne %struct.line_segment* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  store i32 -13, i32* %2, align 4
  br label %130

78:                                               ; preds = %69
  %79 = load %struct.line_segment*, %struct.line_segment** %5, align 8
  %80 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %79, i32 0, i32 2
  store i32 2, i32* %80, align 8
  %81 = load %struct.line_segment*, %struct.line_segment** %5, align 8
  %82 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %81, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %82, align 8
  %83 = load %struct.subpath*, %struct.subpath** %4, align 8
  %84 = getelementptr inbounds %struct.subpath, %struct.subpath* %83, i32 0, i32 4
  %85 = load %struct.segment_s*, %struct.segment_s** %84, align 8
  store %struct.segment_s* %85, %struct.segment_s** %6, align 8
  %86 = load %struct.line_segment*, %struct.line_segment** %5, align 8
  %87 = bitcast %struct.line_segment* %86 to %struct.segment_s*
  %88 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %89 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %88, i32 0, i32 1
  store %struct.segment_s* %87, %struct.segment_s** %89, align 8
  %90 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %91 = load %struct.line_segment*, %struct.line_segment** %5, align 8
  %92 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %91, i32 0, i32 0
  store %struct.segment_s* %90, %struct.segment_s** %92, align 8
  %93 = load %struct.line_segment*, %struct.line_segment** %5, align 8
  %94 = bitcast %struct.line_segment* %93 to %struct.segment_s*
  %95 = load %struct.subpath*, %struct.subpath** %4, align 8
  %96 = getelementptr inbounds %struct.subpath, %struct.subpath* %95, i32 0, i32 4
  store %struct.segment_s* %94, %struct.segment_s** %96, align 8
  %97 = load %struct.subpath*, %struct.subpath** %4, align 8
  %98 = getelementptr inbounds %struct.subpath, %struct.subpath* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %102 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load %struct.line_segment*, %struct.line_segment** %5, align 8
  %105 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %105, i32 0, i32 0
  store i64 %100, i64* %106, align 8
  %107 = load %struct.subpath*, %struct.subpath** %4, align 8
  %108 = getelementptr inbounds %struct.subpath, %struct.subpath* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %112 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %111, i32 0, i32 9
  %113 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  %114 = load %struct.line_segment*, %struct.line_segment** %5, align 8
  %115 = getelementptr inbounds %struct.line_segment, %struct.line_segment* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %115, i32 0, i32 1
  store i64 %110, i64* %116, align 8
  %117 = load %struct.subpath*, %struct.subpath** %4, align 8
  %118 = getelementptr inbounds %struct.subpath, %struct.subpath* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %122 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %78, %53
  %126 = load %struct.subpath*, %struct.subpath** %4, align 8
  %127 = getelementptr inbounds %struct.subpath, %struct.subpath* %126, i32 0, i32 7
  store i8 1, i8* %127, align 8
  %128 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %129 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %128, i32 0, i32 11
  store i8 0, i8* %129, align 1
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %125, %77, %67, %51, %14
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_curve(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.gx_path_s*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.subpath*, align 8
  %17 = alloca %struct.curve_segment*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.segment_s*, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %21 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %20, i32 0, i32 5
  %22 = load %struct.subpath*, %struct.subpath** %21, align 8
  store %struct.subpath* %22, %struct.subpath** %16, align 8
  %23 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %24 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %23, i32 0, i32 11
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %7
  %28 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %29 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %28, i32 0, i32 10
  %30 = load i8, i8* %29, align 8
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 -14, i32* %8, align 4
  br label %125

33:                                               ; preds = %27
  %34 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %35 = call i32 @gx_path_new_subpath(%struct.gx_path_s* noundef %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %18, align 4
  store i32 %39, i32* %8, align 4
  br label %125

40:                                               ; preds = %33
  %41 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %42 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %41, i32 0, i32 5
  %43 = load %struct.subpath*, %struct.subpath** %42, align 8
  store %struct.subpath* %43, %struct.subpath** %16, align 8
  br label %44

44:                                               ; preds = %40, %7
  %45 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %46 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %45, i32 0, i32 12
  %47 = load i8, i8* %46, align 2
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %51 = call %struct.subpath* @path_alloc_copy(%struct.gx_path_s* noundef %50)
  store %struct.subpath* %51, %struct.subpath** %16, align 8
  %52 = icmp ne %struct.subpath* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 -13, i32* %8, align 4
  br label %125

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %57 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.gs_memory_procs, %struct.gs_memory_procs* %57, i32 0, i32 0
  %59 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %58, align 8
  %60 = call i8* %59(i32 noundef 1, i32 noundef 72, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %61 = bitcast i8* %60 to %struct.curve_segment*
  store %struct.curve_segment* %61, %struct.curve_segment** %17, align 8
  %62 = icmp ne %struct.curve_segment* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  store i32 -13, i32* %8, align 4
  br label %125

64:                                               ; preds = %55
  %65 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %66 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %65, i32 0, i32 2
  store i32 3, i32* %66, align 8
  %67 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %68 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %67, i32 0, i32 1
  store %struct.segment_s* null, %struct.segment_s** %68, align 8
  %69 = load %struct.subpath*, %struct.subpath** %16, align 8
  %70 = getelementptr inbounds %struct.subpath, %struct.subpath* %69, i32 0, i32 4
  %71 = load %struct.segment_s*, %struct.segment_s** %70, align 8
  store %struct.segment_s* %71, %struct.segment_s** %19, align 8
  %72 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %73 = bitcast %struct.curve_segment* %72 to %struct.segment_s*
  %74 = load %struct.segment_s*, %struct.segment_s** %19, align 8
  %75 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %74, i32 0, i32 1
  store %struct.segment_s* %73, %struct.segment_s** %75, align 8
  %76 = load %struct.segment_s*, %struct.segment_s** %19, align 8
  %77 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %78 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %77, i32 0, i32 0
  store %struct.segment_s* %76, %struct.segment_s** %78, align 8
  %79 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %80 = bitcast %struct.curve_segment* %79 to %struct.segment_s*
  %81 = load %struct.subpath*, %struct.subpath** %16, align 8
  %82 = getelementptr inbounds %struct.subpath, %struct.subpath* %81, i32 0, i32 4
  store %struct.segment_s* %80, %struct.segment_s** %82, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %85 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %89 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %89, i32 0, i32 1
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %93 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %93, i32 0, i32 0
  store i64 %91, i64* %94, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %97 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %97, i32 0, i32 1
  store i64 %95, i64* %98, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %101 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %104 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %104, i32 0, i32 0
  store i64 %99, i64* %105, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %108 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %107, i32 0, i32 9
  %109 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  %110 = load %struct.curve_segment*, %struct.curve_segment** %17, align 8
  %111 = getelementptr inbounds %struct.curve_segment, %struct.curve_segment* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %111, i32 0, i32 1
  store i64 %106, i64* %112, align 8
  %113 = load %struct.subpath*, %struct.subpath** %16, align 8
  %114 = getelementptr inbounds %struct.subpath, %struct.subpath* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %118 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %122 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %64, %63, %53, %38, %32
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_path_add_arc(%struct.gx_path_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #0 {
  %8 = alloca %struct.gx_path_s*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.gx_path_s* %0, %struct.gx_path_s** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load i64, i64* %13, align 8
  %18 = sitofp i64 %17 to double
  %19 = fmul double %18, 5.500000e-01
  %20 = fptosi double %19 to i64
  store i64 %20, i64* %15, align 8
  %21 = load i64, i64* %14, align 8
  %22 = sitofp i64 %21 to double
  %23 = fmul double %22, 5.500000e-01
  %24 = fptosi double %23 to i64
  store i64 %24, i64* %16, align 8
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = sitofp i64 %26 to double
  %28 = fmul double %27, 0x3FDCCCCCCCCCCCCC
  %29 = fptosi double %28 to i64
  %30 = load i64, i64* %15, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* %10, align 8
  %33 = sitofp i64 %32 to double
  %34 = fmul double %33, 0x3FDCCCCCCCCCCCCC
  %35 = fptosi double %34 to i64
  %36 = load i64, i64* %16, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %11, align 8
  %39 = sitofp i64 %38 to double
  %40 = fmul double %39, 0x3FDCCCCCCCCCCCCC
  %41 = fptosi double %40 to i64
  %42 = load i64, i64* %15, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* %12, align 8
  %45 = sitofp i64 %44 to double
  %46 = fmul double %45, 0x3FDCCCCCCCCCCCCC
  %47 = fptosi double %46 to i64
  %48 = load i64, i64* %16, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @gx_path_add_curve(%struct.gx_path_s* noundef %25, i64 noundef %31, i64 noundef %37, i64 noundef %43, i64 noundef %49, i64 noundef %50, i64 noundef %51)
  ret i32 %52
}

declare dso_local i32 @gx_path_copy(%struct.gx_path_s* noundef, %struct.gx_path_s* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
