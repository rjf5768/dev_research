; ModuleID = './ft.ll'
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
@str = private unnamed_addr constant [49 x i8] c"Time spent in finding the mininum spanning tree:\00", align 1
@str.1 = private unnamed_addr constant [16 x i8] c"done\0AThe graph:\00", align 1
@str.2 = private unnamed_addr constant [27 x i8] c"The minimum spanning tree:\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @atoi(i8* noundef %6) #7
  %.not7 = icmp eq i32 %0, 2
  br i1 %.not7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8*, i8** %1, i64 2
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @atoi(i8* noundef %10) #7
  %12 = icmp sgt i32 %0, 3
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8*, i8** %1, i64 3
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @atoi(i8* noundef %15) #7
  call void @srandom(i32 noundef %16) #8
  br label %17

17:                                               ; preds = %13, %8
  br label %18

18:                                               ; preds = %17, %4
  %.0 = phi i32 [ %11, %17 ], [ 9, %4 ]
  br label %19

19:                                               ; preds = %18, %2
  %.01 = phi i32 [ %7, %18 ], [ 10, %2 ]
  %.1 = phi i32 [ %.0, %18 ], [ 9, %2 ]
  %20 = load i32, i32* @debug, align 4
  %.not = icmp eq i32 %20, 0
  br i1 %.not, label %23, label %21

21:                                               ; preds = %19
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #8
  br label %23

23:                                               ; preds = %21, %19
  %24 = call %struct._Vertices* @GenGraph(i32 noundef %.01, i32 noundef %.1) #8
  %25 = load i32, i32* @debug, align 4
  %.not2 = icmp eq i32 %25, 0
  br i1 %.not2, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0)) #8
  br label %28

28:                                               ; preds = %26, %23
  %29 = call %struct._Vertices* @MST(%struct._Vertices* noundef %24)
  %30 = load i32, i32* @debug, align 4
  %.not3 = icmp eq i32 %30, 0
  br i1 %.not3, label %32, label %31

31:                                               ; preds = %28
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @str.1, i64 0, i64 0))
  call void @PrintGraph(%struct._Vertices* noundef %24) #8
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @str.2, i64 0, i64 0))
  call void @PrintMST(%struct._Vertices* noundef %24)
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* @debug, align 4
  %.not4 = icmp eq i32 %33, 0
  br i1 %.not4, label %35, label %34

34:                                               ; preds = %32
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %34, %32
  call void @exit(i32 noundef 0) #9
  unreachable
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @srandom(i32 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local %struct._Vertices* @GenGraph(i32 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @MST(%struct._Vertices* noundef returned %0) #4 {
  %2 = alloca %struct._Heap*, align 8
  call void (...) @InitFHeap() #8
  %3 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %0, i64 0, i32 3
  store i32 0, i32* %3, align 8
  %4 = call %struct._Heap* (...) @MakeHeap() #8
  store %struct._Heap* %4, %struct._Heap** %2, align 8
  %5 = call %struct._Heap* @Insert(%struct._Heap** noundef nonnull %2, %struct._Vertices* noundef %0) #8
  br label %6

6:                                                ; preds = %7, %1
  %.pn = phi %struct._Vertices* [ %0, %1 ], [ %.01, %7 ]
  %.01.in = getelementptr inbounds %struct._Vertices, %struct._Vertices* %.pn, i64 0, i32 2
  %.01 = load %struct._Vertices*, %struct._Vertices** %.01.in, align 8
  %.not = icmp eq %struct._Vertices* %.01, %0
  br i1 %.not, label %9, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %.01, i64 0, i32 3
  store i32 2147483647, i32* %8, align 8
  br label %6, !llvm.loop !4

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %11, %9
  %.not2 = icmp eq %struct._Vertices* %.01, %0
  br i1 %.not2, label %12, label %11

11:                                               ; preds = %10
  br label %10, !llvm.loop !6

12:                                               ; preds = %10
  %13 = load %struct._Heap*, %struct._Heap** %2, align 8
  %14 = call %struct._Vertices* @FindMin(%struct._Heap* noundef %13) #8
  br label %15

15:                                               ; preds = %44, %12
  %.1 = phi %struct._Vertices* [ %14, %12 ], [ %46, %44 ]
  %.not3 = icmp eq %struct._Vertices* %.1, null
  br i1 %.not3, label %47, label %16

16:                                               ; preds = %15
  %17 = load %struct._Heap*, %struct._Heap** %2, align 8
  %18 = call %struct._Heap* @DeleteMin(%struct._Heap* noundef %17) #8
  store %struct._Heap* %18, %struct._Heap** %2, align 8
  %19 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %.1, i64 0, i32 3
  store i32 -2147483648, i32* %19, align 8
  %20 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %.1, i64 0, i32 1
  br label %21

21:                                               ; preds = %42, %16
  %.0.in = phi %struct._Edges** [ %20, %16 ], [ %43, %42 ]
  %.0 = load %struct._Edges*, %struct._Edges** %.0.in, align 8
  %.not4 = icmp eq %struct._Edges* %.0, null
  br i1 %.not4, label %44, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 2
  %26 = load %struct._Vertices*, %struct._Vertices** %25, align 8
  %27 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %26, i64 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 2
  %34 = load %struct._Vertices*, %struct._Vertices** %33, align 8
  %35 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %34, i64 0, i32 3
  store i32 %32, i32* %35, align 8
  %36 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 2
  %37 = load %struct._Vertices*, %struct._Vertices** %36, align 8
  %38 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %37, i64 0, i32 4
  store %struct._Edges* %.0, %struct._Edges** %38, align 8
  %39 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 2
  %40 = load %struct._Vertices*, %struct._Vertices** %39, align 8
  %41 = call %struct._Heap* @Insert(%struct._Heap** noundef nonnull %2, %struct._Vertices* noundef %40) #8
  br label %42

42:                                               ; preds = %30, %22
  %43 = getelementptr inbounds %struct._Edges, %struct._Edges* %.0, i64 0, i32 3
  br label %21, !llvm.loop !7

44:                                               ; preds = %21
  %45 = load %struct._Heap*, %struct._Heap** %2, align 8
  %46 = call %struct._Vertices* @FindMin(%struct._Heap* noundef %45) #8
  br label %15, !llvm.loop !8

47:                                               ; preds = %15
  ret %struct._Vertices* %0
}

declare dso_local void @PrintGraph(%struct._Vertices* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintMST(%struct._Vertices* noundef readonly %0) #4 {
  %.not = icmp eq %struct._Vertices* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 noundef 182, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.PrintMST, i64 0, i64 0)) #9
  unreachable

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %6, %4
  %.pn = phi %struct._Vertices* [ %0, %4 ], [ %.0, %6 ]
  %.0.in = getelementptr inbounds %struct._Vertices, %struct._Vertices* %.pn, i64 0, i32 2
  %.0 = load %struct._Vertices*, %struct._Vertices** %.0.in, align 8
  %.not1 = icmp eq %struct._Vertices* %.0, %0
  br i1 %.not1, label %16, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %.0, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %.0, i64 0, i32 4
  %10 = load %struct._Edges*, %struct._Edges** %9, align 8
  %11 = getelementptr inbounds %struct._Edges, %struct._Edges* %10, i64 0, i32 1
  %12 = load %struct._Vertices*, %struct._Vertices** %11, align 8
  %13 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %12, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 noundef %8, i32 noundef %14) #8
  br label %5, !llvm.loop !9

16:                                               ; preds = %5
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

declare dso_local void @InitFHeap(...) #3

declare dso_local %struct._Heap* @MakeHeap(...) #3

declare dso_local %struct._Heap* @Insert(%struct._Heap** noundef, %struct._Vertices* noundef) #3

declare dso_local %struct._Vertices* @FindMin(%struct._Heap* noundef) #3

declare dso_local %struct._Heap* @DeleteMin(%struct._Heap* noundef) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
