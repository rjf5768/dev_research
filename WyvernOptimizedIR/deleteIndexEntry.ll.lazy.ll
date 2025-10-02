; ModuleID = './deleteIndexEntry.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteIndexEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon.0 }
%union.anon.0 = type { i8* }

@deleteIndexEntry.name = internal global [17 x i8] c"deleteIndexEntry\00", align 16
@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteIndexEntry.c\00", align 1
@__PRETTY_FUNCTION__.deleteIndexEntry = private unnamed_addr constant [41 x i8] c"void deleteIndexEntry(IndexEntry *, Int)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"level >= LEAF\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"entry->child.node\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"entry->child.dataObject\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"invalid level\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteIndexEntry(%struct.IndexEntry* noundef %0, i64 noundef %1) #0 {
  %.not = icmp eq %struct.IndexEntry* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %6 = icmp sgt i64 %1, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %10 = icmp sgt i64 %1, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %0, i64 0, i32 0, i32 0
  %13 = load %struct.IndexNode*, %struct.IndexNode** %12, align 8
  %.not2 = icmp eq %struct.IndexNode* %13, null
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %0, i64 0, i32 0, i32 0
  %18 = load %struct.IndexNode*, %struct.IndexNode** %17, align 8
  call void @deleteIndexNode(%struct.IndexNode* noundef %18) #5
  br label %31

19:                                               ; preds = %9
  %20 = icmp eq i64 %1, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %19
  %22 = bitcast %struct.IndexEntry* %0 to %struct.DataObject**
  %23 = load %struct.DataObject*, %struct.DataObject** %22, align 8
  %.not1 = icmp eq %struct.DataObject* %23, null
  br i1 %.not1, label %25, label %24

24:                                               ; preds = %21
  br label %26

25:                                               ; preds = %21
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  %27 = bitcast %struct.IndexEntry* %0 to %struct.DataObject**
  %28 = load %struct.DataObject*, %struct.DataObject** %27, align 8
  call void @deleteDataObject(%struct.DataObject* noundef %28) #5
  br label %30

29:                                               ; preds = %19
  call void @errorMessage(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @deleteIndexEntry.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %30

30:                                               ; preds = %29, %26
  br label %31

31:                                               ; preds = %30, %16
  %32 = bitcast %struct.IndexEntry* %0 to i8*
  call void @free(i8* noundef %32) #5
  ret void

UnifiedUnreachableBlock:                          ; preds = %25, %15, %8, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local void @deleteIndexNode(%struct.IndexNode* noundef) #2

declare dso_local void @deleteDataObject(%struct.DataObject* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

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
