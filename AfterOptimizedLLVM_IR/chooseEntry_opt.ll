; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/chooseEntry.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/chooseEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@.str = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/chooseEntry.c\00", align 1
@__PRETTY_FUNCTION__.chooseEntry = private unnamed_addr constant [51 x i8] c"IndexEntry *chooseEntry(IndexNode *, IndexEntry *)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"node->entries\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.IndexEntry* @chooseEntry(%struct.IndexNode* noundef %0, %struct.IndexEntry* noundef %1) #0 {
  %3 = alloca %struct.IndexNode*, align 8
  %4 = alloca %struct.IndexEntry*, align 8
  %5 = alloca %struct.IndexEntry*, align 8
  %6 = alloca %struct.IndexEntry*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.IndexNode* %0, %struct.IndexNode** %3, align 8
  store %struct.IndexEntry* %1, %struct.IndexEntry** %4, align 8
  %9 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %10 = icmp ne %struct.IndexNode* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.chooseEntry, i64 0, i64 0)) #3
  unreachable

13:                                               ; preds = %11
  %14 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %15 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %14, i32 0, i32 1
  %16 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %17 = icmp ne %struct.IndexEntry* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.chooseEntry, i64 0, i64 0)) #3
  unreachable

20:                                               ; preds = %18
  %21 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  %22 = icmp ne %struct.IndexEntry* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %20
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.chooseEntry, i64 0, i64 0)) #3
  unreachable

25:                                               ; preds = %23
  %26 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %27 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %26, i32 0, i32 1
  %28 = load %struct.IndexEntry*, %struct.IndexEntry** %27, align 8
  store %struct.IndexEntry* %28, %struct.IndexEntry** %5, align 8
  %29 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %30 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  %31 = call float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %29, %struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %30)
  store float %31, float* %7, align 4
  %32 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %33 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %32, i32 0, i32 2
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %33, align 8
  store %struct.IndexEntry* %34, %struct.IndexEntry** %6, align 8
  br label %35

35:                                               ; preds = %49, %25
  %36 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  %37 = icmp ne %struct.IndexEntry* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  %40 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  %41 = call float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %39, %struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %40)
  store float %41, float* %8, align 4
  %42 = load float, float* %8, align 4
  %43 = load float, float* %7, align 4
  %44 = fcmp olt float %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  store %struct.IndexEntry* %46, %struct.IndexEntry** %5, align 8
  %47 = load float, float* %8, align 4
  store float %47, float* %7, align 4
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  %51 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %50, i32 0, i32 2
  %52 = load %struct.IndexEntry*, %struct.IndexEntry** %51, align 8
  store %struct.IndexEntry* %52, %struct.IndexEntry** %6, align 8
  br label %35, !llvm.loop !4

53:                                               ; preds = %35
  %54 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  ret %struct.IndexEntry* %54
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8, %struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8) #2

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
