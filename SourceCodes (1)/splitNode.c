; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/splitNode.c'
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
define dso_local i64 @splitNode(%struct.IndexNode* noundef %0, %struct.IndexEntry* noundef %1, i64 noundef %2, %struct.IndexEntry** noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.IndexNode*, align 8
  %7 = alloca %struct.IndexEntry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.IndexEntry**, align 8
  %10 = alloca %struct.IndexEntry*, align 8
  %11 = alloca %struct.IndexNode*, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %6, align 8
  store %struct.IndexEntry* %1, %struct.IndexEntry** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.IndexEntry** %3, %struct.IndexEntry*** %9, align 8
  %12 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %13 = icmp ne %struct.IndexNode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %16

15:                                               ; preds = %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #3
  unreachable

16:                                               ; preds = %14
  %17 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %18 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %17, i32 0, i32 1
  %19 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  %20 = icmp ne %struct.IndexEntry* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %23

22:                                               ; preds = %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #3
  unreachable

23:                                               ; preds = %21
  %24 = load %struct.IndexEntry*, %struct.IndexEntry** %7, align 8
  %25 = icmp ne %struct.IndexEntry* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %28

27:                                               ; preds = %23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #3
  unreachable

28:                                               ; preds = %26
  %29 = load i64, i64* %8, align 8
  %30 = icmp sge i64 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %33

32:                                               ; preds = %28
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #3
  unreachable

33:                                               ; preds = %31
  %34 = call %struct.IndexEntry* @createIndexEntry()
  %35 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  store %struct.IndexEntry* %34, %struct.IndexEntry** %35, align 8
  %36 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %37 = load %struct.IndexEntry*, %struct.IndexEntry** %36, align 8
  %38 = icmp eq %struct.IndexEntry* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  call void @errorMessage(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @splitNode.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %5, align 8
  br label %82

40:                                               ; preds = %33
  %41 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %42 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.IndexNode* @createIndexNode(i64 noundef %43)
  store %struct.IndexNode* %44, %struct.IndexNode** %11, align 8
  %45 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %46 = icmp eq %struct.IndexNode* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %49 = load %struct.IndexEntry*, %struct.IndexEntry** %48, align 8
  %50 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %51 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* noundef %49, i64 noundef %52)
  call void @errorMessage(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @splitNode.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %5, align 8
  br label %82

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.IndexEntry*, %struct.IndexEntry** %7, align 8
  store %struct.IndexEntry* %55, %struct.IndexEntry** %10, align 8
  %56 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %57 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %56, i32 0, i32 1
  %58 = load %struct.IndexEntry*, %struct.IndexEntry** %57, align 8
  %59 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %60 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %59, i32 0, i32 2
  store %struct.IndexEntry* %58, %struct.IndexEntry** %60, align 8
  %61 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %62 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %61, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %62, align 8
  %63 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %64 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %63, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %64, align 8
  %65 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %68 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %67, i32 0, i32 1
  %69 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %70 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %69, i32 0, i32 1
  call void @partitionEntries(%struct.IndexEntry* noundef %65, i64 noundef %66, %struct.IndexEntry** noundef %68, %struct.IndexEntry** noundef %70)
  %71 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %72 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %71, i32 0, i32 1
  %73 = load %struct.IndexEntry*, %struct.IndexEntry** %72, align 8
  %74 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %75 = load %struct.IndexEntry*, %struct.IndexEntry** %74, align 8
  %76 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %75, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* noundef %73, %struct.IndexKey* noundef %76)
  %77 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %78 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %79 = load %struct.IndexEntry*, %struct.IndexEntry** %78, align 8
  %80 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %79, i32 0, i32 0
  %81 = bitcast %union.anon* %80 to %struct.IndexNode**
  store %struct.IndexNode* %77, %struct.IndexNode** %81, align 8
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %54, %47, %39
  %83 = load i64, i64* %5, align 8
  ret i64 %83
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
