; ModuleID = './2003-05-02-DependentPHI.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-02-DependentPHI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List = type { %struct.List*, i32 }

@Node0 = dso_local global %struct.List { %struct.List* null, i32 5 }, align 8
@Node1 = dso_local global %struct.List { %struct.List* @Node0, i32 4 }, align 8
@Node2 = dso_local global %struct.List { %struct.List* @Node1, i32 3 }, align 8
@Node3 = dso_local global %struct.List { %struct.List* @Node2, i32 2 }, align 8
@Node4 = dso_local global %struct.List { %struct.List* @Node3, i32 1 }, align 8
@Node5 = dso_local global %struct.List { %struct.List* @Node4, i32 0 }, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %12, %0
  %.01 = phi %struct.List* [ null, %0 ], [ %.0, %12 ]
  %.0 = phi %struct.List* [ @Node5, %0 ], [ %14, %12 ]
  %.not = icmp eq %struct.List* %.0, null
  br i1 %.not, label %15, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.List, %struct.List* %.0, i64 0, i32 1
  %4 = load i32, i32* %3, align 8
  %.not2 = icmp eq %struct.List* %.01, null
  br i1 %.not2, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.List, %struct.List* %.01, i64 0, i32 1
  %7 = load i32, i32* %6, align 8
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ %7, %5 ], [ -1, %8 ]
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %4, i32 noundef %10) #2
  br label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.List, %struct.List* %.0, i64 0, i32 0
  %14 = load %struct.List*, %struct.List** %13, align 8
  br label %1, !llvm.loop !4

15:                                               ; preds = %1
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
