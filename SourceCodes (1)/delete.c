; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/delete.c'
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
  %4 = alloca i64, align 8
  %5 = alloca %struct.IndexNode**, align 8
  %6 = alloca %struct.IndexKey*, align 8
  %7 = alloca %struct.DataAttribute*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.IndexNode*, align 8
  store %struct.IndexNode** %0, %struct.IndexNode*** %5, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %6, align 8
  store %struct.DataAttribute* %2, %struct.DataAttribute** %7, align 8
  %10 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %11 = icmp ne %struct.IndexNode** %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.delete, i64 0, i64 0)) #4
  unreachable

14:                                               ; preds = %12
  %15 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %16 = load %struct.IndexNode*, %struct.IndexNode** %15, align 8
  %17 = icmp ne %struct.IndexNode* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %20

19:                                               ; preds = %14
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.delete, i64 0, i64 0)) #4
  unreachable

20:                                               ; preds = %18
  %21 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %22 = icmp ne %struct.IndexKey* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %20
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.delete, i64 0, i64 0)) #4
  unreachable

25:                                               ; preds = %23
  %26 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %27 = call signext i8 @validIndexKey(%struct.IndexKey* noundef %26)
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @errorMessage(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @delete.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 1, i64* %4, align 8
  br label %100

31:                                               ; preds = %25
  %32 = load %struct.DataAttribute*, %struct.DataAttribute** %7, align 8
  %33 = call signext i8 @validAttributes(%struct.DataAttribute* noundef %32)
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @errorMessage(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 0)
  call void @errorMessage(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @delete.name, i64 0, i64 0), i8 noundef signext 1)
  store i64 2, i64* %4, align 8
  br label %100

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %40 = load %struct.IndexNode*, %struct.IndexNode** %39, align 8
  %41 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %42 = load %struct.DataAttribute*, %struct.DataAttribute** %7, align 8
  call void @deleteEntry(%struct.IndexNode* noundef %40, %struct.IndexKey* noundef %41, %struct.DataAttribute* noundef %42, i8* noundef %8)
  %43 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %44 = load %struct.IndexNode*, %struct.IndexNode** %43, align 8
  %45 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %50 = load %struct.IndexNode*, %struct.IndexNode** %49, align 8
  %51 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %50, i32 0, i32 1
  %52 = load %struct.IndexEntry*, %struct.IndexEntry** %51, align 8
  %53 = icmp eq %struct.IndexEntry* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %56 = load %struct.IndexNode*, %struct.IndexNode** %55, align 8
  %57 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %48, %38
  br label %59

59:                                               ; preds = %81, %58
  %60 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %61 = load %struct.IndexNode*, %struct.IndexNode** %60, align 8
  %62 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %67 = load %struct.IndexNode*, %struct.IndexNode** %66, align 8
  %68 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %67, i32 0, i32 1
  %69 = load %struct.IndexEntry*, %struct.IndexEntry** %68, align 8
  %70 = icmp ne %struct.IndexEntry* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %73 = load %struct.IndexNode*, %struct.IndexNode** %72, align 8
  %74 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %73, i32 0, i32 1
  %75 = load %struct.IndexEntry*, %struct.IndexEntry** %74, align 8
  %76 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %75, i32 0, i32 2
  %77 = load %struct.IndexEntry*, %struct.IndexEntry** %76, align 8
  %78 = icmp eq %struct.IndexEntry* %77, null
  br label %79

79:                                               ; preds = %71, %65, %59
  %80 = phi i1 [ false, %65 ], [ false, %59 ], [ %78, %71 ]
  br i1 %80, label %81, label %99

81:                                               ; preds = %79
  %82 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %83 = load %struct.IndexNode*, %struct.IndexNode** %82, align 8
  store %struct.IndexNode* %83, %struct.IndexNode** %9, align 8
  %84 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %85 = load %struct.IndexNode*, %struct.IndexNode** %84, align 8
  %86 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %85, i32 0, i32 1
  %87 = load %struct.IndexEntry*, %struct.IndexEntry** %86, align 8
  %88 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %87, i32 0, i32 0
  %89 = bitcast %union.anon* %88 to %struct.IndexNode**
  %90 = load %struct.IndexNode*, %struct.IndexNode** %89, align 8
  %91 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  store %struct.IndexNode* %90, %struct.IndexNode** %91, align 8
  %92 = load %struct.IndexNode*, %struct.IndexNode** %9, align 8
  %93 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %92, i32 0, i32 1
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %93, align 8
  %95 = bitcast %struct.IndexEntry* %94 to i8*
  call void @free(i8* noundef %95) #5
  %96 = load %struct.IndexNode*, %struct.IndexNode** %9, align 8
  %97 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %96, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %97, align 8
  %98 = load %struct.IndexNode*, %struct.IndexNode** %9, align 8
  call void @deleteIndexNode(%struct.IndexNode* noundef %98)
  br label %59, !llvm.loop !4

99:                                               ; preds = %79
  store i64 0, i64* %4, align 8
  br label %100

100:                                              ; preds = %99, %36, %30
  %101 = load i64, i64* %4, align 8
  ret i64 %101
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
