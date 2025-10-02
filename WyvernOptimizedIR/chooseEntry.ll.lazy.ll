; ModuleID = './chooseEntry.ll'
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
define dso_local %struct.IndexEntry* @chooseEntry(%struct.IndexNode* noundef readonly %0, %struct.IndexEntry* noundef %1) #0 {
  %.not = icmp eq %struct.IndexNode* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 44, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.chooseEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %7 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  %.not4 = icmp eq %struct.IndexEntry* %7, null
  br i1 %.not4, label %9, label %8

8:                                                ; preds = %5
  br label %10

9:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.chooseEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  %.not5 = icmp eq %struct.IndexEntry* %1, null
  br i1 %.not5, label %12, label %11

11:                                               ; preds = %10
  br label %13

12:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.chooseEntry, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i64 0, i32 1
  %15 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %16 = call float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %15, %struct.IndexEntry* noundef nonnull byval(%struct.IndexEntry) align 8 %1) #4
  br label %17

17:                                               ; preds = %23, %13
  %.02 = phi %struct.IndexEntry* [ %15, %13 ], [ %.13, %23 ]
  %.pn = phi %struct.IndexEntry* [ %15, %13 ], [ %.01, %23 ]
  %.0 = phi float [ %16, %13 ], [ %.1, %23 ]
  %.01.in = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %.pn, i64 0, i32 2
  %.01 = load %struct.IndexEntry*, %struct.IndexEntry** %.01.in, align 8
  %.not6 = icmp eq %struct.IndexEntry* %.01, null
  br i1 %.not6, label %24, label %18

18:                                               ; preds = %17
  %19 = call float @penalty(%struct.IndexEntry* noundef nonnull byval(%struct.IndexEntry) align 8 %.01, %struct.IndexEntry* noundef nonnull byval(%struct.IndexEntry) align 8 %1) #4
  %20 = fcmp olt float %19, %.0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %21, %18
  %.13 = phi %struct.IndexEntry* [ %.01, %21 ], [ %.02, %18 ]
  %.1 = phi float [ %19, %21 ], [ %.0, %18 ]
  br label %23

23:                                               ; preds = %22
  br label %17, !llvm.loop !4

24:                                               ; preds = %17
  ret %struct.IndexEntry* %.02

UnifiedUnreachableBlock:                          ; preds = %12, %9, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8, %struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8) #2

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
