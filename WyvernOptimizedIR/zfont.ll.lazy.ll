; ModuleID = './zfont.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_font_dir_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_dir_s*, i8*, %struct.gs_matrix_s, i32, float, float, float, float, i32, i64, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i8* }
%struct.gs_show_enum_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque
%struct.int_state_s = type { %struct.int_state_s*, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_type1_data_s = type { i32 (%struct.gs_type1_data_s*, i32, i8**)*, i32 (%struct.gs_type1_data_s*, i64*)*, i8*, i32 }

@ifont_dir = internal global %struct.gs_font_dir_s* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"FontDirectory\00", align 1
@name_FontDirectory = internal global %struct.ref_s zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"FontMatrix\00", align 1
@name_FontMatrix = internal global %struct.ref_s zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"FontType\00", align 1
@name_FontType = internal global %struct.ref_s zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@name_FontBBox = internal global %struct.ref_s zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@name_Encoding = internal global %struct.ref_s zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@name_PaintType = internal global %struct.ref_s zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"UniqueID\00", align 1
@name_UniqueID = internal global %struct.ref_s zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"BuildChar\00", align 1
@name_BuildChar = internal global %struct.ref_s zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"Type1BuildChar\00", align 1
@name_Type1BuildChar = internal global %struct.ref_s zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"Private\00", align 1
@name_Private = internal global %struct.ref_s zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"CharStrings\00", align 1
@name_CharStrings = internal global %struct.ref_s zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"FID\00", align 1
@name_FID = internal global %struct.ref_s zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"Subrs\00", align 1
@name_Subrs = internal global %struct.ref_s zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"lenIV\00", align 1
@name_lenIV = internal global %struct.ref_s zeroinitializer, align 8
@zdefinefont.no_subrs = internal global %struct.ref_s zeroinitializer, align 8
@zdefinefont.no_charstrings = internal global %struct.ref_s zeroinitializer, align 8
@osp_nargs = external dso_local global [6 x %struct.ref_s*], align 16
@dstack = external dso_local global [0 x %struct.ref_s], align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"definefont(font)\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"definefont(data)\00", align 1
@osp = external dso_local global %struct.ref_s*, align 8
@igs = external dso_local global %struct.gs_state_s*, align 8
@istate = external dso_local global %struct.int_state_s, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@zfont_op_init.my_defs = internal global [10 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentfont }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.ref_s*)* @zdefinefont }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.ref_s*)* @zmakefont }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.ref_s*)* @zscalefont }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetfont }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.ref_s*)* @zcachestatus }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetcachelimit }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetcacheparams }, %struct.op_def { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentcacheparams }, %struct.op_def zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [13 x i8] c"0currentfont\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"2definefont\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"2makefont\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"2scalefont\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"1setfont\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"0cachestatus\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"1setcachelimit\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"1setcacheparams\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"0currentcacheparams\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zfont_init() #0 {
  %1 = call %struct.gs_font_dir_s* @gs_font_dir_alloc(i8* (i32, i32, i8*)* noundef nonnull @alloc, void (i8*, i32, i32, i8*)* noundef nonnull @alloc_free) #5
  store %struct.gs_font_dir_s* %1, %struct.gs_font_dir_s** @ifont_dir, align 8
  call void @name_enter(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_FontDirectory) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_FontMatrix) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_FontType) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_FontBBox) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_Encoding) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_PaintType) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_UniqueID) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_BuildChar) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_Type1BuildChar) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_Private) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_CharStrings) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_FID) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_Subrs) #5
  call void @name_enter(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_lenIV) #5
  ret void
}

declare dso_local %struct.gs_font_dir_s* @gs_font_dir_alloc(i8* (i32, i32, i8*)* noundef, void (i8*, i32, i32, i8*)* noundef) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @name_enter(i8* noundef, %struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdefinefont(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.ref_s*, align 8
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca %struct.ref_s*, align 8
  %8 = alloca %struct.ref_s*, align 8
  %9 = alloca %struct.ref_s*, align 8
  %10 = alloca %struct.ref_s*, align 8
  %11 = alloca %struct.ref_s*, align 8
  %12 = alloca %struct.ref_s*, align 8
  %13 = alloca %struct.gs_matrix_s, align 8
  %14 = alloca [4 x float], align 16
  %15 = alloca %struct.ref_s*, align 8
  %16 = alloca %struct.ref_s*, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %18 = icmp ugt %struct.ref_s* %17, %0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %334

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %22 = load i16, i16* %21, align 8
  %23 = and i16 %22, 252
  %24 = icmp eq i16 %23, 8
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %334

26:                                               ; preds = %20
  %27 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef nonnull @name_FontDirectory, %struct.ref_s** noundef nonnull %2) #5
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %334

30:                                               ; preds = %26
  %31 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_FontMatrix, %struct.ref_s** noundef nonnull %4) #5
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %56, label %33

33:                                               ; preds = %30
  %34 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_FontType, %struct.ref_s** noundef nonnull %5) #5
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %56, label %36

36:                                               ; preds = %33
  %37 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 0, i32 1
  %39 = load i16, i16* %38, align 8
  %40 = and i16 %39, 252
  %.not = icmp eq i16 %40, 20
  br i1 %.not, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 0, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %44, 255
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_FontBBox, %struct.ref_s** noundef nonnull %6) #5
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_Encoding, %struct.ref_s** noundef nonnull %7) #5
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %54 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %53, %struct.gs_matrix_s* noundef nonnull %13) #5
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %49, %46, %41, %36, %33, %30
  br label %334

57:                                               ; preds = %52
  %58 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 0, i32 1
  %60 = load i16, i16* %59, align 8
  %61 = lshr i16 %60, 2
  %62 = and i16 %61, 63
  %63 = zext i16 %62 to i32
  switch i32 %63, label %64 [
    i32 0, label %65
    i32 10, label %65
  ]

64:                                               ; preds = %57
  br label %334

65:                                               ; preds = %57, %57
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 0, i32 1
  %69 = load i16, i16* %68, align 8
  %70 = lshr i16 %69, 2
  %71 = and i16 %70, 63
  %72 = zext i16 %71 to i32
  switch i32 %72, label %73 [
    i32 0, label %74
    i32 10, label %74
  ]

73:                                               ; preds = %66
  br label %334

74:                                               ; preds = %66, %66
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %77 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %76, i64 0, i32 2
  %78 = load i16, i16* %77, align 2
  %.not5 = icmp eq i16 %78, 4
  br i1 %.not5, label %79, label %87

79:                                               ; preds = %75
  %80 = bitcast %struct.ref_s** %6 to %struct.ref_s***
  %81 = load %struct.ref_s**, %struct.ref_s*** %80, align 8
  %82 = load %struct.ref_s*, %struct.ref_s** %81, align 8
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i64 3
  %84 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %85 = call i32 @num_params(%struct.ref_s* noundef nonnull %83, i32 noundef 4, float* noundef nonnull %84) #5
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79, %75
  br label %334

88:                                               ; preds = %79
  %89 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_PaintType, %struct.ref_s** noundef nonnull %9) #5
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %113

92:                                               ; preds = %88
  %93 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %94 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %93, i64 0, i32 1
  %95 = load i16, i16* %94, align 8
  %96 = and i16 %95, 252
  %.not6 = icmp eq i16 %96, 20
  br i1 %.not6, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %99 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %98, i64 0, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %104 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %103, i64 0, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 65535
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %97, %92
  br label %334

108:                                              ; preds = %102
  %109 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i64 0, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  br label %113

113:                                              ; preds = %108, %91
  %.02 = phi i32 [ -1, %91 ], [ %112, %108 ]
  %114 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_UniqueID, %struct.ref_s** noundef nonnull %10) #5
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %137

117:                                              ; preds = %113
  %118 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i64 0, i32 1
  %120 = load i16, i16* %119, align 8
  %121 = and i16 %120, 252
  %.not7 = icmp eq i16 %121, 20
  br i1 %.not7, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %124 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %123, i64 0, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %128, i64 0, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %130, 16777215
  br i1 %131, label %132, label %133

132:                                              ; preds = %127, %122, %117
  br label %334

133:                                              ; preds = %127
  %134 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %135 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %134, i64 0, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  br label %137

137:                                              ; preds = %133, %116
  %.03 = phi i64 [ -1, %116 ], [ %136, %133 ]
  %138 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_BuildChar, %struct.ref_s** noundef nonnull %11) #5
  store i8* null, i8** bitcast (%struct.ref_s* @zdefinefont.no_subrs to i8**), align 8
  store i16 52, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_subrs, i64 0, i32 1), align 8
  store i16 0, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_subrs, i64 0, i32 2), align 2
  store %struct.ref_s* @zdefinefont.no_subrs, %struct.ref_s** %12, align 8
  store i64 0, i64* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_charstrings, i64 0, i32 0, i32 0), align 8
  store i16 32, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_charstrings, i64 0, i32 1), align 8
  store %struct.ref_s* @zdefinefont.no_charstrings, %struct.ref_s** %8, align 8
  %139 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i64 0, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 1
  br i1 %142, label %143, label %217

143:                                              ; preds = %137
  %144 = icmp sgt i32 %138, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %143
  %146 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_CharStrings, %struct.ref_s** noundef nonnull %8) #5
  %147 = icmp slt i32 %146, 1
  br i1 %147, label %161, label %148

148:                                              ; preds = %145
  %149 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %150 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %149, i64 0, i32 1
  %151 = load i16, i16* %150, align 8
  %152 = and i16 %151, 252
  %.not10 = icmp eq i16 %152, 8
  br i1 %.not10, label %153, label %161

153:                                              ; preds = %148
  %154 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_Private, %struct.ref_s** noundef nonnull %15) #5
  %155 = icmp slt i32 %154, 1
  br i1 %155, label %161, label %156

156:                                              ; preds = %153
  %157 = load %struct.ref_s*, %struct.ref_s** %15, align 8
  %158 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %157, i64 0, i32 1
  %159 = load i16, i16* %158, align 8
  %160 = and i16 %159, 252
  %.not11 = icmp eq i16 %160, 8
  br i1 %.not11, label %162, label %161

161:                                              ; preds = %156, %153, %148, %145, %143
  br label %334

162:                                              ; preds = %156
  %163 = load %struct.ref_s*, %struct.ref_s** %15, align 8
  %164 = call i32 @dict_lookup(%struct.ref_s* noundef %163, %struct.ref_s* noundef %163, %struct.ref_s* noundef nonnull @name_Subrs, %struct.ref_s** noundef nonnull %12) #5
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %168 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %167, i64 0, i32 1
  %169 = load i16, i16* %168, align 8
  %170 = lshr i16 %169, 2
  %171 = and i16 %170, 63
  %172 = zext i16 %171 to i32
  switch i32 %172, label %173 [
    i32 0, label %174
    i32 10, label %174
  ]

173:                                              ; preds = %166
  br label %334

174:                                              ; preds = %166, %166
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175, %162
  %177 = load %struct.ref_s*, %struct.ref_s** %15, align 8
  %178 = call i32 @dict_lookup(%struct.ref_s* noundef %177, %struct.ref_s* noundef %177, %struct.ref_s* noundef nonnull @name_lenIV, %struct.ref_s** noundef nonnull %16) #5
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %176
  %181 = load %struct.ref_s*, %struct.ref_s** %16, align 8
  %182 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %181, i64 0, i32 1
  %183 = load i16, i16* %182, align 8
  %184 = and i16 %183, 252
  %.not14 = icmp eq i16 %184, 20
  br i1 %.not14, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.ref_s*, %struct.ref_s** %16, align 8
  %187 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %186, i64 0, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ugt i64 %188, 255
  br i1 %189, label %190, label %191

190:                                              ; preds = %185, %180
  br label %334

191:                                              ; preds = %185
  %192 = load %struct.ref_s*, %struct.ref_s** %16, align 8
  %193 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %192, i64 0, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  br label %197

196:                                              ; preds = %176
  br label %197

197:                                              ; preds = %196, %191
  %.01 = phi i32 [ %195, %191 ], [ 4, %196 ]
  %198 = icmp sgt i64 %.03, -1
  br i1 %198, label %199, label %214

199:                                              ; preds = %197
  %200 = load %struct.ref_s*, %struct.ref_s** %15, align 8
  %201 = call i32 @dict_lookup(%struct.ref_s* noundef %200, %struct.ref_s* noundef %200, %struct.ref_s* noundef nonnull @name_UniqueID, %struct.ref_s** noundef nonnull %10) #5
  %202 = icmp slt i32 %201, 1
  br i1 %202, label %212, label %203

203:                                              ; preds = %199
  %204 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %205 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %204, i64 0, i32 1
  %206 = load i16, i16* %205, align 8
  %207 = and i16 %206, 252
  %.not12 = icmp eq i16 %207, 20
  br i1 %.not12, label %208, label %212

208:                                              ; preds = %203
  %209 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %210 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %209, i64 0, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %.not13 = icmp eq i64 %211, %.03
  br i1 %.not13, label %213, label %212

212:                                              ; preds = %208, %203, %199
  br label %213

213:                                              ; preds = %212, %208
  %.14 = phi i64 [ -1, %212 ], [ %.03, %208 ]
  br label %214

214:                                              ; preds = %213, %197
  %.2 = phi i64 [ %.14, %213 ], [ %.03, %197 ]
  store %struct.ref_s* @name_Type1BuildChar, %struct.ref_s** %11, align 8
  %215 = load i16, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @name_Type1BuildChar, i64 0, i32 1), align 8
  %216 = or i16 %215, 1
  store i16 %216, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @name_Type1BuildChar, i64 0, i32 1), align 8
  br label %236

217:                                              ; preds = %137
  %218 = icmp slt i32 %138, 1
  br i1 %218, label %219, label %220

219:                                              ; preds = %217
  br label %334

220:                                              ; preds = %217
  %221 = load %struct.ref_s*, %struct.ref_s** %11, align 8
  %222 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %221, i64 0, i32 1
  %223 = load i16, i16* %222, align 8
  %224 = lshr i16 %223, 2
  %225 = and i16 %224, 63
  %226 = zext i16 %225 to i32
  switch i32 %226, label %227 [
    i32 0, label %228
    i32 10, label %228
  ]

227:                                              ; preds = %220
  br label %334

228:                                              ; preds = %220, %220
  br label %229

229:                                              ; preds = %228
  %230 = load %struct.ref_s*, %struct.ref_s** %11, align 8
  %231 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %230, i64 0, i32 1
  %232 = load i16, i16* %231, align 8
  %233 = and i16 %232, 3
  %.not8 = icmp eq i16 %233, 3
  br i1 %.not8, label %235, label %234

234:                                              ; preds = %229
  br label %334

235:                                              ; preds = %229
  br label %236

236:                                              ; preds = %235, %214
  %.3 = phi i64 [ %.2, %214 ], [ %.03, %235 ]
  %.1 = phi i32 [ %.01, %214 ], [ undef, %235 ]
  %237 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_FID, %struct.ref_s** noundef nonnull %3) #5
  %238 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %239 = load i16, i16* %238, align 8
  %240 = and i16 %239, 256
  %.not9 = icmp eq i16 %240, 0
  br i1 %.not9, label %315, label %241

241:                                              ; preds = %236
  %242 = icmp sgt i32 %237, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %241
  br label %334

244:                                              ; preds = %241
  %245 = call i8* @alloc(i32 noundef 1, i32 noundef 184, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0)) #5
  %246 = bitcast i8* %245 to %struct.gs_font_s*
  %247 = icmp eq i8* %245, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %244
  %249 = call i8* @alloc(i32 noundef 1, i32 noundef 112, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0)) #5
  %250 = icmp eq i8* %249, null
  br i1 %250, label %251, label %252

251:                                              ; preds = %248, %244
  br label %334

252:                                              ; preds = %248
  %253 = call i32 @add_FID(%struct.ref_s* noundef %0, %struct.gs_font_s* noundef nonnull %246)
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  br label %334

256:                                              ; preds = %252
  %257 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %249, i8* noundef nonnull align 8 dereferenceable(16) %257, i64 16, i1 false)
  %258 = getelementptr inbounds i8, i8* %249, i64 16
  %259 = bitcast %struct.ref_s** %11 to i8**
  %260 = load i8*, i8** %259, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %258, i8* noundef nonnull align 8 dereferenceable(16) %260, i64 16, i1 false)
  %261 = getelementptr inbounds i8, i8* %249, i64 32
  %262 = bitcast %struct.ref_s** %7 to i8**
  %263 = load i8*, i8** %262, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %261, i8* noundef nonnull align 8 dereferenceable(16) %263, i64 16, i1 false)
  %264 = getelementptr inbounds i8, i8* %249, i64 48
  %265 = bitcast %struct.ref_s** %8 to i8**
  %266 = load i8*, i8** %265, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %264, i8* noundef nonnull align 8 dereferenceable(16) %266, i64 16, i1 false)
  %267 = getelementptr inbounds i8, i8* %249, i64 64
  %268 = bitcast %struct.ref_s** %12 to i8**
  %269 = load i8*, i8** %268, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %267, i8* noundef nonnull align 8 dereferenceable(16) %269, i64 16, i1 false)
  %270 = getelementptr inbounds i8, i8* %249, i64 80
  %271 = bitcast i8* %270 to i32 (%struct.gs_type1_data_s*, i32, i8**)**
  store i32 (%struct.gs_type1_data_s*, i32, i8**)* @z1_subr_proc, i32 (%struct.gs_type1_data_s*, i32, i8**)** %271, align 8
  %272 = getelementptr inbounds i8, i8* %249, i64 88
  %273 = bitcast i8* %272 to i32 (%struct.gs_type1_data_s*, i64*)**
  store i32 (%struct.gs_type1_data_s*, i64*)* @z1_pop_proc, i32 (%struct.gs_type1_data_s*, i64*)** %273, align 8
  %274 = getelementptr inbounds i8, i8* %249, i64 96
  %275 = bitcast i8* %274 to i8**
  store i8* %249, i8** %275, align 8
  %276 = getelementptr inbounds i8, i8* %249, i64 104
  %277 = bitcast i8* %276 to i32*
  store i32 %.1, i32* %277, align 8
  %278 = getelementptr inbounds i8, i8* %245, i64 16
  %279 = bitcast i8* %278 to i8**
  store i8* %245, i8** %279, align 8
  %280 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %281 = getelementptr inbounds i8, i8* %245, i64 24
  %282 = bitcast i8* %281 to %struct.gs_font_dir_s**
  store %struct.gs_font_dir_s* %280, %struct.gs_font_dir_s** %282, align 8
  %283 = getelementptr inbounds i8, i8* %245, i64 32
  %284 = bitcast i8* %283 to i8**
  store i8* %249, i8** %284, align 8
  %285 = getelementptr inbounds i8, i8* %245, i64 40
  %286 = bitcast %struct.gs_matrix_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %285, i8* noundef nonnull align 8 dereferenceable(96) %286, i64 96, i1 false)
  %287 = load %struct.ref_s*, %struct.ref_s** %5, align 8
  %288 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %287, i64 0, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = getelementptr inbounds i8, i8* %245, i64 136
  %292 = bitcast i8* %291 to i32*
  store i32 %290, i32* %292, align 8
  %293 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 0
  %294 = load float, float* %293, align 16
  %295 = getelementptr inbounds i8, i8* %245, i64 140
  %296 = bitcast i8* %295 to float*
  store float %294, float* %296, align 4
  %297 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 1
  %298 = load float, float* %297, align 4
  %299 = getelementptr inbounds i8, i8* %245, i64 144
  %300 = bitcast i8* %299 to float*
  store float %298, float* %300, align 8
  %301 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 2
  %302 = load float, float* %301, align 8
  %303 = getelementptr inbounds i8, i8* %245, i64 148
  %304 = bitcast i8* %303 to float*
  store float %302, float* %304, align 4
  %305 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 3
  %306 = load float, float* %305, align 4
  %307 = getelementptr inbounds i8, i8* %245, i64 152
  %308 = bitcast i8* %307 to float*
  store float %306, float* %308, align 8
  %309 = getelementptr inbounds i8, i8* %245, i64 168
  %310 = bitcast i8* %309 to i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)**
  store i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)* @gs_no_build_char_proc, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)** %310, align 8
  %311 = getelementptr inbounds i8, i8* %245, i64 156
  %312 = bitcast i8* %311 to i32*
  store i32 %.02, i32* %312, align 4
  %313 = getelementptr inbounds i8, i8* %245, i64 160
  %314 = bitcast i8* %313 to i64*
  store i64 %.3, i64* %314, align 8
  br label %319

315:                                              ; preds = %236
  %316 = icmp slt i32 %237, 1
  br i1 %316, label %317, label %318

317:                                              ; preds = %315
  br label %334

318:                                              ; preds = %315
  br label %319

319:                                              ; preds = %318, %256
  %320 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %321 = load i16, i16* %320, align 8
  %322 = and i16 %321, -257
  store i16 %322, i16* %320, align 8
  %323 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %324 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %325 = call i32 @dict_put(%struct.ref_s* noundef %323, %struct.ref_s* noundef nonnull %324, %struct.ref_s* noundef %0) #5
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %319
  br label %334

328:                                              ; preds = %319
  %329 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %330 = bitcast %struct.ref_s* %329 to i8*
  %331 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %330, i8* noundef nonnull align 8 dereferenceable(16) %331, i64 16, i1 false)
  %332 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %333 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %332, i64 -1
  store %struct.ref_s* %333, %struct.ref_s** @osp, align 8
  br label %334

334:                                              ; preds = %328, %327, %317, %255, %251, %243, %234, %227, %219, %190, %173, %161, %132, %107, %87, %73, %64, %56, %29, %25, %19
  %.0 = phi i32 [ -17, %19 ], [ -10, %29 ], [ -10, %56 ], [ -10, %64 ], [ -10, %73 ], [ -10, %87 ], [ -10, %161 ], [ -10, %173 ], [ -10, %190 ], [ -10, %243 ], [ -25, %251 ], [ %253, %255 ], [ %325, %327 ], [ 0, %328 ], [ -10, %317 ], [ -10, %219 ], [ -20, %227 ], [ -7, %234 ], [ -10, %132 ], [ -10, %107 ], [ -20, %25 ]
  ret i32 %.0
}

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #1

declare dso_local i32 @read_matrix(...) #1

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @add_FID(%struct.ref_s* noundef %0, %struct.gs_font_s* noundef %1) #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = bitcast %struct.ref_s* %3 to %struct.gs_font_s**
  store %struct.gs_font_s* %1, %struct.gs_font_s** %4, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %3, i64 0, i32 1
  store i16 16, i16* %5, align 8
  %6 = call i32 @dict_put(%struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_FID, %struct.ref_s* noundef nonnull %3) #5
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @z1_subr_proc(%struct.gs_type1_data_s* noundef, i32 noundef, i8** noundef) #1

declare dso_local i32 @z1_pop_proc(%struct.gs_type1_data_s* noundef, i64* noundef) #1

declare dso_local i32 @gs_no_build_char_proc(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, %struct.gs_font_s* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @dict_put(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zscalefont(%struct.ref_s* noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.gs_matrix_s, align 8
  %4 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef nonnull %2) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %16

7:                                                ; preds = %1
  %8 = load float, float* %2, align 4
  %9 = fpext float %8 to double
  %10 = fpext float %8 to double
  %11 = call i32 @gs_make_scaling(double noundef %9, double noundef %10, %struct.gs_matrix_s* noundef nonnull %3) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %16

14:                                               ; preds = %7
  %15 = call i32 @make_font(%struct.ref_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %3)
  br label %16

16:                                               ; preds = %14, %13, %6
  %.0 = phi i32 [ %4, %6 ], [ %11, %13 ], [ %15, %14 ]
  ret i32 %.0
}

declare dso_local i32 @gs_make_scaling(double noundef, double noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @make_font(%struct.ref_s* noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = alloca %struct.gs_font_s*, align 8
  %4 = alloca %struct.gs_font_s*, align 8
  %5 = alloca %struct.gs_font_s*, align 8
  %6 = alloca %struct.ref_s, align 8
  %7 = alloca %struct.ref_s, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 0, i32 0, i32 0
  store i64 6, i64* %9, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 0, i32 1
  store i16 20, i16* %10, align 8
  %11 = call i32 @font_param(%struct.ref_s* noundef nonnull %8, %struct.gs_font_s** noundef nonnull %3)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %2
  %14 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %15 = load %struct.gs_font_s*, %struct.gs_font_s** %3, align 8
  %16 = call i32 @gs_makefont(%struct.gs_font_dir_s* noundef %14, %struct.gs_font_s* noundef %15, %struct.gs_matrix_s* noundef %1, %struct.gs_font_s** noundef nonnull %4, %struct.gs_font_s** noundef nonnull %5) #5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %13
  %19 = call i32 @dict_maxlength(%struct.ref_s* noundef nonnull %8) #5
  %20 = call i32 @dict_create(i32 noundef %19, %struct.ref_s* noundef nonnull %6) #5
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = call i32 @dict_copy(%struct.ref_s* noundef nonnull %8, %struct.ref_s* noundef nonnull %6) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22
  %26 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zarray to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef nonnull %7) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = call i32 @dict_put(%struct.ref_s* noundef nonnull %6, %struct.ref_s* noundef nonnull @name_FontMatrix, %struct.ref_s* noundef nonnull %7) #5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load %struct.gs_font_s*, %struct.gs_font_s** %4, align 8
  %33 = call i32 @add_FID(%struct.ref_s* noundef nonnull %6, %struct.gs_font_s* noundef %32)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %28, %25, %22, %18, %13, %2
  %.01 = phi i32 [ %11, %2 ], [ %16, %13 ], [ %20, %18 ], [ %23, %22 ], [ %26, %25 ], [ %29, %28 ], [ %33, %31 ]
  br label %52

36:                                               ; preds = %31
  %37 = bitcast %struct.ref_s* %7 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.gs_font_s*, %struct.gs_font_s** %4, align 8
  %40 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %39, i64 0, i32 5
  %41 = bitcast %struct.gs_matrix_s* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %38, i8* noundef nonnull align 8 dereferenceable(96) %41, i64 96, i1 false)
  %42 = load %struct.gs_font_s*, %struct.gs_font_s** %5, align 8
  %.not = icmp eq %struct.gs_font_s* %42, null
  br i1 %.not, label %44, label %43

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %36
  %45 = bitcast %struct.ref_s* %8 to i8*
  %46 = bitcast %struct.ref_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %45, i8* noundef nonnull align 8 dereferenceable(16) %46, i64 16, i1 false)
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %48 = load i16, i16* %47, align 8
  %49 = and i16 %48, -257
  store i16 %49, i16* %47, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  store %struct.ref_s* %51, %struct.ref_s** @osp, align 8
  br label %52

52:                                               ; preds = %44, %35
  %.0 = phi i32 [ %.01, %35 ], [ 0, %44 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmakefont(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.gs_matrix_s, align 8
  %3 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %2) #5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  %7 = call i32 @make_font(%struct.ref_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %2)
  br label %8

8:                                                ; preds = %6, %5
  %.0 = phi i32 [ %3, %5 ], [ %7, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetfont(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.gs_font_s*, align 8
  %3 = call i32 @font_param(%struct.ref_s* noundef %0, %struct.gs_font_s** noundef nonnull %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %7 = load %struct.gs_font_s*, %struct.gs_font_s** %2, align 8
  %8 = call i32 @gs_setfont(%struct.gs_state_s* noundef %6, %struct.gs_font_s* noundef %7) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  %.01 = phi i32 [ %3, %1 ], [ %8, %5 ]
  br label %15

11:                                               ; preds = %5
  %12 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 4) to i8*), i8* noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false)
  %13 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %14, %struct.ref_s** @osp, align 8
  br label %15

15:                                               ; preds = %11, %10
  %.0 = phi i32 [ %.01, %10 ], [ %8, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @font_param(%struct.ref_s* noundef %0, %struct.gs_font_s** nocapture noundef %1) #0 {
  %3 = alloca %struct.ref_s*, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 252
  %7 = icmp eq i16 %6, 8
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %20

9:                                                ; preds = %2
  %10 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull @name_FID, %struct.ref_s** noundef nonnull %3) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %20

13:                                               ; preds = %9
  %14 = bitcast %struct.ref_s** %3 to %struct.gs_font_s***
  %15 = load %struct.gs_font_s**, %struct.gs_font_s*** %14, align 8
  %16 = load %struct.gs_font_s*, %struct.gs_font_s** %15, align 8
  store %struct.gs_font_s* %16, %struct.gs_font_s** %1, align 8
  %17 = icmp eq %struct.gs_font_s* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %18, %12, %8
  %.0 = phi i32 [ %10, %12 ], [ -10, %18 ], [ 0, %19 ], [ -20, %8 ]
  ret i32 %.0
}

declare dso_local i32 @gs_setfont(%struct.gs_state_s* noundef, %struct.gs_font_s* noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zcurrentfont(%struct.ref_s* noundef %0) #3 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %10

8:                                                ; preds = %1
  %9 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 4) to i8*), i64 16, i1 false)
  br label %10

10:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcachestatus(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [7 x i32], align 16
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %4 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 0
  call void @gs_cachestatus(%struct.gs_font_dir_s* noundef %3, i32* noundef nonnull %4) #5
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 7
  store %struct.ref_s* %5, %struct.ref_s** @osp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %7 = icmp ugt %struct.ref_s* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -7
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  br label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  %13 = getelementptr inbounds [7 x i32], [7 x i32]* %2, i64 0, i64 0
  call void @make_uint_array(%struct.ref_s* noundef nonnull %12, i32* noundef nonnull %13, i32 noundef 7)
  br label %14

14:                                               ; preds = %11, %8
  %.0 = phi i32 [ -16, %8 ], [ 0, %11 ]
  ret i32 %.0
}

declare dso_local void @gs_cachestatus(%struct.gs_font_dir_s* noundef, i32* noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @make_uint_array(%struct.ref_s* nocapture noundef writeonly %0, i32* nocapture noundef readonly %1, i32 noundef %2) #4 {
  br label %4

4:                                                ; preds = %11, %3
  %.02 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %.01 = phi i32* [ %1, %3 ], [ %14, %11 ]
  %.0 = phi %struct.ref_s* [ %0, %3 ], [ %13, %11 ]
  %5 = icmp slt i32 %.02, %2
  br i1 %5, label %6, label %15

6:                                                ; preds = %4
  %7 = load i32, i32* %.01, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.0, i64 0, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.0, i64 0, i32 1
  store i16 20, i16* %10, align 8
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.02, 1
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.0, i64 1
  %14 = getelementptr inbounds i32, i32* %.01, i64 1
  br label %4, !llvm.loop !4

15:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetcachelimit(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 1, float* noundef null) #5
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %9, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i32 [ %2, %5 ], [ -20, %6 ]
  br label %22

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = icmp sgt i64 %11, 4294967295
  br i1 %14, label %15, label %16

15:                                               ; preds = %13, %9
  br label %22

16:                                               ; preds = %13
  %17 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %18 = trunc i64 %11 to i32
  %19 = call i32 @gs_setcachelimit(%struct.gs_font_dir_s* noundef %17, i32 noundef %18) #5
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %21, %struct.ref_s** @osp, align 8
  br label %22

22:                                               ; preds = %16, %15, %7
  %.0 = phi i32 [ %8, %7 ], [ -15, %15 ], [ 0, %16 ]
  ret i32 %.0
}

declare dso_local i32 @gs_setcachelimit(%struct.gs_font_dir_s* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetcacheparams(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [2 x i32], align 4
  br label %3

3:                                                ; preds = %38, %1
  %.01 = phi i32 [ 0, %1 ], [ %39, %38 ]
  %4 = icmp ult i32 %.01, 2
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = zext i32 %.01 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %7, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = and i16 %9, 252
  %11 = icmp ne i16 %10, 24
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i1 [ false, %3 ], [ %11, %5 ]
  br i1 %13, label %14, label %40

14:                                               ; preds = %12
  %15 = zext i32 %.01 to i64
  %16 = sub nsw i64 0, %15
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %16
  %18 = call i32 @num_params(%struct.ref_s* noundef %17, i32 noundef 1, float* noundef null) #5
  %.not = icmp eq i32 %18, 1
  br i1 %.not, label %25, label %19

19:                                               ; preds = %14
  %20 = icmp slt i32 %18, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  br label %23

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22, %21
  %24 = phi i32 [ %18, %21 ], [ -20, %22 ]
  br label %60

25:                                               ; preds = %14
  %26 = sub nsw i32 0, %.01
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = icmp sgt i64 %29, 4294967295
  br i1 %32, label %33, label %34

33:                                               ; preds = %31, %25
  br label %60

34:                                               ; preds = %31
  %35 = trunc i64 %29 to i32
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 %36
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34
  %39 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !6

40:                                               ; preds = %12
  switch i32 %.01, label %58 [
    i32 2, label %41
    i32 1, label %49
    i32 0, label %57
  ]

41:                                               ; preds = %40
  %42 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @gs_setcachelower(%struct.gs_font_dir_s* noundef %42, i32 noundef %44) #5
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %60

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %40
  %50 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gs_setcacheupper(%struct.gs_font_dir_s* noundef %50, i32 noundef %52) #5
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %60

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %40
  br label %58

58:                                               ; preds = %57, %40
  %59 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zcleartomark to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %0) #5
  br label %60

60:                                               ; preds = %58, %55, %47, %33, %23
  %.0 = phi i32 [ %24, %23 ], [ -15, %33 ], [ %59, %58 ], [ %53, %55 ], [ %45, %47 ]
  ret i32 %.0
}

declare dso_local i32 @gs_setcachelower(%struct.gs_font_dir_s* noundef, i32 noundef) #1

declare dso_local i32 @gs_setcacheupper(%struct.gs_font_dir_s* noundef, i32 noundef) #1

declare dso_local i32 @zcleartomark(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentcacheparams(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [2 x i32], align 4
  %3 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %4 = call i32 @gs_currentcachelower(%struct.gs_font_dir_s* noundef %3) #5
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %4, i32* %5, align 4
  %6 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %7 = call i32 @gs_currentcacheupper(%struct.gs_font_dir_s* noundef %6) #5
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 3
  store %struct.ref_s* %9, %struct.ref_s** @osp, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %11 = icmp ugt %struct.ref_s* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -3
  store %struct.ref_s* %14, %struct.ref_s** @osp, align 8
  br label %20

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 24, i16* %17, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  call void @make_uint_array(%struct.ref_s* noundef nonnull %18, i32* noundef nonnull %19, i32 noundef 2)
  br label %20

20:                                               ; preds = %15, %12
  %.0 = phi i32 [ -16, %12 ], [ 0, %15 ]
  ret i32 %.0
}

declare dso_local i32 @gs_currentcachelower(%struct.gs_font_dir_s* noundef) #1

declare dso_local i32 @gs_currentcacheupper(%struct.gs_font_dir_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zfont_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([10 x %struct.op_def], [10 x %struct.op_def]* @zfont_op_init.my_defs, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @gs_makefont(%struct.gs_font_dir_s* noundef, %struct.gs_font_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_font_s** noundef, %struct.gs_font_s** noundef) #1

declare dso_local i32 @dict_create(i32 noundef, %struct.ref_s* noundef) #1

declare dso_local i32 @dict_maxlength(%struct.ref_s* noundef) #1

declare dso_local i32 @dict_copy(%struct.ref_s* noundef, %struct.ref_s* noundef) #1

declare dso_local i32 @zarray(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
