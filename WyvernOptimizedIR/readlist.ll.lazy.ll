; ModuleID = './readlist.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/01-qbsort/readlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LinkList = type { i32, %struct.LinkList* }
%struct.List = type { i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ReadList(%struct.LinkList** nocapture noundef %0, %struct.List** nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i8 45, i8* %4, align 1
  br label %5

5:                                                ; preds = %11, %2
  %6 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %6, 91
  br i1 %.not, label %12, label %7

7:                                                ; preds = %5
  %8 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %4) #3
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %69

11:                                               ; preds = %7
  br label %5, !llvm.loop !4

12:                                               ; preds = %5
  store i8 44, i8* %4, align 1
  store %struct.LinkList* null, %struct.LinkList** %0, align 8
  br label %13

13:                                               ; preds = %44, %12
  %.02 = phi i32 [ 0, %12 ], [ %45, %44 ]
  %14 = load i8, i8* %4, align 1
  %.not7 = icmp eq i8 %14, 93
  br i1 %.not7, label %46, label %15

15:                                               ; preds = %13
  %16 = load i8, i8* %4, align 1
  %.not8 = icmp eq i8 %16, 44
  br i1 %.not8, label %18, label %17

17:                                               ; preds = %15
  br label %69

18:                                               ; preds = %15
  %19 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %3) #3
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %69

22:                                               ; preds = %18
  %23 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %24 = bitcast i8* %23 to %struct.LinkList*
  %25 = load i32, i32* %3, align 4
  %26 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %24, i64 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.LinkList*, %struct.LinkList** %0, align 8
  %28 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %24, i64 0, i32 1
  store %struct.LinkList* %27, %struct.LinkList** %28, align 8
  %29 = bitcast %struct.LinkList** %0 to i8**
  store i8* %23, i8** %29, align 8
  store i8 32, i8* %4, align 1
  br label %30

30:                                               ; preds = %42, %22
  %31 = load i8, i8* %4, align 1
  %32 = icmp eq i8 %31, 32
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i8, i8* %4, align 1
  %35 = icmp eq i8 %34, 10
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ true, %30 ], [ %35, %33 ]
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %4) #3
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %69

42:                                               ; preds = %38
  br label %30, !llvm.loop !6

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = add nuw nsw i32 %.02, 1
  br label %13, !llvm.loop !7

46:                                               ; preds = %13
  %47 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #3
  %48 = bitcast i8* %47 to %struct.List*
  %49 = getelementptr inbounds %struct.List, %struct.List* %48, i64 0, i32 0
  store i32 %.02, i32* %49, align 8
  %50 = zext i32 %.02 to i64
  %51 = shl nuw nsw i64 %50, 2
  %52 = call noalias i8* @malloc(i64 noundef %51) #3
  %53 = getelementptr inbounds %struct.List, %struct.List* %48, i64 0, i32 1
  %54 = bitcast i32** %53 to i8**
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %64, %46
  %.03 = phi i32 [ 0, %46 ], [ %66, %64 ]
  %.01.in = phi %struct.LinkList** [ %0, %46 ], [ %65, %64 ]
  %.01 = load %struct.LinkList*, %struct.LinkList** %.01.in, align 8
  %56 = icmp ult i32 %.03, %.02
  br i1 %56, label %57, label %67

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %.01, i64 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.List, %struct.List* %48, i64 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = zext i32 %.03 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %.01, i64 0, i32 1
  %66 = add nuw nsw i32 %.03, 1
  br label %55, !llvm.loop !8

67:                                               ; preds = %55
  %68 = bitcast %struct.List** %1 to i8**
  store i8* %47, i8** %68, align 8
  br label %69

69:                                               ; preds = %67, %41, %21, %17, %10
  %.0 = phi i32 [ 7, %10 ], [ 42, %17 ], [ 7, %21 ], [ 7, %41 ], [ 0, %67 ]
  ret i32 %.0
}

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
