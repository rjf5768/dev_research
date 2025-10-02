; ModuleID = './gsfont.ll'
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
  %3 = call %struct.gs_font_dir_s* @gs_font_dir_alloc_limits(i8* (i32, i32, i8*)* noundef %0, void (i8*, i32, i32, i8*)* noundef %1, i32 noundef 10, i32 noundef 20000, i32 noundef 20, i32 noundef 500, i32 noundef 100)
  ret %struct.gs_font_dir_s* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.gs_font_dir_s* @gs_font_dir_alloc_limits(i8* (i32, i32, i8*)* noundef %0, void (i8*, i32, i32, i8*)* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = call i8* %0(i32 noundef 1, i32 noundef 1144, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #8
  %9 = bitcast i8* %8 to %struct.gs_font_dir_s*
  %10 = icmp eq i8* %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %55

12:                                               ; preds = %7
  %13 = call i8* %0(i32 noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #8
  %14 = load i32, i32* @cached_fm_pair_sizeof, align 4
  %15 = call i8* %0(i32 noundef %4, i32 noundef %14, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #8
  %16 = load i32, i32* @cached_char_sizeof, align 4
  %17 = call i8* %0(i32 noundef %5, i32 noundef %16, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0)) #8
  %18 = icmp eq i8* %13, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = icmp eq i8* %15, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = icmp eq i8* %17, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %21, %19, %12
  %.not = icmp eq i8* %17, null
  br i1 %.not, label %26, label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @cached_char_sizeof, align 4
  call void %1(i8* noundef nonnull %17, i32 noundef %5, i32 noundef %25, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %26

26:                                               ; preds = %24, %23
  %.not1 = icmp eq i8* %15, null
  br i1 %.not1, label %29, label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @cached_fm_pair_sizeof, align 4
  call void %1(i8* noundef nonnull %15, i32 noundef %4, i32 noundef %28, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0)) #8
  br label %29

29:                                               ; preds = %27, %26
  %.not2 = icmp eq i8* %13, null
  br i1 %.not2, label %31, label %30

30:                                               ; preds = %29
  call void %1(i8* noundef nonnull %13, i32 noundef %3, i32 noundef 1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #8
  br label %31

31:                                               ; preds = %30, %29
  call void %1(i8* noundef nonnull %8, i32 noundef 1, i32 noundef 1144, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #8
  br label %55

32:                                               ; preds = %21
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(1144) %8, i8 0, i64 1144, i1 false)
  %33 = bitcast i8* %8 to i8* (i32, i32, i8*)**
  store i8* (i32, i32, i8*)* %0, i8* (i32, i32, i8*)** %33, align 8
  %34 = getelementptr inbounds i8, i8* %8, i64 8
  %35 = bitcast i8* %34 to void (i8*, i32, i32, i8*)**
  store void (i8*, i32, i32, i8*)* %1, void (i8*, i32, i32, i8*)** %35, align 8
  %36 = getelementptr inbounds i8, i8* %8, i64 36
  %37 = bitcast i8* %36 to i32*
  store i32 %2, i32* %37, align 4
  %38 = getelementptr inbounds i8, i8* %8, i64 44
  %39 = bitcast i8* %38 to i32*
  store i32 %3, i32* %39, align 4
  %40 = getelementptr inbounds i8, i8* %8, i64 52
  %41 = bitcast i8* %40 to i32*
  store i32 %4, i32* %41, align 4
  %42 = getelementptr inbounds i8, i8* %8, i64 60
  %43 = bitcast i8* %42 to i32*
  store i32 %5, i32* %43, align 4
  %44 = udiv i32 %6, 10
  %45 = getelementptr inbounds i8, i8* %8, i64 64
  %46 = bitcast i8* %45 to i32*
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds i8, i8* %8, i64 68
  %48 = bitcast i8* %47 to i32*
  store i32 %6, i32* %48, align 4
  %49 = getelementptr inbounds i8, i8* %8, i64 1096
  %50 = bitcast i8* %49 to i8**
  store i8* %13, i8** %50, align 8
  %51 = getelementptr inbounds i8, i8* %8, i64 1112
  %52 = bitcast i8* %51 to i8**
  store i8* %15, i8** %52, align 8
  %53 = getelementptr inbounds i8, i8* %8, i64 1128
  %54 = bitcast i8* %53 to i8**
  store i8* %17, i8** %54, align 8
  br label %55

55:                                               ; preds = %32, %31, %11
  %.0 = phi %struct.gs_font_dir_s* [ null, %11 ], [ null, %31 ], [ %9, %32 ]
  ret %struct.gs_font_dir_s* %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_scalefont(%struct.gs_font_dir_s* noundef %0, %struct.gs_font_s* noundef %1, double noundef %2, %struct.gs_font_s** nocapture noundef writeonly %3, %struct.gs_font_s** nocapture noundef writeonly %4) #0 {
  %6 = alloca %struct.gs_matrix_s, align 8
  %7 = call i32 @gs_make_scaling(double noundef %2, double noundef %2, %struct.gs_matrix_s* noundef nonnull %6) #8
  %8 = call i32 @gs_makefont(%struct.gs_font_dir_s* noundef %0, %struct.gs_font_s* noundef %1, %struct.gs_matrix_s* noundef nonnull %6, %struct.gs_font_s** noundef %3, %struct.gs_font_s** noundef %4)
  ret i32 %8
}

declare dso_local i32 @gs_make_scaling(double noundef, double noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_makefont(%struct.gs_font_dir_s* noundef %0, %struct.gs_font_s* noundef %1, %struct.gs_matrix_s* noundef %2, %struct.gs_font_s** nocapture noundef writeonly %3, %struct.gs_font_s** nocapture noundef writeonly %4) #0 {
  %6 = alloca %struct.gs_matrix_s, align 8
  %7 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 3
  %8 = load %struct.gs_font_s*, %struct.gs_font_s** %7, align 8
  store %struct.gs_font_s* null, %struct.gs_font_s** %4, align 8
  call void @gs_make_identity(%struct.gs_matrix_s* noundef nonnull %6) #8
  %9 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i64 0, i32 5
  %10 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef nonnull %9, %struct.gs_matrix_s* noundef %2, %struct.gs_matrix_s* noundef nonnull %6) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %113

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i64 0, i32 12
  %15 = load i64, i64* %14, align 8
  %.not = icmp eq i64 %15, -1
  br i1 %.not, label %60, label %16

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %56, %16
  %.02 = phi %struct.gs_font_s* [ null, %16 ], [ %.01, %56 ]
  %.01 = phi %struct.gs_font_s* [ %8, %16 ], [ %58, %56 ]
  %.not9 = icmp eq %struct.gs_font_s* %.01, null
  br i1 %.not9, label %59, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %.01, i64 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i64 0, i32 12
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %.01, i64 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i64 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %.01, i64 0, i32 5, i32 0
  %32 = load float, float* %31, align 8
  %33 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i64 0, i32 0
  %34 = load float, float* %33, align 8
  %35 = fcmp oeq float %32, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %.01, i64 0, i32 5, i32 2
  %38 = load float, float* %37, align 8
  %39 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i64 0, i32 2
  %40 = load float, float* %39, align 8
  %41 = fcmp oeq float %38, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %.01, i64 0, i32 5, i32 4
  %44 = load float, float* %43, align 8
  %45 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i64 0, i32 4
  %46 = load float, float* %45, align 8
  %47 = fcmp oeq float %44, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %.01, i64 0, i32 5, i32 6
  %50 = load float, float* %49, align 8
  %51 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i64 0, i32 6
  %52 = load float, float* %51, align 8
  %53 = fcmp oeq float %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store %struct.gs_font_s* %.01, %struct.gs_font_s** %3, align 8
  br label %113

55:                                               ; preds = %48, %42, %36, %30, %24, %18
  br label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %.01, i64 0, i32 0
  %58 = load %struct.gs_font_s*, %struct.gs_font_s** %57, align 8
  br label %17, !llvm.loop !4

59:                                               ; preds = %17
  br label %60

60:                                               ; preds = %59, %13
  %.1 = phi %struct.gs_font_s* [ %.02, %59 ], [ null, %13 ]
  %61 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 0
  %62 = load i8* (i32, i32, i8*)*, i8* (i32, i32, i8*)** %61, align 8
  %63 = call i8* %62(i32 noundef 1, i32 noundef 184, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #8
  %.not5 = icmp eq i8* %63, null
  br i1 %.not5, label %64, label %65

64:                                               ; preds = %60
  br label %113

65:                                               ; preds = %60
  %66 = bitcast %struct.gs_font_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(184) %63, i8* noundef nonnull align 8 dereferenceable(184) %66, i64 184, i1 false)
  %67 = getelementptr inbounds i8, i8* %63, i64 40
  %68 = bitcast %struct.gs_matrix_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %67, i8* noundef nonnull align 8 dereferenceable(96) %68, i64 96, i1 false)
  %69 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %65
  %.not7 = icmp eq %struct.gs_font_s* %.1, null
  br i1 %.not7, label %75, label %84

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 3
  br label %77

77:                                               ; preds = %81, %75
  %.2.in = phi %struct.gs_font_s** [ %76, %75 ], [ %82, %81 ]
  %.2 = load %struct.gs_font_s*, %struct.gs_font_s** %.2.in, align 8
  %78 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %.2, i64 0, i32 0
  %79 = load %struct.gs_font_s*, %struct.gs_font_s** %78, align 8
  %.not8 = icmp eq %struct.gs_font_s* %79, null
  br i1 %.not8, label %83, label %80

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %.2, i64 0, i32 0
  br label %77, !llvm.loop !6

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %74
  %.3 = phi %struct.gs_font_s* [ %.1, %74 ], [ %.2, %83 ]
  store %struct.gs_font_s* %.3, %struct.gs_font_s** %4, align 8
  %85 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %.3, i64 0, i32 1
  %86 = load %struct.gs_font_s*, %struct.gs_font_s** %85, align 8
  %87 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %86, i64 0, i32 0
  store %struct.gs_font_s* null, %struct.gs_font_s** %87, align 8
  br label %92

88:                                               ; preds = %65
  %89 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = add i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 3
  %94 = load %struct.gs_font_s*, %struct.gs_font_s** %93, align 8
  %95 = bitcast i8* %63 to %struct.gs_font_s**
  store %struct.gs_font_s* %94, %struct.gs_font_s** %95, align 8
  %.not6 = icmp eq %struct.gs_font_s* %94, null
  br i1 %.not6, label %101, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 3
  %98 = load %struct.gs_font_s*, %struct.gs_font_s** %97, align 8
  %99 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %98, i64 0, i32 1
  %100 = bitcast %struct.gs_font_s** %99 to i8**
  store i8* %63, i8** %100, align 8
  br label %101

101:                                              ; preds = %96, %92
  %102 = getelementptr inbounds i8, i8* %63, i64 8
  %103 = bitcast i8* %102 to %struct.gs_font_s**
  store %struct.gs_font_s* null, %struct.gs_font_s** %103, align 8
  %104 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 3
  %105 = bitcast %struct.gs_font_s** %104 to i8**
  store i8* %63, i8** %105, align 8
  %106 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %1, i64 0, i32 2
  %107 = load %struct.gs_font_s*, %struct.gs_font_s** %106, align 8
  %108 = getelementptr inbounds i8, i8* %63, i64 16
  %109 = bitcast i8* %108 to %struct.gs_font_s**
  store %struct.gs_font_s* %107, %struct.gs_font_s** %109, align 8
  %110 = getelementptr inbounds i8, i8* %63, i64 24
  %111 = bitcast i8* %110 to %struct.gs_font_dir_s**
  store %struct.gs_font_dir_s* %0, %struct.gs_font_dir_s** %111, align 8
  %112 = bitcast %struct.gs_font_s** %3 to i8**
  store i8* %63, i8** %112, align 8
  br label %113

113:                                              ; preds = %101, %64, %54, %12
  %.0 = phi i32 [ %10, %12 ], [ 0, %54 ], [ 1, %101 ], [ -25, %64 ]
  ret i32 %.0
}

declare dso_local void @gs_make_identity(%struct.gs_matrix_s* noundef) #2

declare dso_local i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @gs_setfont(%struct.gs_state_s* nocapture noundef writeonly %0, %struct.gs_font_s* noundef %1) #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 16
  store %struct.gs_font_s* %1, %struct.gs_font_s** %3, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 18
  store i32 0, i32* %4, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 16
  %3 = load %struct.gs_font_s*, %struct.gs_font_s** %2, align 8
  ret %struct.gs_font_s* %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @gs_cachestatus(%struct.gs_font_dir_s* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 6
  %4 = load i32, i32* %3, align 8
  store i32 %4, i32* %1, align 4
  %5 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %1, i64 1
  store i32 %6, i32* %7, align 4
  %8 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 8
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds i32, i32* %1, i64 2
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %1, i64 3
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds i32, i32* %1, i64 4
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %1, i64 5
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 13
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %1, i64 6
  store i32 %21, i32* %22, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @gs_setcachelimit(%struct.gs_font_dir_s* nocapture noundef writeonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 13
  store i32 %1, i32* %3, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @gs_setcachelower(%struct.gs_font_dir_s* nocapture noundef writeonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 12
  store i32 %1, i32* %3, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @gs_setcacheupper(%struct.gs_font_dir_s* nocapture noundef writeonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 13
  store i32 %1, i32* %3, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @gs_currentcachelower(%struct.gs_font_dir_s* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 12
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @gs_currentcacheupper(%struct.gs_font_dir_s* nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.gs_font_dir_s, %struct.gs_font_dir_s* %0, i64 0, i32 13
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gs_no_build_char_proc(%struct.gs_show_enum_s* nocapture noundef readnone %0, %struct.gs_state_s* nocapture noundef readnone %1, %struct.gs_font_s* nocapture noundef readnone %2, i32 noundef %3, i8* nocapture noundef readnone %4) #7 {
  ret i32 1
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
