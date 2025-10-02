; ModuleID = './splitNode.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/splitNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@splitNode.name = internal global [10 x i8] c"splitNode\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"nodeToSplit\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/splitNode.c\00", align 1
@__PRETTY_FUNCTION__.splitNode = private unnamed_addr constant [61 x i8] c"Int splitNode(IndexNode *, IndexEntry *, Int, IndexEntry **)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"nodeToSplit->entries\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"fan >= MINIMUM_FAN_SIZE\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"allocation failure - split entry\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"allocation failure - sibling node\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @splitNode(%struct.IndexNode* noundef %0, %struct.IndexEntry* noundef %1, i64 noundef %2, %struct.IndexEntry** nocapture noundef %3) #0 {
  %.not = icmp eq %struct.IndexNode* %0, null
  br i1 %.not, label %6, label %5

5:                                                ; preds = %4
  br label %7

6:                                                ; preds = %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %9 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %.not1 = icmp eq %struct.IndexEntry* %9, null
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  %.not2 = icmp eq %struct.IndexEntry* %1, null
  br i1 %.not2, label %14, label %13

13:                                               ; preds = %12
  br label %15

14:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %13
  %16 = icmp sgt i64 %2, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %19

18:                                               ; preds = %15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  %20 = call %struct.IndexEntry* @createIndexEntry() #4
  store %struct.IndexEntry* %20, %struct.IndexEntry** %3, align 8
  %21 = icmp eq %struct.IndexEntry* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @errorMessage(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @splitNode.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %47

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.IndexNode* @createIndexNode(i64 noundef %25) #4
  %27 = icmp eq %struct.IndexNode* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %30 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 0
  %31 = load i64, i64* %30, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* noundef %29, i64 noundef %31) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0) #4
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @splitNode.name, i64 0, i64 0), i8 noundef signext 1) #4
  br label %47

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %35 = load %struct.IndexEntry*, %struct.IndexEntry** %34, align 8
  %36 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %1, i64 0, i32 2
  store %struct.IndexEntry* %35, %struct.IndexEntry** %36, align 8
  %37 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %37, align 8
  %38 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %26, i64 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %38, align 8
  %39 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %40 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %26, i64 0, i32 1
  call void @partitionEntries(%struct.IndexEntry* noundef nonnull %1, i64 noundef %2, %struct.IndexEntry** noundef nonnull %39, %struct.IndexEntry** noundef nonnull %40) #4
  %41 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %26, i64 0, i32 1
  %42 = load %struct.IndexEntry*, %struct.IndexEntry** %41, align 8
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %44 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %43, i64 0, i32 1
  call void @keysUnion(%struct.IndexEntry* noundef %42, %struct.IndexKey* noundef nonnull %44) #4
  %45 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %46 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %45, i64 0, i32 0, i32 0
  store %struct.IndexNode* %26, %struct.IndexNode** %46, align 8
  br label %47

47:                                               ; preds = %33, %28, %22
  %.0 = phi i64 [ 1, %22 ], [ 1, %28 ], [ 0, %33 ]
  ret i64 %.0

UnifiedUnreachableBlock:                          ; preds = %18, %14, %11, %6
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local %struct.IndexEntry* @createIndexEntry() #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local %struct.IndexNode* @createIndexNode(i64 noundef) #2

declare dso_local void @deleteIndexEntry(%struct.IndexEntry* noundef, i64 noundef) #2

declare dso_local void @partitionEntries(%struct.IndexEntry* noundef, i64 noundef, %struct.IndexEntry** noundef, %struct.IndexEntry** noundef) #2

declare dso_local void @keysUnion(%struct.IndexEntry* noundef, %struct.IndexKey* noundef) #2

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
