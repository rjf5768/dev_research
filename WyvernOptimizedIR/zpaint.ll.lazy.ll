; ModuleID = './zpaint.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zpaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_image_enum_s = type opaque

@igs = external dso_local global %struct.gs_state_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@zpaint_op_init.my_defs = internal global [8 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 (%struct.ref_s*)* @zeofill }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zerasepage }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zfill }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcolorimage }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zimage }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zimagemask }, %struct.op_def { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zstroke }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [8 x i8] c"0eofill\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"0erasepage\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"0fill\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"7colorimage\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"5image\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"5imagemask\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0stroke\00", align 1
@esp = external dso_local global %struct.ref_s*, align 8
@estop = external dso_local global %struct.ref_s*, align 8
@gs_image_enum_sizeof = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"image_setup\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"image_continue(quit)\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"image_continue(finished)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zerasepage(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_erasepage(%struct.gs_state_s* noundef %2) #3
  ret i32 %3
}

declare dso_local i32 @gs_erasepage(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zfill(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_fill(%struct.gs_state_s* noundef %2) #3
  ret i32 %3
}

declare dso_local i32 @gs_fill(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zeofill(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_eofill(%struct.gs_state_s* noundef %2) #3
  ret i32 %3
}

declare dso_local i32 @gs_eofill(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstroke(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_stroke(%struct.gs_state_s* noundef %2) #3
  ret i32 %3
}

declare dso_local i32 @gs_stroke(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcolorimage(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = and i16 %4, 252
  %6 = icmp eq i16 %5, 20
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %62

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = and i16 %10, 252
  %12 = icmp eq i16 %11, 4
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %62

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %62

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  switch i32 %22, label %28 [
    i32 1, label %23
    i32 3, label %27
    i32 4, label %27
  ]

23:                                               ; preds = %19
  %24 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -2
  store %struct.ref_s* %25, %struct.ref_s** @osp, align 8
  %26 = call i32 @zimage(%struct.ref_s* noundef %0)
  br label %62

27:                                               ; preds = %19, %19
  br label %29

28:                                               ; preds = %19
  br label %62

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %31 = bitcast %union.v* %30 to i16*
  %32 = load i16, i16* %31, align 8
  %.not = icmp eq i16 %32, 0
  br i1 %.not, label %40, label %33

33:                                               ; preds = %29
  %34 = shl i64 %21, 32
  %sext4 = add i64 %34, -4294967296
  %35 = ashr exact i64 %sext4, 32
  %36 = sub nsw i64 0, %35
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 %36
  %38 = sub nsw i32 0, %22
  %39 = shl i64 %21, 32
  %sext = add i64 %39, 25769803776
  %phi.cast = ashr exact i64 %sext, 32
  br label %40

40:                                               ; preds = %33, %29
  %.03 = phi i64 [ %phi.cast, %33 ], [ 7, %29 ]
  %.02 = phi i32 [ %38, %33 ], [ %22, %29 ]
  %.01 = phi %struct.ref_s* [ %37, %33 ], [ %2, %29 ]
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -2, i32 1
  %42 = load i16, i16* %41, align 8
  %43 = and i16 %42, 252
  %44 = icmp eq i16 %43, 20
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %62

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -2, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %48, 8
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %62

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -2, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @image_setup(%struct.ref_s* noundef %.01, i32 noundef %54, i32 noundef %.02)
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %59 = sub nsw i64 0, %.03
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 %59
  store %struct.ref_s* %60, %struct.ref_s** @osp, align 8
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %50, %45, %28, %23, %18, %13, %7
  %.0 = phi i32 [ -15, %18 ], [ -15, %28 ], [ -15, %50 ], [ %55, %61 ], [ -20, %45 ], [ %26, %23 ], [ -20, %13 ], [ -20, %7 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @image_setup(%struct.ref_s* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.gs_matrix_s, align 8
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = xor i32 %2, -1
  br label %9

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i32 [ %7, %6 ], [ 0, %8 ]
  %11 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 9
  %13 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %14 = icmp ugt %struct.ref_s* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %149

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -4, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = and i16 %18, 252
  %20 = icmp eq i16 %19, 20
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %149

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = and i16 %24, 252
  %26 = icmp eq i16 %25, 20
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %149

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %52, %28
  %.01 = phi i32 [ 0, %28 ], [ %53, %52 ]
  %.not = icmp sgt i32 %.01, %10
  br i1 %.not, label %54, label %30

30:                                               ; preds = %29
  %31 = zext i32 %.01 to i64
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %31, i32 1
  %33 = load i16, i16* %32, align 8
  %34 = and i16 %33, 252
  %.not3 = icmp eq i16 %34, 52
  br i1 %.not3, label %51, label %35

35:                                               ; preds = %30
  %36 = zext i32 %.01 to i64
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %36, i32 1
  %38 = load i16, i16* %37, align 8
  %39 = lshr i16 %38, 2
  %40 = and i16 %39, 63
  %41 = zext i16 %40 to i32
  switch i32 %41, label %42 [
    i32 0, label %43
    i32 10, label %43
  ]

42:                                               ; preds = %35
  br label %149

43:                                               ; preds = %35, %35
  br label %44

44:                                               ; preds = %43
  %45 = zext i32 %.01 to i64
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %45, i32 1
  %47 = load i16, i16* %46, align 8
  %48 = and i16 %47, 3
  %.not4 = icmp eq i16 %48, 3
  br i1 %.not4, label %50, label %49

49:                                               ; preds = %44
  br label %149

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %30
  br label %52

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %.01, 1
  br label %29, !llvm.loop !4

54:                                               ; preds = %29
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -4, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 1
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %54
  br label %149

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %149

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %70 = call i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...) bitcast (i32 (...)* @read_matrix to i32 (%struct.ref_s*, %struct.gs_matrix_s*, ...)*)(%struct.ref_s* noundef nonnull %69, %struct.gs_matrix_s* noundef nonnull %4) #3
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %149

73:                                               ; preds = %68
  %74 = load i32, i32* @gs_image_enum_sizeof, align 4
  %75 = call i8* @alloc(i32 noundef 1, i32 noundef %74, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #3
  %76 = bitcast i8* %75 to %struct.gs_image_enum_s*
  %77 = icmp eq i8* %75, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %149

79:                                               ; preds = %73
  %80 = icmp eq i32 %2, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %79
  %82 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -4, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @gs_imagemask_init(%struct.gs_image_enum_s* noundef nonnull %76, %struct.gs_state_s* noundef %82, i32 noundef %85, i32 noundef %88, i32 noundef %1, %struct.gs_matrix_s* noundef nonnull %4) #3
  br label %99

90:                                               ; preds = %79
  %91 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %92 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -4, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @gs_image_init(%struct.gs_image_enum_s* noundef nonnull %76, %struct.gs_state_s* noundef %91, i32 noundef %94, i32 noundef %97, i32 noundef %1, i32 noundef %2, %struct.gs_matrix_s* noundef nonnull %4) #3
  br label %99

99:                                               ; preds = %90, %81
  %100 = phi i32 [ %89, %81 ], [ %98, %90 ]
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %149

103:                                              ; preds = %99
  %104 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i64 1
  store %struct.ref_s* %105, %struct.ref_s** @esp, align 8
  %106 = bitcast %struct.ref_s* %105 to i16*
  store i16 0, i16* %106, align 8
  %107 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i64 1, i32 1
  store i16 33, i16* %107, align 8
  %108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i64 2
  store %struct.ref_s* %108, %struct.ref_s** @esp, align 8
  br label %109

109:                                              ; preds = %123, %103
  %.1 = phi i32 [ 0, %103 ], [ %126, %123 ]
  %110 = icmp ult i32 %.1, 4
  br i1 %110, label %111, label %127

111:                                              ; preds = %109
  %.not2 = icmp sgt i32 %.1, %10
  br i1 %.not2, label %117, label %112

112:                                              ; preds = %111
  %113 = load i8*, i8** bitcast (%struct.ref_s** @esp to i8**), align 8
  %114 = zext i32 %.1 to i64
  %115 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 %114
  %116 = bitcast %struct.ref_s* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %113, i8* noundef nonnull align 8 dereferenceable(16) %116, i64 16, i1 false)
  br label %122

117:                                              ; preds = %111
  %118 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %118, i64 0, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %121 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %120, i64 0, i32 1
  store i16 32, i16* %121, align 8
  br label %122

122:                                              ; preds = %117, %112
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %124, i64 1
  store %struct.ref_s* %125, %struct.ref_s** @esp, align 8
  %126 = add nuw nsw i32 %.1, 1
  br label %109, !llvm.loop !6

127:                                              ; preds = %109
  %128 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %129 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %128, i64 0, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i64 0, i32 1
  store i16 20, i16* %131, align 8
  %132 = trunc i32 %10 to i16
  %133 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i64 0, i32 2
  store i16 %132, i16* %133, align 2
  %134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i64 1
  store %struct.ref_s* %134, %struct.ref_s** @esp, align 8
  %135 = bitcast %struct.ref_s* %134 to i8**
  store i8* %75, i8** %135, align 8
  %136 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i64 1, i32 1
  store i16 52, i16* %136, align 8
  %137 = load i32, i32* @gs_image_enum_sizeof, align 4
  %138 = trunc i32 %137 to i16
  %139 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %140 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i64 0, i32 2
  store i16 %138, i16* %140, align 2
  %141 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i64 1
  store %struct.ref_s* %141, %struct.ref_s** @esp, align 8
  %142 = bitcast %struct.ref_s* %141 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @image_continue, i32 (%struct.ref_s*)** %142, align 8
  %143 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i64 1, i32 1
  store i16 37, i16* %143, align 8
  %144 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %139, i64 1, i32 2
  store i16 0, i16* %144, align 2
  %145 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %146 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %145, i64 1
  store %struct.ref_s* %146, %struct.ref_s** @esp, align 8
  %147 = bitcast %struct.ref_s* %146 to i8*
  %148 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %147, i8* noundef nonnull align 8 dereferenceable(16) %148, i64 16, i1 false)
  br label %149

149:                                              ; preds = %127, %102, %78, %72, %67, %62, %49, %42, %27, %21, %15
  %.0 = phi i32 [ -5, %15 ], [ -20, %42 ], [ -7, %49 ], [ -23, %62 ], [ 0, %67 ], [ %70, %72 ], [ -25, %78 ], [ %100, %102 ], [ 1, %127 ], [ -20, %27 ], [ -20, %21 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zimage(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ugt i64 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %22

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @image_setup(%struct.ref_s* noundef %0, i32 noundef %15, i32 noundef 1)
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i64 -5
  store %struct.ref_s* %20, %struct.ref_s** @osp, align 8
  br label %21

21:                                               ; preds = %18, %12
  br label %22

22:                                               ; preds = %21, %11, %6
  %.0 = phi i32 [ -15, %11 ], [ %16, %21 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zimagemask(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0
  %9 = bitcast %union.v* %8 to i16*
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = call i32 @image_setup(%struct.ref_s* noundef %0, i32 noundef %11, i32 noundef 0)
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -5
  store %struct.ref_s* %16, %struct.ref_s** @osp, align 8
  br label %17

17:                                               ; preds = %14, %7
  br label %18

18:                                               ; preds = %17, %6
  %.0 = phi i32 [ %12, %17 ], [ -20, %6 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zpaint_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([8 x %struct.op_def], [8 x %struct.op_def]* @zpaint_op_init.my_defs, i64 0, i64 0)) #3
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local i32 @read_matrix(...) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @gs_imagemask_init(%struct.gs_image_enum_s* noundef, %struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gs_image_init(%struct.gs_image_enum_s* noundef, %struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @image_continue(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = load %struct.gs_image_enum_s**, %struct.gs_image_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_image_enum_s***), align 8
  %3 = load %struct.gs_image_enum_s*, %struct.gs_image_enum_s** %2, align 8
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 252
  %.not = icmp eq i16 %6, 52
  br i1 %.not, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -7
  store %struct.ref_s* %9, %struct.ref_s** @esp, align 8
  %10 = bitcast %struct.gs_image_enum_s* %3 to i8*
  %11 = load i32, i32* @gs_image_enum_sizeof, align 4
  call void @alloc_free(i8* noundef %10, i32 noundef 1, i32 noundef %11, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0)) #3
  br label %59

12:                                               ; preds = %1
  %13 = bitcast %struct.ref_s* %0 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = call i32 @gs_image_next(%struct.gs_image_enum_s* noundef %3, i8* noundef %14, i32 noundef %17) #3
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %20 = load i16, i16* %19, align 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  %23 = icmp sgt i32 %18, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %22, %12
  %25 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -7
  store %struct.ref_s* %26, %struct.ref_s** @esp, align 8
  %27 = bitcast %struct.gs_image_enum_s* %3 to i8*
  %28 = load i32, i32* @gs_image_enum_sizeof, align 4
  call void @alloc_free(i8* noundef %27, i32 noundef 1, i32 noundef %28, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)) #3
  br label %56

29:                                               ; preds = %22
  %30 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -5
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i64 -1, i32 2
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp sgt i32 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 -1, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %29
  %.01 = phi i64 [ 0, %41 ], [ %33, %29 ]
  %45 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 1
  store %struct.ref_s* %46, %struct.ref_s** @esp, align 8
  %47 = bitcast %struct.ref_s* %46 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @image_continue, i32 (%struct.ref_s*)** %47, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 1, i32 1
  store i16 37, i16* %48, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 1, i32 2
  store i16 0, i16* %49, align 2
  %50 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 1
  store %struct.ref_s* %51, %struct.ref_s** @esp, align 8
  %sext = shl i64 %.01, 32
  %52 = ashr exact i64 %sext, 32
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 %52
  %54 = bitcast %struct.ref_s* %51 to i8*
  %55 = bitcast %struct.ref_s* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %54, i8* noundef nonnull align 8 dereferenceable(16) %55, i64 16, i1 false)
  br label %56

56:                                               ; preds = %44, %24
  %57 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i64 -1
  store %struct.ref_s* %58, %struct.ref_s** @osp, align 8
  br label %59

59:                                               ; preds = %56, %7
  %.0 = phi i32 [ -20, %7 ], [ 1, %56 ]
  ret i32 %.0
}

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @gs_image_next(%struct.gs_image_enum_s* noundef, i8* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
