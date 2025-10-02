; ModuleID = './consistent.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/consistent.c\00", align 1
@__PRETTY_FUNCTION__.consistentKey = private unnamed_addr constant [46 x i8] c"Boolean consistentKey(IndexKey *, IndexKey *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@__PRETTY_FUNCTION__.consistentNonKey = private unnamed_addr constant [41 x i8] c"Boolean consistentNonKey(Char *, Char *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @consistentKey(%struct.IndexKey* noundef readonly %0, %struct.IndexKey* noundef readonly %1) #0 {
  %.not = icmp eq %struct.IndexKey* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.consistentKey, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %.not1 = icmp eq %struct.IndexKey* %1, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.consistentKey, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 0
  %10 = load float, float* %9, align 4
  %11 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 0
  %12 = load float, float* %11, align 4
  %13 = fcmp ogt float %10, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 0
  %18 = load float, float* %17, align 4
  %19 = fcmp ogt float %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %8
  br label %63

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 1
  %25 = load float, float* %24, align 4
  %26 = fcmp ogt float %23, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 1
  %31 = load float, float* %30, align 4
  %32 = fcmp ogt float %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21
  br label %62

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 2
  %36 = load float, float* %35, align 4
  %37 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 2
  %38 = load float, float* %37, align 4
  %39 = fcmp ogt float %36, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 2
  %42 = load float, float* %41, align 4
  %43 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 2
  %44 = load float, float* %43, align 4
  %45 = fcmp ogt float %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34
  br label %61

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 0, i32 3
  %49 = load float, float* %48, align 4
  %50 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 1, i32 3
  %51 = load float, float* %50, align 4
  %52 = fcmp ogt float %49, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %1, i64 0, i32 0, i32 3
  %55 = load float, float* %54, align 4
  %56 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i64 0, i32 1, i32 3
  %57 = load float, float* %56, align 4
  %58 = fcmp ogt float %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %47
  br label %60

60:                                               ; preds = %59, %53
  %.0 = phi i8 [ 0, %59 ], [ 1, %53 ]
  br label %61

61:                                               ; preds = %60, %46
  %.1 = phi i8 [ 0, %46 ], [ %.0, %60 ]
  br label %62

62:                                               ; preds = %61, %33
  %.2 = phi i8 [ 0, %33 ], [ %.1, %61 ]
  br label %63

63:                                               ; preds = %62, %20
  %.3 = phi i8 [ 0, %20 ], [ %.2, %62 ]
  ret i8 %.3

UnifiedUnreachableBlock:                          ; preds = %7, %4
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @consistentNonKey(i8* noundef readonly %0, i8* noundef readonly %1) #0 {
  %.not = icmp eq i8* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.consistentNonKey, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %.not1 = icmp eq i8* %1, null
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.consistentNonKey, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = call i8* @strstr(i8* noundef nonnull %0, i8* noundef nonnull %1) #4
  %.not2 = icmp eq i8* %9, null
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %10
  %.0 = phi i8 [ 1, %10 ], [ 0, %11 ]
  ret i8 %.0

UnifiedUnreachableBlock:                          ; preds = %7, %4
  unreachable
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strstr(i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
