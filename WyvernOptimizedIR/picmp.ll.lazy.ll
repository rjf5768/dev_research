; ModuleID = './picmp.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/picmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [6 x i8] c"picmp\00", align 1
@cmpError = internal global [28 x i8] c"Second arg not single digit\00", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @picmp(%struct.precisionType* noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %5 = load i16, i16* %4, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %4, align 2
  br label %7

7:                                                ; preds = %3, %2
  %8 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %9 = load i8, i8* %8, align 2
  %.not1 = icmp eq i8 %9, 0
  br i1 %.not1, label %28, label %10

10:                                               ; preds = %7
  %11 = icmp slt i32 %1, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %10
  %13 = icmp slt i32 %1, -65535
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @cmpError, i64 0, i64 0)) #2
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %18 = load i16, i16* %17, align 2
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = add i32 %23, %1
  %25 = sub i32 0, %24
  br label %26

26:                                               ; preds = %20, %16
  %.0 = phi i32 [ %25, %20 ], [ -1, %16 ]
  br label %27

27:                                               ; preds = %26, %10
  %.1 = phi i32 [ %.0, %26 ], [ -1, %10 ]
  br label %45

28:                                               ; preds = %7
  %29 = icmp sgt i32 %1, -1
  br i1 %29, label %30, label %44

30:                                               ; preds = %28
  %31 = icmp sgt i32 %1, 65535
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @cmpError, i64 0, i64 0)) #2
  br label %34

34:                                               ; preds = %32, %30
  %35 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %36 = load i16, i16* %35, align 2
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = sub nsw i32 %41, %1
  br label %43

43:                                               ; preds = %38, %34
  %.2 = phi i32 [ %42, %38 ], [ 1, %34 ]
  br label %44

44:                                               ; preds = %43, %28
  %.3 = phi i32 [ %.2, %43 ], [ 1, %28 ]
  br label %45

45:                                               ; preds = %44, %27
  %.4 = phi i32 [ %.1, %27 ], [ %.3, %44 ]
  %.not2 = icmp eq %struct.precisionType* %0, null
  br i1 %.not2, label %53, label %46

46:                                               ; preds = %45
  %47 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %48 = load i16, i16* %47, align 2
  %49 = add i16 %48, -1
  store i16 %49, i16* %47, align 2
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #2
  br label %53

53:                                               ; preds = %51, %46, %45
  ret i32 %.4
}

declare dso_local %struct.precisionType* @errorp(i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @pfree(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
