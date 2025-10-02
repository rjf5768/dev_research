; ModuleID = './pops.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cacheType = type { %struct.precisionType*, i16 }
%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@pcache = dso_local global [32 x %struct.cacheType] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"palloc\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pset\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"lvalue is pNull\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pparm\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"undefined function argument\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @pnorm(%struct.precisionType* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %3 = load i16, i16* %2, align 2
  %4 = zext i16 %3 to i64
  %5 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 %4
  br label %6

6:                                                ; preds = %11, %1
  %.0 = phi i16* [ %5, %1 ], [ %7, %11 ]
  %7 = getelementptr inbounds i16, i16* %.0, i64 -1
  %8 = load i16, i16* %7, align 2
  %.not = icmp eq i16 %8, 0
  br i1 %.not, label %10, label %9

9:                                                ; preds = %6
  br label %14

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  %13 = icmp ugt i16* %7, %12
  br i1 %13, label %6, label %.loopexit, !llvm.loop !4

.loopexit:                                        ; preds = %11
  br label %14

14:                                               ; preds = %.loopexit, %9
  %15 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  %16 = icmp eq i16* %7, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i16, i16* %7, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  store i8 0, i8* %21, align 2
  br label %22

22:                                               ; preds = %20, %17, %14
  %23 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  %24 = ptrtoint i16* %7 to i64
  %25 = ptrtoint i16* %23 to i64
  %26 = sub i64 %24, %25
  %27 = lshr exact i64 %26, 1
  %28 = trunc i64 %27 to i16
  %29 = add i16 %28, 1
  %30 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  store i16 %29, i16* %30, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @palloc(i32 noundef %0) #1 {
  %2 = trunc i32 %0 to i16
  %3 = and i32 %0, 65504
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = and i32 %0, 65535
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [32 x %struct.cacheType], [32 x %struct.cacheType]* @pcache, i64 0, i64 %7
  br i1 true, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %8, i64 0, i32 0
  %11 = load %struct.precisionType*, %struct.precisionType** %10, align 16
  %.not = icmp eq %struct.precisionType* %11, null
  br i1 %.not, label %19, label %12

12:                                               ; preds = %9
  %13 = bitcast %struct.precisionType* %11 to %struct.precisionType**
  %14 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %15 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %8, i64 0, i32 0
  store %struct.precisionType* %14, %struct.precisionType** %15, align 16
  %16 = getelementptr inbounds [32 x %struct.cacheType], [32 x %struct.cacheType]* @pcache, i64 0, i64 %7, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = add i16 %17, -1
  store i16 %18, i16* %16, align 8
  br label %28

19:                                               ; preds = %9, %5, %1
  %.mask = shl i32 %0, 1
  %20 = and i32 %.mask, 131070
  %narrow = add nuw nsw i32 %20, 8
  %21 = zext i32 %narrow to i64
  %22 = call i8* @malloc(i64 noundef %21) #4
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = call %struct.precisionType* @errorp(i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)) #4
  br label %32

26:                                               ; preds = %19
  %27 = bitcast i8* %22 to %struct.precisionType*
  br label %28

28:                                               ; preds = %26, %12
  %.01 = phi %struct.precisionType* [ %11, %12 ], [ %27, %26 ]
  %29 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 0
  store i16 1, i16* %29, align 2
  %30 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 1
  store i16 %2, i16* %30, align 2
  %31 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %.01, i64 0, i32 2
  store i16 %2, i16* %31, align 2
  br label %32

32:                                               ; preds = %28, %24
  %.0 = phi %struct.precisionType* [ %.01, %28 ], [ %25, %24 ]
  ret %struct.precisionType* %.0
}

declare dso_local i8* @malloc(i64 noundef) #2

declare dso_local %struct.precisionType* @errorp(i32 noundef, i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pfree(%struct.precisionType* noundef %0) #1 {
  %2 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 2
  %4 = icmp ult i16 %3, 32
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = zext i16 %3 to i64
  %7 = getelementptr inbounds [32 x %struct.cacheType], [32 x %struct.cacheType]* @pcache, i64 0, i64 %6
  br i1 true, label %8, label %20

8:                                                ; preds = %5
  %9 = getelementptr inbounds [32 x %struct.cacheType], [32 x %struct.cacheType]* @pcache, i64 0, i64 %6, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = icmp slt i16 %10, 128
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %7, i64 0, i32 0
  %14 = load %struct.precisionType*, %struct.precisionType** %13, align 16
  %15 = bitcast %struct.precisionType* %0 to %struct.precisionType**
  store %struct.precisionType* %14, %struct.precisionType** %15, align 8
  %16 = getelementptr inbounds %struct.cacheType, %struct.cacheType* %7, i64 0, i32 0
  store %struct.precisionType* %0, %struct.precisionType** %16, align 16
  %17 = getelementptr inbounds [32 x %struct.cacheType], [32 x %struct.cacheType]* @pcache, i64 0, i64 %6, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = add i16 %18, 1
  store i16 %19, i16* %17, align 8
  br label %22

20:                                               ; preds = %8, %5, %1
  %21 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @free to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %0) #4
  br label %22

22:                                               ; preds = %20, %12
  ret i32 0
}

declare dso_local i32 @free(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @psetv(%struct.precisionType** noundef %0, %struct.precisionType* noundef returned %1) #1 {
  %3 = icmp eq %struct.precisionType** %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #4
  br label %6

6:                                                ; preds = %4, %2
  %7 = load %struct.precisionType*, %struct.precisionType** %0, align 8
  store %struct.precisionType* %1, %struct.precisionType** %0, align 8
  %.not = icmp eq %struct.precisionType* %1, null
  br i1 %.not, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 0
  %10 = load i16, i16* %9, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* %9, align 2
  br label %12

12:                                               ; preds = %8, %6
  %.not1 = icmp eq %struct.precisionType* %7, null
  br i1 %.not1, label %26, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %7, i64 0, i32 3
  %15 = load i8, i8* %14, align 2
  %.not2 = icmp ult i8 %15, 2
  br i1 %.not2, label %18, label %16

16:                                               ; preds = %13
  %17 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %18

18:                                               ; preds = %16, %13
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %7, i64 0, i32 0
  %20 = load i16, i16* %19, align 2
  %21 = add i16 %20, -1
  store i16 %21, i16* %19, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @pfree(%struct.precisionType* noundef nonnull %7)
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25, %12
  ret %struct.precisionType* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pparmv(%struct.precisionType* noundef returned %0) #1 {
  %2 = icmp eq %struct.precisionType* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0)) #4
  br label %5

5:                                                ; preds = %3, %1
  %6 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %7 = load i8, i8* %6, align 2
  %.not = icmp ult i8 %7, 2
  br i1 %.not, label %10, label %8

8:                                                ; preds = %5
  %9 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0)) #4
  br label %10

10:                                               ; preds = %8, %5
  %11 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %12 = load i16, i16* %11, align 2
  %13 = add i16 %12, 1
  store i16 %13, i16* %11, align 2
  ret %struct.precisionType* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.precisionType* @pparmf(%struct.precisionType* noundef returned %0) #3 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 2
  %5 = add i16 %4, 1
  store i16 %5, i16* %3, align 2
  br label %6

6:                                                ; preds = %2, %1
  ret %struct.precisionType* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @pdestroyf(%struct.precisionType* noundef %0) #1 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %9, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 2
  %5 = add i16 %4, -1
  store i16 %5, i16* %3, align 2
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @pfree(%struct.precisionType* noundef nonnull %0)
  br label %9

9:                                                ; preds = %7, %2, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.precisionType* @pnew(%struct.precisionType* noundef returned %0) #3 {
  %2 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %3 = load i16, i16* %2, align 2
  %4 = add i16 %3, 1
  store i16 %4, i16* %2, align 2
  ret %struct.precisionType* %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.precisionType* @presult(%struct.precisionType* noundef returned %0) #3 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 2
  %5 = add i16 %4, -1
  store i16 %5, i16* %3, align 2
  br label %6

6:                                                ; preds = %2, %1
  ret %struct.precisionType* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @psetq(%struct.precisionType** nocapture noundef %0, %struct.precisionType* noundef returned %1) #1 {
  %3 = load %struct.precisionType*, %struct.precisionType** %0, align 8
  store %struct.precisionType* %1, %struct.precisionType** %0, align 8
  %.not = icmp eq %struct.precisionType* %1, null
  br i1 %.not, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i64 0, i32 0
  %6 = load i16, i16* %5, align 2
  %7 = add i16 %6, 1
  store i16 %7, i16* %5, align 2
  br label %8

8:                                                ; preds = %4, %2
  %.not1 = icmp eq %struct.precisionType* %3, null
  br i1 %.not1, label %16, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %3, i64 0, i32 0
  %11 = load i16, i16* %10, align 2
  %12 = add i16 %11, -1
  store i16 %12, i16* %10, align 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @pfree(%struct.precisionType* noundef nonnull %3)
  br label %16

16:                                               ; preds = %14, %9, %8
  ret %struct.precisionType* %1
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
