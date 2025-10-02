; ModuleID = './fldry.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/fldry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Record = type { %struct.Record*, i32, i32, double, [31 x i8] }

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@.str = private unnamed_addr constant [53 x i8] c"calculate floating dhrystones using doubles size %d\0A\00", align 1
@PtrGlbNext = dso_local global %struct.Record* null, align 8
@PtrGlb = dso_local global %struct.Record* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Array2Glob = dso_local global [51 x [51 x double]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@BoolGlob = dso_local global i32 0, align 4
@Array1Glob = dso_local global [51 x double] zeroinitializer, align 16
@Char2Glob = dso_local global i8 0, align 1
@Char1Glob = dso_local global i8 0, align 1
@IntGlob = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 noundef 8) #12
  %4 = call i32 @Proc0()
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca [31 x i8], align 16
  %5 = alloca [31 x i8], align 16
  %6 = call i64 @clock() #12
  br label %7

7:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %8 = icmp ult i32 %.0, 100000000
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  %11 = add i32 %.0, 1
  br label %7, !llvm.loop !4

12:                                               ; preds = %7
  %13 = call i64 @clock() #12
  %14 = call noalias dereferenceable_or_null(56) i8* @malloc(i64 noundef 56) #12
  store i8* %14, i8** bitcast (%struct.Record** @PtrGlbNext to i8**), align 8
  %15 = call noalias dereferenceable_or_null(56) i8* @malloc(i64 noundef 56) #12
  store i8* %15, i8** bitcast (%struct.Record** @PtrGlb to i8**), align 8
  %16 = bitcast i8* %15 to i8**
  store i8* %14, i8** %16, align 8
  %.cast = bitcast i8* %15 to %struct.Record*
  %17 = getelementptr inbounds %struct.Record, %struct.Record* %.cast, i64 0, i32 1
  store i32 0, i32* %17, align 8
  %.cast3 = bitcast i8* %15 to %struct.Record*
  %18 = getelementptr inbounds %struct.Record, %struct.Record* %.cast3, i64 0, i32 2
  store i32 10001, i32* %18, align 4
  %19 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %20 = getelementptr inbounds %struct.Record, %struct.Record* %19, i64 0, i32 3
  store double 4.000000e+01, double* %20, align 8
  %21 = getelementptr inbounds %struct.Record, %struct.Record* %19, i64 0, i32 4, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(31) %21, i8* noundef nonnull align 1 dereferenceable(31) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 31, i1 false) #12
  %22 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(31) %22, i8* noundef nonnull align 1 dereferenceable(31) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 31, i1 false) #12
  store double 1.000000e+01, double* getelementptr inbounds ([51 x [51 x double]], [51 x [51 x double]]* @Array2Glob, i64 0, i64 8, i64 7), align 8
  %23 = call i64 @clock() #12
  br label %24

24:                                               ; preds = %64, %12
  %.1 = phi i32 [ 0, %12 ], [ %65, %64 ]
  %25 = icmp ult i32 %.1, 100000000
  br i1 %25, label %26, label %66

26:                                               ; preds = %24
  %27 = call i32 @Proc5()
  %28 = call i32 @Proc4()
  store double 2.000000e+00, double* %1, align 8
  %29 = getelementptr inbounds [31 x i8], [31 x i8]* %5, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(31) %29, i8* noundef nonnull align 1 dereferenceable(31) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 31, i1 false) #12
  store i32 10000, i32* %3, align 4
  %30 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0
  %31 = getelementptr inbounds [31 x i8], [31 x i8]* %5, i64 0, i64 0
  %32 = call i32 @Func2(i8* noundef nonnull %30, i8* noundef nonnull %31)
  %.not = icmp eq i32 %32, 0
  %33 = zext i1 %.not to i32
  store i32 %33, i32* @BoolGlob, align 4
  br label %34

34:                                               ; preds = %37, %26
  %35 = load double, double* %1, align 8
  %36 = fcmp olt double %35, 3.000000e+00
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load double, double* %1, align 8
  %39 = call double @llvm.fmuladd.f64(double %38, double 5.000000e+00, double -3.000000e+00)
  store double %39, double* %2, align 8
  %40 = call i32 @Proc7(double noundef %38, double noundef 3.000000e+00, double* noundef nonnull %2)
  %41 = fadd double %38, 1.000000e+00
  store double %41, double* %1, align 8
  br label %34, !llvm.loop !6

42:                                               ; preds = %34
  %43 = load double, double* %1, align 8
  %44 = load double, double* %2, align 8
  %45 = call i32 @Proc8(double* noundef getelementptr inbounds ([51 x double], [51 x double]* @Array1Glob, i64 0, i64 0), [51 x double]* noundef getelementptr inbounds ([51 x [51 x double]], [51 x [51 x double]]* @Array2Glob, i64 0, i64 0), double noundef %43, double noundef %44)
  %46 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %47 = call i32 @Proc1(%struct.Record* noundef %46)
  br label %48

48:                                               ; preds = %58, %42
  %.01 = phi i8 [ 65, %42 ], [ %59, %58 ]
  %49 = load i8, i8* @Char2Glob, align 1
  %.not4 = icmp sgt i8 %.01, %49
  br i1 %.not4, label %60, label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %3, align 4
  %52 = sext i8 %.01 to i32
  %53 = call i32 @Func1(i32 noundef %52, i32 noundef 67)
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @Proc6(i32 noundef 0, i32* noundef nonnull %3)
  br label %57

57:                                               ; preds = %55, %50
  br label %58

58:                                               ; preds = %57
  %59 = add i8 %.01, 1
  br label %48, !llvm.loop !7

60:                                               ; preds = %48
  %61 = load double, double* %1, align 8
  %62 = fmul double %61, 3.000000e+00
  store double %62, double* %2, align 8
  %63 = call i32 @Proc2(double* noundef nonnull %1)
  br label %64

64:                                               ; preds = %60
  %65 = add i32 %.1, 1
  br label %24, !llvm.loop !8

66:                                               ; preds = %24
  ret i32 undef
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Proc1(%struct.Record* nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.Record, %struct.Record* %0, i64 0, i32 3
  store double 5.000000e+00, double* %2, align 8
  %3 = getelementptr inbounds %struct.Record, %struct.Record* %0, i64 0, i32 0
  %4 = load %struct.Record*, %struct.Record** %3, align 8
  %5 = getelementptr inbounds %struct.Record, %struct.Record* %4, i64 0, i32 3
  store double 5.000000e+00, double* %5, align 8
  %6 = getelementptr inbounds %struct.Record, %struct.Record* %0, i64 0, i32 0
  %7 = load %struct.Record*, %struct.Record** %6, align 8
  %8 = getelementptr inbounds %struct.Record, %struct.Record* %7, i64 0, i32 0
  store %struct.Record* %7, %struct.Record** %8, align 8
  ret i32 undef
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @Proc2(double* nocapture noundef %0) #5 {
  %2 = load double, double* %0, align 8
  %3 = fadd double %2, 1.000000e+01
  br label %4

4:                                                ; preds = %13, %1
  %.0 = phi double [ %3, %1 ], [ %.1, %13 ]
  %5 = load i8, i8* @Char1Glob, align 1
  %6 = icmp eq i8 %5, 65
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = fadd double %.0, -1.000000e+00
  %9 = load double, double* @IntGlob, align 8
  %10 = fsub double %8, %9
  store double %10, double* %0, align 8
  br label %11

11:                                               ; preds = %7, %4
  %.1 = phi double [ %8, %7 ], [ %.0, %4 ]
  br i1 true, label %12, label %13

12:                                               ; preds = %11
  br label %14

13:                                               ; preds = %11
  br label %4

14:                                               ; preds = %12
  ret i32 undef
}

; Function Attrs: mustprogress noinline nosync nounwind uwtable willreturn
define dso_local i32 @Proc3(%struct.Record** nocapture noundef writeonly %0) #6 {
  %2 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %.not = icmp eq %struct.Record* %2, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %1
  %4 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %5 = getelementptr inbounds %struct.Record, %struct.Record* %4, i64 0, i32 0
  %6 = load %struct.Record*, %struct.Record** %5, align 8
  store %struct.Record* %6, %struct.Record** %0, align 8
  br label %8

7:                                                ; preds = %1
  store double 1.000000e+02, double* @IntGlob, align 8
  br label %8

8:                                                ; preds = %7, %3
  %9 = load double, double* @IntGlob, align 8
  %10 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %11 = getelementptr inbounds %struct.Record, %struct.Record* %10, i64 0, i32 3
  %12 = call i32 (i32, double, double*, ...) bitcast (i32 (double, double, double*)* @Proc7 to i32 (i32, double, double*, ...)*)(i32 noundef 10, double noundef %9, double* noundef nonnull %11)
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Proc4() #4 {
  store i8 66, i8* @Char2Glob, align 1
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @Proc5() #7 {
  store i8 65, i8* @Char1Glob, align 1
  store i32 0, i32* @BoolGlob, align 4
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Proc6(i32 noundef %0, i32* nocapture noundef writeonly %1) #4 {
  %3 = call i32 @Func3(i32 noundef %0)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %2
  %storemerge = phi i32 [ 10002, %4 ], [ %0, %2 ]
  store i32 %storemerge, i32* %1, align 4
  switch i32 %0, label %16 [
    i32 0, label %6
    i32 10000, label %7
    i32 10001, label %13
    i32 10002, label %14
    i32 10003, label %15
  ]

6:                                                ; preds = %5
  store i32 0, i32* %1, align 4
  br label %16

7:                                                ; preds = %5
  %8 = load double, double* @IntGlob, align 8
  %9 = fcmp ogt double %8, 1.000000e+02
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %10
  %storemerge1 = phi i32 [ 10002, %11 ], [ 0, %10 ]
  store i32 %storemerge1, i32* %1, align 4
  br label %16

13:                                               ; preds = %5
  store i32 10000, i32* %1, align 4
  br label %16

14:                                               ; preds = %5
  br label %16

15:                                               ; preds = %5
  store i32 10001, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %14, %13, %12, %6, %5
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @Proc7(double noundef %0, double noundef %1, double* nocapture noundef writeonly %2) #7 {
  %4 = fadd double %0, 2.000000e+00
  %5 = fadd double %4, %1
  store double %5, double* %2, align 8
  ret i32 undef
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @Proc8(double* nocapture noundef %0, [51 x double]* nocapture noundef %1, double noundef %2, double noundef %3) #5 {
  %5 = fadd double %2, 5.000000e+00
  %6 = fptosi double %5 to i32
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds double, double* %0, i64 %7
  store double %3, double* %8, align 8
  %9 = fptosi double %5 to i32
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, double* %0, i64 %10
  %12 = load double, double* %11, align 8
  %13 = fptosi double %5 to i32
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, double* %0, i64 %15
  store double %12, double* %16, align 8
  %17 = fptosi double %5 to i32
  %18 = add nsw i32 %17, 30
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %0, i64 %19
  store double %5, double* %20, align 8
  br label %21

21:                                               ; preds = %30, %4
  %.0 = phi double [ %5, %4 ], [ %31, %30 ]
  %22 = fadd double %5, 1.000000e+00
  %23 = fcmp ugt double %.0, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = fptosi double %5 to i32
  %26 = sext i32 %25 to i64
  %27 = fptosi double %.0 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [51 x double], [51 x double]* %1, i64 %26, i64 %28
  store double %5, double* %29, align 8
  br label %30

30:                                               ; preds = %24
  %31 = fadd double %.0, 1.000000e+00
  br label %21, !llvm.loop !9

32:                                               ; preds = %21
  %33 = fptosi double %5 to i32
  %34 = sext i32 %33 to i64
  %35 = fptosi double %5 to i32
  %36 = add nsw i32 %35, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [51 x double], [51 x double]* %1, i64 %34, i64 %37
  %39 = load double, double* %38, align 8
  %40 = fadd double %39, 1.000000e+00
  store double %40, double* %38, align 8
  %41 = fptosi double %5 to i32
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %0, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fptosi double %5 to i32
  %46 = add nsw i32 %45, 20
  %47 = sext i32 %46 to i64
  %48 = fptosi double %5 to i32
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [51 x double], [51 x double]* %1, i64 %47, i64 %49
  store double %44, double* %50, align 8
  store double 5.000000e+00, double* @IntGlob, align 8
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #8 {
  %.not.unshifted = xor i32 %0, %1
  %.not.mask = and i32 %.not.unshifted, 255
  %.not = icmp eq i32 %.not.mask, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 0, %3 ], [ 10000, %4 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @Func2(i8* noundef readonly %0, i8* noundef readonly %1) #9 {
  br label %3

3:                                                ; preds = %21, %2
  %.01 = phi double [ 1.000000e+00, %2 ], [ %.1, %21 ]
  %4 = fcmp ugt double %.01, 1.000000e+00
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = fptosi double %.01 to i32
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = fptosi double %.01 to i32
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %1, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @Func1(i32 noundef %10, i32 noundef %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = fadd double %.01, 1.000000e+00
  br label %21

21:                                               ; preds = %19, %5
  %.1 = phi double [ %20, %19 ], [ %.01, %5 ]
  br label %3, !llvm.loop !10

22:                                               ; preds = %3
  br i1 false, label %23, label %25

23:                                               ; preds = %22
  br i1 undef, label %24, label %25

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %23, %22
  br i1 false, label %26, label %27

26:                                               ; preds = %25
  br label %32

27:                                               ; preds = %25
  %28 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %1) #13
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %32

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %30, %26
  %.0 = phi i32 [ 1, %26 ], [ 1, %30 ], [ 0, %31 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Func3(i32 noundef %0) #8 {
  %2 = icmp eq i32 %0, 10001
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3
  %.0 = phi i32 [ 1, %3 ], [ 0, %4 ]
  ret i32 %.0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }

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
