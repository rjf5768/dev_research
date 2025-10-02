; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/2003-05-02-DependentPHI.c'
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
  %1 = alloca i32, align 4
  %2 = alloca %struct.List*, align 8
  %3 = alloca %struct.List*, align 8
  store i32 0, i32* %1, align 4
  store %struct.List* null, %struct.List** %2, align 8
  store %struct.List* @Node5, %struct.List** %3, align 8
  br label %4

4:                                                ; preds = %21, %0
  %5 = load %struct.List*, %struct.List** %3, align 8
  %6 = icmp ne %struct.List* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = load %struct.List*, %struct.List** %3, align 8
  %9 = getelementptr inbounds %struct.List, %struct.List* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.List*, %struct.List** %2, align 8
  %12 = icmp ne %struct.List* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load %struct.List*, %struct.List** %2, align 8
  %15 = getelementptr inbounds %struct.List, %struct.List* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  br label %18

17:                                               ; preds = %7
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ -1, %17 ]
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 noundef %10, i32 noundef %19)
  br label %21

21:                                               ; preds = %18
  %22 = load %struct.List*, %struct.List** %3, align 8
  store %struct.List* %22, %struct.List** %2, align 8
  %23 = load %struct.List*, %struct.List** %3, align 8
  %24 = getelementptr inbounds %struct.List, %struct.List* %23, i32 0, i32 0
  %25 = load %struct.List*, %struct.List** %24, align 8
  store %struct.List* %25, %struct.List** %3, align 8
  br label %4, !llvm.loop !4

26:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
