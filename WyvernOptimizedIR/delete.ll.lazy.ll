; ModuleID = './delete.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/delete.c"
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

@delete.name = internal global [7 x i8] c"delete\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/delete.c\00", align 1
@__PRETTY_FUNCTION__.delete = private unnamed_addr constant [54 x i8] c"Int delete(IndexNode **, IndexKey *, DataAttribute *)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"*root\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"invalid index key search values\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"invalid non-key search values\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @delete(%struct.IndexNode** noundef %0, %struct.IndexKey* noundef %1, %struct.DataAttribute* noundef %2) #0 {
  %4 = alloca i8, align 1
  %.not = icmp eq %struct.IndexNode** %0, null
  br i1 %.not, label %6, label %5

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.delete, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  %8 = load %struct.IndexNode*, %struct.IndexNode** %0, align 8
  %.not1 = icmp eq %struct.IndexNode* %8, null
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %7
  br label %11

10:                                               ; preds = %7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.delete, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9
  %.not2 = icmp eq %struct.IndexKey* %1, null
  br i1 %.not2, label %13, label %12

12:                                               ; preds = %11
  br label %14

13:                                               ; preds = %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.delete, i64 0, i64 0)) #4
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %12
  %15 = call signext i8 @validIndexKey(%struct.IndexKey* noundef nonnull %1) #5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @errorMessage(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @delete.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %66

18:                                               ; preds = %14
  %19 = call signext i8 @validAttributes(%struct.DataAttribute* noundef %2) #5
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  call void @errorMessage(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0) #5
  call void @errorMessage(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @delete.name, i64 0, i64 0), i8 noundef signext 1) #5
  br label %66

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.IndexNode*, %struct.IndexNode** %0, align 8
  call void @deleteEntry(%struct.IndexNode* noundef %24, %struct.IndexKey* noundef nonnull %1, %struct.DataAttribute* noundef %2, i8* noundef nonnull %4) #5
  %25 = load %struct.IndexNode*, %struct.IndexNode** %0, align 8
  %26 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %25, i64 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.IndexNode*, %struct.IndexNode** %0, align 8
  %31 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %30, i64 0, i32 1
  %32 = load %struct.IndexEntry*, %struct.IndexEntry** %31, align 8
  %33 = icmp eq %struct.IndexEntry* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.IndexNode*, %struct.IndexNode** %0, align 8
  %36 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %35, i64 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %29, %23
  br label %38

38:                                               ; preds = %55, %37
  %39 = load %struct.IndexNode*, %struct.IndexNode** %0, align 8
  %40 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %39, i64 0, i32 0
  %41 = load i64, i64* %40, align 8
  %.not3 = icmp eq i64 %41, 0
  br i1 %.not3, label %53, label %42

42:                                               ; preds = %38
  %43 = load %struct.IndexNode*, %struct.IndexNode** %0, align 8
  %44 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %43, i64 0, i32 1
  %45 = load %struct.IndexEntry*, %struct.IndexEntry** %44, align 8
  %.not4 = icmp eq %struct.IndexEntry* %45, null
  br i1 %.not4, label %53, label %46

46:                                               ; preds = %42
  %47 = load %struct.IndexNode*, %struct.IndexNode** %0, align 8
  %48 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %47, i64 0, i32 1
  %49 = load %struct.IndexEntry*, %struct.IndexEntry** %48, align 8
  %50 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %49, i64 0, i32 2
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %50, align 8
  %52 = icmp eq %struct.IndexEntry* %51, null
  br label %53

53:                                               ; preds = %46, %42, %38
  %54 = phi i1 [ false, %42 ], [ false, %38 ], [ %52, %46 ]
  br i1 %54, label %55, label %65

55:                                               ; preds = %53
  %56 = load %struct.IndexNode*, %struct.IndexNode** %0, align 8
  %57 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %56, i64 0, i32 1
  %58 = load %struct.IndexEntry*, %struct.IndexEntry** %57, align 8
  %59 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %58, i64 0, i32 0, i32 0
  %60 = load %struct.IndexNode*, %struct.IndexNode** %59, align 8
  store %struct.IndexNode* %60, %struct.IndexNode** %0, align 8
  %61 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %56, i64 0, i32 1
  %62 = bitcast %struct.IndexEntry** %61 to i8**
  %63 = load i8*, i8** %62, align 8
  call void @free(i8* noundef %63) #5
  %64 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %56, i64 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %64, align 8
  call void @deleteIndexNode(%struct.IndexNode* noundef %56) #5
  br label %38, !llvm.loop !4

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %21, %17
  %.0 = phi i64 [ 1, %17 ], [ 2, %21 ], [ 0, %65 ]
  ret i64 %.0

UnifiedUnreachableBlock:                          ; preds = %13, %10, %6
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local signext i8 @validIndexKey(%struct.IndexKey* noundef) #2

declare dso_local void @errorMessage(i8* noundef, i8 noundef signext) #2

declare dso_local signext i8 @validAttributes(%struct.DataAttribute* noundef) #2

declare dso_local void @deleteEntry(%struct.IndexNode* noundef, %struct.IndexKey* noundef, %struct.DataAttribute* noundef, i8* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

declare dso_local void @deleteIndexNode(%struct.IndexNode* noundef) #2

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
