; ModuleID = './deleteEntry.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteEntry.c"
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

@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteEntry.c\00", align 1
@__PRETTY_FUNCTION__.deleteEntry = private unnamed_addr constant [70 x i8] c"void deleteEntry(IndexNode *, IndexKey *, DataAttribute *, Boolean *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"adjustmentFlag\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteEntry(%struct.IndexNode* noundef %0, %struct.IndexKey* noundef %1, %struct.DataAttribute* noundef %2, i8* noundef writeonly %3) #0 {
  %5 = alloca i8, align 1
  %.not = icmp eq %struct.IndexNode* %0, null
  br i1 %.not, label %7, label %6

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.deleteEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %.not17 = icmp eq %struct.IndexKey* %1, null
  br i1 %.not17, label %10, label %9

9:                                                ; preds = %8
  br label %11

10:                                               ; preds = %8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.deleteEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9
  %.not18 = icmp eq i8* %3, null
  br i1 %.not18, label %13, label %12

12:                                               ; preds = %11
  br label %14

13:                                               ; preds = %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.deleteEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %12
  store i8 0, i8* %3, align 1
  %15 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %20 = load %struct.IndexEntry*, %struct.IndexEntry** %19, align 8
  br label %21

21:                                               ; preds = %59, %18
  %.010 = phi %struct.IndexEntry* [ null, %18 ], [ %.313, %59 ]
  %.07 = phi %struct.IndexEntry* [ %20, %18 ], [ %.3, %59 ]
  %.not22 = icmp eq %struct.IndexEntry* %.07, null
  br i1 %.not22, label %60, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.07, i64 0, i32 1
  %24 = call signext i8 @consistentKey(%struct.IndexKey* noundef nonnull %23, %struct.IndexKey* noundef nonnull %1) #4
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.07, i64 0, i32 0, i32 0
  %28 = load %struct.IndexNode*, %struct.IndexNode** %27, align 8
  call void @deleteEntry(%struct.IndexNode* noundef %28, %struct.IndexKey* noundef nonnull %1, %struct.DataAttribute* noundef %2, i8* noundef nonnull %5)
  %29 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.07, i64 0, i32 0, i32 0
  %30 = load %struct.IndexNode*, %struct.IndexNode** %29, align 8
  %31 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %30, i64 0, i32 1
  %32 = load %struct.IndexEntry*, %struct.IndexEntry** %31, align 8
  %33 = icmp eq %struct.IndexEntry* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.07, i64 0, i32 2
  %36 = load %struct.IndexEntry*, %struct.IndexEntry** %35, align 8
  %37 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 0
  %38 = load i64, i64* %37, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* noundef nonnull %.07, i64 noundef %38) #4
  store i8 1, i8* %3, align 1
  %.not23 = icmp eq %struct.IndexEntry* %.010, null
  br i1 %.not23, label %41, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.010, i64 0, i32 2
  store %struct.IndexEntry* %36, %struct.IndexEntry** %40, align 8
  br label %43

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  store %struct.IndexEntry* %36, %struct.IndexEntry** %42, align 8
  br label %43

43:                                               ; preds = %41, %39
  br label %55

44:                                               ; preds = %26
  %45 = load i8, i8* %5, align 1
  %46 = icmp eq i8 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.07, i64 0, i32 0, i32 0
  %49 = load %struct.IndexNode*, %struct.IndexNode** %48, align 8
  %50 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %49, i64 0, i32 1
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %50, align 8
  %52 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.07, i64 0, i32 1
  call void @keysUnion(%struct.IndexEntry* noundef %51, %struct.IndexKey* noundef nonnull %52) #4
  store i8 1, i8* %3, align 1
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %47
  %.18.in = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.07, i64 0, i32 2
  %.18 = load %struct.IndexEntry*, %struct.IndexEntry** %.18.in, align 8
  br label %55

55:                                               ; preds = %54, %43
  %.212 = phi %struct.IndexEntry* [ %.010, %43 ], [ %.07, %54 ]
  %.29 = phi %struct.IndexEntry* [ %36, %43 ], [ %.18, %54 ]
  br label %59

56:                                               ; preds = %22
  %57 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.07, i64 0, i32 2
  %58 = load %struct.IndexEntry*, %struct.IndexEntry** %57, align 8
  br label %59

59:                                               ; preds = %56, %55
  %.313 = phi %struct.IndexEntry* [ %.212, %55 ], [ %.07, %56 ]
  %.3 = phi %struct.IndexEntry* [ %.29, %55 ], [ %58, %56 ]
  br label %21, !llvm.loop !4

60:                                               ; preds = %21
  br label %130

61:                                               ; preds = %14
  %62 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %63 = load %struct.IndexEntry*, %struct.IndexEntry** %62, align 8
  br label %64

64:                                               ; preds = %128, %61
  %.014 = phi %struct.IndexEntry* [ %63, %61 ], [ %.216, %128 ]
  %.04 = phi %struct.IndexEntry* [ null, %61 ], [ %.26, %128 ]
  %.not19 = icmp eq %struct.IndexEntry* %.014, null
  br i1 %.not19, label %129, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.014, i64 0, i32 1
  %67 = call signext i8 @consistentKey(%struct.IndexKey* noundef nonnull %66, %struct.IndexKey* noundef nonnull %1) #4
  %68 = icmp eq i8 %67, 1
  br i1 %68, label %69, label %125

69:                                               ; preds = %65
  %70 = bitcast %struct.IndexEntry* %.014 to %struct.DataObject**
  %71 = load %struct.DataObject*, %struct.DataObject** %70, align 8
  %72 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %71, i64 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %88

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %71, i64 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %71, i64 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %81
  %.01 = phi i64 [ 51, %85 ], [ 0, %81 ]
  br label %87

87:                                               ; preds = %86, %80
  %.12 = phi i64 [ 25, %80 ], [ %.01, %86 ]
  br label %88

88:                                               ; preds = %87, %75
  %.2 = phi i64 [ 18, %75 ], [ %.12, %87 ]
  br label %89

89:                                               ; preds = %108, %88
  %.03 = phi %struct.DataAttribute* [ %2, %88 ], [ %110, %108 ]
  %.0 = phi i8 [ 1, %88 ], [ %.1, %108 ]
  %.not20 = icmp eq %struct.DataAttribute* %.03, null
  br i1 %.not20, label %92, label %90

90:                                               ; preds = %89
  %91 = icmp eq i8 %.0, 1
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i1 [ false, %89 ], [ %91, %90 ]
  br i1 %93, label %94, label %111

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.03, i64 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %96, %.2
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %71, i64 0, i32 1
  %100 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %99, align 8
  %101 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.03, i64 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %100, i64 %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.03, i64 0, i32 1, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call signext i8 @consistentNonKey(i8* noundef %104, i8* noundef %106) #4
  br label %108

108:                                              ; preds = %98, %94
  %.1 = phi i8 [ %107, %98 ], [ %.0, %94 ]
  %109 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %.03, i64 0, i32 2
  %110 = load %struct.DataAttribute*, %struct.DataAttribute** %109, align 8
  br label %89, !llvm.loop !6

111:                                              ; preds = %92
  %112 = icmp eq i8 %.0, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.014, i64 0, i32 2
  %115 = load %struct.IndexEntry*, %struct.IndexEntry** %114, align 8
  br label %124

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.014, i64 0, i32 2
  %118 = load %struct.IndexEntry*, %struct.IndexEntry** %117, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* noundef nonnull %.014, i64 noundef 0) #4
  store i8 1, i8* %3, align 1
  %.not21 = icmp eq %struct.IndexEntry* %.04, null
  br i1 %.not21, label %121, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.04, i64 0, i32 2
  store %struct.IndexEntry* %118, %struct.IndexEntry** %120, align 8
  br label %123

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  store %struct.IndexEntry* %118, %struct.IndexEntry** %122, align 8
  br label %123

123:                                              ; preds = %121, %119
  br label %124

124:                                              ; preds = %123, %113
  %.115 = phi %struct.IndexEntry* [ %115, %113 ], [ %118, %123 ]
  %.15 = phi %struct.IndexEntry* [ %.014, %113 ], [ %.04, %123 ]
  br label %128

125:                                              ; preds = %65
  %126 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.014, i64 0, i32 2
  %127 = load %struct.IndexEntry*, %struct.IndexEntry** %126, align 8
  br label %128

128:                                              ; preds = %125, %124
  %.216 = phi %struct.IndexEntry* [ %.115, %124 ], [ %127, %125 ]
  %.26 = phi %struct.IndexEntry* [ %.15, %124 ], [ %.014, %125 ]
  br label %64, !llvm.loop !7

129:                                              ; preds = %64
  br label %130

130:                                              ; preds = %129, %60
  ret void

UnifiedUnreachableBlock:                          ; preds = %13, %10, %7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local signext i8 @consistentKey(%struct.IndexKey* noundef, %struct.IndexKey* noundef) #2

declare dso_local void @deleteIndexEntry(%struct.IndexEntry* noundef, i64 noundef) #2

declare dso_local void @keysUnion(%struct.IndexEntry* noundef, %struct.IndexKey* noundef) #2

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
