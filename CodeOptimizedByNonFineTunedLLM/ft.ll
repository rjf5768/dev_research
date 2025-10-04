; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/ft.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }
%struct._Heap = type { %struct._Vertices*, %struct._Heap*, %struct._Heap*, %struct._Heap*, %struct._Heap*, i32, i16 }

@debug = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [34 x i8] c"Generating a connected graph ... \00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"done\0AFinding the mininmum spanning tree ... \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"done\0AThe graph:\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"The minimum spanning tree:\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Time spent in finding the mininum spanning tree:\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"graph != NULL_VERTEX\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/ft.c\00", align 1
@__PRETTY_FUNCTION__.PrintMST = private unnamed_addr constant [26 x i8] c"void PrintMST(Vertices *)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"vertex %d to %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._Vertices*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 10, i32* %6, align 4
  store i32 9, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @atoi(i8* noundef %14) #5
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @atoi(i8* noundef %21) #5
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 3
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @atoi(i8* noundef %28) #5
  call void @srandom(i32 noundef %29) #6
  br label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %30, %11
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* @debug, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call %struct._Vertices* @GenGraph(i32 noundef %38, i32 noundef %39)
  store %struct._Vertices* %40, %struct._Vertices** %8, align 8
  %41 = load i32, i32* @debug, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  %47 = call %struct._Vertices* @MST(%struct._Vertices* noundef %46)
  store %struct._Vertices* %47, %struct._Vertices** %8, align 8
  %48 = load i32, i32* @debug, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  call void @PrintGraph(%struct._Vertices* noundef %52)
  %53 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  call void @PrintMST(%struct._Vertices* noundef %54)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* @debug, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @srandom(i32 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local %struct._Vertices* @GenGraph(i32 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @MST(%struct._Vertices* noundef %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Vertices*, align 8
  %5 = alloca %struct._Edges*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %2, align 8
  call void (...) @InitFHeap()
  %6 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  store %struct._Vertices* %6, %struct._Vertices** %4, align 8
  %7 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %8 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %7, i32 0, i32 3
  store i32 0, i32* %8, align 8
  %9 = call %struct._Heap* (...) @MakeHeap()
  store %struct._Heap* %9, %struct._Heap** %3, align 8
  %10 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %11 = call %struct._Heap* @Insert(%struct._Heap** noundef %3, %struct._Vertices* noundef %10)
  %12 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %13 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %12, i32 0, i32 2
  %14 = load %struct._Vertices*, %struct._Vertices** %13, align 8
  store %struct._Vertices* %14, %struct._Vertices** %4, align 8
  br label %15

15:                                               ; preds = %19, %1
  %16 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %17 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %18 = icmp ne %struct._Vertices* %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %21 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %20, i32 0, i32 3
  store i32 2147483647, i32* %21, align 8
  %22 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %23 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %22, i32 0, i32 2
  %24 = load %struct._Vertices*, %struct._Vertices** %23, align 8
  store %struct._Vertices* %24, %struct._Vertices** %4, align 8
  br label %15, !llvm.loop !4

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %30, %25
  %27 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %28 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %29 = icmp ne %struct._Vertices* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %26, !llvm.loop !6

31:                                               ; preds = %26
  %32 = load %struct._Heap*, %struct._Heap** %3, align 8
  %33 = call %struct._Vertices* @FindMin(%struct._Heap* noundef %32)
  store %struct._Vertices* %33, %struct._Vertices** %4, align 8
  br label %34

34:                                               ; preds = %79, %31
  %35 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %36 = icmp ne %struct._Vertices* %35, null
  br i1 %36, label %37, label %82

37:                                               ; preds = %34
  %38 = load %struct._Heap*, %struct._Heap** %3, align 8
  %39 = call %struct._Heap* @DeleteMin(%struct._Heap* noundef %38)
  store %struct._Heap* %39, %struct._Heap** %3, align 8
  %40 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %41 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %40, i32 0, i32 3
  store i32 -2147483648, i32* %41, align 8
  %42 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %43 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %42, i32 0, i32 1
  %44 = load %struct._Edges*, %struct._Edges** %43, align 8
  store %struct._Edges* %44, %struct._Edges** %5, align 8
  br label %45

45:                                               ; preds = %75, %37
  %46 = load %struct._Edges*, %struct._Edges** %5, align 8
  %47 = icmp ne %struct._Edges* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %45
  %49 = load %struct._Edges*, %struct._Edges** %5, align 8
  %50 = getelementptr inbounds %struct._Edges, %struct._Edges* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct._Edges*, %struct._Edges** %5, align 8
  %53 = getelementptr inbounds %struct._Edges, %struct._Edges* %52, i32 0, i32 2
  %54 = load %struct._Vertices*, %struct._Vertices** %53, align 8
  %55 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %48
  %59 = load %struct._Edges*, %struct._Edges** %5, align 8
  %60 = getelementptr inbounds %struct._Edges, %struct._Edges* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct._Edges*, %struct._Edges** %5, align 8
  %63 = getelementptr inbounds %struct._Edges, %struct._Edges* %62, i32 0, i32 2
  %64 = load %struct._Vertices*, %struct._Vertices** %63, align 8
  %65 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 8
  %66 = load %struct._Edges*, %struct._Edges** %5, align 8
  %67 = load %struct._Edges*, %struct._Edges** %5, align 8
  %68 = getelementptr inbounds %struct._Edges, %struct._Edges* %67, i32 0, i32 2
  %69 = load %struct._Vertices*, %struct._Vertices** %68, align 8
  %70 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %69, i32 0, i32 4
  store %struct._Edges* %66, %struct._Edges** %70, align 8
  %71 = load %struct._Edges*, %struct._Edges** %5, align 8
  %72 = getelementptr inbounds %struct._Edges, %struct._Edges* %71, i32 0, i32 2
  %73 = load %struct._Vertices*, %struct._Vertices** %72, align 8
  %74 = call %struct._Heap* @Insert(%struct._Heap** noundef %3, %struct._Vertices* noundef %73)
  br label %75

75:                                               ; preds = %58, %48
  %76 = load %struct._Edges*, %struct._Edges** %5, align 8
  %77 = getelementptr inbounds %struct._Edges, %struct._Edges* %76, i32 0, i32 3
  %78 = load %struct._Edges*, %struct._Edges** %77, align 8
  store %struct._Edges* %78, %struct._Edges** %5, align 8
  br label %45, !llvm.loop !7

79:                                               ; preds = %45
  %80 = load %struct._Heap*, %struct._Heap** %3, align 8
  %81 = call %struct._Vertices* @FindMin(%struct._Heap* noundef %80)
  store %struct._Vertices* %81, %struct._Vertices** %4, align 8
  br label %34, !llvm.loop !8

82:                                               ; preds = %34
  %83 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  ret %struct._Vertices* %83
}

declare dso_local void @PrintGraph(%struct._Vertices* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintMST(%struct._Vertices* noundef %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %2, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %5 = icmp ne %struct._Vertices* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.PrintMST, i64 0, i64 0)) #7
  unreachable

8:                                                ; preds = %6
  %9 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %10 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %9, i32 0, i32 2
  %11 = load %struct._Vertices*, %struct._Vertices** %10, align 8
  store %struct._Vertices* %11, %struct._Vertices** %3, align 8
  br label %12

12:                                               ; preds = %16, %8
  %13 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %14 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %15 = icmp ne %struct._Vertices* %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %18 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %21 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %20, i32 0, i32 4
  %22 = load %struct._Edges*, %struct._Edges** %21, align 8
  %23 = getelementptr inbounds %struct._Edges, %struct._Edges* %22, i32 0, i32 1
  %24 = load %struct._Vertices*, %struct._Vertices** %23, align 8
  %25 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 noundef %19, i32 noundef %26)
  %28 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %29 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %28, i32 0, i32 2
  %30 = load %struct._Vertices*, %struct._Vertices** %29, align 8
  store %struct._Vertices* %30, %struct._Vertices** %3, align 8
  br label %12, !llvm.loop !9

31:                                               ; preds = %12
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

declare dso_local void @InitFHeap(...) #3

declare dso_local %struct._Heap* @MakeHeap(...) #3

declare dso_local %struct._Heap* @Insert(%struct._Heap** noundef, %struct._Vertices* noundef) #3

declare dso_local %struct._Vertices* @FindMin(%struct._Heap* noundef) #3

declare dso_local %struct._Heap* @DeleteMin(%struct._Heap* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
