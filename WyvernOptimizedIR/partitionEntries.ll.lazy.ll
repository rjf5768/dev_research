; ModuleID = './partitionEntries.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/partitionEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@partitionEntries.name = internal global [17 x i8] c"partitionEntries\00", align 16
@.str = private unnamed_addr constant [13 x i8] c"I && I->next\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/partitionEntries.c\00", align 1
@__PRETTY_FUNCTION__.partitionEntries = private unnamed_addr constant [71 x i8] c"void partitionEntries(IndexEntry *, Int, IndexEntry **, IndexEntry **)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"fan >= MINIMUM_FAN_SIZE\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"too many entries to partition\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @partitionEntries(%struct.IndexEntry* noundef %0, i64 noundef %1, %struct.IndexEntry** nocapture noundef %2, %struct.IndexEntry** nocapture noundef %3) #0 {
  %5 = alloca %struct.IndexKey, align 8
  %6 = alloca %struct.IndexKey, align 8
  %.not = icmp eq %struct.IndexEntry* %0, null
  br i1 %.not, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %0, i64 0, i32 2
  %9 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %.not30 = icmp eq %struct.IndexEntry* %9, null
  br i1 %.not30, label %11, label %10

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7, %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.partitionEntries, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %13 = icmp sgt i64 %1, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %16

15:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.partitionEntries, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  store %struct.IndexEntry* %0, %struct.IndexEntry** %2, align 8
  %17 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %0, i64 0, i32 2
  %18 = load %struct.IndexEntry*, %struct.IndexEntry** %17, align 8
  store %struct.IndexEntry* %18, %struct.IndexEntry** %3, align 8
  %19 = load %struct.IndexEntry*, %struct.IndexEntry** %2, align 8
  %20 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %19, i64 0, i32 1
  %21 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %18, i64 0, i32 1
  call void @keyUnion(%struct.IndexKey* noundef nonnull %20, %struct.IndexKey* noundef nonnull %21, %struct.IndexKey* noundef nonnull %5) #5
  %22 = call float @volume(%struct.IndexKey* noundef nonnull byval(%struct.IndexKey) align 8 %5) #5
  br label %23

23:                                               ; preds = %37, %16
  %.013 = phi %struct.IndexEntry* [ %0, %16 ], [ %39, %37 ]
  %.010 = phi float [ %22, %16 ], [ %.111, %37 ]
  %.not31 = icmp eq %struct.IndexEntry* %.013, null
  br i1 %.not31, label %40, label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %35, %24
  %.013.pn = phi %struct.IndexEntry* [ %.013, %24 ], [ %.014, %35 ]
  %.111 = phi float [ %.010, %24 ], [ %.212, %35 ]
  %.014.in = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.013.pn, i64 0, i32 2
  %.014 = load %struct.IndexEntry*, %struct.IndexEntry** %.014.in, align 8
  %.not36 = icmp eq %struct.IndexEntry* %.014, null
  br i1 %.not36, label %36, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.013, i64 0, i32 1
  %28 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.014, i64 0, i32 1
  call void @keyUnion(%struct.IndexKey* noundef nonnull %27, %struct.IndexKey* noundef nonnull %28, %struct.IndexKey* noundef nonnull %6) #5
  %29 = call float @volume(%struct.IndexKey* noundef nonnull byval(%struct.IndexKey) align 8 %6) #5
  %30 = fcmp ogt float %29, %.111
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  store %struct.IndexEntry* %.013, %struct.IndexEntry** %2, align 8
  store %struct.IndexEntry* %.014, %struct.IndexEntry** %3, align 8
  %32 = bitcast %struct.IndexKey* %5 to i8*
  %33 = bitcast %struct.IndexKey* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %32, i8* noundef nonnull align 8 dereferenceable(32) %33, i64 32, i1 false)
  br label %34

34:                                               ; preds = %31, %26
  %.212 = phi float [ %29, %31 ], [ %.111, %26 ]
  br label %35

35:                                               ; preds = %34
  br label %25, !llvm.loop !4

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.013, i64 0, i32 2
  %39 = load %struct.IndexEntry*, %struct.IndexEntry** %38, align 8
  br label %23, !llvm.loop !6

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %61, %40
  %.018 = phi %struct.IndexEntry* [ null, %40 ], [ %.220, %61 ]
  %.015 = phi %struct.IndexEntry* [ %0, %40 ], [ %.217, %61 ]
  %.0 = phi %struct.IndexEntry* [ %0, %40 ], [ %.2, %61 ]
  %.not32 = icmp eq %struct.IndexEntry* %.015, null
  br i1 %.not32, label %62, label %42

42:                                               ; preds = %41
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %2, align 8
  %44 = icmp eq %struct.IndexEntry* %.015, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %47 = icmp eq %struct.IndexEntry* %.015, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %45, %42
  %49 = icmp eq %struct.IndexEntry* %.018, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.015, i64 0, i32 2
  %52 = load %struct.IndexEntry*, %struct.IndexEntry** %51, align 8
  br label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.015, i64 0, i32 2
  %55 = load %struct.IndexEntry*, %struct.IndexEntry** %54, align 8
  %56 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.018, i64 0, i32 2
  store %struct.IndexEntry* %55, %struct.IndexEntry** %56, align 8
  br label %57

57:                                               ; preds = %53, %50
  %.119 = phi %struct.IndexEntry* [ null, %50 ], [ %.018, %53 ]
  %.116 = phi %struct.IndexEntry* [ %52, %50 ], [ %55, %53 ]
  %.1 = phi %struct.IndexEntry* [ %52, %50 ], [ %.0, %53 ]
  br label %61

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.015, i64 0, i32 2
  %60 = load %struct.IndexEntry*, %struct.IndexEntry** %59, align 8
  br label %61

61:                                               ; preds = %58, %57
  %.220 = phi %struct.IndexEntry* [ %.119, %57 ], [ %.015, %58 ]
  %.217 = phi %struct.IndexEntry* [ %.116, %57 ], [ %60, %58 ]
  %.2 = phi %struct.IndexEntry* [ %.1, %57 ], [ %.0, %58 ]
  br label %41, !llvm.loop !7

62:                                               ; preds = %41
  %63 = load %struct.IndexEntry*, %struct.IndexEntry** %2, align 8
  %64 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %63, i64 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %64, align 8
  %65 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %66 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %65, i64 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %66, align 8
  %67 = load %struct.IndexEntry*, %struct.IndexEntry** %2, align 8
  %68 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  br label %69

69:                                               ; preds = %116, %62
  %.026 = phi %struct.IndexEntry* [ %68, %62 ], [ %.329, %116 ]
  %.021 = phi %struct.IndexEntry* [ %67, %62 ], [ %.425, %116 ]
  %.05 = phi i64 [ 1, %62 ], [ %.49, %116 ]
  %.01 = phi i64 [ 1, %62 ], [ %.34, %116 ]
  %.3 = phi %struct.IndexEntry* [ %.0, %62 ], [ %.7, %116 ]
  %.not33 = icmp eq %struct.IndexEntry* %.3, null
  br i1 %.not33, label %117, label %70

70:                                               ; preds = %69
  %71 = icmp slt i64 %.05, %1
  br i1 %71, label %72, label %93

72:                                               ; preds = %70
  %73 = icmp slt i64 %.01, %1
  br i1 %73, label %74, label %93

74:                                               ; preds = %72
  %75 = load %struct.IndexEntry*, %struct.IndexEntry** %2, align 8
  %76 = call float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %75, %struct.IndexEntry* noundef nonnull byval(%struct.IndexEntry) align 8 %.3) #5
  %77 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %78 = call float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %77, %struct.IndexEntry* noundef nonnull byval(%struct.IndexEntry) align 8 %.3) #5
  %79 = fcmp olt float %76, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.021, i64 0, i32 2
  store %struct.IndexEntry* %.3, %struct.IndexEntry** %81, align 8
  %82 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.3, i64 0, i32 2
  %83 = load %struct.IndexEntry*, %struct.IndexEntry** %82, align 8
  %84 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.3, i64 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %84, align 8
  %85 = add nsw i64 %.05, 1
  br label %92

86:                                               ; preds = %74
  %87 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.026, i64 0, i32 2
  store %struct.IndexEntry* %.3, %struct.IndexEntry** %87, align 8
  %88 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.3, i64 0, i32 2
  %89 = load %struct.IndexEntry*, %struct.IndexEntry** %88, align 8
  %90 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.3, i64 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %90, align 8
  %91 = add nsw i64 %.01, 1
  br label %92

92:                                               ; preds = %86, %80
  %.127 = phi %struct.IndexEntry* [ %.026, %80 ], [ %.3, %86 ]
  %.122 = phi %struct.IndexEntry* [ %.3, %80 ], [ %.021, %86 ]
  %.16 = phi i64 [ %85, %80 ], [ %.05, %86 ]
  %.12 = phi i64 [ %.01, %80 ], [ %91, %86 ]
  %.4 = phi %struct.IndexEntry* [ %83, %80 ], [ %89, %86 ]
  br label %116

93:                                               ; preds = %72, %70
  %.not34 = icmp slt i64 %.05, %1
  br i1 %.not34, label %102, label %94

94:                                               ; preds = %93
  %95 = icmp slt i64 %.01, %1
  br i1 %95, label %96, label %102

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.026, i64 0, i32 2
  store %struct.IndexEntry* %.3, %struct.IndexEntry** %97, align 8
  %98 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.3, i64 0, i32 2
  %99 = load %struct.IndexEntry*, %struct.IndexEntry** %98, align 8
  %100 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.3, i64 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %100, align 8
  %101 = add nsw i64 %.01, 1
  br label %115

102:                                              ; preds = %94, %93
  %.not35 = icmp slt i64 %.01, %1
  br i1 %.not35, label %111, label %103

103:                                              ; preds = %102
  %104 = icmp slt i64 %.05, %1
  br i1 %104, label %105, label %111

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.021, i64 0, i32 2
  store %struct.IndexEntry* %.3, %struct.IndexEntry** %106, align 8
  %107 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.3, i64 0, i32 2
  %108 = load %struct.IndexEntry*, %struct.IndexEntry** %107, align 8
  %109 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.3, i64 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %109, align 8
  %110 = add nsw i64 %.05, 1
  br label %114

111:                                              ; preds = %103, %102
  %112 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.3, i64 0, i32 2
  %113 = load %struct.IndexEntry*, %struct.IndexEntry** %112, align 8
  call void @errorMessage(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @partitionEntries.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %114

114:                                              ; preds = %111, %105
  %.223 = phi %struct.IndexEntry* [ %.3, %105 ], [ %.021, %111 ]
  %.27 = phi i64 [ %110, %105 ], [ %.05, %111 ]
  %.5 = phi %struct.IndexEntry* [ %108, %105 ], [ %113, %111 ]
  br label %115

115:                                              ; preds = %114, %96
  %.228 = phi %struct.IndexEntry* [ %.3, %96 ], [ %.026, %114 ]
  %.324 = phi %struct.IndexEntry* [ %.021, %96 ], [ %.223, %114 ]
  %.38 = phi i64 [ %.05, %96 ], [ %.27, %114 ]
  %.23 = phi i64 [ %101, %96 ], [ %.01, %114 ]
  %.6 = phi %struct.IndexEntry* [ %99, %96 ], [ %.5, %114 ]
  br label %116

116:                                              ; preds = %115, %92
  %.329 = phi %struct.IndexEntry* [ %.127, %92 ], [ %.228, %115 ]
  %.425 = phi %struct.IndexEntry* [ %.122, %92 ], [ %.324, %115 ]
  %.49 = phi i64 [ %.16, %92 ], [ %.38, %115 ]
  %.34 = phi i64 [ %.12, %92 ], [ %.23, %115 ]
  %.7 = phi %struct.IndexEntry* [ %.4, %92 ], [ %.6, %115 ]
  br label %69, !llvm.loop !8

117:                                              ; preds = %69
  ret void

UnifiedUnreachableBlock:                          ; preds = %15, %11
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @keyUnion(%struct.IndexKey* noundef, %struct.IndexKey* noundef, %struct.IndexKey* noundef) #2

declare dso_local float @volume(%struct.IndexKey* noundef byval(%struct.IndexKey) align 8) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8, %struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind }
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
