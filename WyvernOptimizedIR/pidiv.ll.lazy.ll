; ModuleID = './pidiv.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pidiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [6 x i8] c"pidiv\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"divisor too big for single digit\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pidiv(%struct.precisionType* noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %5 = load i16, i16* %4, align 2
  %6 = add i16 %5, 1
  store i16 %6, i16* %4, align 2
  br label %7

7:                                                ; preds = %3, %2
  %8 = icmp slt i32 %1, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = sub nsw i32 0, %1
  br label %12

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %9
  %.01.in = phi i32 [ %10, %9 ], [ %1, %11 ]
  br i1 false, label %13, label %14

13:                                               ; preds = %12
  br label %76

14:                                               ; preds = %12
  %15 = and i32 %.01.in, 65535
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call %struct.precisionType* @errorp(i32 noundef 4, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)) #2
  %19 = call %struct.precisionType* @pnew(%struct.precisionType* noundef %18) #2
  br label %76

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %23) #2
  %25 = icmp eq %struct.precisionType* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %76

27:                                               ; preds = %20
  %28 = zext i16 %22 to i64
  %29 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %24, i64 0, i32 4, i64 %28
  %30 = zext i16 %22 to i64
  %31 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 %30
  %32 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  br label %33

33:                                               ; preds = %43, %27
  %.04 = phi i32 [ 0, %27 ], [ %45, %43 ]
  %.03 = phi i16* [ %29, %27 ], [ %42, %43 ]
  %.02 = phi i16* [ %31, %27 ], [ %35, %43 ]
  %34 = shl i32 %.04, 16
  %35 = getelementptr inbounds i16, i16* %.02, i64 -1
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = or i32 %34, %37
  %39 = and i32 %.01.in, 65535
  %40 = udiv i32 %38, %39
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds i16, i16* %.03, i64 -1
  store i16 %41, i16* %42, align 2
  br label %43

43:                                               ; preds = %33
  %44 = and i32 %.01.in, 65535
  %45 = urem i32 %38, %44
  %46 = icmp ugt i16* %35, %32
  br i1 %46, label %33, label %47, !llvm.loop !4

47:                                               ; preds = %43
  %48 = icmp ugt i16 %22, 1
  br i1 %48, label %49, label %59

49:                                               ; preds = %47
  %50 = zext i16 %22 to i64
  %51 = add nsw i64 %50, -1
  %52 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %24, i64 0, i32 4, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %24, i64 0, i32 2
  %57 = load i16, i16* %56, align 2
  %58 = add i16 %57, -1
  store i16 %58, i16* %56, align 2
  br label %59

59:                                               ; preds = %55, %49, %47
  %60 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %61 = load i8, i8* %60, align 2
  %62 = zext i8 %61 to i32
  %.lobit = lshr i32 %1, 31
  %63 = icmp ne i32 %.lobit, %62
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %24, i64 0, i32 3
  store i8 %64, i8* %65, align 2
  %66 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %24, i64 0, i32 2
  %67 = load i16, i16* %66, align 2
  %68 = icmp eq i16 %67, 1
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %24, i64 0, i32 4, i64 0
  %71 = load i16, i16* %70, align 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %24, i64 0, i32 3
  store i8 0, i8* %74, align 2
  br label %75

75:                                               ; preds = %73, %69, %59
  br label %76

76:                                               ; preds = %75, %26, %17, %13
  %.0 = phi %struct.precisionType* [ undef, %13 ], [ %19, %17 ], [ %24, %26 ], [ %24, %75 ]
  %.not5 = icmp eq %struct.precisionType* %0, null
  br i1 %.not5, label %84, label %77

77:                                               ; preds = %76
  %78 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %79 = load i16, i16* %78, align 2
  %80 = add i16 %79, -1
  store i16 %80, i16* %78, align 2
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #2
  br label %84

84:                                               ; preds = %82, %77, %76
  %85 = call %struct.precisionType* @presult(%struct.precisionType* noundef %.0) #2
  ret %struct.precisionType* %85
}

declare dso_local %struct.precisionType* @pnew(%struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @errorp(i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local %struct.precisionType* @palloc(...) #1

declare dso_local i32 @pfree(...) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

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
