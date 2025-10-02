; ModuleID = './query.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }
%struct.DataObjectAttribute = type { %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }

@query.name = internal global [6 x i8] c"query\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/query.c\00", align 1
@__PRETTY_FUNCTION__.query = private unnamed_addr constant [85 x i8] c"Int query(IndexNode *, IndexKey *, DataAttribute *, Boolean, void (*)(DataObject *))\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"!( checkValidity != TRUE && checkValidity != FALSE )\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"invalid index key search values\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"invalid non-key search values\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @query(%struct.IndexNode* noundef readonly %0, %struct.IndexKey* noundef %1, %struct.DataAttribute* noundef %2, i8 noundef signext %3, void (%struct.DataObject*)* nocapture noundef readonly %4) #0 {
  %.not = icmp eq %struct.IndexNode* %0, null
  br i1 %.not, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 noundef 83, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.query, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %.not7 = icmp eq %struct.IndexKey* %1, null
  br i1 %.not7, label %10, label %9

9:                                                ; preds = %8
  br label %11

10:                                               ; preds = %8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.query, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9
  %.not8 = icmp eq i8 %3, 1
  br i1 %.not8, label %13, label %12

12:                                               ; preds = %11
  %.not12 = icmp eq i8 %3, 0
  br i1 %.not12, label %13, label %14

13:                                               ; preds = %12, %11
  br label %15

14:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.query, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %13
  %16 = icmp eq i8 %3, 1
  br i1 %16, label %17, label %27

17:                                               ; preds = %15
  %18 = call signext i8 @validIndexKey(%struct.IndexKey* noundef nonnull %1) #4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @errorMessage(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @query.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %106

21:                                               ; preds = %17
  %22 = call signext i8 @validAttributes(%struct.DataAttribute* noundef %2) #4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @errorMessage(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @query.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %106

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %15
  %28 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  br label %33

33:                                               ; preds = %43, %31
  %.06.in = phi %struct.IndexEntry** [ %32, %31 ], [ %44, %43 ]
  %.06 = load %struct.IndexEntry*, %struct.IndexEntry** %.06.in, align 8
  %.not11 = icmp eq %struct.IndexEntry* %.06, null
  br i1 %.not11, label %45, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.06, i64 0, i32 1
  %36 = call signext i8 @consistentKey(%struct.IndexKey* noundef nonnull %35, %struct.IndexKey* noundef nonnull %1) #4
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.06, i64 0, i32 0, i32 0
  %40 = load %struct.IndexNode*, %struct.IndexNode** %39, align 8
  %41 = call i64 @query(%struct.IndexNode* noundef %40, %struct.IndexKey* noundef nonnull %1, %struct.DataAttribute* noundef %2, i8 noundef signext 0, void (%struct.DataObject*)* noundef %4)
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.06, i64 0, i32 2
  br label %33, !llvm.loop !4

45:                                               ; preds = %33
  br label %105

46:                                               ; preds = %27
  %47 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  br label %48

48:                                               ; preds = %102, %46
  %.05.in = phi %struct.IndexEntry** [ %47, %46 ], [ %103, %102 ]
  %.05 = load %struct.IndexEntry*, %struct.IndexEntry** %.05.in, align 8
  %.not9 = icmp eq %struct.IndexEntry* %.05, null
  br i1 %.not9, label %104, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.05, i64 0, i32 1
  %51 = call signext i8 @consistentKey(%struct.IndexKey* noundef nonnull %50, %struct.IndexKey* noundef nonnull %1) #4
  %52 = icmp eq i8 %51, 1
  br i1 %52, label %53, label %101

53:                                               ; preds = %49
  %54 = bitcast %struct.IndexEntry* %.05 to %struct.DataObject**
  %55 = load %struct.DataObject*, %struct.DataObject** %54, align 8
  %56 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %55, i64 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %72

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %55, i64 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %71

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %55, i64 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %65
  %.02 = phi i64 [ 51, %69 ], [ 0, %65 ]
  br label %71

71:                                               ; preds = %70, %64
  %.13 = phi i64 [ 25, %64 ], [ %.02, %70 ]
  br label %72

72:                                               ; preds = %71, %59
  %.2 = phi i64 [ 18, %59 ], [ %.13, %71 ]
  br label %73

73:                                               ; preds = %92, %72
  %.04 = phi %struct.DataAttribute* [ %2, %72 ], [ %94, %92 ]
  %.01 = phi i8 [ 1, %72 ], [ %.1, %92 ]
  %.not10 = icmp eq %struct.DataAttribute* %.04, null
  br i1 %.not10, label %76, label %74

74:                                               ; preds = %73
  %75 = icmp eq i8 %.01, 1
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i1 [ false, %73 ], [ %75, %74 ]
  br i1 %77, label %78, label %95

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.04, i64 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, %.2
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %55, i64 0, i32 1
  %84 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %83, align 8
  %85 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.04, i64 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %84, i64 %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.04, i64 0, i32 1, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call signext i8 @consistentNonKey(i8* noundef %88, i8* noundef %90) #4
  br label %92

92:                                               ; preds = %82, %78
  %.1 = phi i8 [ %91, %82 ], [ %.01, %78 ]
  %93 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.04, i64 0, i32 2
  %94 = load %struct.DataAttribute*, %struct.DataAttribute** %93, align 8
  br label %73, !llvm.loop !6

95:                                               ; preds = %76
  %96 = icmp eq i8 %.01, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = bitcast %struct.IndexEntry* %.05 to %struct.DataObject**
  %99 = load %struct.DataObject*, %struct.DataObject** %98, align 8
  call void %4(%struct.DataObject* noundef %99) #4
  br label %100

100:                                              ; preds = %97, %95
  br label %101

101:                                              ; preds = %100, %49
  br label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.05, i64 0, i32 2
  br label %48, !llvm.loop !7

104:                                              ; preds = %48
  br label %105

105:                                              ; preds = %104, %45
  br label %106

106:                                              ; preds = %105, %24, %20
  %.0 = phi i64 [ 1, %20 ], [ 2, %24 ], [ 0, %105 ]
  ret i64 %.0

UnifiedUnreachableBlock:                          ; preds = %14, %10, %7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local signext i8 @validIndexKey(%struct.IndexKey* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local signext i8 @validAttributes(%struct.DataAttribute* noundef) #2

declare dso_local signext i8 @consistentKey(%struct.IndexKey* noundef, %struct.IndexKey* noundef) #2

declare dso_local signext i8 @consistentNonKey(i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

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
