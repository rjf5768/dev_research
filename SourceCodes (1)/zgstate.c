; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zgstate.c'
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
  %1 = call %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* noundef @alloc, void (i8*, i32, i32, i8*)* noundef @alloc_free)
  store %struct.gs_state_s* %1, %struct.gs_state_s** @igs, align 8
  store %struct.int_state_s* null, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 1, i32 0, i32 0), align 8
  store i16 32, i16* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 1, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 2, i32 0, i32 0), align 8
  store i16 32, i16* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 2, i32 1), align 8
  ret void
}

declare dso_local %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* noundef, void (i8*, i32, i32, i8*)* noundef) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgsave(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.int_state_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = call i8* @alloc(i32 noundef 1, i32 noundef 72, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = bitcast i8* %5 to %struct.int_state_s*
  store %struct.int_state_s* %6, %struct.int_state_s** %4, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %8 = call i32 @gs_gsave(%struct.gs_state_s* noundef %7)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.int_state_s*, %struct.int_state_s** %4, align 8
  %12 = icmp eq %struct.int_state_s* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  store i32 -13, i32* %2, align 4
  br label %18

14:                                               ; preds = %10
  %15 = load %struct.int_state_s*, %struct.int_state_s** %4, align 8
  %16 = bitcast %struct.int_state_s* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.int_state_s* @istate to i8*), i64 72, i1 false)
  %17 = load %struct.int_state_s*, %struct.int_state_s** %4, align 8
  store %struct.int_state_s* %17, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @gs_gsave(%struct.gs_state_s* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgrestore(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca %struct.int_state_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %5 = call i32 @gs_grestore(%struct.gs_state_s* noundef %4)
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  store %struct.int_state_s* %8, %struct.int_state_s** %3, align 8
  %9 = load %struct.int_state_s*, %struct.int_state_s** %3, align 8
  %10 = bitcast %struct.int_state_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.int_state_s* @istate to i8*), i8* align 8 %10, i64 72, i1 false)
  %11 = load %struct.int_state_s*, %struct.int_state_s** %3, align 8
  %12 = bitcast %struct.int_state_s* %11 to i8*
  call void @alloc_free(i8* noundef %12, i32 noundef 1, i32 noundef 72, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %7, %1
  ret i32 0
}

declare dso_local i32 @gs_grestore(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zgrestoreall(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca %struct.int_state_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %5 = call i32 @gs_grestoreall(%struct.gs_state_s* noundef %4)
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  %8 = icmp ne %struct.int_state_s* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load %struct.int_state_s*, %struct.int_state_s** getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 0), align 8
  store %struct.int_state_s* %10, %struct.int_state_s** %3, align 8
  %11 = load %struct.int_state_s*, %struct.int_state_s** %3, align 8
  %12 = bitcast %struct.int_state_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.int_state_s* @istate to i8*), i8* align 8 %12, i64 72, i1 false)
  %13 = load %struct.int_state_s*, %struct.int_state_s** %3, align 8
  %14 = bitcast %struct.int_state_s* %13 to i8*
  call void @alloc_free(i8* noundef %14, i32 noundef 1, i32 noundef 72, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %6, !llvm.loop !4

15:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @gs_grestoreall(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zinitgraphics(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %4 = call i32 @gs_initgraphics(%struct.gs_state_s* noundef %3)
  ret i32 %4
}

declare dso_local i32 @gs_initgraphics(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetlinewidth(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @num_param(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double)* noundef @gs_setlinewidth)
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @num_param(%struct.ref_s* noundef %0, i32 (%struct.gs_state_s*, double)* noundef %1) #0 {
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32 (%struct.gs_state_s*, double)*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  store i32 (%struct.gs_state_s*, double)* %1, i32 (%struct.gs_state_s*, double)** %4, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = call i32 @real_param(%struct.ref_s* noundef %7, float* noundef %5, i32 noundef 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32 (%struct.gs_state_s*, double)*, i32 (%struct.gs_state_s*, double)** %4, align 8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %14 = load float, float* %5, align 4
  %15 = fpext float %14 to double
  %16 = call i32 %12(%struct.gs_state_s* noundef %13, double noundef %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -1
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @gs_setlinewidth(%struct.gs_state_s* noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentlinewidth(%struct.ref_s* noundef %0) #0 {
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
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %13 = call float @gs_currentlinewidth(%struct.gs_state_s* noundef %12)
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to float*
  store float %13, float* %16, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  store i16 44, i16* %18, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local float @gs_currentlinewidth(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetlinecap(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %6 = call i32 @line_param(%struct.ref_s* noundef %5, i32* noundef %3)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @gs_setlinecap(%struct.gs_state_s* noundef %10, i32 noundef %11)
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* %4, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @line_param(%struct.ref_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 252
  %11 = icmp eq i32 %10, 20
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 -20, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i32 0, i32 0
  %22 = bitcast %union.v* %21 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13
  store i32 -15, i32* %3, align 4
  br label %35

26:                                               ; preds = %19
  %27 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  store %struct.ref_s* %34, %struct.ref_s** @osp, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %25, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @gs_setlinecap(%struct.gs_state_s* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentlinecap(%struct.ref_s* noundef %0) #0 {
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
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %13 = call i32 @gs_currentlinecap(%struct.gs_state_s* noundef %12)
  %14 = sext i32 %13 to i64
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %17 = bitcast %union.v* %16 to i64*
  store i64 %14, i64* %17, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  store i16 20, i16* %19, align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %11, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @gs_currentlinecap(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetlinejoin(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %6 = call i32 @line_param(%struct.ref_s* noundef %5, i32* noundef %3)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @gs_setlinejoin(%struct.gs_state_s* noundef %10, i32 noundef %11)
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* %4, align 4
  ret i32 %14
}

declare dso_local i32 @gs_setlinejoin(%struct.gs_state_s* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentlinejoin(%struct.ref_s* noundef %0) #0 {
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
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %13 = call i32 @gs_currentlinejoin(%struct.gs_state_s* noundef %12)
  %14 = sext i32 %13 to i64
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 0
  %17 = bitcast %union.v* %16 to i64*
  store i64 %14, i64* %17, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 1
  store i16 20, i16* %19, align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %11, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @gs_currentlinejoin(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetmiterlimit(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @num_param(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double)* noundef @gs_setmiterlimit)
  ret i32 %4
}

declare dso_local i32 @gs_setmiterlimit(%struct.gs_state_s* noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentmiterlimit(%struct.ref_s* noundef %0) #0 {
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
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %13 = call float @gs_currentmiterlimit(%struct.gs_state_s* noundef %12)
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to float*
  store float %13, float* %16, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  store i16 44, i16* %18, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local float @gs_currentmiterlimit(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetdash(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_s*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %12 = call i32 @real_param(%struct.ref_s* noundef %11, float* noundef %4, i32 noundef 0)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %2, align 4
  br label %98

17:                                               ; preds = %1
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 255
  %24 = ashr i32 %23, 2
  switch i32 %24, label %25 [
    i32 0, label %26
    i32 10, label %26
  ]

25:                                               ; preds = %17
  store i32 -20, i32* %2, align 4
  br label %98

26:                                               ; preds = %17, %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 -1
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = xor i32 %32, -1
  %34 = and i32 %33, 512
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -7, i32* %2, align 4
  br label %98

37:                                               ; preds = %27
  %38 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 -1
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i32 0, i32 0
  %41 = bitcast %union.v* %40 to %struct.ref_s**
  %42 = load %struct.ref_s*, %struct.ref_s** %41, align 8
  store %struct.ref_s* %42, %struct.ref_s** %7, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -1
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 2
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  store i32 %47, i32* %5, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i8* @alloc(i32 noundef %48, i32 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %50 = bitcast i8* %49 to float*
  store float* %50, float** %9, align 8
  store float* %50, float** %8, align 8
  br label %51

51:                                               ; preds = %81, %37
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i32 0, i32 1
  %58 = load i16, i16* %57, align 8
  %59 = zext i16 %58 to i32
  %60 = and i32 %59, 255
  %61 = ashr i32 %60, 2
  switch i32 %61, label %77 [
    i32 5, label %62
    i32 11, label %70
  ]

62:                                               ; preds = %55
  %63 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i32 0, i32 0
  %65 = bitcast %union.v* %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = sitofp i64 %66 to float
  %68 = load float*, float** %9, align 8
  %69 = getelementptr inbounds float, float* %68, i32 1
  store float* %69, float** %9, align 8
  store float %67, float* %68, align 4
  br label %81

70:                                               ; preds = %55
  %71 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 0
  %73 = bitcast %union.v* %72 to float*
  %74 = load float, float* %73, align 8
  %75 = load float*, float** %9, align 8
  %76 = getelementptr inbounds float, float* %75, i32 1
  store float* %76, float** %9, align 8
  store float %74, float* %75, align 4
  br label %81

77:                                               ; preds = %55
  %78 = load float*, float** %9, align 8
  %79 = bitcast float* %78 to i8*
  %80 = load i32, i32* %5, align 4
  call void @alloc_free(i8* noundef %79, i32 noundef %80, i32 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 -20, i32* %2, align 4
  br label %98

81:                                               ; preds = %70, %62
  %82 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %83 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %82, i32 1
  store %struct.ref_s* %83, %struct.ref_s** %7, align 8
  br label %51, !llvm.loop !6

84:                                               ; preds = %51
  %85 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %86 = load float*, float** %8, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load float, float* %4, align 4
  %89 = fpext float %88 to double
  %90 = call i32 @gs_setdash(%struct.gs_state_s* noundef %85, float* noundef %86, i32 noundef %87, double noundef %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %95 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %94, i64 -2
  store %struct.ref_s* %95, %struct.ref_s** @osp, align 8
  br label %96

96:                                               ; preds = %93, %84
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %77, %36, %25, %15
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @real_param(%struct.ref_s* noundef, float* noundef, i32 noundef) #1

declare dso_local i32 @gs_setdash(%struct.gs_state_s* noundef, float* noundef, i32 noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentdash(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca %struct.ref_s*, align 8
  %8 = alloca float*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = call i32 @gs_currentdash_length(%struct.gs_state_s* noundef %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @alloc(i32 noundef %12, i32 noundef 16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %14 = bitcast i8* %13 to %struct.ref_s*
  store %struct.ref_s* %14, %struct.ref_s** %6, align 8
  %15 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  store %struct.ref_s* %15, %struct.ref_s** %7, align 8
  %16 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %17 = bitcast %struct.ref_s* %16 to i8*
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 12
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = bitcast i8* %21 to float*
  store float* %22, float** %8, align 8
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %24 = load float*, float** %8, align 8
  %25 = call i32 @gs_currentdash_pattern(%struct.gs_state_s* noundef %23, float* noundef %24)
  br label %26

26:                                               ; preds = %30, %1
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load float*, float** %8, align 8
  %32 = load float, float* %31, align 4
  %33 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 0
  %35 = bitcast %union.v* %34 to float*
  store float %32, float* %35, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  store i16 44, i16* %37, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 1
  store %struct.ref_s* %39, %struct.ref_s** %7, align 8
  %40 = load float*, float** %8, align 8
  %41 = getelementptr inbounds float, float* %40, i32 1
  store float* %41, float** %8, align 8
  br label %26, !llvm.loop !7

42:                                               ; preds = %26
  %43 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 2
  store %struct.ref_s* %44, %struct.ref_s** %3, align 8
  store %struct.ref_s* %44, %struct.ref_s** @osp, align 8
  %45 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %46 = icmp ugt %struct.ref_s* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 -2
  store %struct.ref_s* %49, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %71

50:                                               ; preds = %42
  %51 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %52 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %55 = bitcast %union.v* %54 to %struct.ref_s**
  store %struct.ref_s* %51, %struct.ref_s** %55, align 8
  %56 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -1
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 1
  store i16 770, i16* %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = trunc i32 %59 to i16
  %61 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %61, i64 -1
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 2
  store i16 %60, i16* %63, align 2
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %65 = call float @gs_currentdash_offset(%struct.gs_state_s* noundef %64)
  %66 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %68 = bitcast %union.v* %67 to float*
  store float %65, float* %68, align 8
  %69 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 0, i32 1
  store i16 44, i16* %70, align 8
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %50, %47
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @gs_currentdash_length(%struct.gs_state_s* noundef) #1

declare dso_local i32 @gs_currentdash_pattern(%struct.gs_state_s* noundef, float* noundef) #1

declare dso_local float @gs_currentdash_offset(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetflat(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @num_param(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double)* noundef @gs_setflat)
  ret i32 %4
}

declare dso_local i32 @gs_setflat(%struct.gs_state_s* noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentflat(%struct.ref_s* noundef %0) #0 {
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
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %13 = call float @gs_currentflat(%struct.gs_state_s* noundef %12)
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to float*
  store float %13, float* %16, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  store i16 44, i16* %18, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local float @gs_currentflat(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetgray(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %4 = call i32 @num_param(%struct.ref_s* noundef %3, i32 (%struct.gs_state_s*, double)* noundef @gs_setgray)
  ret i32 %4
}

declare dso_local i32 @gs_setgray(%struct.gs_state_s* noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentgray(%struct.ref_s* noundef %0) #0 {
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
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %13 = call float @gs_currentgray(%struct.gs_state_s* noundef %12)
  %14 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i32 0, i32 0
  %16 = bitcast %union.v* %15 to float*
  store float %13, float* %16, align 8
  %17 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 1
  store i16 44, i16* %18, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local float @gs_currentgray(%struct.gs_state_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsethsbcolor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca [3 x float], align 4
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %6 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 0
  %7 = call i32 @num_params(%struct.ref_s* noundef %5, i32 noundef 3, float* noundef %6)
  store i32 %7, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %11 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 0
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 1
  %15 = load float, float* %14, align 4
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 2
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = call i32 @gs_sethsbcolor(%struct.gs_state_s* noundef %10, double noundef %13, double noundef %16, double noundef %19)
  store i32 %20, i32* %4, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -3
  store %struct.ref_s* %24, %struct.ref_s** @osp, align 8
  br label %25

25:                                               ; preds = %22, %9, %1
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @num_params(%struct.ref_s* noundef, i32 noundef, float* noundef) #1

declare dso_local i32 @gs_sethsbcolor(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrenthsbcolor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [3 x float], align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %6 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 0
  %7 = call i32 @gs_currenthsbcolor(%struct.gs_state_s* noundef %5, float* noundef %6)
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 3
  store %struct.ref_s* %9, %struct.ref_s** %3, align 8
  store %struct.ref_s* %9, %struct.ref_s** @osp, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %11 = icmp ugt %struct.ref_s* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -3
  store %struct.ref_s* %14, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 0
  call void @tri_put(%struct.ref_s* noundef %16, float* noundef %17)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @gs_currenthsbcolor(%struct.gs_state_s* noundef, float* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @tri_put(%struct.ref_s* noundef %0, float* noundef %1) #0 {
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds float, float* %5, i64 0
  %7 = load float, float* %6, align 4
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -2
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i32 0, i32 0
  %11 = bitcast %union.v* %10 to float*
  store float %7, float* %11, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i64 -2
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  store i16 44, i16* %14, align 8
  %15 = load float*, float** %4, align 8
  %16 = getelementptr inbounds float, float* %15, i64 1
  %17 = load float, float* %16, align 4
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %21 = bitcast %union.v* %20 to float*
  store float %17, float* %21, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -1
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  store i16 44, i16* %24, align 8
  %25 = load float*, float** %4, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  %27 = load float, float* %26, align 4
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to float*
  store float %27, float* %30, align 8
  %31 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  store i16 44, i16* %32, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetrgbcolor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  %3 = alloca [3 x float], align 4
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %6 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 0
  %7 = call i32 @num_params(%struct.ref_s* noundef %5, i32 noundef 3, float* noundef %6)
  store i32 %7, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %11 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 0
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 1
  %15 = load float, float* %14, align 4
  %16 = fpext float %15 to double
  %17 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 2
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = call i32 @gs_setrgbcolor(%struct.gs_state_s* noundef %10, double noundef %13, double noundef %16, double noundef %19)
  store i32 %20, i32* %4, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -3
  store %struct.ref_s* %24, %struct.ref_s** @osp, align 8
  br label %25

25:                                               ; preds = %22, %9, %1
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @gs_setrgbcolor(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentrgbcolor(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [3 x float], align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %6 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 0
  %7 = call i32 @gs_currentrgbcolor(%struct.gs_state_s* noundef %5, float* noundef %6)
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 3
  store %struct.ref_s* %9, %struct.ref_s** %3, align 8
  store %struct.ref_s* %9, %struct.ref_s** @osp, align 8
  %10 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %11 = icmp ugt %struct.ref_s* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -3
  store %struct.ref_s* %14, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds [3 x float], [3 x float]* %4, i64 0, i64 0
  call void @tri_put(%struct.ref_s* noundef %16, float* noundef %17)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @gs_currentrgbcolor(%struct.gs_state_s* noundef, float* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsettransfer(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %4 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i32 0, i32 1
  %6 = load i16, i16* %5, align 8
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 255
  %9 = ashr i32 %8, 2
  switch i32 %9, label %10 [
    i32 0, label %11
    i32 10, label %11
  ]

10:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %26

11:                                               ; preds = %1, %1
  br label %12

12:                                               ; preds = %11
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %17, 3
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -7, i32* %2, align 4
  br label %26

21:                                               ; preds = %12
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = bitcast %struct.ref_s* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 2) to i8*), i8* align 8 %23, i64 16, i1 false)
  %24 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  store %struct.ref_s* %25, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %20, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrenttransfer(%struct.ref_s* noundef %0) #0 {
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 2) to i8*), i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcurrentscreen(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float (double, double)*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %8 = call i32 @gs_currentscreen(%struct.gs_state_s* noundef %7, float* noundef %4, float* noundef %5, float (double, double)** noundef %6)
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 3
  store %struct.ref_s* %10, %struct.ref_s** %3, align 8
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  %11 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %12 = icmp ugt %struct.ref_s* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 -3
  store %struct.ref_s* %15, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  %17 = load float, float* %4, align 4
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -2
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 0
  %21 = bitcast %union.v* %20 to float*
  store float %17, float* %21, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -2
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 0, i32 1
  store i16 44, i16* %24, align 8
  %25 = load float, float* %5, align 4
  %26 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %26, i64 -1
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i32 0, i32 0
  %29 = bitcast %union.v* %28 to float*
  store float %25, float* %29, align 8
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 1
  store i16 44, i16* %32, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = bitcast %struct.ref_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 bitcast (%struct.ref_s* getelementptr inbounds (%struct.int_state_s, %struct.int_state_s* @istate, i32 0, i32 1) to i8*), i64 16, i1 false)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @gs_currentscreen(%struct.gs_state_s* noundef, float* noundef, float* noundef, float (double, double)** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @zgstate_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([26 x %struct.op_def], [26 x %struct.op_def]* @zgstate_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

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
!7 = distinct !{!7, !5}
