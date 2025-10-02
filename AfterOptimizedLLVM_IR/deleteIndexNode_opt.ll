; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteIndexNode.c'
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
  %2 = alloca %struct.IndexNode*, align 8
  %3 = alloca %struct.IndexEntry*, align 8
  %4 = alloca %struct.IndexEntry*, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %2, align 8
  %5 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %6 = icmp ne %struct.IndexNode* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 29, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.deleteIndexNode, i64 0, i64 0)) #4
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %11 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %10, i32 0, i32 1
  %12 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* %12, %struct.IndexEntry** %3, align 8
  br label %13

13:                                               ; preds = %26, %9
  %14 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %15 = icmp ne %struct.IndexEntry* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %18 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %17, i32 0, i32 2
  %19 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  store %struct.IndexEntry* %19, %struct.IndexEntry** %4, align 8
  %20 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %21 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %26

25:                                               ; preds = %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.deleteIndexNode, i64 0, i64 0)) #4
  unreachable

26:                                               ; preds = %24
  %27 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %28 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %29 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* noundef %27, i64 noundef %30)
  %31 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  store %struct.IndexEntry* %31, %struct.IndexEntry** %3, align 8
  br label %13, !llvm.loop !4

32:                                               ; preds = %13
  %33 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %34 = bitcast %struct.IndexNode* %33 to i8*
  call void @free(i8* noundef %34) #5
  store %struct.IndexNode* null, %struct.IndexNode** %2, align 8
  ret void
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
