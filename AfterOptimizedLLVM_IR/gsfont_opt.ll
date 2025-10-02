; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsfont.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_font_dir_s = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, i64, %struct.gs_font_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x %struct.cached_char_s*], i8*, i32, %struct.cached_fm_pair_s*, i32, %struct.cached_char_s*, i32 }
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_dir_s*, i8*, %struct.gs_matrix_s, i32, float, float, float, float, i32, i64, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i8* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_show_enum_s = type opaque
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.device_s = type opaque
%struct.cached_fm_pair_s = type opaque
%struct.cached_char_s = type opaque

@.str = private unnamed_addr constant [20 x i8] c"font_dir_alloc(dir)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"font_dir_alloc(bdata)\00", align 1
@cached_fm_pair_sizeof = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"font_dir_alloc(mdata)\00", align 1
@cached_char_sizeof = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"font_dir_alloc(cdata)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gs_makefont\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.gs_font_dir_s* @gs_font_dir_alloc(i8* (i32, i32, i8*)* noundef %0, void (i8*, i32, i32, i8*)* noundef %1) #0 {
  %3 = alloca i8* (i32, i32, i8*)*, align 8
  %4 = alloca void (i8*, i32, i32, i8*)*, align 8
  store i8* (i32, i32, i8*)* %0, i8* (i32, i32, i8*)** %3, align 8
  store void (i8*, i32, i32, i8*)* %1, void (i8*, i32, i32, i8*)** %4, align 8
  %5 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %3, align 8
  %6 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %4, align 8
  %7 = call %struct.gs_font_dir_s* @gs_font_dir_alloc_limits(i8* (i32, i32, i8*)* noundef %5, void (i8*, i32, i32, i8*)* noundef %6, i32 noundef 10, i32 noundef 20000, i32 noundef 20, i32 noundef 500, i32 noundef 100)
  ret %struct.gs_font_dir_s* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.gs_font_dir_s* @gs_font_dir_alloc_limits(i8* (i32, i32, i8*)* noundef %0, void (i8*, i32, i32, i8*)* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.gs_font_dir_s*, align 8
  %9 = alloca i8* (i32, i32, i8*)*, align 8
  %10 = alloca void (i8*, i32, i32, i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gs_font_dir_s*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.cached_fm_pair_s*, align 8
  %19 = alloca %struct.cached_char_s*, align 8
  store i8* (i32, i32, i8*)* %0, i8* (i32, i32, i8*)** %9, align 8
  store void (i8*, i32, i32, i8*)* %1, void (i8*, i32, i32, i8*)** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %9, align 8
  %21 = call i8* %20(i32 noundef 1, i32 noundef 1144, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = bitcast i8* %21 to %struct.gs_font_dir_s*
  store %struct.gs_font_dir_s* %22, %struct.gs_font_dir_s** %16, align 8
  %23 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %24 = icmp eq %struct.gs_font_dir_s* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store %struct.gs_font_dir_s* null, %struct.gs_font_dir_s** %8, align 8
  br label %115

26:                                               ; preds = %7
  %27 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i8* %27(i32 noundef %28, i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %17, align 8
  %30 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %9, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @cached_fm_pair_sizeof, align 4
  %33 = call i8* %30(i32 noundef %31, i32 noundef %32, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %34 = bitcast i8* %33 to %struct.cached_fm_pair_s*
  store %struct.cached_fm_pair_s* %34, %struct.cached_fm_pair_s** %18, align 8
  %35 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %9, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @cached_char_sizeof, align 4
  %38 = call i8* %35(i32 noundef %36, i32 noundef %37, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %39 = bitcast i8* %38 to %struct.cached_char_s*
  store %struct.cached_char_s* %39, %struct.cached_char_s** %19, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %26
  %43 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %18, align 8
  %44 = icmp eq %struct.cached_fm_pair_s* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load %struct.cached_char_s*, %struct.cached_char_s** %19, align 8
  %47 = icmp eq %struct.cached_char_s* %46, null
  br i1 %47, label %48, label %77

48:                                               ; preds = %45, %42, %26
  %49 = load %struct.cached_char_s*, %struct.cached_char_s** %19, align 8
  %50 = icmp ne %struct.cached_char_s* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %10, align 8
  %53 = load %struct.cached_char_s*, %struct.cached_char_s** %19, align 8
  %54 = bitcast %struct.cached_char_s* %53 to i8*
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @cached_char_sizeof, align 4
  call void %52(i8* noundef %54, i32 noundef %55, i32 noundef %56, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %48
  %58 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %18, align 8
  %59 = icmp ne %struct.cached_fm_pair_s* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %10, align 8
  %62 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %18, align 8
  %63 = bitcast %struct.cached_fm_pair_s* %62 to i8*
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @cached_fm_pair_sizeof, align 4
  call void %61(i8* noundef %63, i32 noundef %64, i32 noundef %65, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i8*, i8** %17, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %10, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = load i32, i32* %12, align 4
  call void %70(i8* noundef %71, i32 noundef %72, i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %69, %66
  %74 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %10, align 8
  %75 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %76 = bitcast %struct.gs_font_dir_s* %75 to i8*
  call void %74(i8* noundef %76, i32 noundef 1, i32 noundef 1144, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.gs_font_dir_s* null, %struct.gs_font_dir_s** %8, align 8
  br label %115

77:                                               ; preds = %45
  %78 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %79 = bitcast %struct.gs_font_dir_s* %78 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %79, i8 0, i64 1144, i1 false)
  %80 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %9, align 8
  %81 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %82 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %81, i32 0, i32 0
  store i8* (i32, i32, i8*)* %80, i8* (i32, i32, i8*)** %82, align 8
  %83 = load void (i8*, i32, i32, i8*)*, void (i8*, i32, i32, i8*)** %10, align 8
  %84 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %85 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %84, i32 0, i32 1
  store void (i8*, i32, i32, i8*)* %83, void (i8*, i32, i32, i8*)** %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %88 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %91 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %94 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %97 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %96, i32 0, i32 11
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %15, align 4
  %99 = udiv i32 %98, 10
  %100 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %101 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %100, i32 0, i32 12
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %104 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %103, i32 0, i32 13
  store i32 %102, i32* %104, align 4
  %105 = load i8*, i8** %17, align 8
  %106 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %107 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %106, i32 0, i32 15
  store i8* %105, i8** %107, align 8
  %108 = load %struct.cached_fm_pair_s*, %struct.cached_fm_pair_s** %18, align 8
  %109 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %110 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %109, i32 0, i32 17
  store %struct.cached_fm_pair_s* %108, %struct.cached_fm_pair_s** %110, align 8
  %111 = load %struct.cached_char_s*, %struct.cached_char_s** %19, align 8
  %112 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  %113 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %112, i32 0, i32 19
  store %struct.cached_char_s* %111, %struct.cached_char_s** %113, align 8
  %114 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %16, align 8
  store %struct.gs_font_dir_s* %114, %struct.gs_font_dir_s** %8, align 8
  br label %115

115:                                              ; preds = %77, %73, %25
  %116 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %8, align 8
  ret %struct.gs_font_dir_s* %116
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_scalefont(%struct.gs_font_dir_s* noundef %0, %struct.gs_font_s* noundef %1, double noundef %2, %struct.gs_font_s** noundef %3, %struct.gs_font_s** noundef %4) #0 {
  %6 = alloca %struct.gs_font_dir_s*, align 8
  %7 = alloca %struct.gs_font_s*, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.gs_font_s**, align 8
  %10 = alloca %struct.gs_font_s**, align 8
  %11 = alloca %struct.gs_matrix_s, align 8
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %6, align 8
  store %struct.gs_font_s* %1, %struct.gs_font_s** %7, align 8
  store double %2, double* %8, align 8
  store %struct.gs_font_s** %3, %struct.gs_font_s*** %9, align 8
  store %struct.gs_font_s** %4, %struct.gs_font_s*** %10, align 8
  %12 = load double, double* %8, align 8
  %13 = load double, double* %8, align 8
  %14 = call i32 @gs_make_scaling(double noundef %12, double noundef %13, %struct.gs_matrix_s* noundef %11)
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %6, align 8
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %7, align 8
  %17 = load %struct.gs_font_s**, %struct.gs_font_s*** %9, align 8
  %18 = load %struct.gs_font_s**, %struct.gs_font_s*** %10, align 8
  %19 = call i32 @gs_makefont(%struct.gs_font_dir_s* noundef %15, %struct.gs_font_s* noundef %16, %struct.gs_matrix_s* noundef %11, %struct.gs_font_s** noundef %17, %struct.gs_font_s** noundef %18)
  ret i32 %19
}

declare dso_local i32 @gs_make_scaling(double noundef, double noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_makefont(%struct.gs_font_dir_s* noundef %0, %struct.gs_font_s* noundef %1, %struct.gs_matrix_s* noundef %2, %struct.gs_font_s** noundef %3, %struct.gs_font_s** noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gs_font_dir_s*, align 8
  %8 = alloca %struct.gs_font_s*, align 8
  %9 = alloca %struct.gs_matrix_s*, align 8
  %10 = alloca %struct.gs_font_s**, align 8
  %11 = alloca %struct.gs_font_s**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gs_font_s*, align 8
  %14 = alloca %struct.gs_font_s*, align 8
  %15 = alloca %struct.gs_matrix_s, align 8
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %7, align 8
  store %struct.gs_font_s* %1, %struct.gs_font_s** %8, align 8
  store %struct.gs_matrix_s* %2, %struct.gs_matrix_s** %9, align 8
  store %struct.gs_font_s** %3, %struct.gs_font_s*** %10, align 8
  store %struct.gs_font_s** %4, %struct.gs_font_s*** %11, align 8
  store %struct.gs_font_s* null, %struct.gs_font_s** %13, align 8
  %16 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %7, align 8
  %17 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %16, i32 0, i32 3
  %18 = load %struct.gs_font_s*, %struct.gs_font_s** %17, align 8
  store %struct.gs_font_s* %18, %struct.gs_font_s** %14, align 8
  %19 = load %struct.gs_font_s**, %struct.gs_font_s*** %11, align 8
  store %struct.gs_font_s* null, %struct.gs_font_s** %19, align 8
  call void @gs_make_identity(%struct.gs_matrix_s* noundef %15)
  %20 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %21 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %20, i32 0, i32 5
  %22 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %9, align 8
  %23 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef %21, %struct.gs_matrix_s* noundef %22, %struct.gs_matrix_s* noundef %15)
  store i32 %23, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %178

27:                                               ; preds = %5
  %28 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %29 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %28, i32 0, i32 12
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, -1
  br i1 %31, label %32, label %94

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %88, %32
  %34 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %35 = icmp ne %struct.gs_font_s* %34, null
  br i1 %35, label %36, label %93

36:                                               ; preds = %33
  %37 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %38 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %37, i32 0, i32 12
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %41 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %40, i32 0, i32 12
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %36
  %45 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %46 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %49 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %44
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %54 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %54, i32 0, i32 0
  %56 = load float, float* %55, align 8
  %57 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 0
  %58 = load float, float* %57, align 8
  %59 = fcmp oeq float %56, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %52
  %61 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %62 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %62, i32 0, i32 2
  %64 = load float, float* %63, align 8
  %65 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 2
  %66 = load float, float* %65, align 8
  %67 = fcmp oeq float %64, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %60
  %69 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %70 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %70, i32 0, i32 4
  %72 = load float, float* %71, align 8
  %73 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 4
  %74 = load float, float* %73, align 8
  %75 = fcmp oeq float %72, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %78 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %78, i32 0, i32 6
  %80 = load float, float* %79, align 8
  %81 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 6
  %82 = load float, float* %81, align 8
  %83 = fcmp oeq float %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %86 = load %struct.gs_font_s**, %struct.gs_font_s*** %10, align 8
  store %struct.gs_font_s* %85, %struct.gs_font_s** %86, align 8
  store i32 0, i32* %6, align 4
  br label %178

87:                                               ; preds = %76, %68, %60, %52, %44, %36
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  store %struct.gs_font_s* %89, %struct.gs_font_s** %13, align 8
  %90 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %91 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %90, i32 0, i32 0
  %92 = load %struct.gs_font_s*, %struct.gs_font_s** %91, align 8
  store %struct.gs_font_s* %92, %struct.gs_font_s** %14, align 8
  br label %33, !llvm.loop !4

93:                                               ; preds = %33
  br label %94

94:                                               ; preds = %93, %27
  %95 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %7, align 8
  %96 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %95, i32 0, i32 0
  %97 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %96, align 8
  %98 = call i8* %97(i32 noundef 1, i32 noundef 184, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %99 = bitcast i8* %98 to %struct.gs_font_s*
  store %struct.gs_font_s* %99, %struct.gs_font_s** %14, align 8
  %100 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %101 = icmp ne %struct.gs_font_s* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  store i32 -25, i32* %6, align 4
  br label %178

103:                                              ; preds = %94
  %104 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %105 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %106 = bitcast %struct.gs_font_s* %104 to i8*
  %107 = bitcast %struct.gs_font_s* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 184, i1 false)
  %108 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %109 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %108, i32 0, i32 5
  %110 = bitcast %struct.gs_matrix_s* %109 to i8*
  %111 = bitcast %struct.gs_matrix_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 96, i1 false)
  %112 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %7, align 8
  %113 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %7, align 8
  %116 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %103
  %120 = load %struct.gs_font_s*, %struct.gs_font_s** %13, align 8
  %121 = icmp ne %struct.gs_font_s* %120, null
  br i1 %121, label %137, label %122

122:                                              ; preds = %119
  %123 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %7, align 8
  %124 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %123, i32 0, i32 3
  %125 = load %struct.gs_font_s*, %struct.gs_font_s** %124, align 8
  store %struct.gs_font_s* %125, %struct.gs_font_s** %13, align 8
  br label %126

126:                                              ; preds = %132, %122
  %127 = load %struct.gs_font_s*, %struct.gs_font_s** %13, align 8
  %128 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %127, i32 0, i32 0
  %129 = load %struct.gs_font_s*, %struct.gs_font_s** %128, align 8
  %130 = icmp ne %struct.gs_font_s* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.gs_font_s*, %struct.gs_font_s** %13, align 8
  %134 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %133, i32 0, i32 0
  %135 = load %struct.gs_font_s*, %struct.gs_font_s** %134, align 8
  store %struct.gs_font_s* %135, %struct.gs_font_s** %13, align 8
  br label %126, !llvm.loop !6

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %119
  %138 = load %struct.gs_font_s*, %struct.gs_font_s** %13, align 8
  %139 = load %struct.gs_font_s**, %struct.gs_font_s*** %11, align 8
  store %struct.gs_font_s* %138, %struct.gs_font_s** %139, align 8
  %140 = load %struct.gs_font_s*, %struct.gs_font_s** %13, align 8
  %141 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %140, i32 0, i32 1
  %142 = load %struct.gs_font_s*, %struct.gs_font_s** %141, align 8
  %143 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %142, i32 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %143, align 8
  br label %149

144:                                              ; preds = %103
  %145 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %7, align 8
  %146 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = add i32 %147, 1
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %144, %137
  %150 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %7, align 8
  %151 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %150, i32 0, i32 3
  %152 = load %struct.gs_font_s*, %struct.gs_font_s** %151, align 8
  %153 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %154 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %153, i32 0, i32 0
  store %struct.gs_font_s* %152, %struct.gs_font_s** %154, align 8
  %155 = icmp ne %struct.gs_font_s* %152, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %158 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %7, align 8
  %159 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %158, i32 0, i32 3
  %160 = load %struct.gs_font_s*, %struct.gs_font_s** %159, align 8
  %161 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %160, i32 0, i32 1
  store %struct.gs_font_s* %157, %struct.gs_font_s** %161, align 8
  br label %162

162:                                              ; preds = %156, %149
  %163 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %164 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %163, i32 0, i32 1
  store %struct.gs_font_s* null, %struct.gs_font_s** %164, align 8
  %165 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %166 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %7, align 8
  %167 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %166, i32 0, i32 3
  store %struct.gs_font_s* %165, %struct.gs_font_s** %167, align 8
  %168 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %169 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %168, i32 0, i32 2
  %170 = load %struct.gs_font_s*, %struct.gs_font_s** %169, align 8
  %171 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %172 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %171, i32 0, i32 2
  store %struct.gs_font_s* %170, %struct.gs_font_s** %172, align 8
  %173 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %7, align 8
  %174 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %175 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %174, i32 0, i32 3
  store %struct.gs_font_dir_s* %173, %struct.gs_font_dir_s** %175, align 8
  %176 = load %struct.gs_font_s*, %struct.gs_font_s** %14, align 8
  %177 = load %struct.gs_font_s**, %struct.gs_font_s*** %10, align 8
  store %struct.gs_font_s* %176, %struct.gs_font_s** %177, align 8
  store i32 1, i32* %6, align 4
  br label %178

178:                                              ; preds = %162, %102, %84, %25
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local void @gs_make_identity(%struct.gs_matrix_s* noundef) #2

declare dso_local i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setfont(%struct.gs_state_s* noundef %0, %struct.gs_font_s* noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca %struct.gs_font_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store %struct.gs_font_s* %1, %struct.gs_font_s** %4, align 8
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %4, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %6, i32 0, i32 16
  store %struct.gs_font_s* %5, %struct.gs_font_s** %7, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 18
  store i32 0, i32* %9, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gs_state_s*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %3, i32 0, i32 16
  %5 = load %struct.gs_font_s*, %struct.gs_font_s** %4, align 8
  ret %struct.gs_font_s* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_cachestatus(%struct.gs_font_dir_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.gs_font_dir_s*, align 8
  %4 = alloca i32*, align 8
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %6 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %11 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %16 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %21 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %26 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %31 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %36 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 6
  store i32 %37, i32* %39, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setcachelimit(%struct.gs_font_dir_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gs_font_dir_s*, align 8
  %4 = alloca i32, align 4
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %6, i32 0, i32 13
  store i32 %5, i32* %7, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setcachelower(%struct.gs_font_dir_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gs_font_dir_s*, align 8
  %4 = alloca i32, align 4
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %6, i32 0, i32 12
  store i32 %5, i32* %7, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setcacheupper(%struct.gs_font_dir_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gs_font_dir_s*, align 8
  %4 = alloca i32, align 4
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %3, align 8
  %7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %6, i32 0, i32 13
  store i32 %5, i32* %7, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_currentcachelower(%struct.gs_font_dir_s* noundef %0) #0 {
  %2 = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %2, align 8
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %3, i32 0, i32 12
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_currentcacheupper(%struct.gs_font_dir_s* noundef %0) #0 {
  %2 = alloca %struct.gs_font_dir_s*, align 8
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %2, align 8
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %3, i32 0, i32 13
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_no_build_char_proc(%struct.gs_show_enum_s* noundef %0, %struct.gs_state_s* noundef %1, %struct.gs_font_s* noundef %2, i32 noundef %3, i8* noundef %4) #0 {
  %6 = alloca %struct.gs_show_enum_s*, align 8
  %7 = alloca %struct.gs_state_s*, align 8
  %8 = alloca %struct.gs_font_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.gs_show_enum_s* %0, %struct.gs_show_enum_s** %6, align 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %7, align 8
  store %struct.gs_font_s* %2, %struct.gs_font_s** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
