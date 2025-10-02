; ModuleID = './dry.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Dhrystone/dry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Record = type { %struct.Record*, i32, i32, i32, [31 x i8] }

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@PtrGlbNext = dso_local global %struct.Record* null, align 8
@PtrGlb = dso_local global %struct.Record* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@Array2Glob = dso_local global [51 x [51 x i32]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@BoolGlob = dso_local global i32 0, align 4
@Array1Glob = dso_local global [51 x i32] zeroinitializer, align 16
@Char2Glob = dso_local global i8 0, align 1
@Char1Glob = dso_local global i8 0, align 1
@IntGlob = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @Proc0()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [31 x i8], align 16
  %5 = alloca [31 x i8], align 16
  %6 = call i64 @clock() #9
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
  %13 = call i64 @clock() #9
  %14 = call noalias dereferenceable_or_null(56) i8* @malloc(i64 noundef 56) #9
  store i8* %14, i8** bitcast (%struct.Record** @PtrGlbNext to i8**), align 8
  %15 = call noalias dereferenceable_or_null(56) i8* @malloc(i64 noundef 56) #9
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
  store i32 40, i32* %20, align 8
  %21 = getelementptr inbounds %struct.Record, %struct.Record* %19, i64 0, i32 4, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(31) %21, i8* noundef nonnull align 1 dereferenceable(31) getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 31, i1 false) #9
  %22 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(31) %22, i8* noundef nonnull align 1 dereferenceable(31) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 31, i1 false) #9
  store i32 10, i32* getelementptr inbounds ([51 x [51 x i32]], [51 x [51 x i32]]* @Array2Glob, i64 0, i64 8, i64 7), align 4
  %23 = call i64 @clock() #9
  br label %24

24:                                               ; preds = %65, %12
  %.1 = phi i32 [ 0, %12 ], [ %66, %65 ]
  %25 = icmp ult i32 %.1, 100000000
  br i1 %25, label %26, label %67

26:                                               ; preds = %24
  %27 = call i32 @Proc5()
  %28 = call i32 @Proc4()
  store i32 2, i32* %1, align 4
  %29 = getelementptr inbounds [31 x i8], [31 x i8]* %5, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(31) %29, i8* noundef nonnull align 1 dereferenceable(31) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 31, i1 false) #9
  store i32 10000, i32* %3, align 4
  %30 = getelementptr inbounds [31 x i8], [31 x i8]* %4, i64 0, i64 0
  %31 = getelementptr inbounds [31 x i8], [31 x i8]* %5, i64 0, i64 0
  %32 = call i32 @Func2(i8* noundef nonnull %30, i8* noundef nonnull %31)
  %.not = icmp eq i32 %32, 0
  %33 = zext i1 %.not to i32
  store i32 %33, i32* @BoolGlob, align 4
  br label %34

34:                                               ; preds = %37, %26
  %35 = load i32, i32* %1, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i32, i32* %1, align 4
  %39 = mul nsw i32 %38, 5
  %40 = add nsw i32 %39, -3
  store i32 %40, i32* %2, align 4
  %41 = call i32 @Proc7(i32 noundef %38, i32 noundef 3, i32* noundef nonnull %2)
  %42 = add nsw i32 %38, 1
  store i32 %42, i32* %1, align 4
  br label %34, !llvm.loop !6

43:                                               ; preds = %34
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @Proc8(i32* noundef getelementptr inbounds ([51 x i32], [51 x i32]* @Array1Glob, i64 0, i64 0), [51 x i32]* noundef getelementptr inbounds ([51 x [51 x i32]], [51 x [51 x i32]]* @Array2Glob, i64 0, i64 0), i32 noundef %44, i32 noundef %45)
  %47 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %48 = call i32 @Proc1(%struct.Record* noundef %47)
  br label %49

49:                                               ; preds = %59, %43
  %.01 = phi i8 [ 65, %43 ], [ %60, %59 ]
  %50 = load i8, i8* @Char2Glob, align 1
  %.not4 = icmp sgt i8 %.01, %50
  br i1 %.not4, label %61, label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %3, align 4
  %53 = sext i8 %.01 to i32
  %54 = call i32 @Func1(i32 noundef %53, i32 noundef 67)
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @Proc6(i32 noundef 0, i32* noundef nonnull %3)
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58
  %60 = add i8 %.01, 1
  br label %49, !llvm.loop !7

61:                                               ; preds = %49
  %62 = load i32, i32* %1, align 4
  %63 = mul nsw i32 %62, 3
  store i32 %63, i32* %2, align 4
  %64 = call i32 @Proc2(i32* noundef nonnull %1)
  br label %65

65:                                               ; preds = %61
  %66 = add i32 %.1, 1
  br label %24, !llvm.loop !8

67:                                               ; preds = %24
  ret i32 undef
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Proc1(%struct.Record* nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.Record, %struct.Record* %0, i64 0, i32 3
  store i32 5, i32* %2, align 8
  %3 = getelementptr inbounds %struct.Record, %struct.Record* %0, i64 0, i32 0
  %4 = load %struct.Record*, %struct.Record** %3, align 8
  %5 = getelementptr inbounds %struct.Record, %struct.Record* %4, i64 0, i32 3
  store i32 5, i32* %5, align 8
  %6 = getelementptr inbounds %struct.Record, %struct.Record* %0, i64 0, i32 0
  %7 = load %struct.Record*, %struct.Record** %6, align 8
  %8 = getelementptr inbounds %struct.Record, %struct.Record* %7, i64 0, i32 0
  store %struct.Record* %7, %struct.Record** %8, align 8
  ret i32 undef
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @Proc2(i32* nocapture noundef %0) #3 {
  %2 = load i32, i32* %0, align 4
  %3 = add nsw i32 %2, 10
  br label %4

4:                                                ; preds = %13, %1
  %.0 = phi i32 [ %3, %1 ], [ %.1, %13 ]
  %5 = load i8, i8* @Char1Glob, align 1
  %6 = icmp eq i8 %5, 65
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = add nsw i32 %.0, -1
  %9 = load i32, i32* @IntGlob, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %0, align 4
  br label %11

11:                                               ; preds = %7, %4
  %.1 = phi i32 [ %8, %7 ], [ %.0, %4 ]
  br i1 true, label %12, label %13

12:                                               ; preds = %11
  br label %14

13:                                               ; preds = %11
  br label %4

14:                                               ; preds = %12
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Proc3(%struct.Record** nocapture noundef writeonly %0) #2 {
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
  store i32 100, i32* @IntGlob, align 4
  br label %8

8:                                                ; preds = %7, %3
  %9 = load i32, i32* @IntGlob, align 4
  %10 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %11 = getelementptr inbounds %struct.Record, %struct.Record* %10, i64 0, i32 3
  %12 = call i32 @Proc7(i32 noundef 10, i32 noundef %9, i32* noundef nonnull %11)
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Proc4() #2 {
  store i8 66, i8* @Char2Glob, align 1
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @Proc5() #4 {
  store i8 65, i8* @Char1Glob, align 1
  store i32 0, i32* @BoolGlob, align 4
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @Proc6(i32 noundef %0, i32* nocapture noundef writeonly %1) #2 {
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
  %8 = load i32, i32* @IntGlob, align 4
  %9 = icmp sgt i32 %8, 100
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
define dso_local i32 @Proc7(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) #4 {
  %4 = add nsw i32 %0, 2
  %5 = add nsw i32 %4, %1
  store i32 %5, i32* %2, align 4
  ret i32 undef
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @Proc8(i32* nocapture noundef %0, [51 x i32]* nocapture noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = add nsw i32 %2, 5
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  store i32 %3, i32* %7, align 4
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %2, 6
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %0, i64 %12
  store i32 %10, i32* %13, align 4
  %14 = add nsw i32 %2, 35
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  store i32 %5, i32* %16, align 4
  br label %17

17:                                               ; preds = %23, %4
  %.0 = phi i32 [ %5, %4 ], [ %24, %23 ]
  %18 = add nsw i32 %2, 6
  %.not = icmp sgt i32 %.0, %18
  br i1 %.not, label %25, label %19

19:                                               ; preds = %17
  %20 = sext i32 %5 to i64
  %21 = sext i32 %.0 to i64
  %22 = getelementptr inbounds [51 x i32], [51 x i32]* %1, i64 %20, i64 %21
  store i32 %5, i32* %22, align 4
  br label %23

23:                                               ; preds = %19
  %24 = add nsw i32 %.0, 1
  br label %17, !llvm.loop !9

25:                                               ; preds = %17
  %26 = sext i32 %5 to i64
  %27 = add nsw i32 %2, 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [51 x i32], [51 x i32]* %1, i64 %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = sext i32 %5 to i64
  %33 = getelementptr inbounds i32, i32* %0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %2, 25
  %36 = sext i32 %35 to i64
  %37 = sext i32 %5 to i64
  %38 = getelementptr inbounds [51 x i32], [51 x i32]* %1, i64 %36, i64 %37
  store i32 %34, i32* %38, align 4
  store i32 5, i32* @IntGlob, align 4
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Func1(i32 noundef %0, i32 noundef %1) #5 {
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
define dso_local i32 @Func2(i8* noundef readonly %0, i8* noundef readonly %1) #6 {
  br label %3

3:                                                ; preds = %19, %2
  %.01 = phi i32 [ 1, %2 ], [ %.1, %19 ]
  %4 = icmp slt i32 %.01, 2
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = sext i32 %.01 to i64
  %7 = getelementptr inbounds i8, i8* %0, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = add nsw i32 %.01, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %1, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i32 @Func1(i32 noundef %9, i32 noundef %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = add nsw i32 %.01, 1
  br label %19

19:                                               ; preds = %17, %5
  %.1 = phi i32 [ %18, %17 ], [ %.01, %5 ]
  br label %3, !llvm.loop !10

20:                                               ; preds = %3
  br i1 false, label %21, label %23

21:                                               ; preds = %20
  br i1 undef, label %22, label %23

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22, %21, %20
  br i1 false, label %24, label %25

24:                                               ; preds = %23
  br label %30

25:                                               ; preds = %23
  %26 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(1) %1) #10
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %30

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %28, %24
  %.0 = phi i32 [ 1, %24 ], [ 1, %28 ], [ 0, %29 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Func3(i32 noundef %0) #5 {
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

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
