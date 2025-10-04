; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/deleteIndexEntry.c'
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
  %3 = alloca %struct.IndexEntry*, align 8
  %4 = alloca i64, align 8
  store %struct.IndexEntry* %0, %struct.IndexEntry** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %6 = icmp ne %struct.IndexEntry* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 35, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #4
  unreachable

9:                                                ; preds = %7
  %10 = load i64, i64* %4, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 36, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #4
  unreachable

14:                                               ; preds = %12
  %15 = load i64, i64* %4, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %19 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %18, i32 0, i32 0
  %20 = bitcast %union.anon* %19 to %struct.IndexNode**
  %21 = load %struct.IndexNode*, %struct.IndexNode** %20, align 8
  %22 = icmp ne %struct.IndexNode* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #4
  unreachable

25:                                               ; preds = %23
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %27 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %26, i32 0, i32 0
  %28 = bitcast %union.anon* %27 to %struct.IndexNode**
  %29 = load %struct.IndexNode*, %struct.IndexNode** %28, align 8
  call void @deleteIndexNode(%struct.IndexNode* noundef %29)
  br label %48

30:                                               ; preds = %14
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %35 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %34, i32 0, i32 0
  %36 = bitcast %union.anon* %35 to %struct.DataObject**
  %37 = load %struct.DataObject*, %struct.DataObject** %36, align 8
  %38 = icmp ne %struct.DataObject* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %41

40:                                               ; preds = %33
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #4
  unreachable

41:                                               ; preds = %39
  %42 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %43 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %42, i32 0, i32 0
  %44 = bitcast %union.anon* %43 to %struct.DataObject**
  %45 = load %struct.DataObject*, %struct.DataObject** %44, align 8
  call void @deleteDataObject(%struct.DataObject* noundef %45)
  br label %47

46:                                               ; preds = %30
  call void @errorMessage(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @deleteIndexEntry.name, i64 0, i64 0), i8 noundef signext 1)
  br label %47

47:                                               ; preds = %46, %41
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %50 = bitcast %struct.IndexEntry* %49 to i8*
  call void @free(i8* noundef %50) #5
  store %struct.IndexEntry* null, %struct.IndexEntry** %3, align 8
  ret void
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
