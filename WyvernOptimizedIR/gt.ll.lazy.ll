; ModuleID = './gt.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_state_s = type opaque
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_bitmap_s = type opaque

@params = internal global [2 x i32] zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"GT.MAP\00", align 1
@testn = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown test #%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"setdevice\00", align 1
@use_null = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"setscreen\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"initgraphics\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"erasepage\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"setmatrix\00", align 1
@repeat = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"outer gsave\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"outer grestore\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"%ld / %d = %ld\0A\00", align 1
@show_all = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Repeat count <= 0\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Too many arguments\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"setlinewidth\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"newpath\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"moveto\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"rotate 1\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"lineto\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"rotate 2\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"stroke\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"setrgbcolor\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"gsave 1\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"grestore 1\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"gsave 2\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"gsave 3\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"gsave 4\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"grestore 4\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"grestore 3\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"grestore 2\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"translate 1\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"translate 2\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"arc\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"closepath\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"setlinewidth 1\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"scale 1\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"stroke 1\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"setlinewidth 2\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"currentmatrix\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"scale 2\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"stroke 2\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"lineto 1\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"lineto 2\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"lineto 3\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"newpath 1\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"newpath 2\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"fill 2\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"newpath 3\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"stroke 3\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"newpath 4\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"fill 4\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"fill 1\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"setgray\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"line 1\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"line 2\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"line 3\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"line 4\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"line 5\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"line 6\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"line1\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"line2\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"clip\00", align 1
@ii = dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@i6data = internal global [69 x i8] c"\00;\00\00'\00\00$\80\0EI@\11I \14\B2 <\B6Pu\FE\88\17\FF\8C\17_\14\1C\07\E28\03\C4p1\82\F8\ED\FC\B2\BB\C2\BBo\841\BF\C2\18\EA<\0E>\00\07\FC\00\03\F8\00\1E\18\00\1F\F8\00", align 16
@code = dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"Error, code=%d in %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"Error, result=0 in %s\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Repeat count <= 0\00", align 1
@str.1 = private unnamed_addr constant [19 x i8] c"Too many arguments\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = call i32 @real_main(i32 noundef %0, i8** noundef %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @real_main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca %struct.gs_matrix_s, align 8
  store i64 0, i64* bitcast ([2 x i32]* @params to i64*), align 8
  %4 = call i32 (i32, i8**, i8*, i32 (i8, i8*)*, void (i8*, i32)*, ...) bitcast (i32 (...)* @gs_main to i32 (i32, i8**, i8*, i32 (i8, i8*)*, void (i8*, i32)*, ...)*)(i32 noundef %0, i8** noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 (i8, i8*)* noundef nonnull @swproc, void (i8*, i32)* noundef nonnull @argproc) #11
  %5 = load i32, i32* @testn, align 4
  switch i32 %5, label %14 [
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 6, label %10
    i32 99, label %11
    i32 100, label %12
    i32 101, label %13
  ]

6:                                                ; preds = %2
  br label %17

7:                                                ; preds = %2
  br label %17

8:                                                ; preds = %2
  br label %17

9:                                                ; preds = %2
  br label %17

10:                                               ; preds = %2
  br label %17

11:                                               ; preds = %2
  br label %17

12:                                               ; preds = %2
  br label %17

13:                                               ; preds = %2
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @testn, align 4
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15) #11
  call void @exit(i32 noundef 1) #12
  unreachable

17:                                               ; preds = %13, %12, %11, %10, %9, %8, %7, %6
  %.01 = phi i32 (%struct.gs_state_s*, i32*)* [ @test101, %13 ], [ @test100, %12 ], [ @test99, %11 ], [ @test6, %10 ], [ @test4, %9 ], [ @test3, %8 ], [ @test2, %7 ], [ @test1, %6 ]
  %18 = call %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* noundef nonnull @gs_malloc, void (i8*, i32, i32, i8*)* noundef nonnull @gs_free) #11
  %19 = bitcast %struct.gs_state_s* %18 to i8*
  call void @ze(i8* noundef %19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %20 = call %struct.gx_device_s* @gs_getdevice(i32 noundef 0) #11
  %21 = call i32 @gs_setdevice(%struct.gs_state_s* noundef %18, %struct.gx_device_s* noundef %20) #11
  call void @e(i32 noundef %21, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %22 = load i32, i32* @use_null, align 4
  %.not = icmp eq i32 %22, 0
  br i1 %.not, label %25, label %23

23:                                               ; preds = %17
  %24 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_device_no_output to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %18) #11
  br label %25

25:                                               ; preds = %23, %17
  %26 = call i32 @gs_setscreen(%struct.gs_state_s* noundef %18, double noundef 1.000000e+01, double noundef 4.500000e+01, float (double, double)* noundef nonnull @htproc) #11
  call void @e(i32 noundef %26, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 @gs_initgraphics(%struct.gs_state_s* noundef %18) #11
  call void @e(i32 noundef %27, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %28 = call i32 @gs_erasepage(%struct.gs_state_s* noundef %18) #11
  call void @e(i32 noundef %28, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  call void @gs_make_identity(%struct.gs_matrix_s* noundef nonnull %3) #11
  %29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i64 0, i32 0
  store float 0x3FE364D920000000, float* %29, align 8
  %30 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i64 0, i32 6
  store float 0xBFDC486760000000, float* %30, align 8
  %31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i64 0, i32 10
  store float 3.500000e+02, float* %31, align 8
  %32 = call i32 @gs_setmatrix(%struct.gs_state_s* noundef %18, %struct.gs_matrix_s* noundef nonnull %3) #11
  call void @e(i32 noundef %32, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %33 = load i32, i32* @repeat, align 4
  %34 = call i64 @get_time()
  br label %35

35:                                               ; preds = %40, %25
  %.0 = phi i32 [ %33, %25 ], [ %41, %40 ]
  %36 = call i32 @gs_gsave(%struct.gs_state_s* noundef %18) #11
  call void @e(i32 noundef %36, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %37 = call i32 %.01(%struct.gs_state_s* noundef %18, i32* noundef getelementptr inbounds ([2 x i32], [2 x i32]* @params, i64 0, i64 0)) #11
  %38 = call i32 @gs_copypage(%struct.gs_state_s* noundef %18) #11
  %39 = call i32 @gs_grestore(%struct.gs_state_s* noundef %18) #11
  call void @e(i32 noundef %39, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35
  %41 = add nsw i32 %.0, -1
  %.not2 = icmp eq i32 %41, 0
  br i1 %.not2, label %42, label %35, !llvm.loop !4

42:                                               ; preds = %40
  %43 = call i64 @get_time()
  %44 = sub nsw i64 %43, %34
  %45 = load i32, i32* @repeat, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 noundef %44) #11
  br label %54

49:                                               ; preds = %42
  %50 = load i32, i32* @repeat, align 4
  %51 = sext i32 %50 to i64
  %52 = sdiv i64 %44, %51
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64 noundef %44, i32 noundef %50, i64 noundef %52) #11
  br label %54

54:                                               ; preds = %49, %47
  %55 = call i32 @getchar() #11
  ret i32 undef
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gs_main(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @swproc(i8 noundef signext %0, i8* noundef %1) #0 {
  %3 = sext i8 %0 to i32
  switch i32 %3, label %4 [
    i32 65, label %5
    i32 78, label %6
    i32 82, label %7
  ]

4:                                                ; preds = %2
  br label %14

5:                                                ; preds = %2
  store i32 1, i32* @show_all, align 4
  br label %13

6:                                                ; preds = %2
  store i32 1, i32* @use_null, align 4
  br label %13

7:                                                ; preds = %2
  %8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* noundef nonnull @repeat) #11
  %9 = load i32, i32* @repeat, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #12
  unreachable

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %6, %5
  br label %14

14:                                               ; preds = %13, %4
  %.0 = phi i32 [ -1, %4 ], [ 0, %13 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @argproc(i8* noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* noundef nonnull @testn) #11
  br label %15

6:                                                ; preds = %2
  %7 = icmp slt i32 %1, 3
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = add nsw i32 %1, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* @params, i64 0, i64 %10
  %12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* noundef nonnull %11) #11
  br label %14

13:                                               ; preds = %6
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #12
  unreachable

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(%struct.gs_state_s* noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @llvm.abs.i32(i32 %3, i1 true)
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %9

7:                                                ; preds = %2
  %8 = call i32 @llvm.abs.i32(i32 %3, i1 true)
  br label %9

9:                                                ; preds = %7, %6
  %.0 = phi i32 [ 3, %6 ], [ %3, %7 ]
  %10 = phi i32 [ 3, %6 ], [ %8, %7 ]
  %11 = sitofp i32 %10 to double
  %12 = fdiv double 3.600000e+02, %11
  %13 = fptrunc double %12 to float
  %14 = fmul float %13, 5.000000e-01
  %15 = call i32 @gs_gsave(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %16 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef 2.700000e+02, double noundef 5.220000e+02) #11
  call void @e(i32 noundef %16, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %17 = call i32 @gs_scale(%struct.gs_state_s* noundef %0, double noundef 7.200000e+01, double noundef 7.200000e+01) #11
  call void @e(i32 noundef %17, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %18 = fpext float %14 to double
  call void @wedge(%struct.gs_state_s* noundef %0, double noundef %18)
  %19 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %0, double noundef 2.000000e-02) #11
  call void @e(i32 noundef %19, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %20 = call i32 @gs_stroke(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %21 = call i32 @gs_grestore(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %21, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  %22 = call i32 @gs_gsave(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %22, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %23 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef 3.060000e+02, double noundef 3.060000e+02) #11
  %24 = call i32 @gs_scale(%struct.gs_state_s* noundef %0, double noundef 1.260000e+02, double noundef 1.260000e+02) #11
  %25 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %0, double noundef 2.000000e-02) #11
  br label %26

26:                                               ; preds = %52, %9
  %.01 = phi i32 [ 1, %9 ], [ %53, %52 ]
  %.not = icmp ugt i32 %.01, %10
  br i1 %.not, label %54, label %27

27:                                               ; preds = %26
  %28 = sitofp i32 %.01 to float
  %29 = sitofp i32 %.0 to float
  %30 = fdiv float %28, %29
  %31 = fpext float %30 to double
  %32 = call i32 @gs_setgray(%struct.gs_state_s* noundef %0, double noundef %31) #11
  %33 = icmp slt i32 %.0, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = fneg float %13
  %36 = fpext float %35 to double
  %37 = call i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %36) #11
  br label %38

38:                                               ; preds = %34, %27
  %39 = call i32 @gs_gsave(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %39, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %40 = fpext float %14 to double
  call void @wedge(%struct.gs_state_s* noundef %0, double noundef %40)
  %41 = call i32 @gs_gsave(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %41, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  %42 = call i32 @gs_fill(%struct.gs_state_s* noundef %0) #11
  %43 = call i32 @gs_grestore(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %43, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  %44 = call i32 @gs_setgray(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00) #11
  %45 = call i32 @gs_stroke(%struct.gs_state_s* noundef %0) #11
  %46 = call i32 @gs_grestore(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %46, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  %47 = icmp sgt i32 %.0, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = fpext float %13 to double
  %50 = call i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %49) #11
  br label %51

51:                                               ; preds = %48, %38
  br label %52

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %.01, 1
  br label %26, !llvm.loop !6

54:                                               ; preds = %26
  %55 = call i32 @gs_grestore(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %55, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(%struct.gs_state_s* noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.gs_matrix_s, align 8
  %4 = load i32, i32* %1, align 4
  %5 = getelementptr inbounds i32, i32* %1, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @gs_gsave(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %7, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %8 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef 1.800000e+02, double noundef 4.320000e+02) #11
  call void @e(i32 noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  %9 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %0, double noundef 6.250000e-02) #11
  call void @e(i32 noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0))
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %14, label %10

10:                                               ; preds = %2
  %11 = sitofp i32 %4 to float
  %12 = fpext float %11 to double
  %13 = call i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %12) #11
  call void @e(i32 noundef %13, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  br label %14

14:                                               ; preds = %10, %2
  br label %15

15:                                               ; preds = %28, %14
  %.0 = phi i32 [ 1, %14 ], [ %29, %28 ]
  %16 = icmp ult i32 %.0, 6
  br i1 %16, label %17, label %30

17:                                               ; preds = %15
  %18 = call i32 @gs_gsave(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %19 = sitofp i32 %.0 to float
  %20 = fmul float %19, 3.600000e+01
  %21 = fpext float %20 to double
  %22 = sitofp i32 %.0 to float
  %23 = fmul float %22, 3.600000e+01
  %24 = fpext float %23 to double
  %25 = call i32 @gs_scale(%struct.gs_state_s* noundef %0, double noundef %21, double noundef %24) #11
  call void @e(i32 noundef %25, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0))
  call void @centersquare(%struct.gs_state_s* noundef %0, i32 noundef %6)
  %26 = call i32 @gs_stroke(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %26, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  %27 = call i32 @gs_grestore(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %27, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  br label %28

28:                                               ; preds = %17
  %29 = add nuw nsw i32 %.0, 1
  br label %15, !llvm.loop !7

30:                                               ; preds = %15
  %31 = call i32 @gs_grestore(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %31, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  %32 = call i32 @gs_gsave(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %32, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %33 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef 4.320000e+02, double noundef 4.320000e+02) #11
  call void @e(i32 noundef %33, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0))
  %34 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %0, double noundef 1.000000e+00) #11
  call void @e(i32 noundef %34, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0))
  %35 = call i32 @gs_currentmatrix(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %3) #11
  call void @e(i32 noundef %35, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  br label %36

36:                                               ; preds = %50, %30
  %.1 = phi i32 [ 1, %30 ], [ %51, %50 ]
  %37 = icmp ult i32 %.1, 6
  br i1 %37, label %38, label %52

38:                                               ; preds = %36
  %39 = call i32 @gs_gsave(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %39, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  %40 = sitofp i32 %.1 to float
  %41 = fmul float %40, 3.600000e+01
  %42 = fpext float %41 to double
  %43 = sitofp i32 %.1 to float
  %44 = fmul float %43, 3.600000e+01
  %45 = fpext float %44 to double
  %46 = call i32 @gs_scale(%struct.gs_state_s* noundef %0, double noundef %42, double noundef %45) #11
  call void @e(i32 noundef %46, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0))
  call void @centersquare(%struct.gs_state_s* noundef %0, i32 noundef %6)
  %47 = call i32 @gs_setmatrix(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %3) #11
  call void @e(i32 noundef %47, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %48 = call i32 @gs_stroke(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %48, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0))
  %49 = call i32 @gs_grestore(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %49, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  br label %50

50:                                               ; preds = %38
  %51 = add nuw nsw i32 %.1, 1
  br label %36, !llvm.loop !8

52:                                               ; preds = %36
  %53 = call i32 @gs_grestore(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %53, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3(%struct.gs_state_s* noundef %0, i32* nocapture noundef readnone %1) #0 {
  %3 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0))
  call void @ellipse(%struct.gs_state_s* noundef %0, i32 noundef 144, i32 noundef 400, i32 noundef 72, i32 noundef 144, i32 noundef 0, i32 noundef 360)
  %4 = call i32 @gs_stroke(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  %5 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  call void @ellipse(%struct.gs_state_s* noundef %0, i32 noundef 400, i32 noundef 400, i32 noundef 144, i32 noundef 36, i32 noundef 0, i32 noundef 360)
  %6 = call i32 @gs_fill(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0))
  %7 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %7, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  call void @ellipse(%struct.gs_state_s* noundef %0, i32 noundef 300, i32 noundef 180, i32 noundef 144, i32 noundef 72, i32 noundef 30, i32 noundef 150)
  %8 = call i32 @gs_stroke(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0))
  %9 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %9, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0))
  call void @ellipse(%struct.gs_state_s* noundef %0, i32 noundef 480, i32 noundef 150, i32 noundef 30, i32 noundef 50, i32 noundef 270, i32 noundef 90)
  %10 = call i32 @gs_fill(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0))
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4(%struct.gs_state_s* noundef %0, i32* nocapture noundef readnone %1) #0 {
  %3 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0))
  call void @arrow(%struct.gs_state_s* noundef %0, i32 noundef 318, i32 noundef 340, i32 noundef 72, i32 noundef 340, i32 noundef 10, i32 noundef 30, double noundef 7.200000e+01)
  %4 = call i32 @gs_fill(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0))
  %5 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %5, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  call void @arrow(%struct.gs_state_s* noundef %0, i32 noundef 382, i32 noundef 400, i32 noundef 542, i32 noundef 560, i32 noundef 72, i32 noundef 232, double noundef 1.160000e+02)
  %6 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %0, double noundef 3.000000e+00) #11
  call void @e(i32 noundef %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %7 = call i32 @gs_stroke(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %8 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  call void @arrow(%struct.gs_state_s* noundef %0, i32 noundef 400, i32 noundef 300, i32 noundef 400, i32 noundef 90, i32 noundef 90, i32 noundef 200, double noundef 1.732000e+02)
  %9 = call i32 @gs_setgray(%struct.gs_state_s* noundef %0, double noundef 6.500000e-01) #11
  call void @e(i32 noundef %9, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0))
  %10 = call i32 @gs_fill(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0))
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test6(%struct.gs_state_s* noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.gs_matrix_s, align 8
  %4 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef 2.160000e+02, double noundef 2.880000e+02) #11
  call void @e(i32 noundef %4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %5 = call i32 @gs_scale(%struct.gs_state_s* noundef %0, double noundef 1.440000e+02, double noundef 1.440000e+02) #11
  call void @e(i32 noundef %5, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %6 = call i32 @gs_moveto(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %7 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00) #11
  %8 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef 1.000000e+00, double noundef 1.000000e+00) #11
  %9 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef 1.000000e+00, double noundef 0.000000e+00) #11
  %10 = call i32 @gs_closepath(%struct.gs_state_s* noundef %0) #11
  %11 = call i32 @gs_setgray(%struct.gs_state_s* noundef %0, double noundef 9.000000e-01) #11
  %12 = call i32 @gs_setgray(%struct.gs_state_s* noundef %0, double noundef 4.000000e-01) #11
  %13 = getelementptr inbounds i32, i32* %1, i64 1
  %14 = load i32, i32* %13, align 4
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %22, label %15

15:                                               ; preds = %2
  %16 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %16, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %17 = call i32 @gs_moveto(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  call void @e(i32 noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %18 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef 1.000000e+00, double noundef 3.000000e+00) #11
  call void @e(i32 noundef %18, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0))
  %19 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef 3.000000e+00, double noundef 1.000000e+00) #11
  call void @e(i32 noundef %19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0))
  %20 = call i32 @gs_closepath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %20, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  %21 = call i32 @gs_clip(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0))
  br label %22

22:                                               ; preds = %15, %2
  %23 = load i32, i32* %1, align 4
  %24 = sitofp i32 %23 to float
  %25 = fpext float %24 to double
  %26 = call i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %25) #11
  call void @e(i32 noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  call void @gs_make_identity(%struct.gs_matrix_s* noundef nonnull %3) #11
  %27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i64 0, i32 0
  store float 2.400000e+01, float* %27, align 8
  %28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i64 0, i32 6
  store float -2.300000e+01, float* %28, align 8
  %29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %3, i64 0, i32 10
  store float 2.300000e+01, float* %29, align 8
  store i32 0, i32* @ii, align 4
  %30 = call i32 @gs_imagemask(%struct.gs_state_s* noundef %0, i32 noundef 24, i32 noundef 23, i32 noundef 1, %struct.gs_matrix_s* noundef nonnull %3, i8* noundef bitcast (i32 (i8**, i32*)* @i6proc to i8*)) #11
  call void @e(i32 noundef %30, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0))
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test99(%struct.gs_state_s* noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* %1, align 4
  %4 = sitofp i32 %3 to float
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %2
  %.01 = phi float [ 3.000000e+01, %6 ], [ %4, %2 ]
  %8 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef 2.880000e+02, double noundef 3.600000e+02) #11
  %9 = call i32 @gs_scale(%struct.gs_state_s* noundef %0, double noundef 2.520000e+02, double noundef 2.520000e+02) #11
  %10 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %0, double noundef 1.000000e-01) #11
  br label %11

11:                                               ; preds = %13, %7
  %.0 = phi float [ 0.000000e+00, %7 ], [ %19, %13 ]
  %12 = fcmp olt float %.0, 3.600000e+02
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = call i32 @gs_moveto(%struct.gs_state_s* noundef %0, double noundef 2.500000e-01, double noundef 0.000000e+00) #11
  %15 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef 1.000000e+00, double noundef 0.000000e+00) #11
  %16 = call i32 @gs_stroke(%struct.gs_state_s* noundef %0) #11
  %17 = fpext float %.01 to double
  %18 = call i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %17) #11
  %19 = fadd float %.0, %.01
  br label %11, !llvm.loop !9

20:                                               ; preds = %11
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test100(%struct.gs_state_s* noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* %1, align 4
  %4 = icmp sgt i32 %3, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  br label %8

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ 2, %7 ]
  %10 = sitofp i32 %9 to double
  %11 = fdiv double 3.600000e+02, %10
  %12 = fptrunc double %11 to float
  %13 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef 3.060000e+02, double noundef 3.960000e+02) #11
  call void @e(i32 noundef %13, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %14 = call i32 @gs_scale(%struct.gs_state_s* noundef %0, double noundef 2.520000e+02, double noundef 2.520000e+02) #11
  call void @e(i32 noundef %14, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %15 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00) #11
  call void @e(i32 noundef %15, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  br label %16

16:                                               ; preds = %36, %8
  %.01 = phi i32 [ 1, %8 ], [ %37, %36 ]
  %17 = sdiv i32 %9, 2
  %.not = icmp sgt i32 %.01, %17
  br i1 %.not, label %38, label %18

18:                                               ; preds = %16
  %19 = sitofp i32 %.01 to float
  %20 = fmul float %12, %19
  %21 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %21, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %22

22:                                               ; preds = %32, %18
  %.0 = phi i32 [ 0, %18 ], [ %33, %32 ]
  %23 = icmp slt i32 %.0, %9
  br i1 %23, label %24, label %34

24:                                               ; preds = %22
  %25 = call i32 @gs_moveto(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00) #11
  call void @e(i32 noundef %25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %26 = fpext float %20 to double
  %27 = call i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %26) #11
  call void @e(i32 noundef %27, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %28 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00) #11
  call void @e(i32 noundef %28, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %29 = fsub float %12, %20
  %30 = fpext float %29 to double
  %31 = call i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %30) #11
  call void @e(i32 noundef %31, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %32

32:                                               ; preds = %24
  %33 = add nuw nsw i32 %.0, 1
  br label %22, !llvm.loop !10

34:                                               ; preds = %22
  %35 = call i32 @gs_stroke(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %35, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34
  %37 = add nuw nsw i32 %.01, 1
  br label %16, !llvm.loop !11

38:                                               ; preds = %16
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test101(%struct.gs_state_s* noundef %0, i32* nocapture noundef readnone %1) #0 {
  br label %3

3:                                                ; preds = %40, %2
  %.02 = phi i32 [ 0, %2 ], [ %41, %40 ]
  %4 = icmp ult i32 %.02, 5
  br i1 %4, label %5, label %42

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %37, %5
  %.01 = phi i32 [ 0, %5 ], [ %38, %37 ]
  %7 = icmp ult i32 %.01, 5
  br i1 %7, label %8, label %39

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %34, %8
  %.0 = phi i32 [ 0, %8 ], [ %35, %34 ]
  %10 = icmp ult i32 %.0, 5
  br i1 %10, label %11, label %36

11:                                               ; preds = %9
  %12 = sitofp i32 %.02 to double
  %13 = fmul double %12, 2.500000e-01
  %14 = sitofp i32 %.01 to double
  %15 = fmul double %14, 2.500000e-01
  %16 = sitofp i32 %.0 to double
  %17 = fmul double %16, 2.500000e-01
  %18 = call i32 @gs_setrgbcolor(%struct.gs_state_s* noundef %0, double noundef %13, double noundef %15, double noundef %17) #11
  call void @e(i32 noundef %18, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %19 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  %20 = mul nsw i32 %.01, 5
  %21 = add nuw nsw i32 %20, %.0
  %22 = sitofp i32 %21 to double
  %23 = fadd double %22, 1.000000e-01
  %24 = fmul double %23, 3.600000e+01
  %25 = sitofp i32 %.02 to double
  %26 = fadd double %25, 1.000000e-01
  %27 = fmul double %26, 3.600000e+01
  %28 = call i32 @gs_moveto(%struct.gs_state_s* noundef %0, double noundef %24, double noundef %27) #11
  %29 = call i32 @gs_rlineto(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef 3.600000e+01) #11
  %30 = call i32 @gs_rlineto(%struct.gs_state_s* noundef %0, double noundef 3.600000e+01, double noundef 0.000000e+00) #11
  %31 = call i32 @gs_rlineto(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef -3.600000e+01) #11
  %32 = call i32 @gs_closepath(%struct.gs_state_s* noundef %0) #11
  %33 = call i32 @gs_fill(%struct.gs_state_s* noundef %0) #11
  br label %34

34:                                               ; preds = %11
  %35 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !12

36:                                               ; preds = %9
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !13

39:                                               ; preds = %6
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.02, 1
  br label %3, !llvm.loop !14

42:                                               ; preds = %3
  ret i32 undef
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @ze(i8* noundef readnone %0, i8* noundef %1) #0 {
  %3 = load i32, i32* @show_all, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) %1)
  br label %5

5:                                                ; preds = %4, %2
  %6 = icmp eq i8* %0, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = load i32, i32* @code, align 4
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i32 noundef %8, i8* noundef %1) #11
  call void @exit(i32 noundef 1) #12
  unreachable

10:                                               ; preds = %5
  ret void
}

declare dso_local %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* noundef, void (i8*, i32, i32, i8*)* noundef) #2

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local void @gs_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @e(i32 noundef %0, i8* noundef %1) #0 {
  %3 = load i32, i32* @show_all, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) %1)
  br label %5

5:                                                ; preds = %4, %2
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), i32 noundef %0, i8* noundef %1) #11
  call void @exit(i32 noundef 1) #12
  unreachable

9:                                                ; preds = %5
  ret void
}

declare dso_local i32 @gs_setdevice(%struct.gs_state_s* noundef, %struct.gx_device_s* noundef) #2

declare dso_local %struct.gx_device_s* @gs_getdevice(i32 noundef) #2

declare dso_local i32 @gx_device_no_output(...) #2

declare dso_local i32 @gs_setscreen(%struct.gs_state_s* noundef, double noundef, double noundef, float (double, double)* noundef) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local float @htproc(double noundef %0, double noundef %1) #4 {
  %3 = fmul double %1, %1
  %4 = call double @llvm.fmuladd.f64(double %0, double %0, double %3)
  %5 = fsub double 1.000000e+00, %4
  %6 = fptrunc double %5 to float
  ret float %6
}

declare dso_local i32 @gs_initgraphics(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_erasepage(%struct.gs_state_s* noundef) #2

declare dso_local void @gs_make_identity(%struct.gs_matrix_s* noundef) #2

declare dso_local i32 @gs_setmatrix(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #2

declare dso_local i32 @gs_gsave(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_copypage(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_grestore(%struct.gs_state_s* noundef) #2

declare dso_local i32 @getchar() #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #6

declare dso_local i32 @gs_translate(%struct.gs_state_s* noundef, double noundef, double noundef) #2

declare dso_local i32 @gs_scale(%struct.gs_state_s* noundef, double noundef, double noundef) #2

declare dso_local i32 @gs_setlinewidth(%struct.gs_state_s* noundef, double noundef) #2

declare dso_local i32 @gs_moveto(%struct.gs_state_s* noundef, double noundef, double noundef) #2

declare dso_local i32 @gs_lineto(%struct.gs_state_s* noundef, double noundef, double noundef) #2

declare dso_local i32 @gs_stroke(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_rotate(%struct.gs_state_s* noundef, double noundef) #2

declare dso_local i32 @gs_newpath(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_setrgbcolor(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef) #2

declare dso_local i32 @gs_rlineto(%struct.gs_state_s* noundef, double noundef, double noundef) #2

declare dso_local i32 @gs_closepath(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_fill(%struct.gs_state_s* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @wedge(%struct.gs_state_s* noundef %0, double noundef %1) #0 {
  %3 = fmul double %1, 0x400921FB54442D18
  %4 = fdiv double %3, 1.800000e+02
  %5 = call double @sin(double noundef %4) #11
  %6 = fptrunc double %5 to float
  %7 = call i32 @gs_moveto(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  call void @e(i32 noundef %7, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %8 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef 1.000000e+00, double noundef 0.000000e+00) #11
  call void @e(i32 noundef %8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  %9 = fptrunc double %1 to float
  %10 = fpext float %9 to double
  %11 = call i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %10) #11
  call void @e(i32 noundef %11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %12 = fpext float %6 to double
  %13 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef %12) #11
  call void @e(i32 noundef %13, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0))
  %14 = fpext float %6 to double
  %15 = call i32 @gs_arc(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %14, double noundef -9.000000e+01, double noundef 9.000000e+01) #11
  call void @e(i32 noundef %15, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %16 = call i32 @gs_closepath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %16, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  ret void
}

declare dso_local i32 @gs_setgray(%struct.gs_state_s* noundef, double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #6

declare dso_local i32 @gs_arc(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @centersquare(%struct.gs_state_s* noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %1, 0
  %3 = select i1 %.not, float -5.000000e-01, float 5.000000e-01
  %4 = call i32 @gs_newpath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %5 = call i32 @gs_moveto(%struct.gs_state_s* noundef %0, double noundef 5.000000e-01, double noundef 5.000000e-01) #11
  call void @e(i32 noundef %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %6 = fpext float %3 to double
  %7 = fneg float %3
  %8 = fpext float %7 to double
  %9 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef %6, double noundef %8) #11
  call void @e(i32 noundef %9, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0))
  %10 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef -5.000000e-01, double noundef -5.000000e-01) #11
  call void @e(i32 noundef %10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0))
  %11 = fneg float %3
  %12 = fpext float %11 to double
  %13 = fpext float %3 to double
  %14 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef %12, double noundef %13) #11
  call void @e(i32 noundef %14, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0))
  %15 = call i32 @gs_closepath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %15, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  ret void
}

declare dso_local i32 @gs_currentmatrix(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ellipse(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.gs_matrix_s, align 8
  %9 = call i32 @gs_currentmatrix(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %8) #11
  call void @e(i32 noundef %9, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  %10 = sitofp i32 %1 to float
  %11 = fpext float %10 to double
  %12 = sitofp i32 %2 to float
  %13 = fpext float %12 to double
  %14 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef %11, double noundef %13) #11
  call void @e(i32 noundef %14, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %15 = sitofp i32 %3 to float
  %16 = fpext float %15 to double
  %17 = sitofp i32 %4 to float
  %18 = fpext float %17 to double
  %19 = call i32 @gs_scale(%struct.gs_state_s* noundef %0, double noundef %16, double noundef %18) #11
  call void @e(i32 noundef %19, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %20 = sitofp i32 %5 to float
  %21 = fpext float %20 to double
  %22 = sitofp i32 %6 to float
  %23 = fpext float %22 to double
  %24 = call i32 @gs_arc(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %21, double noundef %23) #11
  call void @e(i32 noundef %24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %25 = call i32 @gs_setmatrix(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %8) #11
  call void @e(i32 noundef %25, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @arrow(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, double noundef %7) #0 {
  %9 = alloca %struct.gs_matrix_s, align 8
  %10 = sitofp i32 %5 to float
  %11 = fmul float %10, 5.000000e-01
  %12 = sitofp i32 %6 to float
  %13 = fmul float %12, 5.000000e-01
  %14 = sub nsw i32 %3, %1
  %15 = sitofp i32 %14 to float
  %16 = sub nsw i32 %4, %2
  %17 = sitofp i32 %16 to float
  %18 = fmul float %17, %17
  %19 = call float @llvm.fmuladd.f32(float %15, float %15, float %18)
  %sqrtf = call float @sqrtf(float noundef %19) #6
  %20 = fpext float %17 to double
  %21 = fpext float %15 to double
  %22 = call double @atan2(double noundef %20, double noundef %21) #11
  %23 = fmul double %22, 0x404CA5DC1A63C1F8
  %24 = fptrunc double %23 to float
  %25 = fpext float %sqrtf to double
  %26 = fsub double %25, %7
  %27 = fptrunc double %26 to float
  %28 = call i32 @gs_currentmatrix(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %9) #11
  call void @e(i32 noundef %28, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  %29 = sitofp i32 %1 to float
  %30 = fpext float %29 to double
  %31 = sitofp i32 %2 to float
  %32 = fpext float %31 to double
  %33 = call i32 @gs_translate(%struct.gs_state_s* noundef %0, double noundef %30, double noundef %32) #11
  call void @e(i32 noundef %33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %34 = fpext float %24 to double
  %35 = call i32 @gs_rotate(%struct.gs_state_s* noundef %0, double noundef %34) #11
  call void @e(i32 noundef %35, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %36 = fneg float %11
  %37 = fpext float %36 to double
  %38 = call i32 @gs_moveto(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef %37) #11
  call void @e(i32 noundef %38, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %39 = fpext float %27 to double
  %40 = fneg float %11
  %41 = fpext float %40 to double
  %42 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef %39, double noundef %41) #11
  call void @e(i32 noundef %42, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0))
  %43 = fpext float %27 to double
  %44 = fneg float %13
  %45 = fpext float %44 to double
  %46 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef %43, double noundef %45) #11
  call void @e(i32 noundef %46, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0))
  %47 = fpext float %sqrtf to double
  %48 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef %47, double noundef 0.000000e+00) #11
  call void @e(i32 noundef %48, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0))
  %49 = fpext float %27 to double
  %50 = fpext float %13 to double
  %51 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef %49, double noundef %50) #11
  call void @e(i32 noundef %51, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0))
  %52 = fpext float %27 to double
  %53 = fpext float %11 to double
  %54 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef %52, double noundef %53) #11
  call void @e(i32 noundef %54, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0))
  %55 = fpext float %11 to double
  %56 = call i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef 0.000000e+00, double noundef %55) #11
  call void @e(i32 noundef %56, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0))
  %57 = call i32 @gs_closepath(%struct.gs_state_s* noundef %0) #11
  call void @e(i32 noundef %57, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  %58 = call i32 @gs_setmatrix(%struct.gs_state_s* noundef %0, %struct.gs_matrix_s* noundef nonnull %9) #11
  call void @e(i32 noundef %58, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #6

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nounwind
declare dso_local double @atan2(double noundef, double noundef) #6

declare dso_local i32 @gs_clip(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_imagemask(%struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef, i8* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @i6proc(i8** nocapture noundef writeonly %0, i32* nocapture noundef writeonly %1) #8 {
  %3 = load i32, i32* @ii, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @ii, align 4
  %5 = mul nsw i32 %3, 23
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [69 x i8], [69 x i8]* @i6data, i64 0, i64 %6
  store i8* %7, i8** %0, align 8
  store i32 23, i32* %1, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @get_time() #0 {
  %1 = alloca [2 x i64], align 16
  %2 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 0
  %3 = call i32 (i64*, ...) bitcast (i32 (...)* @gs_get_clock to i32 (i64*, ...)*)(i64* noundef nonnull %2) #11
  %4 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 0
  %5 = load i64, i64* %4, align 16
  %6 = mul nsw i64 %5, 86400000
  %7 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 1
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %6, %8
  ret i64 %9
}

declare dso_local i32 @gs_get_clock(...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

declare float @sqrtf(float)

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
