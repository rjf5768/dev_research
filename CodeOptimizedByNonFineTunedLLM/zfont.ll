; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zfont.c'
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
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.gs_type1_data_s }
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
  %1 = call %struct.gs_font_dir_s* @gs_font_dir_alloc(i8* (i32, i32, i8*)* noundef @alloc, void (i8*, i32, i32, i8*)* noundef @alloc_free)
  store %struct.gs_font_dir_s* %1, %struct.gs_font_dir_s** @ifont_dir, align 8
  call void @name_enter(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.ref_s* noundef @name_FontDirectory)
  call void @name_enter(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.ref_s* noundef @name_FontMatrix)
  call void @name_enter(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.ref_s* noundef @name_FontType)
  call void @name_enter(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.ref_s* noundef @name_FontBBox)
  call void @name_enter(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.ref_s* noundef @name_Encoding)
  call void @name_enter(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.ref_s* noundef @name_PaintType)
  call void @name_enter(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), %struct.ref_s* noundef @name_UniqueID)
  call void @name_enter(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %struct.ref_s* noundef @name_BuildChar)
  call void @name_enter(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), %struct.ref_s* noundef @name_Type1BuildChar)
  call void @name_enter(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %struct.ref_s* noundef @name_Private)
  call void @name_enter(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), %struct.ref_s* noundef @name_CharStrings)
  call void @name_enter(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.ref_s* noundef @name_FID)
  call void @name_enter(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), %struct.ref_s* noundef @name_Subrs)
  call void @name_enter(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), %struct.ref_s* noundef @name_lenIV)
  ret void
}

declare dso_local %struct.gs_font_dir_s* @gs_font_dir_alloc(i8* (i32, i32, i8*)* noundef, void (i8*, i32, i32, i8*)* noundef) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @name_enter(i8* noundef, %struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zdefinefont(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca %struct.ref_s*, align 8
  %8 = alloca %struct.ref_s*, align 8
  %9 = alloca %struct.ref_s*, align 8
  %10 = alloca %struct.ref_s*, align 8
  %11 = alloca %struct.ref_s*, align 8
  %12 = alloca %struct.ref_s*, align 8
  %13 = alloca %struct.ref_s*, align 8
  %14 = alloca %struct.ref_s*, align 8
  %15 = alloca %struct.ref_s*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.gs_matrix_s, align 8
  %20 = alloca [4 x float], align 16
  %21 = alloca %struct.ref_s*, align 8
  %22 = alloca %struct.ref_s*, align 8
  %23 = alloca %struct.gs_font_s*, align 8
  %24 = alloca %struct.font_data_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** getelementptr inbounds ([6 x %struct.ref_s*], [6 x %struct.ref_s*]* @osp_nargs, i64 0, i64 1), align 8
  %27 = icmp ult %struct.ref_s* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 -17, i32* %2, align 4
  br label %459

29:                                               ; preds = %1
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 1
  %32 = load i16, i16* %31, align 8
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 252
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 -20, i32* %2, align 4
  br label %459

37:                                               ; preds = %29
  %38 = call i32 @dict_lookup(%struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 0), %struct.ref_s* noundef @name_FontDirectory, %struct.ref_s** noundef %4)
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -10, i32* %2, align 4
  br label %459

41:                                               ; preds = %37
  %42 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %44 = call i32 @dict_lookup(%struct.ref_s* noundef %42, %struct.ref_s* noundef %43, %struct.ref_s* noundef @name_FontMatrix, %struct.ref_s** noundef %7)
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %79, label %46

46:                                               ; preds = %41
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = call i32 @dict_lookup(%struct.ref_s* noundef %47, %struct.ref_s* noundef %48, %struct.ref_s* noundef @name_FontType, %struct.ref_s** noundef %8)
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %79, label %51

51:                                               ; preds = %46
  %52 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i32 0, i32 1
  %54 = load i16, i16* %53, align 8
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 255
  %57 = ashr i32 %56, 2
  %58 = icmp ne i32 %57, 5
  br i1 %58, label %79, label %59

59:                                               ; preds = %51
  %60 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %62 = bitcast %union.v* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %63, 255
  br i1 %64, label %79, label %65

65:                                               ; preds = %59
  %66 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %67 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %68 = call i32 @dict_lookup(%struct.ref_s* noundef %66, %struct.ref_s* noundef %67, %struct.ref_s* noundef @name_FontBBox, %struct.ref_s** noundef %9)
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %65
  %71 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %72 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %73 = call i32 @dict_lookup(%struct.ref_s* noundef %71, %struct.ref_s* noundef %72, %struct.ref_s* noundef @name_Encoding, %struct.ref_s** noundef %10)
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %77 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %76, %struct.gs_matrix_s* noundef %19)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %70, %65, %59, %51, %46, %41
  store i32 -10, i32* %2, align 4
  br label %459

80:                                               ; preds = %75
  %81 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i32 0, i32 1
  %83 = load i16, i16* %82, align 8
  %84 = zext i16 %83 to i32
  %85 = and i32 %84, 255
  %86 = ashr i32 %85, 2
  switch i32 %86, label %87 [
    i32 0, label %88
    i32 10, label %88
  ]

87:                                               ; preds = %80
  store i32 -10, i32* %2, align 4
  br label %459

88:                                               ; preds = %80, %80
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %91 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %90, i32 0, i32 1
  %92 = load i16, i16* %91, align 8
  %93 = zext i16 %92 to i32
  %94 = and i32 %93, 255
  %95 = ashr i32 %94, 2
  switch i32 %95, label %96 [
    i32 0, label %97
    i32 10, label %97
  ]

96:                                               ; preds = %89
  store i32 -10, i32* %2, align 4
  br label %459

97:                                               ; preds = %89, %89
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %99, i32 0, i32 2
  %101 = load i16, i16* %100, align 2
  %102 = zext i16 %101 to i32
  %103 = icmp ne i32 %102, 4
  br i1 %103, label %113, label %104

104:                                              ; preds = %98
  %105 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %106 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %105, i32 0, i32 0
  %107 = bitcast %union.v* %106 to %struct.ref_s**
  %108 = load %struct.ref_s*, %struct.ref_s** %107, align 8
  %109 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %108, i64 3
  %110 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %111 = call i32 @num_params(%struct.ref_s* noundef %109, i32 noundef 4, float* noundef %110)
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104, %98
  store i32 -10, i32* %2, align 4
  br label %459

114:                                              ; preds = %104
  %115 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %116 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %117 = call i32 @dict_lookup(%struct.ref_s* noundef %115, %struct.ref_s* noundef %116, %struct.ref_s* noundef @name_PaintType, %struct.ref_s** noundef %12)
  %118 = icmp sle i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 -1, i32* %16, align 4
  br label %147

120:                                              ; preds = %114
  %121 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %122 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %121, i32 0, i32 1
  %123 = load i16, i16* %122, align 8
  %124 = zext i16 %123 to i32
  %125 = and i32 %124, 255
  %126 = ashr i32 %125, 2
  %127 = icmp ne i32 %126, 5
  br i1 %127, label %140, label %128

128:                                              ; preds = %120
  %129 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %130 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %129, i32 0, i32 0
  %131 = bitcast %union.v* %130 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %135, i32 0, i32 0
  %137 = bitcast %union.v* %136 to i64*
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %138, 65535
  br i1 %139, label %140, label %141

140:                                              ; preds = %134, %128, %120
  store i32 -10, i32* %2, align 4
  br label %459

141:                                              ; preds = %134
  %142 = load %struct.ref_s*, %struct.ref_s** %12, align 8
  %143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %142, i32 0, i32 0
  %144 = bitcast %union.v* %143 to i64*
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %141, %119
  %148 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %149 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %150 = call i32 @dict_lookup(%struct.ref_s* noundef %148, %struct.ref_s* noundef %149, %struct.ref_s* noundef @name_UniqueID, %struct.ref_s** noundef %13)
  %151 = icmp sle i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i64 -1, i64* %17, align 8
  br label %179

153:                                              ; preds = %147
  %154 = load %struct.ref_s*, %struct.ref_s** %13, align 8
  %155 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %154, i32 0, i32 1
  %156 = load i16, i16* %155, align 8
  %157 = zext i16 %156 to i32
  %158 = and i32 %157, 255
  %159 = ashr i32 %158, 2
  %160 = icmp ne i32 %159, 5
  br i1 %160, label %173, label %161

161:                                              ; preds = %153
  %162 = load %struct.ref_s*, %struct.ref_s** %13, align 8
  %163 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %162, i32 0, i32 0
  %164 = bitcast %union.v* %163 to i64*
  %165 = load i64, i64* %164, align 8
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %161
  %168 = load %struct.ref_s*, %struct.ref_s** %13, align 8
  %169 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %168, i32 0, i32 0
  %170 = bitcast %union.v* %169 to i64*
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %171, 16777215
  br i1 %172, label %173, label %174

173:                                              ; preds = %167, %161, %153
  store i32 -10, i32* %2, align 4
  br label %459

174:                                              ; preds = %167
  %175 = load %struct.ref_s*, %struct.ref_s** %13, align 8
  %176 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %175, i32 0, i32 0
  %177 = bitcast %union.v* %176 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %17, align 8
  br label %179

179:                                              ; preds = %174, %152
  %180 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %181 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %182 = call i32 @dict_lookup(%struct.ref_s* noundef %180, %struct.ref_s* noundef %181, %struct.ref_s* noundef @name_BuildChar, %struct.ref_s** noundef %14)
  store i32 %182, i32* %5, align 4
  store i8* null, i8** bitcast (%struct.ref_s* @zdefinefont.no_subrs to i8**), align 8
  store i16 52, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_subrs, i32 0, i32 1), align 8
  store i16 0, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_subrs, i32 0, i32 2), align 2
  store %struct.ref_s* @zdefinefont.no_subrs, %struct.ref_s** %15, align 8
  store i64 0, i64* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_charstrings, i32 0, i32 0, i32 0), align 8
  store i16 32, i16* getelementptr inbounds (%struct.ref_s, %struct.ref_s* @zdefinefont.no_charstrings, i32 0, i32 1), align 8
  store %struct.ref_s* @zdefinefont.no_charstrings, %struct.ref_s** %11, align 8
  %183 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %184 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %183, i32 0, i32 0
  %185 = bitcast %union.v* %184 to i64*
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %186, 1
  br i1 %187, label %188, label %292

188:                                              ; preds = %179
  %189 = load i32, i32* %5, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %217, label %191

191:                                              ; preds = %188
  %192 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %193 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %194 = call i32 @dict_lookup(%struct.ref_s* noundef %192, %struct.ref_s* noundef %193, %struct.ref_s* noundef @name_CharStrings, %struct.ref_s** noundef %11)
  %195 = icmp sle i32 %194, 0
  br i1 %195, label %217, label %196

196:                                              ; preds = %191
  %197 = load %struct.ref_s*, %struct.ref_s** %11, align 8
  %198 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %197, i32 0, i32 1
  %199 = load i16, i16* %198, align 8
  %200 = zext i16 %199 to i32
  %201 = and i32 %200, 255
  %202 = ashr i32 %201, 2
  %203 = icmp ne i32 %202, 2
  br i1 %203, label %217, label %204

204:                                              ; preds = %196
  %205 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %206 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %207 = call i32 @dict_lookup(%struct.ref_s* noundef %205, %struct.ref_s* noundef %206, %struct.ref_s* noundef @name_Private, %struct.ref_s** noundef %21)
  %208 = icmp sle i32 %207, 0
  br i1 %208, label %217, label %209

209:                                              ; preds = %204
  %210 = load %struct.ref_s*, %struct.ref_s** %21, align 8
  %211 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %210, i32 0, i32 1
  %212 = load i16, i16* %211, align 8
  %213 = zext i16 %212 to i32
  %214 = and i32 %213, 255
  %215 = ashr i32 %214, 2
  %216 = icmp ne i32 %215, 2
  br i1 %216, label %217, label %218

217:                                              ; preds = %209, %204, %196, %191, %188
  store i32 -10, i32* %2, align 4
  br label %459

218:                                              ; preds = %209
  %219 = load %struct.ref_s*, %struct.ref_s** %21, align 8
  %220 = load %struct.ref_s*, %struct.ref_s** %21, align 8
  %221 = call i32 @dict_lookup(%struct.ref_s* noundef %219, %struct.ref_s* noundef %220, %struct.ref_s* noundef @name_Subrs, %struct.ref_s** noundef %15)
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %218
  %224 = load %struct.ref_s*, %struct.ref_s** %15, align 8
  %225 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %224, i32 0, i32 1
  %226 = load i16, i16* %225, align 8
  %227 = zext i16 %226 to i32
  %228 = and i32 %227, 255
  %229 = ashr i32 %228, 2
  switch i32 %229, label %230 [
    i32 0, label %231
    i32 10, label %231
  ]

230:                                              ; preds = %223
  store i32 -10, i32* %2, align 4
  br label %459

231:                                              ; preds = %223, %223
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232, %218
  %234 = load %struct.ref_s*, %struct.ref_s** %21, align 8
  %235 = load %struct.ref_s*, %struct.ref_s** %21, align 8
  %236 = call i32 @dict_lookup(%struct.ref_s* noundef %234, %struct.ref_s* noundef %235, %struct.ref_s* noundef @name_lenIV, %struct.ref_s** noundef %22)
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %259

238:                                              ; preds = %233
  %239 = load %struct.ref_s*, %struct.ref_s** %22, align 8
  %240 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %239, i32 0, i32 1
  %241 = load i16, i16* %240, align 8
  %242 = zext i16 %241 to i32
  %243 = and i32 %242, 255
  %244 = ashr i32 %243, 2
  %245 = icmp ne i32 %244, 5
  br i1 %245, label %252, label %246

246:                                              ; preds = %238
  %247 = load %struct.ref_s*, %struct.ref_s** %22, align 8
  %248 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %247, i32 0, i32 0
  %249 = bitcast %union.v* %248 to i64*
  %250 = load i64, i64* %249, align 8
  %251 = icmp ugt i64 %250, 255
  br i1 %251, label %252, label %253

252:                                              ; preds = %246, %238
  store i32 -10, i32* %2, align 4
  br label %459

253:                                              ; preds = %246
  %254 = load %struct.ref_s*, %struct.ref_s** %22, align 8
  %255 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %254, i32 0, i32 0
  %256 = bitcast %union.v* %255 to i64*
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %18, align 4
  br label %260

259:                                              ; preds = %233
  store i32 4, i32* %18, align 4
  br label %260

260:                                              ; preds = %259, %253
  %261 = load i64, i64* %17, align 8
  %262 = icmp sge i64 %261, 0
  br i1 %262, label %263, label %285

263:                                              ; preds = %260
  %264 = load %struct.ref_s*, %struct.ref_s** %21, align 8
  %265 = load %struct.ref_s*, %struct.ref_s** %21, align 8
  %266 = call i32 @dict_lookup(%struct.ref_s* noundef %264, %struct.ref_s* noundef %265, %struct.ref_s* noundef @name_UniqueID, %struct.ref_s** noundef %13)
  %267 = icmp sle i32 %266, 0
  br i1 %267, label %283, label %268

268:                                              ; preds = %263
  %269 = load %struct.ref_s*, %struct.ref_s** %13, align 8
  %270 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %269, i32 0, i32 1
  %271 = load i16, i16* %270, align 8
  %272 = zext i16 %271 to i32
  %273 = and i32 %272, 255
  %274 = ashr i32 %273, 2
  %275 = icmp ne i32 %274, 5
  br i1 %275, label %283, label %276

276:                                              ; preds = %268
  %277 = load %struct.ref_s*, %struct.ref_s** %13, align 8
  %278 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %277, i32 0, i32 0
  %279 = bitcast %union.v* %278 to i64*
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* %17, align 8
  %282 = icmp ne i64 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %276, %268, %263
  store i64 -1, i64* %17, align 8
  br label %284

284:                                              ; preds = %283, %276
  br label %285

285:                                              ; preds = %284, %260
  store %struct.ref_s* @name_Type1BuildChar, %struct.ref_s** %14, align 8
  %286 = load %struct.ref_s*, %struct.ref_s** %14, align 8
  %287 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %286, i32 0, i32 1
  %288 = load i16, i16* %287, align 8
  %289 = zext i16 %288 to i32
  %290 = or i32 %289, 1
  %291 = trunc i32 %290 to i16
  store i16 %291, i16* %287, align 8
  br label %315

292:                                              ; preds = %179
  %293 = load i32, i32* %5, align 4
  %294 = icmp sle i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  store i32 -10, i32* %2, align 4
  br label %459

296:                                              ; preds = %292
  %297 = load %struct.ref_s*, %struct.ref_s** %14, align 8
  %298 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %297, i32 0, i32 1
  %299 = load i16, i16* %298, align 8
  %300 = zext i16 %299 to i32
  %301 = and i32 %300, 255
  %302 = ashr i32 %301, 2
  switch i32 %302, label %303 [
    i32 0, label %304
    i32 10, label %304
  ]

303:                                              ; preds = %296
  store i32 -20, i32* %2, align 4
  br label %459

304:                                              ; preds = %296, %296
  br label %305

305:                                              ; preds = %304
  %306 = load %struct.ref_s*, %struct.ref_s** %14, align 8
  %307 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %306, i32 0, i32 1
  %308 = load i16, i16* %307, align 8
  %309 = zext i16 %308 to i32
  %310 = xor i32 %309, -1
  %311 = and i32 %310, 3
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %305
  store i32 -7, i32* %2, align 4
  br label %459

314:                                              ; preds = %305
  br label %315

315:                                              ; preds = %314, %285
  %316 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %317 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %318 = call i32 @dict_lookup(%struct.ref_s* noundef %316, %struct.ref_s* noundef %317, %struct.ref_s* noundef @name_FID, %struct.ref_s** noundef %6)
  store i32 %318, i32* %5, align 4
  %319 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %320 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %319, i32 0, i32 1
  %321 = load i16, i16* %320, align 8
  %322 = zext i16 %321 to i32
  %323 = and i32 %322, 256
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %431

325:                                              ; preds = %315
  %326 = load i32, i32* %5, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %325
  store i32 -10, i32* %2, align 4
  br label %459

329:                                              ; preds = %325
  %330 = call i8* @alloc(i32 noundef 1, i32 noundef 184, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %331 = bitcast i8* %330 to %struct.gs_font_s*
  store %struct.gs_font_s* %331, %struct.gs_font_s** %23, align 8
  %332 = icmp eq %struct.gs_font_s* %331, null
  br i1 %332, label %337, label %333

333:                                              ; preds = %329
  %334 = call i8* @alloc(i32 noundef 1, i32 noundef 112, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  %335 = bitcast i8* %334 to %struct.font_data_s*
  store %struct.font_data_s* %335, %struct.font_data_s** %24, align 8
  %336 = icmp eq %struct.font_data_s* %335, null
  br i1 %336, label %337, label %338

337:                                              ; preds = %333, %329
  store i32 -25, i32* %2, align 4
  br label %459

338:                                              ; preds = %333
  %339 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %340 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %341 = call i32 @add_FID(%struct.ref_s* noundef %339, %struct.gs_font_s* noundef %340)
  store i32 %341, i32* %5, align 4
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = load i32, i32* %5, align 4
  store i32 %344, i32* %2, align 4
  br label %459

345:                                              ; preds = %338
  %346 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %347 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %346, i32 0, i32 0
  %348 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %349 = bitcast %struct.ref_s* %347 to i8*
  %350 = bitcast %struct.ref_s* %348 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %349, i8* align 8 %350, i64 16, i1 false)
  %351 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %352 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %351, i32 0, i32 1
  %353 = load %struct.ref_s*, %struct.ref_s** %14, align 8
  %354 = bitcast %struct.ref_s* %352 to i8*
  %355 = bitcast %struct.ref_s* %353 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %354, i8* align 8 %355, i64 16, i1 false)
  %356 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %357 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %356, i32 0, i32 2
  %358 = load %struct.ref_s*, %struct.ref_s** %10, align 8
  %359 = bitcast %struct.ref_s* %357 to i8*
  %360 = bitcast %struct.ref_s* %358 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %359, i8* align 8 %360, i64 16, i1 false)
  %361 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %362 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %361, i32 0, i32 3
  %363 = load %struct.ref_s*, %struct.ref_s** %11, align 8
  %364 = bitcast %struct.ref_s* %362 to i8*
  %365 = bitcast %struct.ref_s* %363 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %364, i8* align 8 %365, i64 16, i1 false)
  %366 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %367 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %366, i32 0, i32 4
  %368 = load %struct.ref_s*, %struct.ref_s** %15, align 8
  %369 = bitcast %struct.ref_s* %367 to i8*
  %370 = bitcast %struct.ref_s* %368 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %369, i8* align 8 %370, i64 16, i1 false)
  %371 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %372 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %371, i32 0, i32 5
  %373 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %372, i32 0, i32 0
  store i32 (%struct.gs_type1_data_s*, i32, i8**)* @z1_subr_proc, i32 (%struct.gs_type1_data_s*, i32, i8**)** %373, align 8
  %374 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %375 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %374, i32 0, i32 5
  %376 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %375, i32 0, i32 1
  store i32 (%struct.gs_type1_data_s*, i64*)* @z1_pop_proc, i32 (%struct.gs_type1_data_s*, i64*)** %376, align 8
  %377 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %378 = bitcast %struct.font_data_s* %377 to i8*
  %379 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %380 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %379, i32 0, i32 5
  %381 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %380, i32 0, i32 2
  store i8* %378, i8** %381, align 8
  %382 = load i32, i32* %18, align 4
  %383 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %384 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %383, i32 0, i32 5
  %385 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %384, i32 0, i32 3
  store i32 %382, i32* %385, align 8
  %386 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %387 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %388 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %387, i32 0, i32 2
  store %struct.gs_font_s* %386, %struct.gs_font_s** %388, align 8
  %389 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %390 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %391 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %390, i32 0, i32 3
  store %struct.gs_font_dir_s* %389, %struct.gs_font_dir_s** %391, align 8
  %392 = load %struct.font_data_s*, %struct.font_data_s** %24, align 8
  %393 = bitcast %struct.font_data_s* %392 to i8*
  %394 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %395 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %394, i32 0, i32 4
  store i8* %393, i8** %395, align 8
  %396 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %397 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %396, i32 0, i32 5
  %398 = bitcast %struct.gs_matrix_s* %397 to i8*
  %399 = bitcast %struct.gs_matrix_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %398, i8* align 8 %399, i64 96, i1 false)
  %400 = load %struct.ref_s*, %struct.ref_s** %8, align 8
  %401 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %400, i32 0, i32 0
  %402 = bitcast %union.v* %401 to i64*
  %403 = load i64, i64* %402, align 8
  %404 = trunc i64 %403 to i32
  %405 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %406 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %405, i32 0, i32 6
  store i32 %404, i32* %406, align 8
  %407 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 0
  %408 = load float, float* %407, align 16
  %409 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %410 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %409, i32 0, i32 7
  store float %408, float* %410, align 4
  %411 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 1
  %412 = load float, float* %411, align 4
  %413 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %414 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %413, i32 0, i32 8
  store float %412, float* %414, align 8
  %415 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 2
  %416 = load float, float* %415, align 8
  %417 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %418 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %417, i32 0, i32 9
  store float %416, float* %418, align 4
  %419 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0, i64 3
  %420 = load float, float* %419, align 4
  %421 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %422 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %421, i32 0, i32 10
  store float %420, float* %422, align 8
  %423 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %424 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %423, i32 0, i32 13
  store i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)* @gs_no_build_char_proc, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)** %424, align 8
  %425 = load i32, i32* %16, align 4
  %426 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %427 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %426, i32 0, i32 11
  store i32 %425, i32* %427, align 4
  %428 = load i64, i64* %17, align 8
  %429 = load %struct.gs_font_s*, %struct.gs_font_s** %23, align 8
  %430 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %429, i32 0, i32 12
  store i64 %428, i64* %430, align 8
  br label %436

431:                                              ; preds = %315
  %432 = load i32, i32* %5, align 4
  %433 = icmp sle i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %431
  store i32 -10, i32* %2, align 4
  br label %459

435:                                              ; preds = %431
  br label %436

436:                                              ; preds = %435, %345
  %437 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %438 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %437, i32 0, i32 1
  %439 = load i16, i16* %438, align 8
  %440 = zext i16 %439 to i32
  %441 = and i32 %440, -257
  %442 = trunc i32 %441 to i16
  store i16 %442, i16* %438, align 8
  %443 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %444 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %445 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %444, i64 -1
  %446 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %447 = call i32 @dict_put(%struct.ref_s* noundef %443, %struct.ref_s* noundef %445, %struct.ref_s* noundef %446)
  store i32 %447, i32* %5, align 4
  %448 = icmp slt i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %436
  %450 = load i32, i32* %5, align 4
  store i32 %450, i32* %2, align 4
  br label %459

451:                                              ; preds = %436
  %452 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %453 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %452, i64 -1
  %454 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %455 = bitcast %struct.ref_s* %453 to i8*
  %456 = bitcast %struct.ref_s* %454 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %455, i8* align 8 %456, i64 16, i1 false)
  %457 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %458 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %457, i64 -1
  store %struct.ref_s* %458, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %459

459:                                              ; preds = %451, %449, %434, %343, %337, %328, %313, %303, %295, %252, %230, %217, %173, %140, %113, %96, %87, %79, %40, %36, %28
  %460 = load i32, i32* %2, align 4
  ret i32 %460
}

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #1

declare dso_local i32 @read_matrix(...) #1

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @add_FID(%struct.ref_s* noundef %0, %struct.gs_font_s* noundef %1) #0 {
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_font_s*, align 8
  %5 = alloca %struct.ref_s, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  store %struct.gs_font_s* %1, %struct.gs_font_s** %4, align 8
  %6 = load %struct.gs_font_s*, %struct.gs_font_s** %4, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %8 = bitcast %union.v* %7 to %struct.gs_font_s**
  store %struct.gs_font_s* %6, %struct.gs_font_s** %8, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  store i16 16, i16* %9, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = call i32 @dict_put(%struct.ref_s* noundef %10, %struct.ref_s* noundef @name_FID, %struct.ref_s* noundef %5)
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @z1_subr_proc(%struct.gs_type1_data_s* noundef, i32 noundef, i8** noundef) #1

declare dso_local i32 @z1_pop_proc(%struct.gs_type1_data_s* noundef, i64* noundef) #1

declare dso_local i32 @gs_no_build_char_proc(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, %struct.gs_font_s* noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @dict_put(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zscalefont(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca %struct.gs_matrix_s, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = call i32 @num_params(%struct.ref_s* noundef %7, i32 noundef 1, float* noundef %5)
  store i32 %8, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load float, float* %5, align 4
  %14 = fpext float %13 to double
  %15 = load float, float* %5, align 4
  %16 = fpext float %15 to double
  %17 = call i32 @gs_make_scaling(double noundef %14, double noundef %16, %struct.gs_matrix_s* noundef %6)
  store i32 %17, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = call i32 @make_font(%struct.ref_s* noundef %22, %struct.gs_matrix_s* noundef %6)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %19, %10
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @gs_make_scaling(double noundef, double noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @make_font(%struct.ref_s* noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.gs_matrix_s*, align 8
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca %struct.gs_font_s*, align 8
  %8 = alloca %struct.gs_font_s*, align 8
  %9 = alloca %struct.gs_font_s*, align 8
  %10 = alloca %struct.ref_s, align 8
  %11 = alloca %struct.ref_s, align 8
  %12 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %5, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  store %struct.ref_s* %14, %struct.ref_s** %6, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %16 = bitcast %union.v* %15 to i64*
  store i64 6, i64* %16, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 1
  store i16 20, i16* %17, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %19 = call i32 @font_param(%struct.ref_s* noundef %18, %struct.gs_font_s** noundef %7)
  store i32 %19, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %46, label %21

21:                                               ; preds = %2
  %22 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %23 = load %struct.gs_font_s*, %struct.gs_font_s** %7, align 8
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %25 = call i32 @gs_makefont(%struct.gs_font_dir_s* noundef %22, %struct.gs_font_s* noundef %23, %struct.gs_matrix_s* noundef %24, %struct.gs_font_s** noundef %8, %struct.gs_font_s** noundef %9)
  store i32 %25, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %21
  %28 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %29 = call i32 @dict_maxlength(%struct.ref_s* noundef %28)
  %30 = call i32 @dict_create(i32 noundef %29, %struct.ref_s* noundef %10)
  store i32 %30, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %27
  %33 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %34 = call i32 @dict_copy(%struct.ref_s* noundef %33, %struct.ref_s* noundef %10)
  store i32 %34, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zarray to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %11)
  store i32 %37, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = call i32 @dict_put(%struct.ref_s* noundef %10, %struct.ref_s* noundef @name_FontMatrix, %struct.ref_s* noundef %11)
  store i32 %40, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %44 = call i32 @add_FID(%struct.ref_s* noundef %10, %struct.gs_font_s* noundef %43)
  store i32 %44, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %39, %36, %32, %27, %21, %2
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i32 0, i32 0
  %50 = bitcast %union.v* %49 to %struct.ref_s**
  %51 = load %struct.ref_s*, %struct.ref_s** %50, align 8
  %52 = bitcast %struct.ref_s* %51 to %struct.gs_matrix_s*
  %53 = load %struct.gs_font_s*, %struct.gs_font_s** %8, align 8
  %54 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %53, i32 0, i32 5
  %55 = bitcast %struct.gs_matrix_s* %52 to i8*
  %56 = bitcast %struct.gs_matrix_s* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 96, i1 false)
  %57 = load %struct.gs_font_s*, %struct.gs_font_s** %9, align 8
  %58 = icmp ne %struct.gs_font_s* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %48
  %61 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %62 = bitcast %struct.ref_s* %61 to i8*
  %63 = bitcast %struct.ref_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 1
  %66 = load i16, i16* %65, align 8
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, -257
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %65, align 8
  %70 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 -1
  store %struct.ref_s* %71, %struct.ref_s** @osp, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %60, %46
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zmakefont(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_matrix_s, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef %6, %struct.gs_matrix_s* noundef %5)
  store i32 %7, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = call i32 @make_font(%struct.ref_s* noundef %12, %struct.gs_matrix_s* noundef %5)
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %11, %9
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetfont(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_font_s*, align 8
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 @font_param(%struct.ref_s* noundef %6, %struct.gs_font_s** noundef %4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %12 = load %struct.gs_font_s*, %struct.gs_font_s** %4, align 8
  %13 = call i32 @gs_setfont(%struct.gs_state_s* noundef %11, %struct.gs_font_s* noundef %12)
  store i32 %13, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %23

17:                                               ; preds = %10
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = bitcast %struct.ref_s* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 4) to i8*), i8* align 8 %19, i64 16, i1 false)
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  store %struct.ref_s* %21, %struct.ref_s** @osp, align 8
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @font_param(%struct.ref_s* noundef %0, %struct.gs_font_s** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca %struct.gs_font_s**, align 8
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store %struct.gs_font_s** %1, %struct.gs_font_s*** %5, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 252
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -20, i32* %3, align 4
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %18 = call i32 @dict_lookup(%struct.ref_s* noundef %16, %struct.ref_s* noundef %17, %struct.ref_s* noundef @name_FID, %struct.ref_s** noundef %6)
  store i32 %18, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %33

22:                                               ; preds = %15
  %23 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 0
  %25 = bitcast %union.v* %24 to %struct.gs_font_s**
  %26 = load %struct.gs_font_s*, %struct.gs_font_s** %25, align 8
  %27 = load %struct.gs_font_s**, %struct.gs_font_s*** %5, align 8
  store %struct.gs_font_s* %26, %struct.gs_font_s** %27, align 8
  %28 = load %struct.gs_font_s**, %struct.gs_font_s*** %5, align 8
  %29 = load %struct.gs_font_s*, %struct.gs_font_s** %28, align 8
  %30 = icmp eq %struct.gs_font_s* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -10, i32* %3, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %20, %14
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @gs_setfont(%struct.gs_state_s* noundef, %struct.gs_font_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentfont(%struct.ref_s* noundef %0) #0 {
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
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = bitcast %struct.ref_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 4) to i8*), i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcachestatus(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [7 x i32], align 16
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %6 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  call void @gs_cachestatus(%struct.gs_font_dir_s* noundef %5, i32* noundef %6)
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 7
  store %struct.ref_s* %8, %struct.ref_s** %3, align 8
  store %struct.ref_s* %8, %struct.ref_s** @osp, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %10 = icmp ugt %struct.ref_s* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -7
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -6
  %17 = getelementptr inbounds [7 x i32], [7 x i32]* %4, i64 0, i64 0
  call void @make_uint_array(%struct.ref_s* noundef %16, i32* noundef %17, i32 noundef 7)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local void @gs_cachestatus(%struct.gs_font_dir_s* noundef, i32* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @make_uint_array(%struct.ref_s* noundef %0, i32* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %18 = bitcast %union.v* %17 to i64*
  store i64 %15, i64* %18, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  store i16 20, i16* %20, align 8
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 1
  store %struct.ref_s* %25, %struct.ref_s** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  br label %8, !llvm.loop !4

28:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetcachelimit(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = call i32 @num_params(%struct.ref_s* noundef %6, i32 noundef 1, float* noundef null)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  br label %16

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ -20, %15 ]
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %21 = bitcast %union.v* %20 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = icmp sgt i64 %26, 4294967295
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %18
  store i32 -15, i32* %2, align 4
  br label %36

29:                                               ; preds = %25
  %30 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @gs_setcachelimit(%struct.gs_font_dir_s* noundef %30, i32 noundef %32)
  %34 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  store %struct.ref_s* %35, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %28, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @gs_setcachelimit(%struct.gs_font_dir_s* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetcacheparams(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %63, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 %15
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 255
  %21 = ashr i32 %20, 2
  %22 = icmp ne i32 %21, 6
  br label %23

23:                                               ; preds = %11, %8
  %24 = phi i1 [ false, %8 ], [ %22, %11 ]
  br i1 %24, label %25, label %66

25:                                               ; preds = %23
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 %29
  %31 = call i32 @num_params(%struct.ref_s* noundef %30, i32 noundef 1, float* noundef null)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  br label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ -20, %39 ]
  store i32 %41, i32* %2, align 4
  br label %90

42:                                               ; preds = %25
  %43 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 0, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 %46
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i32 0, i32 0
  %49 = bitcast %union.v* %48 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i64, i64* %7, align 8
  %55 = icmp sgt i64 %54, 4294967295
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %42
  store i32 -15, i32* %2, align 4
  br label %90

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %61
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %8, !llvm.loop !6

66:                                               ; preds = %23
  %67 = load i32, i32* %5, align 4
  switch i32 %67, label %87 [
    i32 2, label %68
    i32 1, label %77
    i32 0, label %86
  ]

68:                                               ; preds = %66
  %69 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @gs_setcachelower(%struct.gs_font_dir_s* noundef %69, i32 noundef %71)
  store i32 %72, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %90

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %66, %76
  %78 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @gs_setcacheupper(%struct.gs_font_dir_s* noundef %78, i32 noundef %80)
  store i32 %81, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %90

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %66, %85
  br label %87

87:                                               ; preds = %86, %66
  %88 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %89 = call i32 (%struct.ref_s*, ...) bitcast (i32 (...)* @zcleartomark to i32 (%struct.ref_s*, ...)*)(%struct.ref_s* noundef %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %83, %74, %56, %40
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @gs_setcachelower(%struct.gs_font_dir_s* noundef, i32 noundef) #1

declare dso_local i32 @gs_setcacheupper(%struct.gs_font_dir_s* noundef, i32 noundef) #1

declare dso_local i32 @zcleartomark(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentcacheparams(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %6 = call i32 @gs_currentcachelower(%struct.gs_font_dir_s* noundef %5)
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %6, i32* %7, align 4
  %8 = load %struct.gs_font_dir_s*, %struct.gs_font_dir_s** @ifont_dir, align 8
  %9 = call i32 @gs_currentcacheupper(%struct.gs_font_dir_s* noundef %8)
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %9, i32* %10, align 4
  %11 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 3
  store %struct.ref_s* %12, %struct.ref_s** %3, align 8
  store %struct.ref_s* %12, %struct.ref_s** @osp, align 8
  %13 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %14 = icmp ugt %struct.ref_s* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -3
  store %struct.ref_s* %17, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -2
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %22 = bitcast %union.v* %21 to i64*
  store i64 0, i64* %22, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -2
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i32 0, i32 1
  store i16 24, i16* %25, align 8
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  call void @make_uint_array(%struct.ref_s* noundef %27, i32* noundef %28, i32 noundef 2)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @gs_currentcachelower(%struct.gs_font_dir_s* noundef) #1

declare dso_local i32 @gs_currentcacheupper(%struct.gs_font_dir_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zfont_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([10 x %struct.op_def], [10 x %struct.op_def]* @zfont_op_init.my_defs, i64 0, i64 0))
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
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
