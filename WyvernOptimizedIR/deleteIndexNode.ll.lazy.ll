; ModuleID = './deleteIndexNode.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteIndexNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteIndexNode.c\00", align 1
@__PRETTY_FUNCTION__.deleteIndexNode = private unnamed_addr constant [34 x i8] c"void deleteIndexNode(IndexNode *)\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"node->level >= LEAF\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteIndexNode(%struct.IndexNode* noundef %0) #0 {
  %.not = icmp eq %struct.IndexNode* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.deleteIndexNode, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %6 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  br label %7

7:                                                ; preds = %16, %4
  %.0 = phi %struct.IndexEntry* [ %6, %4 ], [ %10, %16 ]
  %.not1 = icmp eq %struct.IndexEntry* %.0, null
  br i1 %.not1, label %19, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.0, i64 0, i32 2
  %10 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %11 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %16

15:                                               ; preds = %8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.deleteIndexNode, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* noundef nonnull %.0, i64 noundef %18) #5
  br label %7, !llvm.loop !4

19:                                               ; preds = %7
  %20 = bitcast %struct.IndexNode* %0 to i8*
  call void @free(i8* noundef %20) #5
  ret void

UnifiedUnreachableBlock:                          ; preds = %15, %3
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @deleteIndexEntry(%struct.IndexEntry* noundef, i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
