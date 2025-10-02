; ModuleID = './hcg.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/yacr2/hcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._nodeHCGType = type { i64*, i64, i64 }

@channelNets = external dso_local global i64, align 8
@HCG = dso_local global %struct._nodeHCGType* null, align 8
@storageRootHCG = dso_local global i64* null, align 8
@storageHCG = dso_local global i64* null, align 8
@storageLimitHCG = dso_local global i64 0, align 8
@FIRST = external dso_local global i64*, align 8
@LAST = external dso_local global i64*, align 8
@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/yacr2/hcg.c\00", align 1
@__PRETTY_FUNCTION__.BuildHCG = private unnamed_addr constant [20 x i8] c"void BuildHCG(void)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"storageLimitHCG > 0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[%d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@channelTracks = external dso_local global i64, align 8
@str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllocHCG() #0 {
  %1 = load i64, i64* @channelNets, align 8
  %2 = mul i64 %1, 24
  %3 = add i64 %2, 24
  %4 = call noalias i8* @malloc(i64 noundef %3) #6
  store i8* %4, i8** bitcast (%struct._nodeHCGType** @HCG to i8**), align 8
  %5 = add i64 %1, 1
  %6 = add i64 %1, 1
  %7 = mul i64 %5, %6
  %8 = shl i64 %7, 3
  %9 = call noalias i8* @malloc(i64 noundef %8) #6
  store i8* %9, i8** bitcast (i64** @storageRootHCG to i8**), align 8
  store i8* %9, i8** bitcast (i64** @storageHCG to i8**), align 8
  %10 = load i64, i64* @channelNets, align 8
  %11 = add i64 %10, 1
  %12 = add i64 %10, 1
  %13 = mul i64 %11, %12
  store i64 %13, i64* @storageLimitHCG, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeHCG() #0 {
  %1 = load i8*, i8** bitcast (%struct._nodeHCGType** @HCG to i8**), align 8
  call void @free(i8* noundef %1) #6
  %2 = load i8*, i8** bitcast (i64** @storageRootHCG to i8**), align 8
  call void @free(i8* noundef %2) #6
  store i64 0, i64* @storageLimitHCG, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildHCG() #0 {
  call void @AllocHCG()
  br label %1

1:                                                ; preds = %73, %0
  %.0 = phi i64 [ 1, %0 ], [ %74, %73 ]
  %2 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.0, %2
  br i1 %.not, label %75, label %3

3:                                                ; preds = %1
  %4 = load i64*, i64** @FIRST, align 8
  %5 = getelementptr inbounds i64, i64* %4, i64 %.0
  %6 = load i64, i64* %5, align 8
  %7 = load i64*, i64** @LAST, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 %.0
  %9 = load i64, i64* %8, align 8
  %10 = load i64*, i64** @storageHCG, align 8
  %11 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %12 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %11, i64 %.0, i32 0
  store i64* %10, i64** %12, align 8
  br label %13

13:                                               ; preds = %68, %3
  %.02 = phi i64 [ 0, %3 ], [ %.1, %68 ]
  %.01 = phi i64 [ 1, %3 ], [ %69, %68 ]
  %14 = load i64, i64* @channelNets, align 8
  %.not7 = icmp ugt i64 %.01, %14
  br i1 %.not7, label %70, label %15

15:                                               ; preds = %13
  %16 = load i64*, i64** @FIRST, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 %.01
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %18, %6
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i64*, i64** @LAST, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 %.01
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %23, %6
  br i1 %24, label %35, label %25

25:                                               ; preds = %20, %15
  %26 = load i64*, i64** @FIRST, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 %.01
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %28, %9
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i64*, i64** @LAST, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 %.01
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %33, %9
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %20
  br label %67

36:                                               ; preds = %30, %25
  br label %37

37:                                               ; preds = %48, %36
  %.04 = phi i64 [ 0, %36 ], [ %49, %48 ]
  %38 = icmp ult i64 %.04, %.02
  br i1 %38, label %39, label %.loopexit

39:                                               ; preds = %37
  %40 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %41 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %40, i64 %.0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 %.04
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, %.01
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %50

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47
  %49 = add i64 %.04, 1
  br label %37, !llvm.loop !4

.loopexit:                                        ; preds = %37
  br label %50

50:                                               ; preds = %.loopexit, %46
  br i1 %38, label %52, label %51

51:                                               ; preds = %50
  br label %53

52:                                               ; preds = %50
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.BuildHCG, i64 0, i64 0)) #7
  br label %UnifiedUnreachableBlock

53:                                               ; preds = %51
  %54 = load i64, i64* @storageLimitHCG, align 8
  %.not9 = icmp eq i64 %54, 0
  br i1 %.not9, label %56, label %55

55:                                               ; preds = %53
  br label %57

56:                                               ; preds = %53
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 noundef 97, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.BuildHCG, i64 0, i64 0)) #7
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %55
  %58 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %59 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %58, i64 %.0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 %.02
  store i64 %.01, i64* %61, align 8
  %62 = load i64*, i64** @storageHCG, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  store i64* %63, i64** @storageHCG, align 8
  %64 = load i64, i64* @storageLimitHCG, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* @storageLimitHCG, align 8
  %66 = add i64 %.02, 1
  br label %67

67:                                               ; preds = %57, %35
  %.1 = phi i64 [ %.02, %35 ], [ %66, %57 ]
  br label %68

68:                                               ; preds = %67
  %69 = add i64 %.01, 1
  br label %13, !llvm.loop !6

70:                                               ; preds = %13
  %71 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %72 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %71, i64 %.0, i32 1
  store i64 %.02, i64* %72, align 8
  br label %73

73:                                               ; preds = %70
  %74 = add i64 %.0, 1
  br label %1, !llvm.loop !7

75:                                               ; preds = %1
  ret void

UnifiedUnreachableBlock:                          ; preds = %56, %52
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @DFSClearHCG(%struct._nodeHCGType* nocapture noundef writeonly %0) #3 {
  br label %2

2:                                                ; preds = %6, %1
  %.0 = phi i64 [ 1, %1 ], [ %7, %6 ]
  %3 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.0, %3
  br i1 %.not, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %0, i64 %.0, i32 2
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %4
  %7 = add i64 %.0, 1
  br label %2, !llvm.loop !8

8:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DumpHCG(%struct._nodeHCGType* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %19, %1
  %.01 = phi i64 [ 1, %1 ], [ %20, %19 ]
  %3 = load i64, i64* @channelNets, align 8
  %.not = icmp ugt i64 %.01, %3
  br i1 %.not, label %21, label %4

4:                                                ; preds = %2
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 noundef %.01) #6
  br label %6

6:                                                ; preds = %16, %4
  %.0 = phi i64 [ 0, %4 ], [ %17, %16 ]
  %7 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %0, i64 %.01, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %.0, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %0, i64 %.01, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 %.0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 noundef %14) #6
  br label %16

16:                                               ; preds = %10
  %17 = add i64 %.0, 1
  br label %6, !llvm.loop !9

18:                                               ; preds = %6
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %18
  %20 = add i64 %.01, 1
  br label %2, !llvm.loop !10

21:                                               ; preds = %2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @NoHCV(%struct._nodeHCGType* nocapture noundef readonly %0, i64 noundef %1, i64* nocapture noundef readonly %2, i64* nocapture noundef writeonly %3) #3 {
  br label %5

5:                                                ; preds = %37, %4
  %.03 = phi i64 [ 1, %4 ], [ %38, %37 ]
  %6 = load i64, i64* @channelTracks, align 8
  %.not = icmp ugt i64 %.03, %6
  br i1 %.not, label %39, label %7

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %33, %7
  %.02 = phi i64 [ 1, %7 ], [ %34, %33 ]
  %.0 = phi i64 [ 1, %7 ], [ %.2, %33 ]
  %9 = load i64, i64* @channelNets, align 8
  %.not6 = icmp ugt i64 %.02, %9
  br i1 %.not6, label %.loopexit4, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds i64, i64* %2, i64 %.02
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, %.03
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %27, %14
  %.01 = phi i64 [ 0, %14 ], [ %28, %27 ]
  %16 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %0, i64 %1, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %.01, %17
  br i1 %18, label %19, label %.loopexit

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %0, i64 %1, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 %.01
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, %.02
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %29

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = add i64 %.01, 1
  br label %15, !llvm.loop !11

.loopexit:                                        ; preds = %15
  br label %29

29:                                               ; preds = %.loopexit, %25
  %.1 = phi i64 [ 0, %25 ], [ %.0, %.loopexit ]
  %.not7 = icmp eq i64 %.1, 0
  br i1 %.not7, label %30, label %31

30:                                               ; preds = %29
  br label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %10
  %.2 = phi i64 [ %.1, %31 ], [ %.0, %10 ]
  br label %33

33:                                               ; preds = %32
  %34 = add i64 %.02, 1
  br label %8, !llvm.loop !12

.loopexit4:                                       ; preds = %8
  br label %35

35:                                               ; preds = %.loopexit4, %30
  %.3 = phi i64 [ %.1, %30 ], [ %.0, %.loopexit4 ]
  %36 = getelementptr inbounds i64, i64* %3, i64 %.03
  store i64 %.3, i64* %36, align 8
  br label %37

37:                                               ; preds = %35
  %38 = add i64 %.03, 1
  br label %5, !llvm.loop !13

39:                                               ; preds = %5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
