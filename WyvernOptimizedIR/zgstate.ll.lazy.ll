; ModuleID = './zgstate.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zgstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.int_state_s = type { %struct.int_state_s*, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }

@igs = dso_local global %struct.gs_state_s* null, align 8
@istate = dso_local global %struct.int_state_s zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"gsave\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"grestore\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"restoreall\00", align 1
@osp = external dso_local global %struct.ref_s*, align 8
@ostop = external dso_local global %struct.ref_s*, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"setdash\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"currentdash\00", align 1
@zgstate_op_init.my_defs = internal global [26 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentdash }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentflat }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentgray }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrenthsbcolor }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentlinecap }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentlinejoin }, %struct.op_def { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentlinewidth }, %struct.op_def { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentmiterlimit }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentrgbcolor }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrentscreen }, %struct.op_def { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 (%struct.ref_s*)* @zcurrenttransfer }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 (%struct.ref_s*)* @zgrestore }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 (%struct.ref_s*)* @zgrestoreall }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i32 (%struct.ref_s*)* @zgsave }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 (%struct.ref_s*)* @zinitgraphics }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetdash }, %struct.op_def { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetflat }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetgray }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32 (%struct.ref_s*)* @zsethsbcolor }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetlinecap }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetlinejoin }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetlinewidth }, %struct.op_def { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetmiterlimit }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetrgbcolor }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32 (%struct.ref_s*)* @zsettransfer }, %struct.op_def zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [13 x i8] c"0currentdash\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"0currentflat\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"0currentgray\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"0currenthsbcolor\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"0currentlinecap\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"0currentlinejoin\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"0currentlinewidth\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"0currentmiterlimit\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"0currentrgbcolor\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"0currentscreen\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"0currenttransfer\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"0grestore\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"0grestoreall\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"0gsave\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"0initgraphics\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"2setdash\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"1setflat\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"1.setgray\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"3sethsbcolor\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"1setlinecap\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"1setlinejoin\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"1setlinewidth\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"1setmiterlimit\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"3setrgbcolor\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"1settransfer\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_init() #0 {
  %1 = call %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* noundef nonnull @alloc, void (i8*, i32, i32, i8*)* noundef nonnull @alloc_free) #5
  store %struct.gs_state_s* %1, %struct.gs_state_s** @igs, align 8
  store %struct.int_state_s* null, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 1, i32 0, i32 0), align 8
  store i16 32, i16* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 1, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 2, i32 0, i32 0), align 8
  store i16 32, i16* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 2, i32 1), align 8
  ret void
}

declare dso_local %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* noundef, void (i8*, i32, i32, i8*)* noundef) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgsave(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = call i8* @alloc(i32 noundef 1, i32 noundef 72, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #5
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_gsave(%struct.gs_state_s* noundef %3) #5
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = icmp eq i8* %2, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6, %1
  br label %10

9:                                                ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) %2, i8* noundef nonnull align 8 dereferenceable(72) bitcast (%struct.int_state_s* @istate to i8*), i64 72, i1 false)
  store i8* %2, i8** bitcast (%struct.int_state_s* @istate to i8**), align 8
  br label %10

10:                                               ; preds = %9, %8
  %.0 = phi i32 [ -13, %8 ], [ 0, %9 ]
  ret i32 %.0
}

declare dso_local i32 @gs_gsave(%struct.gs_state_s* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgrestore(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_grestore(%struct.gs_state_s* noundef %2) #5
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 0), align 8
  %7 = bitcast %struct.int_state_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) bitcast (%struct.int_state_s* @istate to i8*), i8* noundef nonnull align 8 dereferenceable(72) %7, i64 72, i1 false)
  %8 = bitcast %struct.int_state_s* %6 to i8*
  call void @alloc_free(i8* noundef %8, i32 noundef 1, i32 noundef 72, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %9

9:                                                ; preds = %5, %1
  ret i32 0
}

declare dso_local i32 @gs_grestore(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgrestoreall(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_grestoreall(%struct.gs_state_s* noundef %2) #5
  br label %4

4:                                                ; preds = %6, %1
  %5 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 0), align 8
  %.not = icmp eq %struct.int_state_s* %5, null
  br i1 %.not, label %10, label %6

6:                                                ; preds = %4
  %7 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 0), align 8
  %8 = bitcast %struct.int_state_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(72) bitcast (%struct.int_state_s* @istate to i8*), i8* noundef nonnull align 8 dereferenceable(72) %8, i64 72, i1 false)
  %9 = bitcast %struct.int_state_s* %7 to i8*
  call void @alloc_free(i8* noundef %9, i32 noundef 1, i32 noundef 72, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %4, !llvm.loop !4

10:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @gs_grestoreall(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zinitgraphics(%struct.ref_s* nocapture noundef readnone %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_initgraphics(%struct.gs_state_s* noundef %2) #5
  ret i32 %3
}

declare dso_local i32 @gs_initgraphics(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetlinewidth(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @num_param(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double)* noundef nonnull @gs_setlinewidth)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @num_param(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double)* nocapture noundef readonly %1) #0 {
  %3 = alloca float, align 4
  %4 = call i32 @real_param(%struct.ref_s* noundef %0, float* noundef nonnull %3, i32 noundef 0) #5
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %10

5:                                                ; preds = %2
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %7 = load float, float* %3, align 4
  %8 = fpext float %7 to double
  %9 = call i32 %1(%struct.gs_state_s* noundef %6, double noundef %8) #5
  br label %10

10:                                               ; preds = %5, %2
  %.0 = phi i32 [ %4, %2 ], [ %9, %5 ]
  %.not1 = icmp eq i32 %.0, 0
  br i1 %.not1, label %11, label %14

11:                                               ; preds = %10
  %12 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -1
  store %struct.ref_s* %13, %struct.ref_s** @osp, align 8
  br label %14

14:                                               ; preds = %11, %10
  ret i32 %.0
}

declare dso_local i32 @gs_setlinewidth(%struct.gs_state_s* noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentlinewidth(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = call float @gs_currentlinewidth(%struct.gs_state_s* noundef %9) #5
  %11 = bitcast %struct.ref_s* %2 to float*
  store float %10, float* %11, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 44, i16* %12, align 8
  br label %13

13:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

declare dso_local float @gs_currentlinewidth(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetlinecap(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = call i32 @line_param(%struct.ref_s* noundef %0, i32* noundef nonnull %2)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %8

4:                                                ; preds = %1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @gs_setlinecap(%struct.gs_state_s* noundef %5, i32 noundef %6) #5
  br label %8

8:                                                ; preds = %4, %1
  %.0 = phi i32 [ %3, %1 ], [ %7, %4 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal i32 @line_param(%struct.ref_s* nocapture noundef readonly %0, i32* nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = and i16 %4, 252
  %6 = icmp eq i16 %5, 20
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %8
  br label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %1, align 4
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  br label %23

23:                                               ; preds = %17, %16, %7
  %.0 = phi i32 [ -15, %16 ], [ 0, %17 ], [ -20, %7 ]
  ret i32 %.0
}

declare dso_local i32 @gs_setlinecap(%struct.gs_state_s* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentlinecap(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %14

8:                                                ; preds = %1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = call i32 @gs_currentlinecap(%struct.gs_state_s* noundef %9) #5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %13, align 8
  br label %14

14:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

declare dso_local i32 @gs_currentlinecap(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetlinejoin(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = call i32 @line_param(%struct.ref_s* noundef %0, i32* noundef nonnull %2)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %8

4:                                                ; preds = %1
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @gs_setlinejoin(%struct.gs_state_s* noundef %5, i32 noundef %6) #5
  br label %8

8:                                                ; preds = %4, %1
  %.0 = phi i32 [ %3, %1 ], [ %7, %4 ]
  ret i32 %.0
}

declare dso_local i32 @gs_setlinejoin(%struct.gs_state_s* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentlinejoin(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %14

8:                                                ; preds = %1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = call i32 @gs_currentlinejoin(%struct.gs_state_s* noundef %9) #5
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %13, align 8
  br label %14

14:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

declare dso_local i32 @gs_currentlinejoin(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetmiterlimit(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @num_param(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double)* noundef nonnull @gs_setmiterlimit)
  ret i32 %2
}

declare dso_local i32 @gs_setmiterlimit(%struct.gs_state_s* noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentmiterlimit(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = call float @gs_currentmiterlimit(%struct.gs_state_s* noundef %9) #5
  %11 = bitcast %struct.ref_s* %2 to float*
  store float %10, float* %11, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 44, i16* %12, align 8
  br label %13

13:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

declare dso_local float @gs_currentmiterlimit(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetdash(%struct.ref_s* noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = call i32 @real_param(%struct.ref_s* noundef %0, float* noundef nonnull %2, i32 noundef 0) #5
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %1
  br label %55

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 63
  %10 = zext i16 %9 to i32
  switch i32 %10, label %11 [
    i32 0, label %12
    i32 10, label %12
  ]

11:                                               ; preds = %5
  br label %55

12:                                               ; preds = %5, %5
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = and i16 %15, 512
  %.not5.not = icmp eq i16 %16, 0
  br i1 %.not5.not, label %17, label %18

17:                                               ; preds = %13
  br label %55

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %20 = bitcast %union.v* %19 to %struct.ref_s**
  %21 = load %struct.ref_s*, %struct.ref_s** %20, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = call i8* @alloc(i32 noundef %24, i32 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  %26 = bitcast i8* %25 to float*
  br label %27

27:                                               ; preds = %44, %18
  %.03 = phi %struct.ref_s* [ %21, %18 ], [ %45, %44 ]
  %.02 = phi i32 [ %24, %18 ], [ %28, %44 ]
  %.01 = phi float* [ %26, %18 ], [ %.1, %44 ]
  %28 = add i32 %.02, -1
  %.not6 = icmp eq i32 %.02, 0
  br i1 %.not6, label %46, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.03, i64 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = lshr i16 %31, 2
  %33 = and i16 %32, 63
  %34 = zext i16 %33 to i32
  switch i32 %34, label %42 [
    i32 5, label %35
    i32 11, label %39
  ]

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.03, i64 0, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to float
  br label %44

39:                                               ; preds = %29
  %40 = bitcast %struct.ref_s* %.03 to float*
  %41 = load float, float* %40, align 8
  br label %44

42:                                               ; preds = %29
  %43 = bitcast float* %.01 to i8*
  call void @alloc_free(i8* noundef %43, i32 noundef %24, i32 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %55

44:                                               ; preds = %39, %35
  %storemerge = phi float [ %41, %39 ], [ %38, %35 ]
  %.1 = getelementptr inbounds float, float* %.01, i64 1
  store float %storemerge, float* %.01, align 4
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.03, i64 1
  br label %27, !llvm.loop !6

46:                                               ; preds = %27
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %48 = load float, float* %2, align 4
  %49 = fpext float %48 to double
  %50 = call i32 @gs_setdash(%struct.gs_state_s* noundef %47, float* noundef %26, i32 noundef %24, double noundef %49) #5
  %.not7 = icmp eq i32 %50, 0
  br i1 %.not7, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %42, %17, %11, %4
  %.0 = phi i32 [ %3, %4 ], [ -20, %11 ], [ -7, %17 ], [ -20, %42 ], [ %50, %54 ]
  ret i32 %.0
}

declare dso_local i32 @real_param(%struct.ref_s* noundef, float* noundef, i32 noundef) #1

declare dso_local i32 @gs_setdash(%struct.gs_state_s* noundef, float* noundef, i32 noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentdash(%struct.ref_s* noundef %0) #0 {
  %2 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %3 = call i32 @gs_currentdash_length(%struct.gs_state_s* noundef %2) #5
  %4 = call i8* @alloc(i32 noundef %3, i32 noundef 16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)) #5
  %5 = bitcast i8* %4 to %struct.ref_s*
  %6 = sext i32 %3 to i64
  %7 = mul nsw i64 %6, 12
  %8 = getelementptr inbounds i8, i8* %4, i64 %7
  %9 = bitcast i8* %8 to float*
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %11 = call i32 @gs_currentdash_pattern(%struct.gs_state_s* noundef %10, float* noundef %9) #5
  br label %12

12:                                               ; preds = %13, %1
  %.03 = phi %struct.ref_s* [ %5, %1 ], [ %18, %13 ]
  %.02 = phi i32 [ %3, %1 ], [ %14, %13 ]
  %.01 = phi float* [ %9, %1 ], [ %19, %13 ]
  %.not = icmp eq i32 %.02, 0
  br i1 %.not, label %20, label %13

13:                                               ; preds = %12
  %14 = add nsw i32 %.02, -1
  %15 = load float, float* %.01, align 4
  %16 = bitcast %struct.ref_s* %.03 to float*
  store float %15, float* %16, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.03, i64 0, i32 1
  store i16 44, i16* %17, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.03, i64 1
  %19 = getelementptr inbounds float, float* %.01, i64 1
  br label %12, !llvm.loop !7

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  store %struct.ref_s* %21, %struct.ref_s** @osp, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %23 = icmp ugt %struct.ref_s* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 -2
  store %struct.ref_s* %26, %struct.ref_s** @osp, align 8
  br label %37

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 0
  %29 = bitcast %union.v* %28 to i8**
  store i8* %4, i8** %29, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 770, i16* %30, align 8
  %31 = trunc i32 %3 to i16
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 2
  store i16 %31, i16* %32, align 2
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %34 = call float @gs_currentdash_offset(%struct.gs_state_s* noundef %33) #5
  %35 = bitcast %struct.ref_s* %21 to float*
  store float %34, float* %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 44, i16* %36, align 8
  br label %37

37:                                               ; preds = %27, %24
  %.0 = phi i32 [ -16, %24 ], [ 0, %27 ]
  ret i32 %.0
}

declare dso_local i32 @gs_currentdash_length(%struct.gs_state_s* noundef) #1

declare dso_local i32 @gs_currentdash_pattern(%struct.gs_state_s* noundef, float* noundef) #1

declare dso_local float @gs_currentdash_offset(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetflat(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @num_param(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double)* noundef nonnull @gs_setflat)
  ret i32 %2
}

declare dso_local i32 @gs_setflat(%struct.gs_state_s* noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentflat(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = call float @gs_currentflat(%struct.gs_state_s* noundef %9) #5
  %11 = bitcast %struct.ref_s* %2 to float*
  store float %10, float* %11, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 44, i16* %12, align 8
  br label %13

13:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

declare dso_local float @gs_currentflat(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetgray(%struct.ref_s* noundef %0) #0 {
  %2 = call i32 @num_param(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double)* noundef nonnull @gs_setgray)
  ret i32 %2
}

declare dso_local i32 @gs_setgray(%struct.gs_state_s* noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentgray(%struct.ref_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  store %struct.ref_s* %2, %struct.ref_s** @osp, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %4 = icmp ugt %struct.ref_s* %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  br label %13

8:                                                ; preds = %1
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = call float @gs_currentgray(%struct.gs_state_s* noundef %9) #5
  %11 = bitcast %struct.ref_s* %2 to float*
  store float %10, float* %11, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 44, i16* %12, align 8
  br label %13

13:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

declare dso_local float @gs_currentgray(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsethsbcolor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [3 x float], align 4
  %3 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %4 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 3, float* noundef nonnull %3) #5
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %8 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 1
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 2
  %15 = load float, float* %14, align 4
  %16 = fpext float %15 to double
  %17 = call i32 @gs_sethsbcolor(%struct.gs_state_s* noundef %7, double noundef %10, double noundef %13, double noundef %16) #5
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -3
  store %struct.ref_s* %21, %struct.ref_s** @osp, align 8
  br label %22

22:                                               ; preds = %19, %6, %1
  %.0 = phi i32 [ %17, %19 ], [ %17, %6 ], [ %4, %1 ]
  ret i32 %.0
}

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #1

declare dso_local i32 @gs_sethsbcolor(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrenthsbcolor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [3 x float], align 4
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %5 = call i32 @gs_currenthsbcolor(%struct.gs_state_s* noundef %3, float* noundef nonnull %4) #5
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 3
  store %struct.ref_s* %6, %struct.ref_s** @osp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %8 = icmp ugt %struct.ref_s* %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -3
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  br label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  call void @tri_put(%struct.ref_s* noundef nonnull %6, float* noundef nonnull %13)
  br label %14

14:                                               ; preds = %12, %9
  %.0 = phi i32 [ -16, %9 ], [ 0, %12 ]
  ret i32 %.0
}

declare dso_local i32 @gs_currenthsbcolor(%struct.gs_state_s* noundef, float* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @tri_put(%struct.ref_s* nocapture noundef writeonly %0, float* nocapture noundef readonly %1) #3 {
  %3 = load float, float* %1, align 4
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 0
  %5 = bitcast %union.v* %4 to float*
  store float %3, float* %5, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2, i32 1
  store i16 44, i16* %6, align 8
  %7 = getelementptr inbounds float, float* %1, i64 1
  %8 = load float, float* %7, align 4
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %10 = bitcast %union.v* %9 to float*
  store float %8, float* %10, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  store i16 44, i16* %11, align 8
  %12 = getelementptr inbounds float, float* %1, i64 2
  %13 = load float, float* %12, align 4
  %14 = bitcast %struct.ref_s* %0 to float*
  store float %13, float* %14, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  store i16 44, i16* %15, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetrgbcolor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [3 x float], align 4
  %3 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %4 = call i32 @num_params(%struct.ref_s* noundef %0, i32 noundef 3, float* noundef nonnull %3) #5
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %8 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 1
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 2
  %15 = load float, float* %14, align 4
  %16 = fpext float %15 to double
  %17 = call i32 @gs_setrgbcolor(%struct.gs_state_s* noundef %7, double noundef %10, double noundef %13, double noundef %16) #5
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -3
  store %struct.ref_s* %21, %struct.ref_s** @osp, align 8
  br label %22

22:                                               ; preds = %19, %6, %1
  %.0 = phi i32 [ %17, %19 ], [ %17, %6 ], [ %4, %1 ]
  ret i32 %.0
}

declare dso_local i32 @gs_setrgbcolor(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentrgbcolor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [3 x float], align 4
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %5 = call i32 @gs_currentrgbcolor(%struct.gs_state_s* noundef %3, float* noundef nonnull %4) #5
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 3
  store %struct.ref_s* %6, %struct.ref_s** @osp, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %8 = icmp ugt %struct.ref_s* %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 -3
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  br label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  call void @tri_put(%struct.ref_s* noundef nonnull %6, float* noundef nonnull %13)
  br label %14

14:                                               ; preds = %12, %9
  %.0 = phi i32 [ -16, %9 ], [ 0, %12 ]
  ret i32 %.0
}

declare dso_local i32 @gs_currentrgbcolor(%struct.gs_state_s* noundef, float* noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zsettransfer(%struct.ref_s* nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 0, label %8
    i32 10, label %8
  ]

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1, %1
  br label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = and i16 %11, 3
  %.not = icmp eq i16 %12, 3
  br i1 %.not, label %14, label %13

13:                                               ; preds = %9
  br label %18

14:                                               ; preds = %9
  %15 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 2) to i8*), i8* noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false)
  %16 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  store %struct.ref_s* %17, %struct.ref_s** @osp, align 8
  br label %18

18:                                               ; preds = %14, %13, %7
  %.0 = phi i32 [ -20, %7 ], [ -7, %13 ], [ 0, %14 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @zcurrenttransfer(%struct.ref_s* noundef %0) #4 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %9, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 2) to i8*), i64 16, i1 false)
  br label %10

10:                                               ; preds = %8, %5
  %.0 = phi i32 [ -16, %5 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentscreen(%struct.ref_s* noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float (double, double)*, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %6 = call i32 @gs_currentscreen(%struct.gs_state_s* noundef %5, float* noundef nonnull %2, float* noundef nonnull %3, float (double, double)** noundef nonnull %4) #5
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 3
  store %struct.ref_s* %7, %struct.ref_s** @osp, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %9 = icmp ugt %struct.ref_s* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %12 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %11, i64 -3
  store %struct.ref_s* %12, %struct.ref_s** @osp, align 8
  br label %23

13:                                               ; preds = %1
  %14 = load float, float* %2, align 4
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 0
  %16 = bitcast %union.v* %15 to float*
  store float %14, float* %16, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 44, i16* %17, align 8
  %18 = load float, float* %3, align 4
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 0
  %20 = bitcast %union.v* %19 to float*
  store float %18, float* %20, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 44, i16* %21, align 8
  %22 = bitcast %struct.ref_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %22, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i64 0, i32 1) to i8*), i64 16, i1 false)
  br label %23

23:                                               ; preds = %13, %10
  %.0 = phi i32 [ -16, %10 ], [ 0, %13 ]
  ret i32 %.0
}

declare dso_local i32 @gs_currentscreen(%struct.gs_state_s* noundef, float* noundef, float* noundef, float (double, double)** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zgstate_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([26 x %struct.op_def], [26 x %struct.op_def]* @zgstate_op_init.my_defs, i64 0, i64 0)) #5
  ret void
}

declare dso_local i32 @z_op_init(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
