; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/NPB-serial/is/is.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/NPB-serial/is/is.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@S_test_index_array = dso_local global [5 x i32] [i32 48427, i32 17148, i32 23627, i32 62548, i32 4431], align 16
@S_test_rank_array = dso_local global [5 x i32] [i32 0, i32 18, i32 346, i32 64917, i32 65463], align 16
@W_test_index_array = dso_local global [5 x i32] [i32 357773, i32 934767, i32 875723, i32 898999, i32 404505], align 16
@W_test_rank_array = dso_local global [5 x i32] [i32 1249, i32 11698, i32 1039987, i32 1043896, i32 1048018], align 16
@A_test_index_array = dso_local global [5 x i32] [i32 2112377, i32 662041, i32 5336171, i32 3642833, i32 4250760], align 16
@A_test_rank_array = dso_local global [5 x i32] [i32 104, i32 17523, i32 123928, i32 8288932, i32 8388264], align 16
@B_test_index_array = dso_local global [5 x i32] [i32 41869, i32 812306, i32 5102857, i32 18232239, i32 26860214], align 16
@B_test_rank_array = dso_local global [5 x i32] [i32 33422937, i32 10244, i32 59149, i32 33135281, i32 99], align 16
@C_test_index_array = dso_local global [5 x i32] [i32 44172927, i32 72999161, i32 74326391, i32 129606274, i32 21736814], align 16
@C_test_rank_array = dso_local global [5 x i32] [i32 61147, i32 882988, i32 266290, i32 133997595, i32 133525895], align 16
@D_test_index_array = dso_local global [5 x i32] [i32 1317351170, i32 995930646, i32 1157283250, i32 1503301535, i32 1453734525], align 16
@D_test_rank_array = dso_local global [5 x i32] [i32 1, i32 36538729, i32 1978098519, i32 2145192618, i32 2147425337], align 16
@randlc.KS = internal global i32 0, align 4
@randlc.R23 = internal global double 0.000000e+00, align 8
@randlc.R46 = internal global double 0.000000e+00, align 8
@randlc.T23 = internal global double 0.000000e+00, align 8
@randlc.T46 = internal global double 0.000000e+00, align 8
@key_array = dso_local global [33554432 x i32] zeroinitializer, align 16
@key_buff2 = dso_local global [33554432 x i32] zeroinitializer, align 16
@key_buff_ptr_global = dso_local global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Full_verify: number of keys out of sort: %ld\0A\00", align 1
@passed_verification = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\0A\0A %s Benchmark Completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c" Class           =                        %c\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c" Size            =             %12ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c" Size            =             %4dx%4dx%4d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c" Iterations      =             %12d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c" Operation type  = %24s\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c" Verification    =            NOT PERFORMED\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c" Verification    =               SUCCESSFUL\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c" Verification    =             UNSUCCESSFUL\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c" Version         =             %12s\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c" Please send all errors/feedbacks to:\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" NPB Development Team\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c" npb@nas.nasa.gov\0A\0A\00", align 1
@test_index_array = dso_local global [5 x i32] zeroinitializer, align 16
@partial_verify_vals = dso_local global [5 x i32] zeroinitializer, align 16
@bucket_size = dso_local global [1024 x i32] zeroinitializer, align 16
@bucket_ptrs = dso_local global [1024 x i32] zeroinitializer, align 16
@key_buff1 = dso_local global [2097152 x i32] zeroinitializer, align 16
@test_rank_array = dso_local global [5 x i32] zeroinitializer, align 16
@.str.15 = private unnamed_addr constant [56 x i8] c"Failed partial verification: iteration %d, test key %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [57 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c" Size:  %ld  (class %c)\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c" Iterations:   %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"\0A   iteration\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"        %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"keys ranked\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"3.3\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @randlc(double* noundef %0, double* noundef %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  %16 = load i32, i32* @randlc.KS, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  store double 1.000000e+00, double* @randlc.R23, align 8
  store double 1.000000e+00, double* @randlc.R46, align 8
  store double 1.000000e+00, double* @randlc.T23, align 8
  store double 1.000000e+00, double* @randlc.T46, align 8
  store i32 1, i32* %14, align 4
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i32, i32* %14, align 4
  %21 = icmp sle i32 %20, 23
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load double, double* @randlc.R23, align 8
  %24 = fmul double 5.000000e-01, %23
  store double %24, double* @randlc.R23, align 8
  %25 = load double, double* @randlc.T23, align 8
  %26 = fmul double 2.000000e+00, %25
  store double %26, double* @randlc.T23, align 8
  br label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %14, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  br label %19, !llvm.loop !4

30:                                               ; preds = %19
  store i32 1, i32* %14, align 4
  br label %31

31:                                               ; preds = %39, %30
  %32 = load i32, i32* %14, align 4
  %33 = icmp sle i32 %32, 46
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load double, double* @randlc.R46, align 8
  %36 = fmul double 5.000000e-01, %35
  store double %36, double* @randlc.R46, align 8
  %37 = load double, double* @randlc.T46, align 8
  %38 = fmul double 2.000000e+00, %37
  store double %38, double* @randlc.T46, align 8
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %31, !llvm.loop !6

42:                                               ; preds = %31
  store i32 1, i32* @randlc.KS, align 4
  br label %43

43:                                               ; preds = %42, %2
  %44 = load double, double* @randlc.R23, align 8
  %45 = load double*, double** %4, align 8
  %46 = load double, double* %45, align 8
  %47 = fmul double %44, %46
  store double %47, double* %5, align 8
  %48 = load double, double* %5, align 8
  %49 = fptosi double %48 to i32
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = sitofp i32 %50 to double
  store double %51, double* %9, align 8
  %52 = load double*, double** %4, align 8
  %53 = load double, double* %52, align 8
  %54 = load double, double* @randlc.T23, align 8
  %55 = load double, double* %9, align 8
  %56 = fneg double %54
  %57 = call double @llvm.fmuladd.f64(double %56, double %55, double %53)
  store double %57, double* %10, align 8
  %58 = load double, double* @randlc.R23, align 8
  %59 = load double*, double** %3, align 8
  %60 = load double, double* %59, align 8
  %61 = fmul double %58, %60
  store double %61, double* %5, align 8
  %62 = load double, double* %5, align 8
  %63 = fptosi double %62 to i32
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sitofp i32 %64 to double
  store double %65, double* %11, align 8
  %66 = load double*, double** %3, align 8
  %67 = load double, double* %66, align 8
  %68 = load double, double* @randlc.T23, align 8
  %69 = load double, double* %11, align 8
  %70 = fneg double %68
  %71 = call double @llvm.fmuladd.f64(double %70, double %69, double %67)
  store double %71, double* %12, align 8
  %72 = load double, double* %9, align 8
  %73 = load double, double* %12, align 8
  %74 = load double, double* %10, align 8
  %75 = load double, double* %11, align 8
  %76 = fmul double %74, %75
  %77 = call double @llvm.fmuladd.f64(double %72, double %73, double %76)
  store double %77, double* %5, align 8
  %78 = load double, double* @randlc.R23, align 8
  %79 = load double, double* %5, align 8
  %80 = fmul double %78, %79
  %81 = fptosi double %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sitofp i32 %82 to double
  store double %83, double* %6, align 8
  %84 = load double, double* %5, align 8
  %85 = load double, double* @randlc.T23, align 8
  %86 = load double, double* %6, align 8
  %87 = fneg double %85
  %88 = call double @llvm.fmuladd.f64(double %87, double %86, double %84)
  store double %88, double* %13, align 8
  %89 = load double, double* @randlc.T23, align 8
  %90 = load double, double* %13, align 8
  %91 = load double, double* %10, align 8
  %92 = load double, double* %12, align 8
  %93 = fmul double %91, %92
  %94 = call double @llvm.fmuladd.f64(double %89, double %90, double %93)
  store double %94, double* %7, align 8
  %95 = load double, double* @randlc.R46, align 8
  %96 = load double, double* %7, align 8
  %97 = fmul double %95, %96
  %98 = fptosi double %97 to i32
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = sitofp i32 %99 to double
  store double %100, double* %8, align 8
  %101 = load double, double* %7, align 8
  %102 = load double, double* @randlc.T46, align 8
  %103 = load double, double* %8, align 8
  %104 = fneg double %102
  %105 = call double @llvm.fmuladd.f64(double %104, double %103, double %101)
  %106 = load double*, double** %3, align 8
  store double %105, double* %106, align 8
  %107 = load double, double* @randlc.R46, align 8
  %108 = load double*, double** %3, align 8
  %109 = load double, double* %108, align 8
  %110 = fmul double %107, %109
  ret double %110
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @create_seq(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  store i32 524288, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 33554432
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = call double @randlc(double* noundef %3, double* noundef %4)
  store double %12, double* %5, align 8
  %13 = call double @randlc(double* noundef %3, double* noundef %4)
  %14 = load double, double* %5, align 8
  %15 = fadd double %14, %13
  store double %15, double* %5, align 8
  %16 = call double @randlc(double* noundef %3, double* noundef %4)
  %17 = load double, double* %5, align 8
  %18 = fadd double %17, %16
  store double %18, double* %5, align 8
  %19 = call double @randlc(double* noundef %3, double* noundef %4)
  %20 = load double, double* %5, align 8
  %21 = fadd double %20, %19
  store double %21, double* %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sitofp i32 %22 to double
  %24 = load double, double* %5, align 8
  %25 = fmul double %23, %24
  %26 = fptosi double %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %8, !llvm.loop !7

33:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @full_verify() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 33554432
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** @key_buff_ptr_global, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %20
  store i32 %10, i32* %21, align 4
  br label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %3, !llvm.loop !8

25:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %1, align 4
  %28 = icmp slt i32 %27, 33554432
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %26, !llvm.loop !9

47:                                               ; preds = %26
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 noundef %52)
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @passed_verification, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @passed_verification, align 4
  br label %57

57:                                               ; preds = %54, %50
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_print_results(i8* noundef %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8* noundef %6, i32 noundef %7, i8* noundef %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store i8 %1, i8* %11, align 1
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* noundef %20)
  %22 = load i8, i8* %11, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef %23)
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %9
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %19, align 8
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %19, align 8
  %36 = mul nsw i64 %35, %34
  store i64 %36, i64* %19, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i64, i64* %19, align 8
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 noundef %38)
  br label %45

40:                                               ; preds = %9
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 noundef %41, i32 noundef %42, i32 noundef %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %15, align 4
  %47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 noundef %46)
  %48 = load i8*, i8** %16, align 8
  %49 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* noundef %48)
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  br label %62

54:                                               ; preds = %45
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %61

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i8*, i8** %18, align 8
  %64 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* noundef %63)
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0))
  %67 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rank(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 11, i32* %7, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %13
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 2097152, %15
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 10
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %19
  store i32 %16, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %35, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* @test_index_array, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %21, !llvm.loop !10

38:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %46, %38
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 1024
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_size, i64 0, i64 %44
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %39, !llvm.loop !11

49:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 33554432
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_size, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %53
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %50, !llvm.loop !12

67:                                               ; preds = %50
  store i32 0, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 0), align 16
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 1024
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %3, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_size, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %76, %81
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %84
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %71
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %68, !llvm.loop !13

89:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i32, i32* %3, align 4
  %92 = icmp slt i32 %91, 33554432
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = ashr i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %106
  store i32 %98, i32* %107, align 4
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %90, !llvm.loop !14

111:                                              ; preds = %90
  store i32* getelementptr inbounds ([33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 0), i32** %6, align 8
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %119, %111
  %113 = load i32, i32* %3, align 4
  %114 = icmp slt i32 %113, 2097152
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %117
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %112, !llvm.loop !15

122:                                              ; preds = %112
  store i32* getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 0), i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %137, %122
  %124 = load i32, i32* %3, align 4
  %125 = icmp slt i32 %124, 33554432
  br i1 %125, label %126, label %140

126:                                              ; preds = %123
  %127 = load i32*, i32** %5, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %127, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %126
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %3, align 4
  br label %123, !llvm.loop !16

140:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %157, %140
  %142 = load i32, i32* %3, align 4
  %143 = icmp slt i32 %142, 2097151
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %149
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %144
  %158 = load i32, i32* %3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %3, align 4
  br label %141, !llvm.loop !17

160:                                              ; preds = %141
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %226, %160
  %162 = load i32, i32* %3, align 4
  %163 = icmp slt i32 %162, 5
  br i1 %163, label %164, label %229

164:                                              ; preds = %161
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %4, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp slt i32 0, %169
  br i1 %170, label %171, label %225

171:                                              ; preds = %164
  %172 = load i32, i32* %4, align 4
  %173 = icmp sle i32 %172, 33554431
  br i1 %173, label %174, label %225

174:                                              ; preds = %171
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %181 = load i32, i32* %3, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %189, label %183

183:                                              ; preds = %174
  %184 = load i32, i32* %3, align 4
  %185 = icmp eq i32 %184, 2
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %3, align 4
  %188 = icmp eq i32 %187, 4
  br i1 %188, label %189, label %203

189:                                              ; preds = %186, %183, %174
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %3, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %2, align 4
  %196 = add nsw i32 %194, %195
  %197 = icmp ne i32 %190, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  store i32 1, i32* %10, align 4
  br label %202

199:                                              ; preds = %189
  %200 = load i32, i32* @passed_verification, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* @passed_verification, align 4
  br label %202

202:                                              ; preds = %199, %198
  br label %217

203:                                              ; preds = %186
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %3, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %2, align 4
  %210 = sub nsw i32 %208, %209
  %211 = icmp ne i32 %204, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  store i32 1, i32* %10, align 4
  br label %216

213:                                              ; preds = %203
  %214 = load i32, i32* @passed_verification, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @passed_verification, align 4
  br label %216

216:                                              ; preds = %213, %212
  br label %217

217:                                              ; preds = %216, %202
  %218 = load i32, i32* %10, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load i32, i32* %2, align 4
  %222 = load i32, i32* %3, align 4
  %223 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0), i32 noundef %221, i32 noundef %222)
  br label %224

224:                                              ; preds = %220, %217
  br label %225

225:                                              ; preds = %224, %171, %164
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %3, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %3, align 4
  br label %161, !llvm.loop !18

229:                                              ; preds = %161
  %230 = load i32, i32* %2, align 4
  %231 = icmp eq i32 %230, 10
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = load i32*, i32** %5, align 8
  store i32* %233, i32** @key_buff_ptr_global, align 8
  br label %234

234:                                              ; preds = %232, %229
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 5
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* @B_test_index_array, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [5 x i32], [5 x i32]* @test_index_array, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* @B_test_rank_array, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %9, !llvm.loop !19

30:                                               ; preds = %9
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.16, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i64 noundef 33554432, i32 noundef 66)
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 10)
  call void @create_seq(double noundef 0x41B2B9B0A1000000, double noundef 0x41D2309CE5400000)
  call void @rank(i32 noundef 1)
  store i32 0, i32* @passed_verification, align 4
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %42, %30
  %36 = load i32, i32* %7, align 4
  %37 = icmp sle i32 %36, 10
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 noundef %39)
  %41 = load i32, i32* %7, align 4
  call void @rank(i32 noundef %41)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %35, !llvm.loop !20

45:                                               ; preds = %35
  call void @full_verify()
  %46 = load i32, i32* @passed_verification, align 4
  %47 = icmp ne i32 %46, 51
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* @passed_verification, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* @passed_verification, align 4
  call void @c_print_results(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8 noundef signext 66, i32 noundef 524288, i32 noundef 64, i32 noundef 0, i32 noundef 10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 noundef %50, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
