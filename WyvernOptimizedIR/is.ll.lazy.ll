; ModuleID = './is.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/NPB-serial/is/is.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@str = private unnamed_addr constant [44 x i8] c" Verification    =             UNSUCCESSFUL\00", align 1
@str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.2 = private unnamed_addr constant [39 x i8] c" Please send all errors/feedbacks to:\0A\00", align 1
@str.3 = private unnamed_addr constant [22 x i8] c" NPB Development Team\00", align 1
@str.4 = private unnamed_addr constant [19 x i8] c" npb@nas.nasa.gov\0A\00", align 1
@str.5 = private unnamed_addr constant [44 x i8] c" Verification    =               SUCCESSFUL\00", align 1
@str.6 = private unnamed_addr constant [44 x i8] c" Verification    =            NOT PERFORMED\00", align 1
@str.7 = private unnamed_addr constant [56 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - IS Benchmark\0A\00", align 1
@str.8 = private unnamed_addr constant [14 x i8] c"\0A   iteration\00", align 1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local double @randlc(double* nocapture noundef %0, double* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* @randlc.KS, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  store double 1.000000e+00, double* @randlc.R23, align 8
  store double 1.000000e+00, double* @randlc.R46, align 8
  store double 1.000000e+00, double* @randlc.T23, align 8
  store double 1.000000e+00, double* @randlc.T46, align 8
  br label %6

6:                                                ; preds = %13, %5
  %.0 = phi i32 [ 1, %5 ], [ %14, %13 ]
  %7 = icmp ult i32 %.0, 24
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = load double, double* @randlc.R23, align 8
  %10 = fmul double %9, 5.000000e-01
  store double %10, double* @randlc.R23, align 8
  %11 = load double, double* @randlc.T23, align 8
  %12 = fmul double %11, 2.000000e+00
  store double %12, double* @randlc.T23, align 8
  br label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %23, %15
  %.1 = phi i32 [ 1, %15 ], [ %24, %23 ]
  %17 = icmp ult i32 %.1, 47
  br i1 %17, label %18, label %25

18:                                               ; preds = %16
  %19 = load double, double* @randlc.R46, align 8
  %20 = fmul double %19, 5.000000e-01
  store double %20, double* @randlc.R46, align 8
  %21 = load double, double* @randlc.T46, align 8
  %22 = fmul double %21, 2.000000e+00
  store double %22, double* @randlc.T46, align 8
  br label %23

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %.1, 1
  br label %16, !llvm.loop !6

25:                                               ; preds = %16
  store i32 1, i32* @randlc.KS, align 4
  br label %26

26:                                               ; preds = %25, %2
  %27 = load double, double* @randlc.R23, align 8
  %28 = load double, double* %1, align 8
  %29 = fmul double %27, %28
  %30 = fptosi double %29 to i32
  %31 = sitofp i32 %30 to double
  %32 = load double, double* @randlc.T23, align 8
  %33 = fneg double %32
  %34 = call double @llvm.fmuladd.f64(double %33, double %31, double %28)
  %35 = load double, double* @randlc.R23, align 8
  %36 = load double, double* %0, align 8
  %37 = fmul double %35, %36
  %38 = fptosi double %37 to i32
  %39 = sitofp i32 %38 to double
  %40 = load double, double* @randlc.T23, align 8
  %41 = fneg double %40
  %42 = call double @llvm.fmuladd.f64(double %41, double %39, double %36)
  %43 = fmul double %34, %39
  %44 = call double @llvm.fmuladd.f64(double %31, double %42, double %43)
  %45 = load double, double* @randlc.R23, align 8
  %46 = fmul double %45, %44
  %47 = fptosi double %46 to i32
  %48 = sitofp i32 %47 to double
  %49 = load double, double* @randlc.T23, align 8
  %50 = fneg double %49
  %51 = call double @llvm.fmuladd.f64(double %50, double %48, double %44)
  %52 = fmul double %34, %42
  %53 = call double @llvm.fmuladd.f64(double %49, double %51, double %52)
  %54 = load double, double* @randlc.R46, align 8
  %55 = fmul double %54, %53
  %56 = fptosi double %55 to i32
  %57 = sitofp i32 %56 to double
  %58 = load double, double* @randlc.T46, align 8
  %59 = fneg double %58
  %60 = call double @llvm.fmuladd.f64(double %59, double %57, double %53)
  store double %60, double* %0, align 8
  %61 = load double, double* @randlc.R46, align 8
  %62 = fmul double %61, %60
  ret double %62
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @create_seq(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  br label %5

5:                                                ; preds = %19, %2
  %.0 = phi i32 [ 0, %2 ], [ %20, %19 ]
  %6 = icmp ult i32 %.0, 33554432
  br i1 %6, label %7, label %21

7:                                                ; preds = %5
  %8 = call double @randlc(double* noundef nonnull %3, double* noundef nonnull %4)
  %9 = call double @randlc(double* noundef nonnull %3, double* noundef nonnull %4)
  %10 = fadd double %8, %9
  %11 = call double @randlc(double* noundef nonnull %3, double* noundef nonnull %4)
  %12 = fadd double %10, %11
  %13 = call double @randlc(double* noundef nonnull %3, double* noundef nonnull %4)
  %14 = fadd double %12, %13
  %15 = fmul double %14, 5.242880e+05
  %16 = fptosi double %15 to i32
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %17
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %7
  %20 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !7

21:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @full_verify() #2 {
  br label %1

1:                                                ; preds = %17, %0
  %.0 = phi i32 [ 0, %0 ], [ %18, %17 ]
  %2 = icmp ult i32 %.0, 33554432
  br i1 %2, label %3, label %19

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** @key_buff_ptr_global, align 8
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %7, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %15
  store i32 %6, i32* %16, align 4
  br label %17

17:                                               ; preds = %3
  %18 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !8

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %34, %19
  %.01 = phi i32 [ 0, %19 ], [ %.12, %34 ]
  %.1 = phi i32 [ 1, %19 ], [ %35, %34 ]
  %21 = icmp ult i32 %.1, 33554432
  br i1 %21, label %22, label %36

22:                                               ; preds = %20
  %23 = add nsw i32 %.1, -1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %.1 to i64
  %28 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = add nsw i32 %.01, 1
  br label %33

33:                                               ; preds = %31, %22
  %.12 = phi i32 [ %32, %31 ], [ %.01, %22 ]
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.1, 1
  br label %20, !llvm.loop !9

36:                                               ; preds = %20
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %40, label %37

37:                                               ; preds = %36
  %38 = sext i32 %.01 to i64
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 noundef %38) #5
  br label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @passed_verification, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @passed_verification, align 4
  br label %43

43:                                               ; preds = %40, %37
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @c_print_results(i8* noundef %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8* noundef %6, i32 noundef %7, i8* noundef %8) #2 {
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0) #5
  %11 = sext i8 %1 to i32
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 noundef %11) #5
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = sext i32 %2 to i64
  %.not7 = icmp eq i32 %3, 0
  br i1 %.not7, label %19, label %16

16:                                               ; preds = %14
  %17 = sext i32 %3 to i64
  %18 = mul nsw i64 %15, %17
  br label %19

19:                                               ; preds = %16, %14
  %.0 = phi i64 [ %18, %16 ], [ %15, %14 ]
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 noundef %.0) #5
  br label %23

21:                                               ; preds = %9
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 noundef %2, i32 noundef %3, i32 noundef %4) #5
  br label %23

23:                                               ; preds = %21, %19
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 noundef %5) #5
  %25 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* noundef %6) #5
  %26 = icmp slt i32 %7, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.6, i64 0, i64 0))
  br label %32

28:                                               ; preds = %23
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %30, label %29

29:                                               ; preds = %28
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str.5, i64 0, i64 0))
  br label %31

30:                                               ; preds = %28
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %27
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* noundef %8) #5
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str.1, i64 0, i64 0))
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.2, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.3, i64 0, i64 0))
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rank(i32 noundef %0) #2 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %2
  store i32 %0, i32* %3, align 4
  %4 = sub nsw i32 2097152, %0
  %5 = add nsw i32 %0, 10
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %6
  store i32 %4, i32* %7, align 4
  br label %8

8:                                                ; preds = %19, %1
  %.01 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %9 = icmp ult i32 %.01, 5
  br i1 %9, label %10, label %21

10:                                               ; preds = %8
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* @test_index_array, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 %17
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %10
  %20 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !10

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %27, %21
  %.12 = phi i32 [ 0, %21 ], [ %28, %27 ]
  %23 = icmp ult i32 %.12, 1024
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = zext i32 %.12 to i64
  %26 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_size, i64 0, i64 %25
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %24
  %28 = add nuw nsw i32 %.12, 1
  br label %22, !llvm.loop !11

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %41, %29
  %.23 = phi i32 [ 0, %29 ], [ %42, %41 ]
  %31 = icmp ult i32 %.23, 33554432
  br i1 %31, label %32, label %43

32:                                               ; preds = %30
  %33 = zext i32 %.23 to i64
  %34 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 11
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_size, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32
  %42 = add nuw nsw i32 %.23, 1
  br label %30, !llvm.loop !12

43:                                               ; preds = %30
  store i32 0, i32* getelementptr inbounds ([1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 0), align 16
  br label %44

44:                                               ; preds = %58, %43
  %.3 = phi i32 [ 1, %43 ], [ %59, %58 ]
  %45 = icmp ult i32 %.3, 1024
  br i1 %45, label %46, label %60

46:                                               ; preds = %44
  %47 = add nsw i32 %.3, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %.3, -1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_size, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %50, %54
  %56 = zext i32 %.3 to i64
  %57 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %56
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %46
  %59 = add nuw nsw i32 %.3, 1
  br label %44, !llvm.loop !13

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %74, %60
  %.4 = phi i32 [ 0, %60 ], [ %75, %74 ]
  %62 = icmp ult i32 %.4, 33554432
  br i1 %62, label %63, label %76

63:                                               ; preds = %61
  %64 = zext i32 %.4 to i64
  %65 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_array, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 11
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [1024 x i32], [1024 x i32]* @bucket_ptrs, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %72
  store i32 %66, i32* %73, align 4
  br label %74

74:                                               ; preds = %63
  %75 = add nuw nsw i32 %.4, 1
  br label %61, !llvm.loop !14

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %82, %76
  %.5 = phi i32 [ 0, %76 ], [ %83, %82 ]
  %78 = icmp ult i32 %.5, 2097152
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = zext i32 %.5 to i64
  %81 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %80
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %79
  %83 = add nuw nsw i32 %.5, 1
  br label %77, !llvm.loop !15

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %95, %84
  %.6 = phi i32 [ 0, %84 ], [ %96, %95 ]
  %86 = icmp ult i32 %.6, 33554432
  br i1 %86, label %87, label %97

87:                                               ; preds = %85
  %88 = zext i32 %.6 to i64
  %89 = getelementptr inbounds [33554432 x i32], [33554432 x i32]* @key_buff2, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %87
  %96 = add nuw nsw i32 %.6, 1
  br label %85, !llvm.loop !16

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %109, %97
  %.7 = phi i32 [ 0, %97 ], [ %110, %109 ]
  %99 = icmp ult i32 %.7, 2097151
  br i1 %99, label %100, label %111

100:                                              ; preds = %98
  %101 = zext i32 %.7 to i64
  %102 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nuw nsw i32 %.7, 1
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %103
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %100
  %110 = add nuw nsw i32 %.7, 1
  br label %98, !llvm.loop !17

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %157, %111
  %.8 = phi i32 [ 0, %111 ], [ %158, %157 ]
  %113 = icmp ult i32 %.8, 5
  br i1 %113, label %114, label %159

114:                                              ; preds = %112
  %115 = zext i32 %.8 to i64
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* @partial_verify_vals, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %156

119:                                              ; preds = %114
  %120 = icmp slt i32 %117, 33554432
  br i1 %120, label %121, label %156

121:                                              ; preds = %119
  %122 = add nsw i32 %117, -1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %.8, 1
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = icmp eq i32 %.8, 2
  br i1 %128, label %131, label %129

129:                                              ; preds = %127
  %130 = icmp eq i32 %.8, 4
  br i1 %130, label %131, label %141

131:                                              ; preds = %129, %127, %121
  %132 = zext i32 %.8 to i64
  %133 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %0
  %.not4 = icmp eq i32 %125, %135
  br i1 %.not4, label %137, label %136

136:                                              ; preds = %131
  br label %140

137:                                              ; preds = %131
  %138 = load i32, i32* @passed_verification, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* @passed_verification, align 4
  br label %140

140:                                              ; preds = %137, %136
  %.0 = phi i32 [ 1, %136 ], [ 0, %137 ]
  br label %151

141:                                              ; preds = %129
  %142 = zext i32 %.8 to i64
  %143 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, %0
  %.not = icmp eq i32 %125, %145
  br i1 %.not, label %147, label %146

146:                                              ; preds = %141
  br label %150

147:                                              ; preds = %141
  %148 = load i32, i32* @passed_verification, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @passed_verification, align 4
  br label %150

150:                                              ; preds = %147, %146
  %.1 = phi i32 [ 1, %146 ], [ 0, %147 ]
  br label %151

151:                                              ; preds = %150, %140
  %.2 = phi i32 [ %.0, %140 ], [ %.1, %150 ]
  %152 = icmp eq i32 %.2, 1
  br i1 %152, label %153, label %155

153:                                              ; preds = %151
  %154 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0), i32 noundef %0, i32 noundef %.8) #5
  br label %155

155:                                              ; preds = %153, %151
  br label %156

156:                                              ; preds = %155, %119, %114
  br label %157

157:                                              ; preds = %156
  %158 = add nuw nsw i32 %.8, 1
  br label %112, !llvm.loop !18

159:                                              ; preds = %112
  %160 = icmp eq i32 %0, 10
  br i1 %160, label %161, label %162

161:                                              ; preds = %159
  store i32* getelementptr inbounds ([2097152 x i32], [2097152 x i32]* @key_buff1, i64 0, i64 0), i32** @key_buff_ptr_global, align 8
  br label %162

162:                                              ; preds = %161, %159
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #2 {
  br label %3

3:                                                ; preds = %16, %2
  %.01 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %4 = icmp ult i32 %.01, 5
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* @B_test_index_array, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds [5 x i32], [5 x i32]* @test_index_array, i64 0, i64 %9
  store i32 %8, i32* %10, align 4
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* @B_test_rank_array, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %.01 to i64
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* @test_rank_array, i64 0, i64 %14
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %5
  %17 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !19

18:                                               ; preds = %3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([56 x i8], [56 x i8]* @str.7, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i64 noundef 33554432, i32 noundef 66) #5
  %20 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 noundef 10) #5
  call void @create_seq(double noundef 0x41B2B9B0A1000000, double noundef 0x41D2309CE5400000)
  call void @rank(i32 noundef 1)
  store i32 0, i32* @passed_verification, align 4
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.8, i64 0, i64 0))
  br label %21

21:                                               ; preds = %25, %18
  %.0 = phi i32 [ 1, %18 ], [ %26, %25 ]
  %22 = icmp ult i32 %.0, 11
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 noundef %.0) #5
  call void @rank(i32 noundef %.0)
  br label %25

25:                                               ; preds = %23
  %26 = add nuw nsw i32 %.0, 1
  br label %21, !llvm.loop !20

27:                                               ; preds = %21
  call void @full_verify()
  %28 = load i32, i32* @passed_verification, align 4
  %.not = icmp eq i32 %28, 51
  br i1 %.not, label %30, label %29

29:                                               ; preds = %27
  store i32 0, i32* @passed_verification, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* @passed_verification, align 4
  call void @c_print_results(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8 noundef signext 66, i32 noundef 524288, i32 noundef 64, i32 noundef 0, i32 noundef 10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 noundef %31, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
