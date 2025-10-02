; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gt.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_bitmap_s = type opaque

@params = internal global [2 x i32] zeroinitializer, align 4
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i8**, i8*** %5, align 8
  %8 = call i32 @real_main(i32 noundef %6, i8** noundef %7)
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @real_main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32 (%struct.gs_state_s*, i32*)*, align 8
  %7 = alloca %struct.gs_state_s*, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.gs_matrix_s, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store float 0x3FDC486760000000, float* %8, align 4
  call void @llvm.memset.p0i8.i64(i8* align 4 bitcast ([2 x i32]* @params to i8*), i8 0, i64 8, i1 false)
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 (i32, i8**, i8*, i32 (i8, i8*)*, void (i8*, i32)*, ...) bitcast (i32 (...)* @gs_main to i32 (i32, i8**, i8*, i32 (i8, i8*)*, void (i8*, i32)*, ...)*)(i32 noundef %13, i8** noundef %14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 (i8, i8*)* noundef @swproc, void (i8*, i32)* noundef @argproc)
  %16 = load i32, i32* @testn, align 4
  switch i32 %16, label %25 [
    i32 1, label %17
    i32 2, label %18
    i32 3, label %19
    i32 4, label %20
    i32 6, label %21
    i32 99, label %22
    i32 100, label %23
    i32 101, label %24
  ]

17:                                               ; preds = %2
  store i32 (%struct.gs_state_s*, i32*)* @test1, i32 (%struct.gs_state_s*, i32*)** %6, align 8
  br label %28

18:                                               ; preds = %2
  store i32 (%struct.gs_state_s*, i32*)* @test2, i32 (%struct.gs_state_s*, i32*)** %6, align 8
  br label %28

19:                                               ; preds = %2
  store i32 (%struct.gs_state_s*, i32*)* @test3, i32 (%struct.gs_state_s*, i32*)** %6, align 8
  br label %28

20:                                               ; preds = %2
  store i32 (%struct.gs_state_s*, i32*)* @test4, i32 (%struct.gs_state_s*, i32*)** %6, align 8
  br label %28

21:                                               ; preds = %2
  store i32 (%struct.gs_state_s*, i32*)* @test6, i32 (%struct.gs_state_s*, i32*)** %6, align 8
  br label %28

22:                                               ; preds = %2
  store i32 (%struct.gs_state_s*, i32*)* @test99, i32 (%struct.gs_state_s*, i32*)** %6, align 8
  br label %28

23:                                               ; preds = %2
  store i32 (%struct.gs_state_s*, i32*)* @test100, i32 (%struct.gs_state_s*, i32*)** %6, align 8
  br label %28

24:                                               ; preds = %2
  store i32 (%struct.gs_state_s*, i32*)* @test101, i32 (%struct.gs_state_s*, i32*)** %6, align 8
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @testn, align 4
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef %26)
  call void @exit(i32 noundef 1) #7
  unreachable

28:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17
  %29 = call %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* noundef @gs_malloc, void (i8*, i32, i32, i8*)* noundef @gs_free)
  store %struct.gs_state_s* %29, %struct.gs_state_s** %7, align 8
  %30 = bitcast %struct.gs_state_s* %29 to i8*
  call void @ze(i8* noundef %30, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %32 = call %struct.gx_device_s* @gs_getdevice(i32 noundef 0)
  %33 = call i32 @gs_setdevice(%struct.gs_state_s* noundef %31, %struct.gx_device_s* noundef %32)
  call void @e(i32 noundef %33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @use_null, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %38 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_device_no_output to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %41 = call i32 @gs_setscreen(%struct.gs_state_s* noundef %40, double noundef 1.000000e+01, double noundef 4.500000e+01, float (double, double)* noundef @htproc)
  call void @e(i32 noundef %41, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %43 = call i32 @gs_initgraphics(%struct.gs_state_s* noundef %42)
  call void @e(i32 noundef %43, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %45 = call i32 @gs_erasepage(%struct.gs_state_s* noundef %44)
  call void @e(i32 noundef %45, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  call void @gs_make_identity(%struct.gs_matrix_s* noundef %9)
  %46 = load float, float* %8, align 4
  %47 = fmul float %46, 4.800000e+01
  %48 = fdiv float %47, 3.500000e+01
  %49 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 0
  store float %48, float* %49, align 8
  %50 = load float, float* %8, align 4
  %51 = fneg float %50
  %52 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 6
  store float %51, float* %52, align 8
  %53 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 10
  store float 3.500000e+02, float* %53, align 8
  %54 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %55 = call i32 @gs_setmatrix(%struct.gs_state_s* noundef %54, %struct.gs_matrix_s* noundef %9)
  call void @e(i32 noundef %55, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i32, i32* @repeat, align 4
  store i32 %56, i32* %12, align 4
  %57 = call i64 @get_time()
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %68, %39
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %60 = call i32 @gs_gsave(%struct.gs_state_s* noundef %59)
  call void @e(i32 noundef %60, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %61 = load i32 (%struct.gs_state_s*, i32*)*, i32 (%struct.gs_state_s*, i32*)** %6, align 8
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %63 = call i32 %61(%struct.gs_state_s* noundef %62, i32* noundef getelementptr inbounds ([2 x i32], [2 x i32]* @params, i64 0, i64 0))
  %64 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %65 = call i32 @gs_copypage(%struct.gs_state_s* noundef %64)
  %66 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %67 = call i32 @gs_grestore(%struct.gs_state_s* noundef %66)
  call void @e(i32 noundef %67, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %58, label %72, !llvm.loop !4

72:                                               ; preds = %68
  %73 = call i64 @get_time()
  %74 = load i64, i64* %10, align 8
  %75 = sub nsw i64 %73, %74
  store i64 %75, i64* %11, align 8
  %76 = load i32, i32* @repeat, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i64, i64* %11, align 8
  %80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 noundef %79)
  br label %89

81:                                               ; preds = %72
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* @repeat, align 4
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* @repeat, align 4
  %86 = sext i32 %85 to i64
  %87 = sdiv i64 %84, %86
  %88 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64 noundef %82, i32 noundef %83, i64 noundef %87)
  br label %89

89:                                               ; preds = %81, %78
  %90 = call i32 @getchar()
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @gs_main(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @swproc(i8 noundef signext %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %8 [
    i32 65, label %9
    i32 78, label %10
    i32 82, label %11
  ]

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

9:                                                ; preds = %2
  store i32 1, i32* @show_all, align 4
  br label %19

10:                                               ; preds = %2
  store i32 1, i32* @use_null, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* noundef @repeat) #8
  %14 = load i32, i32* @repeat, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  call void @exit(i32 noundef 1) #7
  unreachable

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %10, %9
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @argproc(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %8, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* noundef @testn) #8
  br label %23

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* @params, i64 0, i64 %17
  %19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %14, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* noundef %18) #8
  br label %22

20:                                               ; preds = %10
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 noundef 1) #7
  unreachable

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(%struct.gs_state_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @abs(i32 noundef %14) #9
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 3, i32* %7, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @abs(i32 noundef %19) #9
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi i32 [ 3, %17 ], [ %20, %18 ]
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sitofp i32 %23 to double
  %25 = fdiv double 3.600000e+02, %24
  %26 = fptrunc double %25 to float
  store float %26, float* %9, align 4
  %27 = load float, float* %9, align 4
  %28 = fdiv float %27, 2.000000e+00
  store float %28, float* %10, align 4
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %30 = call i32 @gs_gsave(%struct.gs_state_s* noundef %29)
  call void @e(i32 noundef %30, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %32 = call i32 @gs_translate(%struct.gs_state_s* noundef %31, double noundef 2.700000e+02, double noundef 5.220000e+02)
  call void @e(i32 noundef %32, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %34 = call i32 @gs_scale(%struct.gs_state_s* noundef %33, double noundef 7.200000e+01, double noundef 7.200000e+01)
  call void @e(i32 noundef %34, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %36 = load float, float* %10, align 4
  %37 = fpext float %36 to double
  call void @wedge(%struct.gs_state_s* noundef %35, double noundef %37)
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %39 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %38, double noundef 2.000000e-02)
  call void @e(i32 noundef %39, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %41 = call i32 @gs_stroke(%struct.gs_state_s* noundef %40)
  call void @e(i32 noundef %41, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %43 = call i32 @gs_grestore(%struct.gs_state_s* noundef %42)
  call void @e(i32 noundef %43, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %45 = call i32 @gs_gsave(%struct.gs_state_s* noundef %44)
  call void @e(i32 noundef %45, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %46 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %47 = call i32 @gs_translate(%struct.gs_state_s* noundef %46, double noundef 3.060000e+02, double noundef 3.060000e+02)
  %48 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %49 = call i32 @gs_scale(%struct.gs_state_s* noundef %48, double noundef 1.260000e+02, double noundef 1.260000e+02)
  %50 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %51 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %50, double noundef 2.000000e-02)
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %99, %21
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %102

56:                                               ; preds = %52
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sitofp i32 %58 to float
  %60 = load i32, i32* %7, align 4
  %61 = sitofp i32 %60 to float
  %62 = fdiv float %59, %61
  %63 = fpext float %62 to double
  %64 = call i32 @gs_setgray(%struct.gs_state_s* noundef %57, double noundef %63)
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %69 = load float, float* %9, align 4
  %70 = fneg float %69
  %71 = fpext float %70 to double
  %72 = call i32 @gs_rotate(%struct.gs_state_s* noundef %68, double noundef %71)
  br label %73

73:                                               ; preds = %67, %56
  %74 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %75 = call i32 @gs_gsave(%struct.gs_state_s* noundef %74)
  call void @e(i32 noundef %75, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %76 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %77 = load float, float* %10, align 4
  %78 = fpext float %77 to double
  call void @wedge(%struct.gs_state_s* noundef %76, double noundef %78)
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %80 = call i32 @gs_gsave(%struct.gs_state_s* noundef %79)
  call void @e(i32 noundef %80, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  %81 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %82 = call i32 @gs_fill(%struct.gs_state_s* noundef %81)
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %84 = call i32 @gs_grestore(%struct.gs_state_s* noundef %83)
  call void @e(i32 noundef %84, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  %85 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %86 = call i32 @gs_setgray(%struct.gs_state_s* noundef %85, double noundef 0.000000e+00)
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %88 = call i32 @gs_stroke(%struct.gs_state_s* noundef %87)
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %90 = call i32 @gs_grestore(%struct.gs_state_s* noundef %89)
  call void @e(i32 noundef %90, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  %91 = load i32, i32* %7, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %73
  %94 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %95 = load float, float* %9, align 4
  %96 = fpext float %95 to double
  %97 = call i32 @gs_rotate(%struct.gs_state_s* noundef %94, double noundef %96)
  br label %98

98:                                               ; preds = %93, %73
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %52, !llvm.loop !6

102:                                              ; preds = %52
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %104 = call i32 @gs_grestore(%struct.gs_state_s* noundef %103)
  call void @e(i32 noundef %104, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(%struct.gs_state_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gs_matrix_s, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to float
  store float %13, float* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %18 = call i32 @gs_gsave(%struct.gs_state_s* noundef %17)
  call void @e(i32 noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0))
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %20 = call i32 @gs_translate(%struct.gs_state_s* noundef %19, double noundef 1.800000e+02, double noundef 4.320000e+02)
  call void @e(i32 noundef %20, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %22 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %21, double noundef 6.250000e-02)
  call void @e(i32 noundef %22, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0))
  %23 = load float, float* %8, align 4
  %24 = fcmp une float %23, 0.000000e+00
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %27 = load float, float* %8, align 4
  %28 = fpext float %27 to double
  %29 = call i32 @gs_rotate(%struct.gs_state_s* noundef %26, double noundef %28)
  call void @e(i32 noundef %29, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %2
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp sle i32 %32, 5
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %36 = call i32 @gs_gsave(%struct.gs_state_s* noundef %35)
  call void @e(i32 noundef %36, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %37 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sitofp i32 %38 to float
  %40 = fmul float %39, 3.600000e+01
  %41 = fpext float %40 to double
  %42 = load i32, i32* %7, align 4
  %43 = sitofp i32 %42 to float
  %44 = fmul float %43, 3.600000e+01
  %45 = fpext float %44 to double
  %46 = call i32 @gs_scale(%struct.gs_state_s* noundef %37, double noundef %41, double noundef %45)
  call void @e(i32 noundef %46, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0))
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %48 = load i32, i32* %9, align 4
  call void @centersquare(%struct.gs_state_s* noundef %47, i32 noundef %48)
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %50 = call i32 @gs_stroke(%struct.gs_state_s* noundef %49)
  call void @e(i32 noundef %50, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %52 = call i32 @gs_grestore(%struct.gs_state_s* noundef %51)
  call void @e(i32 noundef %52, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  br label %53

53:                                               ; preds = %34
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %31, !llvm.loop !7

56:                                               ; preds = %31
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %58 = call i32 @gs_grestore(%struct.gs_state_s* noundef %57)
  call void @e(i32 noundef %58, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %60 = call i32 @gs_gsave(%struct.gs_state_s* noundef %59)
  call void @e(i32 noundef %60, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %61 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %62 = call i32 @gs_translate(%struct.gs_state_s* noundef %61, double noundef 4.320000e+02, double noundef 4.320000e+02)
  call void @e(i32 noundef %62, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0))
  %63 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %64 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %63, double noundef 1.000000e+00)
  call void @e(i32 noundef %64, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0))
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %66 = call i32 @gs_currentmatrix(%struct.gs_state_s* noundef %65, %struct.gs_matrix_s* noundef %6)
  call void @e(i32 noundef %66, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %91, %56
  %68 = load i32, i32* %7, align 4
  %69 = icmp sle i32 %68, 5
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %72 = call i32 @gs_gsave(%struct.gs_state_s* noundef %71)
  call void @e(i32 noundef %72, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  %73 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sitofp i32 %74 to float
  %76 = fmul float %75, 3.600000e+01
  %77 = fpext float %76 to double
  %78 = load i32, i32* %7, align 4
  %79 = sitofp i32 %78 to float
  %80 = fmul float %79, 3.600000e+01
  %81 = fpext float %80 to double
  %82 = call i32 @gs_scale(%struct.gs_state_s* noundef %73, double noundef %77, double noundef %81)
  call void @e(i32 noundef %82, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0))
  %83 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %84 = load i32, i32* %9, align 4
  call void @centersquare(%struct.gs_state_s* noundef %83, i32 noundef %84)
  %85 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %86 = call i32 @gs_setmatrix(%struct.gs_state_s* noundef %85, %struct.gs_matrix_s* noundef %6)
  call void @e(i32 noundef %86, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %87 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %88 = call i32 @gs_stroke(%struct.gs_state_s* noundef %87)
  call void @e(i32 noundef %88, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0))
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %90 = call i32 @gs_grestore(%struct.gs_state_s* noundef %89)
  call void @e(i32 noundef %90, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  br label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %67, !llvm.loop !8

94:                                               ; preds = %67
  %95 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %96 = call i32 @gs_grestore(%struct.gs_state_s* noundef %95)
  call void @e(i32 noundef %96, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3(%struct.gs_state_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i32*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %7 = call i32 @gs_newpath(%struct.gs_state_s* noundef %6)
  call void @e(i32 noundef %7, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0))
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  call void @ellipse(%struct.gs_state_s* noundef %8, i32 noundef 144, i32 noundef 400, i32 noundef 72, i32 noundef 144, i32 noundef 0, i32 noundef 360)
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %10 = call i32 @gs_stroke(%struct.gs_state_s* noundef %9)
  call void @e(i32 noundef %10, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %12 = call i32 @gs_newpath(%struct.gs_state_s* noundef %11)
  call void @e(i32 noundef %12, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  call void @ellipse(%struct.gs_state_s* noundef %13, i32 noundef 400, i32 noundef 400, i32 noundef 144, i32 noundef 36, i32 noundef 0, i32 noundef 360)
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %15 = call i32 @gs_fill(%struct.gs_state_s* noundef %14)
  call void @e(i32 noundef %15, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0))
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %17 = call i32 @gs_newpath(%struct.gs_state_s* noundef %16)
  call void @e(i32 noundef %17, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  call void @ellipse(%struct.gs_state_s* noundef %18, i32 noundef 300, i32 noundef 180, i32 noundef 144, i32 noundef 72, i32 noundef 30, i32 noundef 150)
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %20 = call i32 @gs_stroke(%struct.gs_state_s* noundef %19)
  call void @e(i32 noundef %20, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0))
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %22 = call i32 @gs_newpath(%struct.gs_state_s* noundef %21)
  call void @e(i32 noundef %22, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0))
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  call void @ellipse(%struct.gs_state_s* noundef %23, i32 noundef 480, i32 noundef 150, i32 noundef 30, i32 noundef 50, i32 noundef 270, i32 noundef 90)
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %25 = call i32 @gs_fill(%struct.gs_state_s* noundef %24)
  call void @e(i32 noundef %25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0))
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4(%struct.gs_state_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i32*, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %7 = call i32 @gs_newpath(%struct.gs_state_s* noundef %6)
  call void @e(i32 noundef %7, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0))
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  call void @arrow(%struct.gs_state_s* noundef %8, i32 noundef 318, i32 noundef 340, i32 noundef 72, i32 noundef 340, i32 noundef 10, i32 noundef 30, double noundef 7.200000e+01)
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %10 = call i32 @gs_fill(%struct.gs_state_s* noundef %9)
  call void @e(i32 noundef %10, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0))
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %12 = call i32 @gs_newpath(%struct.gs_state_s* noundef %11)
  call void @e(i32 noundef %12, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0))
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  call void @arrow(%struct.gs_state_s* noundef %13, i32 noundef 382, i32 noundef 400, i32 noundef 542, i32 noundef 560, i32 noundef 72, i32 noundef 232, double noundef 1.160000e+02)
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %15 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %14, double noundef 3.000000e+00)
  call void @e(i32 noundef %15, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %17 = call i32 @gs_stroke(%struct.gs_state_s* noundef %16)
  call void @e(i32 noundef %17, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %19 = call i32 @gs_newpath(%struct.gs_state_s* noundef %18)
  call void @e(i32 noundef %19, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i64 0, i64 0))
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  call void @arrow(%struct.gs_state_s* noundef %20, i32 noundef 400, i32 noundef 300, i32 noundef 400, i32 noundef 90, i32 noundef 90, i32 noundef 200, double noundef 1.732000e+02)
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %22 = call i32 @gs_setgray(%struct.gs_state_s* noundef %21, double noundef 6.500000e-01)
  call void @e(i32 noundef %22, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0))
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %24 = call i32 @gs_fill(%struct.gs_state_s* noundef %23)
  call void @e(i32 noundef %24, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0))
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test6(%struct.gs_state_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gs_matrix_s, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %8 = call i32 @gs_translate(%struct.gs_state_s* noundef %7, double noundef 2.160000e+02, double noundef 2.880000e+02)
  call void @e(i32 noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %10 = call i32 @gs_scale(%struct.gs_state_s* noundef %9, double noundef 1.440000e+02, double noundef 1.440000e+02)
  call void @e(i32 noundef %10, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %12 = call i32 @gs_moveto(%struct.gs_state_s* noundef %11, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %14 = call i32 @gs_lineto(%struct.gs_state_s* noundef %13, double noundef 0.000000e+00, double noundef 1.000000e+00)
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %16 = call i32 @gs_lineto(%struct.gs_state_s* noundef %15, double noundef 1.000000e+00, double noundef 1.000000e+00)
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %18 = call i32 @gs_lineto(%struct.gs_state_s* noundef %17, double noundef 1.000000e+00, double noundef 0.000000e+00)
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %20 = call i32 @gs_closepath(%struct.gs_state_s* noundef %19)
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %22 = call i32 @gs_setgray(%struct.gs_state_s* noundef %21, double noundef 9.000000e-01)
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %24 = call i32 @gs_setgray(%struct.gs_state_s* noundef %23, double noundef 4.000000e-01)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %2
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %31 = call i32 @gs_newpath(%struct.gs_state_s* noundef %30)
  call void @e(i32 noundef %31, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %32 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %33 = call i32 @gs_moveto(%struct.gs_state_s* noundef %32, double noundef 0.000000e+00, double noundef 0.000000e+00)
  call void @e(i32 noundef %33, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %35 = call i32 @gs_lineto(%struct.gs_state_s* noundef %34, double noundef 1.000000e+00, double noundef 3.000000e+00)
  call void @e(i32 noundef %35, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i64 0, i64 0))
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %37 = call i32 @gs_lineto(%struct.gs_state_s* noundef %36, double noundef 3.000000e+00, double noundef 1.000000e+00)
  call void @e(i32 noundef %37, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i64 0, i64 0))
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %39 = call i32 @gs_closepath(%struct.gs_state_s* noundef %38)
  call void @e(i32 noundef %39, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %41 = call i32 @gs_clip(%struct.gs_state_s* noundef %40)
  call void @e(i32 noundef %41, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0))
  br label %42

42:                                               ; preds = %29, %2
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = sitofp i32 %46 to float
  %48 = fpext float %47 to double
  %49 = call i32 @gs_rotate(%struct.gs_state_s* noundef %43, double noundef %48)
  call void @e(i32 noundef %49, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  call void @gs_make_identity(%struct.gs_matrix_s* noundef %6)
  %50 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 0
  store float 2.400000e+01, float* %50, align 8
  %51 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 6
  store float -2.300000e+01, float* %51, align 8
  %52 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %6, i32 0, i32 10
  store float 2.300000e+01, float* %52, align 8
  store i32 0, i32* @ii, align 4
  %53 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %54 = call i32 @gs_imagemask(%struct.gs_state_s* noundef %53, i32 noundef 24, i32 noundef 23, i32 noundef 1, %struct.gs_matrix_s* noundef %6, i8* noundef bitcast (i32 (i8**, i32*)* @i6proc to i8*))
  call void @e(i32 noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0))
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test99(%struct.gs_state_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to float
  store float %12, float* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  %13 = load float, float* %7, align 4
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store float 3.000000e+01, float* %7, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %18 = call i32 @gs_translate(%struct.gs_state_s* noundef %17, double noundef 2.880000e+02, double noundef 3.600000e+02)
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %20 = call i32 @gs_scale(%struct.gs_state_s* noundef %19, double noundef 2.520000e+02, double noundef 2.520000e+02)
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %22 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %21, double noundef 1.000000e-01)
  br label %23

23:                                               ; preds = %26, %16
  %24 = load float, float* %8, align 4
  %25 = fcmp olt float %24, 3.600000e+02
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %28 = call i32 @gs_moveto(%struct.gs_state_s* noundef %27, double noundef 2.500000e-01, double noundef 0.000000e+00)
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %30 = call i32 @gs_lineto(%struct.gs_state_s* noundef %29, double noundef 1.000000e+00, double noundef 0.000000e+00)
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %32 = call i32 @gs_stroke(%struct.gs_state_s* noundef %31)
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %34 = load float, float* %7, align 4
  %35 = fpext float %34 to double
  %36 = call i32 @gs_rotate(%struct.gs_state_s* noundef %33, double noundef %35)
  %37 = load float, float* %7, align 4
  %38 = load float, float* %8, align 4
  %39 = fadd float %38, %37
  store float %39, float* %8, align 4
  br label %23, !llvm.loop !9

40:                                               ; preds = %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test100(%struct.gs_state_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 2, %19 ]
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sitofp i32 %22 to double
  %24 = fdiv double 3.600000e+02, %23
  %25 = fptrunc double %24 to float
  store float %25, float* %9, align 4
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %27 = call i32 @gs_translate(%struct.gs_state_s* noundef %26, double noundef 3.060000e+02, double noundef 3.960000e+02)
  call void @e(i32 noundef %27, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %29 = call i32 @gs_scale(%struct.gs_state_s* noundef %28, double noundef 2.520000e+02, double noundef 2.520000e+02)
  call void @e(i32 noundef %29, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %31 = call i32 @gs_setlinewidth(%struct.gs_state_s* noundef %30, double noundef 0.000000e+00)
  call void @e(i32 noundef %31, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %32

32:                                               ; preds = %69, %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sdiv i32 %34, 2
  %36 = icmp sle i32 %33, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load float, float* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sitofp i32 %39 to float
  %41 = fmul float %38, %40
  store float %41, float* %10, align 4
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %43 = call i32 @gs_newpath(%struct.gs_state_s* noundef %42)
  call void @e(i32 noundef %43, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %63, %37
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %50 = call i32 @gs_moveto(%struct.gs_state_s* noundef %49, double noundef 0.000000e+00, double noundef 1.000000e+00)
  call void @e(i32 noundef %50, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %51 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %52 = load float, float* %10, align 4
  %53 = fpext float %52 to double
  %54 = call i32 @gs_rotate(%struct.gs_state_s* noundef %51, double noundef %53)
  call void @e(i32 noundef %54, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %55 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %56 = call i32 @gs_lineto(%struct.gs_state_s* noundef %55, double noundef 0.000000e+00, double noundef 1.000000e+00)
  call void @e(i32 noundef %56, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %57 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %58 = load float, float* %9, align 4
  %59 = load float, float* %10, align 4
  %60 = fsub float %58, %59
  %61 = fpext float %60 to double
  %62 = call i32 @gs_rotate(%struct.gs_state_s* noundef %57, double noundef %61)
  call void @e(i32 noundef %62, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %44, !llvm.loop !10

66:                                               ; preds = %44
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %68 = call i32 @gs_stroke(%struct.gs_state_s* noundef %67)
  call void @e(i32 noundef %68, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %32, !llvm.loop !11

72:                                               ; preds = %32
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test101(%struct.gs_state_s* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_state_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %4, align 8
  store i32* %1, i32** %5, align 8
  store float 3.600000e+01, float* %9, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %77, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 4
  br i1 %12, label %13, label %80

13:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %73, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 4
  br i1 %16, label %17, label %76

17:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %69, %17
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 4
  br i1 %20, label %21, label %72

21:                                               ; preds = %18
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sitofp i32 %23 to double
  %25 = fmul double %24, 2.500000e-01
  %26 = load i32, i32* %7, align 4
  %27 = sitofp i32 %26 to double
  %28 = fmul double %27, 2.500000e-01
  %29 = load i32, i32* %8, align 4
  %30 = sitofp i32 %29 to double
  %31 = fmul double %30, 2.500000e-01
  %32 = call i32 @gs_setrgbcolor(%struct.gs_state_s* noundef %22, double noundef %25, double noundef %28, double noundef %31)
  call void @e(i32 noundef %32, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %33 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %34 = call i32 @gs_newpath(%struct.gs_state_s* noundef %33)
  %35 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 5
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %37, %38
  %40 = sitofp i32 %39 to double
  %41 = fadd double %40, 1.000000e-01
  %42 = load float, float* %9, align 4
  %43 = fpext float %42 to double
  %44 = fmul double %41, %43
  %45 = load i32, i32* %6, align 4
  %46 = sitofp i32 %45 to double
  %47 = fadd double %46, 1.000000e-01
  %48 = load float, float* %9, align 4
  %49 = fpext float %48 to double
  %50 = fmul double %47, %49
  %51 = call i32 @gs_moveto(%struct.gs_state_s* noundef %35, double noundef %44, double noundef %50)
  %52 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %53 = load float, float* %9, align 4
  %54 = fpext float %53 to double
  %55 = call i32 @gs_rlineto(%struct.gs_state_s* noundef %52, double noundef 0.000000e+00, double noundef %54)
  %56 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %57 = load float, float* %9, align 4
  %58 = fpext float %57 to double
  %59 = call i32 @gs_rlineto(%struct.gs_state_s* noundef %56, double noundef %58, double noundef 0.000000e+00)
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %61 = load float, float* %9, align 4
  %62 = fneg float %61
  %63 = fpext float %62 to double
  %64 = call i32 @gs_rlineto(%struct.gs_state_s* noundef %60, double noundef 0.000000e+00, double noundef %63)
  %65 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %66 = call i32 @gs_closepath(%struct.gs_state_s* noundef %65)
  %67 = load %struct.gs_state_s*, %struct.gs_state_s** %4, align 8
  %68 = call i32 @gs_fill(%struct.gs_state_s* noundef %67)
  br label %69

69:                                               ; preds = %21
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %18, !llvm.loop !12

72:                                               ; preds = %18
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %14, !llvm.loop !13

76:                                               ; preds = %14
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %10, !llvm.loop !14

80:                                               ; preds = %10
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @ze(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @show_all, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i8* noundef %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @code, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i32 noundef %14, i8* noundef %15)
  call void @exit(i32 noundef 1) #7
  unreachable

17:                                               ; preds = %10
  ret void
}

declare dso_local %struct.gs_state_s* @gs_state_alloc(i8* (i32, i32, i8*)* noundef, void (i8*, i32, i32, i8*)* noundef) #2

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local void @gs_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @e(i32 noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @show_all, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0), i8* noundef %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.68, i64 0, i64 0), i32 noundef %14, i8* noundef %15)
  call void @exit(i32 noundef 1) #7
  unreachable

17:                                               ; preds = %10
  ret void
}

declare dso_local i32 @gs_setdevice(%struct.gs_state_s* noundef, %struct.gx_device_s* noundef) #2

declare dso_local %struct.gx_device_s* @gs_getdevice(i32 noundef) #2

declare dso_local i32 @gx_device_no_output(...) #2

declare dso_local i32 @gs_setscreen(%struct.gs_state_s* noundef, double noundef, double noundef, float (double, double)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local float @htproc(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = load double, double* %4, align 8
  %8 = load double, double* %4, align 8
  %9 = fmul double %7, %8
  %10 = call double @llvm.fmuladd.f64(double %5, double %6, double %9)
  %11 = fsub double 1.000000e+00, %10
  %12 = fptrunc double %11 to float
  ret float %12
}

declare dso_local i32 @gs_initgraphics(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_erasepage(%struct.gs_state_s* noundef) #2

declare dso_local void @gs_make_identity(%struct.gs_matrix_s* noundef) #2

declare dso_local i32 @gs_setmatrix(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #2

declare dso_local i32 @gs_gsave(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_copypage(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_grestore(%struct.gs_state_s* noundef) #2

declare dso_local i32 @getchar() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #5

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

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @wedge(%struct.gs_state_s* noundef %0, double noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = fmul double %6, 0x400921FB54442D18
  %8 = fdiv double %7, 1.800000e+02
  %9 = call double @sin(double noundef %8) #8
  %10 = fptrunc double %9 to float
  store float %10, float* %5, align 4
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %12 = call i32 @gs_moveto(%struct.gs_state_s* noundef %11, double noundef 0.000000e+00, double noundef 0.000000e+00)
  call void @e(i32 noundef %12, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %14 = call i32 @gs_translate(%struct.gs_state_s* noundef %13, double noundef 1.000000e+00, double noundef 0.000000e+00)
  call void @e(i32 noundef %14, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0))
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %16 = load double, double* %4, align 8
  %17 = fptrunc double %16 to float
  %18 = fpext float %17 to double
  %19 = call i32 @gs_rotate(%struct.gs_state_s* noundef %15, double noundef %18)
  call void @e(i32 noundef %19, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %21 = load float, float* %5, align 4
  %22 = fpext float %21 to double
  %23 = call i32 @gs_translate(%struct.gs_state_s* noundef %20, double noundef 0.000000e+00, double noundef %22)
  call void @e(i32 noundef %23, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0))
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %25 = load float, float* %5, align 4
  %26 = fpext float %25 to double
  %27 = call i32 @gs_arc(%struct.gs_state_s* noundef %24, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %26, double noundef -9.000000e+01, double noundef 9.000000e+01)
  call void @e(i32 noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %28 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %29 = call i32 @gs_closepath(%struct.gs_state_s* noundef %28)
  call void @e(i32 noundef %29, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  ret void
}

declare dso_local i32 @gs_setgray(%struct.gs_state_s* noundef, double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #5

declare dso_local i32 @gs_arc(%struct.gs_state_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @centersquare(%struct.gs_state_s* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gs_state_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, double 5.000000e-01, double -5.000000e-01
  %10 = fptrunc double %9 to float
  store float %10, float* %5, align 4
  %11 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %12 = call i32 @gs_newpath(%struct.gs_state_s* noundef %11)
  call void @e(i32 noundef %12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %14 = call i32 @gs_moveto(%struct.gs_state_s* noundef %13, double noundef 5.000000e-01, double noundef 5.000000e-01)
  call void @e(i32 noundef %14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %16 = load float, float* %5, align 4
  %17 = fpext float %16 to double
  %18 = load float, float* %5, align 4
  %19 = fneg float %18
  %20 = fpext float %19 to double
  %21 = call i32 @gs_lineto(%struct.gs_state_s* noundef %15, double noundef %17, double noundef %20)
  call void @e(i32 noundef %21, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0))
  %22 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %23 = call i32 @gs_lineto(%struct.gs_state_s* noundef %22, double noundef -5.000000e-01, double noundef -5.000000e-01)
  call void @e(i32 noundef %23, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0))
  %24 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %25 = load float, float* %5, align 4
  %26 = fneg float %25
  %27 = fpext float %26 to double
  %28 = load float, float* %5, align 4
  %29 = fpext float %28 to double
  %30 = call i32 @gs_lineto(%struct.gs_state_s* noundef %24, double noundef %27, double noundef %29)
  call void @e(i32 noundef %30, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0))
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** %3, align 8
  %32 = call i32 @gs_closepath(%struct.gs_state_s* noundef %31)
  call void @e(i32 noundef %32, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  ret void
}

declare dso_local i32 @gs_currentmatrix(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ellipse(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.gs_state_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gs_matrix_s, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.gs_state_s*, %struct.gs_state_s** %8, align 8
  %17 = call i32 @gs_currentmatrix(%struct.gs_state_s* noundef %16, %struct.gs_matrix_s* noundef %15)
  call void @e(i32 noundef %17, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sitofp i32 %19 to float
  %21 = fpext float %20 to double
  %22 = load i32, i32* %10, align 4
  %23 = sitofp i32 %22 to float
  %24 = fpext float %23 to double
  %25 = call i32 @gs_translate(%struct.gs_state_s* noundef %18, double noundef %21, double noundef %24)
  call void @e(i32 noundef %25, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sitofp i32 %27 to float
  %29 = fpext float %28 to double
  %30 = load i32, i32* %12, align 4
  %31 = sitofp i32 %30 to float
  %32 = fpext float %31 to double
  %33 = call i32 @gs_scale(%struct.gs_state_s* noundef %26, double noundef %29, double noundef %32)
  call void @e(i32 noundef %33, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sitofp i32 %35 to float
  %37 = fpext float %36 to double
  %38 = load i32, i32* %14, align 4
  %39 = sitofp i32 %38 to float
  %40 = fpext float %39 to double
  %41 = call i32 @gs_arc(%struct.gs_state_s* noundef %34, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %37, double noundef %40)
  call void @e(i32 noundef %41, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %42 = load %struct.gs_state_s*, %struct.gs_state_s** %8, align 8
  %43 = call i32 @gs_setmatrix(%struct.gs_state_s* noundef %42, %struct.gs_matrix_s* noundef %15)
  call void @e(i32 noundef %43, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @arrow(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, double noundef %7) #0 {
  %9 = alloca %struct.gs_state_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca %struct.gs_matrix_s, align 8
  store %struct.gs_state_s* %0, %struct.gs_state_s** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store double %7, double* %16, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sitofp i32 %25 to float
  %27 = fdiv float %26, 2.000000e+00
  store float %27, float* %17, align 4
  %28 = load i32, i32* %15, align 4
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %29, 2.000000e+00
  store float %30, float* %18, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %31, %32
  %34 = sitofp i32 %33 to float
  store float %34, float* %19, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sitofp i32 %37 to float
  store float %38, float* %20, align 4
  %39 = load float, float* %19, align 4
  %40 = load float, float* %19, align 4
  %41 = load float, float* %20, align 4
  %42 = load float, float* %20, align 4
  %43 = fmul float %41, %42
  %44 = call float @llvm.fmuladd.f32(float %39, float %40, float %43)
  %45 = fpext float %44 to double
  %46 = call double @sqrt(double noundef %45) #8
  %47 = fptrunc double %46 to float
  store float %47, float* %21, align 4
  %48 = load float, float* %20, align 4
  %49 = fpext float %48 to double
  %50 = load float, float* %19, align 4
  %51 = fpext float %50 to double
  %52 = call double @atan2(double noundef %49, double noundef %51) #8
  %53 = fmul double %52, 0x404CA5DC1A63C1F8
  %54 = fptrunc double %53 to float
  store float %54, float* %22, align 4
  %55 = load float, float* %21, align 4
  %56 = fpext float %55 to double
  %57 = load double, double* %16, align 8
  %58 = fsub double %56, %57
  %59 = fptrunc double %58 to float
  store float %59, float* %23, align 4
  %60 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %61 = call i32 @gs_currentmatrix(%struct.gs_state_s* noundef %60, %struct.gs_matrix_s* noundef %24)
  call void @e(i32 noundef %61, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  %62 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sitofp i32 %63 to float
  %65 = fpext float %64 to double
  %66 = load i32, i32* %11, align 4
  %67 = sitofp i32 %66 to float
  %68 = fpext float %67 to double
  %69 = call i32 @gs_translate(%struct.gs_state_s* noundef %62, double noundef %65, double noundef %68)
  call void @e(i32 noundef %69, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %70 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %71 = load float, float* %22, align 4
  %72 = fpext float %71 to double
  %73 = call i32 @gs_rotate(%struct.gs_state_s* noundef %70, double noundef %72)
  call void @e(i32 noundef %73, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %74 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %75 = load float, float* %17, align 4
  %76 = fneg float %75
  %77 = fpext float %76 to double
  %78 = call i32 @gs_moveto(%struct.gs_state_s* noundef %74, double noundef 0.000000e+00, double noundef %77)
  call void @e(i32 noundef %78, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %79 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %80 = load float, float* %23, align 4
  %81 = fpext float %80 to double
  %82 = load float, float* %17, align 4
  %83 = fneg float %82
  %84 = fpext float %83 to double
  %85 = call i32 @gs_lineto(%struct.gs_state_s* noundef %79, double noundef %81, double noundef %84)
  call void @e(i32 noundef %85, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0))
  %86 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %87 = load float, float* %23, align 4
  %88 = fpext float %87 to double
  %89 = load float, float* %18, align 4
  %90 = fneg float %89
  %91 = fpext float %90 to double
  %92 = call i32 @gs_lineto(%struct.gs_state_s* noundef %86, double noundef %88, double noundef %91)
  call void @e(i32 noundef %92, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i64 0, i64 0))
  %93 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %94 = load float, float* %21, align 4
  %95 = fpext float %94 to double
  %96 = call i32 @gs_lineto(%struct.gs_state_s* noundef %93, double noundef %95, double noundef 0.000000e+00)
  call void @e(i32 noundef %96, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0))
  %97 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %98 = load float, float* %23, align 4
  %99 = fpext float %98 to double
  %100 = load float, float* %18, align 4
  %101 = fpext float %100 to double
  %102 = call i32 @gs_lineto(%struct.gs_state_s* noundef %97, double noundef %99, double noundef %101)
  call void @e(i32 noundef %102, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i64 0, i64 0))
  %103 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %104 = load float, float* %23, align 4
  %105 = fpext float %104 to double
  %106 = load float, float* %17, align 4
  %107 = fpext float %106 to double
  %108 = call i32 @gs_lineto(%struct.gs_state_s* noundef %103, double noundef %105, double noundef %107)
  call void @e(i32 noundef %108, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0))
  %109 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %110 = load float, float* %17, align 4
  %111 = fpext float %110 to double
  %112 = call i32 @gs_lineto(%struct.gs_state_s* noundef %109, double noundef 0.000000e+00, double noundef %111)
  call void @e(i32 noundef %112, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i64 0, i64 0))
  %113 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %114 = call i32 @gs_closepath(%struct.gs_state_s* noundef %113)
  call void @e(i32 noundef %114, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0))
  %115 = load %struct.gs_state_s*, %struct.gs_state_s** %9, align 8
  %116 = call i32 @gs_setmatrix(%struct.gs_state_s* noundef %115, %struct.gs_matrix_s* noundef %24)
  call void @e(i32 noundef %116, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind
declare dso_local double @atan2(double noundef, double noundef) #5

declare dso_local i32 @gs_clip(%struct.gs_state_s* noundef) #2

declare dso_local i32 @gs_imagemask(%struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @i6proc(i8** noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  store i8** %0, i8*** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @ii, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @ii, align 4
  %7 = mul nsw i32 %5, 23
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [69 x i8], [69 x i8]* @i6data, i64 0, i64 %8
  %10 = load i8**, i8*** %3, align 8
  store i8* %9, i8** %10, align 8
  %11 = load i32*, i32** %4, align 8
  store i32 23, i32* %11, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @get_time() #0 {
  %1 = alloca [2 x i64], align 16
  %2 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 0
  %3 = call i32 (i64*, ...) bitcast (i32 (...)* @gs_get_clock to i32 (i64*, ...)*)(i64* noundef %2)
  %4 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 0
  %5 = load i64, i64* %4, align 16
  %6 = mul nsw i64 %5, 86400000
  %7 = getelementptr inbounds [2 x i64], [2 x i64]* %1, i64 0, i64 1
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %6, %8
  ret i64 %9
}

declare dso_local i32 @gs_get_clock(...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

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
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!137, !5}
!138 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!140, !5}
!141 = distinct !{!142, !5}
!143 = distinct !{!144, !5}
!145 = distinct !{!146, !5}
!147 = distinct !{!148, !5}
