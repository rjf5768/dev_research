; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/Fsanity.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/Fsanity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Heap = type { %struct._Vertices*, %struct._Heap*, %struct._Heap*, %struct._Heap*, %struct._Heap*, i32, i16 }
%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }

@.str = private unnamed_addr constant [6 x i8] c" nil \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"[%u] \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SanityCheck1(%struct._Heap* noundef %0, %struct._Vertices* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Vertices*, align 8
  %6 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %4, align 8
  store %struct._Vertices* %1, %struct._Vertices** %5, align 8
  %7 = load %struct._Heap*, %struct._Heap** %4, align 8
  %8 = icmp eq %struct._Heap* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %39

10:                                               ; preds = %2
  %11 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %11, %struct._Heap** %6, align 8
  br label %12

12:                                               ; preds = %34, %10
  %13 = load %struct._Heap*, %struct._Heap** %6, align 8
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 0
  %15 = load %struct._Vertices*, %struct._Vertices** %14, align 8
  %16 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %17 = call i32 @LessThan(%struct._Vertices* noundef %15, %struct._Vertices* noundef %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %39

20:                                               ; preds = %12
  %21 = load %struct._Heap*, %struct._Heap** %6, align 8
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %21, i32 0, i32 2
  %23 = load %struct._Heap*, %struct._Heap** %22, align 8
  %24 = load %struct._Heap*, %struct._Heap** %6, align 8
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 0
  %26 = load %struct._Vertices*, %struct._Vertices** %25, align 8
  %27 = call i32 @SanityCheck1(%struct._Heap* noundef %23, %struct._Vertices* noundef %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %39

30:                                               ; preds = %20
  %31 = load %struct._Heap*, %struct._Heap** %6, align 8
  %32 = getelementptr inbounds %struct._Heap, %struct._Heap* %31, i32 0, i32 3
  %33 = load %struct._Heap*, %struct._Heap** %32, align 8
  store %struct._Heap* %33, %struct._Heap** %6, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load %struct._Heap*, %struct._Heap** %6, align 8
  %36 = load %struct._Heap*, %struct._Heap** %4, align 8
  %37 = icmp ne %struct._Heap* %35, %36
  br i1 %37, label %12, label %38, !llvm.loop !4

38:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %29, %19, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @LessThan(%struct._Vertices* noundef, %struct._Vertices* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SanityCheck2(%struct._Heap* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._Heap*, align 8
  %6 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  %7 = load %struct._Heap*, %struct._Heap** %3, align 8
  %8 = icmp eq %struct._Heap* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %61

10:                                               ; preds = %1
  %11 = load %struct._Heap*, %struct._Heap** %3, align 8
  store %struct._Heap* %11, %struct._Heap** %5, align 8
  br label %12

12:                                               ; preds = %56, %10
  %13 = load %struct._Heap*, %struct._Heap** %5, align 8
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 2
  %15 = load %struct._Heap*, %struct._Heap** %14, align 8
  %16 = icmp ne %struct._Heap* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  %18 = load %struct._Heap*, %struct._Heap** %5, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %18, i32 0, i32 2
  %20 = load %struct._Heap*, %struct._Heap** %19, align 8
  store %struct._Heap* %20, %struct._Heap** %6, align 8
  br label %21

21:                                               ; preds = %31, %17
  %22 = load %struct._Heap*, %struct._Heap** %6, align 8
  %23 = getelementptr inbounds %struct._Heap, %struct._Heap* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct._Heap*, %struct._Heap** %6, align 8
  %29 = getelementptr inbounds %struct._Heap, %struct._Heap* %28, i32 0, i32 3
  %30 = load %struct._Heap*, %struct._Heap** %29, align 8
  store %struct._Heap* %30, %struct._Heap** %6, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load %struct._Heap*, %struct._Heap** %6, align 8
  %33 = load %struct._Heap*, %struct._Heap** %5, align 8
  %34 = getelementptr inbounds %struct._Heap, %struct._Heap* %33, i32 0, i32 2
  %35 = load %struct._Heap*, %struct._Heap** %34, align 8
  %36 = icmp ne %struct._Heap* %32, %35
  br i1 %36, label %21, label %37, !llvm.loop !6

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = load %struct._Heap*, %struct._Heap** %5, align 8
  %40 = getelementptr inbounds %struct._Heap, %struct._Heap* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %61

44:                                               ; preds = %37
  %45 = load %struct._Heap*, %struct._Heap** %5, align 8
  %46 = getelementptr inbounds %struct._Heap, %struct._Heap* %45, i32 0, i32 2
  %47 = load %struct._Heap*, %struct._Heap** %46, align 8
  %48 = call i32 @SanityCheck2(%struct._Heap* noundef %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %61

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %12
  %53 = load %struct._Heap*, %struct._Heap** %5, align 8
  %54 = getelementptr inbounds %struct._Heap, %struct._Heap* %53, i32 0, i32 3
  %55 = load %struct._Heap*, %struct._Heap** %54, align 8
  store %struct._Heap* %55, %struct._Heap** %5, align 8
  br label %56

56:                                               ; preds = %52
  %57 = load %struct._Heap*, %struct._Heap** %5, align 8
  %58 = load %struct._Heap*, %struct._Heap** %3, align 8
  %59 = icmp ne %struct._Heap* %57, %58
  br i1 %59, label %12, label %60, !llvm.loop !7

60:                                               ; preds = %56
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %50, %43, %9
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SanityCheck3(%struct._Heap* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._Heap*, align 8
  %8 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct._Heap*, %struct._Heap** %4, align 8
  %10 = icmp eq %struct._Heap* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %47

15:                                               ; preds = %11, %2
  store i32 0, i32* %6, align 4
  %16 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %16, %struct._Heap** %7, align 8
  br label %17

17:                                               ; preds = %37, %15
  %18 = load %struct._Heap*, %struct._Heap** %7, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct._Heap*, %struct._Heap** %7, align 8
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 2
  %26 = load %struct._Heap*, %struct._Heap** %25, align 8
  %27 = load %struct._Heap*, %struct._Heap** %7, align 8
  %28 = getelementptr inbounds %struct._Heap, %struct._Heap* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SanityCheck3(%struct._Heap* noundef %26, i32 noundef %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %47

33:                                               ; preds = %17
  %34 = load %struct._Heap*, %struct._Heap** %7, align 8
  %35 = getelementptr inbounds %struct._Heap, %struct._Heap* %34, i32 0, i32 3
  %36 = load %struct._Heap*, %struct._Heap** %35, align 8
  store %struct._Heap* %36, %struct._Heap** %7, align 8
  br label %37

37:                                               ; preds = %33
  %38 = load %struct._Heap*, %struct._Heap** %7, align 8
  %39 = load %struct._Heap*, %struct._Heap** %4, align 8
  %40 = icmp ne %struct._Heap* %38, %39
  br i1 %40, label %17, label %41, !llvm.loop !8

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %32, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrettyPrint(%struct._Heap* noundef %0) #0 {
  %2 = alloca %struct._Heap*, align 8
  %3 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %2, align 8
  %4 = load %struct._Heap*, %struct._Heap** %2, align 8
  %5 = icmp eq %struct._Heap* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %28

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct._Heap*, %struct._Heap** %2, align 8
  store %struct._Heap* %10, %struct._Heap** %3, align 8
  br label %11

11:                                               ; preds = %22, %8
  %12 = load %struct._Heap*, %struct._Heap** %3, align 8
  %13 = getelementptr inbounds %struct._Heap, %struct._Heap* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %14)
  %16 = load %struct._Heap*, %struct._Heap** %3, align 8
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %16, i32 0, i32 2
  %18 = load %struct._Heap*, %struct._Heap** %17, align 8
  call void @PrettyPrint(%struct._Heap* noundef %18)
  %19 = load %struct._Heap*, %struct._Heap** %3, align 8
  %20 = getelementptr inbounds %struct._Heap, %struct._Heap* %19, i32 0, i32 3
  %21 = load %struct._Heap*, %struct._Heap** %20, align 8
  store %struct._Heap* %21, %struct._Heap** %3, align 8
  br label %22

22:                                               ; preds = %11
  %23 = load %struct._Heap*, %struct._Heap** %3, align 8
  %24 = load %struct._Heap*, %struct._Heap** %2, align 8
  %25 = icmp ne %struct._Heap* %23, %24
  br i1 %25, label %11, label %26, !llvm.loop !9

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %6
  ret void
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
