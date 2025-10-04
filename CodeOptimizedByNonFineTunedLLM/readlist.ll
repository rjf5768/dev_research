; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/01-qbsort/readlist.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/01-qbsort/readlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LinkList = type { i32, %struct.LinkList* }
%struct.List = type { i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ReadList(%struct.LinkList** noundef %0, %struct.List** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LinkList**, align 8
  %5 = alloca %struct.List**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.LinkList*, align 8
  %11 = alloca %struct.List*, align 8
  %12 = alloca %struct.LinkList*, align 8
  store %struct.LinkList** %0, %struct.LinkList*** %4, align 8
  store %struct.List** %1, %struct.List*** %5, align 8
  store i8 45, i8* %9, align 1
  br label %13

13:                                               ; preds = %21, %2
  %14 = load i8, i8* %9, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 91
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %9)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 7, i32* %3, align 4
  br label %106

21:                                               ; preds = %17
  br label %13, !llvm.loop !4

22:                                               ; preds = %13
  store i8 44, i8* %9, align 1
  %23 = load %struct.LinkList**, %struct.LinkList*** %4, align 8
  store %struct.LinkList* null, %struct.LinkList** %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %65, %22
  %25 = load i8, i8* %9, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 93
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load i8, i8* %9, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 44
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 42, i32* %3, align 4
  br label %106

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %8)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 7, i32* %3, align 4
  br label %106

37:                                               ; preds = %33
  %38 = call noalias i8* @malloc(i64 noundef 16) #3
  %39 = bitcast i8* %38 to %struct.LinkList*
  store %struct.LinkList* %39, %struct.LinkList** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %42 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.LinkList**, %struct.LinkList*** %4, align 8
  %44 = load %struct.LinkList*, %struct.LinkList** %43, align 8
  %45 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %46 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %45, i32 0, i32 1
  store %struct.LinkList* %44, %struct.LinkList** %46, align 8
  %47 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %48 = load %struct.LinkList**, %struct.LinkList*** %4, align 8
  store %struct.LinkList* %47, %struct.LinkList** %48, align 8
  store i8 32, i8* %9, align 1
  br label %49

49:                                               ; preds = %63, %37
  %50 = load i8, i8* %9, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8, i8* %9, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ true, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* noundef %9)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 7, i32* %3, align 4
  br label %106

63:                                               ; preds = %59
  br label %49, !llvm.loop !6

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %24, !llvm.loop !7

68:                                               ; preds = %24
  %69 = call noalias i8* @malloc(i64 noundef 16) #3
  %70 = bitcast i8* %69 to %struct.List*
  store %struct.List* %70, %struct.List** %11, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.List*, %struct.List** %11, align 8
  %73 = getelementptr inbounds %struct.List, %struct.List* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 4, %75
  %77 = call noalias i8* @malloc(i64 noundef %76) #3
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.List*, %struct.List** %11, align 8
  %80 = getelementptr inbounds %struct.List, %struct.List* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  %81 = load %struct.LinkList**, %struct.LinkList*** %4, align 8
  %82 = load %struct.LinkList*, %struct.LinkList** %81, align 8
  store %struct.LinkList* %82, %struct.LinkList** %12, align 8
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %97, %68
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load %struct.LinkList*, %struct.LinkList** %12, align 8
  %89 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.List*, %struct.List** %11, align 8
  %92 = getelementptr inbounds %struct.List, %struct.List* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load %struct.LinkList*, %struct.LinkList** %12, align 8
  %99 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %98, i32 0, i32 1
  %100 = load %struct.LinkList*, %struct.LinkList** %99, align 8
  store %struct.LinkList* %100, %struct.LinkList** %12, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %83, !llvm.loop !8

103:                                              ; preds = %83
  %104 = load %struct.List*, %struct.List** %11, align 8
  %105 = load %struct.List**, %struct.List*** %5, align 8
  store %struct.List* %104, %struct.List** %105, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %62, %36, %32, %20
  %107 = load i32, i32* %3, align 4
  ret i32 %107
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
