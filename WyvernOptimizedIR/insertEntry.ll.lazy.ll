; ModuleID = './insertEntry.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/insertEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@insertEntry.name = internal global [12 x i8] c"insertEntry\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/insertEntry.c\00", align 1
@__PRETTY_FUNCTION__.insertEntry = private unnamed_addr constant [68 x i8] c"Int insertEntry(IndexNode *, IndexEntry *, Int, Int, IndexEntry **)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"level >= LEAF\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"fan >= MINIMUM_FAN_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"node->entries != NULL\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"can't choose entry on node\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"can't split LEAF node\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"can't split non-LEAF node\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @insertEntry(%struct.IndexNode* noundef %0, %struct.IndexEntry* noundef %1, i64 noundef %2, i64 noundef %3, %struct.IndexEntry** noundef %4) #0 {
  %6 = alloca %struct.IndexEntry*, align 8
  %.not = icmp eq %struct.IndexNode* %0, null
  br i1 %.not, label %8, label %7

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 65, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %.not6 = icmp eq %struct.IndexEntry* %1, null
  br i1 %.not6, label %11, label %10

10:                                               ; preds = %9
  br label %12

11:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %13 = icmp sgt i64 %2, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %16

15:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  %17 = icmp sgt i64 %3, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %20

19:                                               ; preds = %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, %2
  br i1 %23, label %24, label %81

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %25, align 8
  %.not8 = icmp eq %struct.IndexEntry* %26, null
  br i1 %.not8, label %28, label %27

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %27
  %30 = call %struct.IndexEntry* @chooseEntry(%struct.IndexNode* noundef nonnull %0, %struct.IndexEntry* noundef nonnull %1) #4
  %31 = icmp eq %struct.IndexEntry* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @errorMessage(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %110

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %30, i64 0, i32 0, i32 0
  %35 = load %struct.IndexNode*, %struct.IndexNode** %34, align 8
  %36 = call i64 @insertEntry(%struct.IndexNode* noundef %35, %struct.IndexEntry* noundef nonnull %1, i64 noundef %2, i64 noundef %3, %struct.IndexEntry** noundef %4)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %30, i64 0, i32 0, i32 0
  %40 = load %struct.IndexNode*, %struct.IndexNode** %39, align 8
  %41 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %40, i64 0, i32 1
  %42 = load %struct.IndexEntry*, %struct.IndexEntry** %41, align 8
  %43 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %30, i64 0, i32 1
  call void @keysUnion(%struct.IndexEntry* noundef %42, %struct.IndexKey* noundef nonnull %43) #4
  %44 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  %.not9 = icmp eq %struct.IndexEntry* %44, null
  br i1 %.not9, label %71, label %45

45:                                               ; preds = %38
  store %struct.IndexEntry* null, %struct.IndexEntry** %6, align 8
  %46 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %47 = load %struct.IndexEntry*, %struct.IndexEntry** %46, align 8
  br label %48

48:                                               ; preds = %49, %45
  %storemerge = phi %struct.IndexEntry* [ %47, %45 ], [ %53, %49 ]
  %.05 = phi %struct.IndexEntry* [ %47, %45 ], [ %51, %49 ]
  %.04 = phi i64 [ 0, %45 ], [ %50, %49 ]
  store %struct.IndexEntry* %storemerge, %struct.IndexEntry** %6, align 8
  %.not10 = icmp eq %struct.IndexEntry* %storemerge, null
  br i1 %.not10, label %54, label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i64 %.04, 1
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  %52 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %51, i64 0, i32 2
  %53 = load %struct.IndexEntry*, %struct.IndexEntry** %52, align 8
  br label %48, !llvm.loop !4

54:                                               ; preds = %48
  %55 = icmp slt i64 %.04, %3
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  %58 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.05, i64 0, i32 2
  store %struct.IndexEntry* %57, %struct.IndexEntry** %58, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %4, align 8
  br label %70

59:                                               ; preds = %54
  %60 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  %61 = call i64 @splitNode(%struct.IndexNode* noundef nonnull %0, %struct.IndexEntry* noundef %60, i64 noundef %3, %struct.IndexEntry** noundef nonnull %6) #4
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  store %struct.IndexEntry* %64, %struct.IndexEntry** %4, align 8
  br label %69

65:                                               ; preds = %59
  %66 = icmp eq i64 %61, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %110

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %63
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %38
  br label %80

72:                                               ; preds = %33
  %73 = icmp eq i64 %36, 1
  br i1 %73, label %78, label %74

74:                                               ; preds = %72
  %75 = icmp eq i64 %36, 2
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = icmp eq i64 %36, 3
  br i1 %77, label %78, label %79

78:                                               ; preds = %76, %74, %72
  br label %110

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %71
  br label %109

81:                                               ; preds = %20
  %82 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %83 = load %struct.IndexEntry*, %struct.IndexEntry** %82, align 8
  br label %84

84:                                               ; preds = %85, %81
  %.03 = phi %struct.IndexEntry* [ %83, %81 ], [ %.02, %85 ]
  %.02 = phi %struct.IndexEntry* [ %83, %81 ], [ %88, %85 ]
  %.01 = phi i64 [ 0, %81 ], [ %86, %85 ]
  %.not7 = icmp eq %struct.IndexEntry* %.02, null
  br i1 %.not7, label %89, label %85

85:                                               ; preds = %84
  %86 = add nuw nsw i64 %.01, 1
  %87 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.02, i64 0, i32 2
  %88 = load %struct.IndexEntry*, %struct.IndexEntry** %87, align 8
  br label %84, !llvm.loop !6

89:                                               ; preds = %84
  %90 = icmp slt i64 %.01, %3
  br i1 %90, label %91, label %98

91:                                               ; preds = %89
  %92 = icmp eq %struct.IndexEntry* %.03, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  store %struct.IndexEntry* %1, %struct.IndexEntry** %94, align 8
  br label %97

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.03, i64 0, i32 2
  store %struct.IndexEntry* %1, %struct.IndexEntry** %96, align 8
  br label %97

97:                                               ; preds = %95, %93
  store %struct.IndexEntry* null, %struct.IndexEntry** %4, align 8
  br label %108

98:                                               ; preds = %89
  %99 = call i64 @splitNode(%struct.IndexNode* noundef nonnull %0, %struct.IndexEntry* noundef nonnull %1, i64 noundef %3, %struct.IndexEntry** noundef %4) #4
  %100 = icmp eq i64 %99, 1
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  call void @errorMessage(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %110

106:                                              ; preds = %101
  call void @errorMessage(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %110

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107, %97
  br label %109

109:                                              ; preds = %108, %80
  br label %110

110:                                              ; preds = %109, %106, %105, %78, %67, %32
  %.0 = phi i64 [ 1, %32 ], [ 0, %109 ], [ 2, %67 ], [ %36, %78 ], [ 3, %105 ], [ 2, %106 ]
  ret i64 %.0

UnifiedUnreachableBlock:                          ; preds = %28, %19, %15, %11, %8
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local %struct.IndexEntry* @chooseEntry(%struct.IndexNode* noundef, %struct.IndexEntry* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local void @keysUnion(%struct.IndexEntry* noundef, %struct.IndexKey* noundef) #2

declare dso_local i64 @splitNode(%struct.IndexNode* noundef, %struct.IndexEntry* noundef, i64 noundef, %struct.IndexEntry** noundef) #2

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
