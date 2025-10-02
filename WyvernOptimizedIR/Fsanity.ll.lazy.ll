; ModuleID = './Fsanity.ll'
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
define dso_local i32 @SanityCheck1(%struct._Heap* noundef readonly %0, %struct._Vertices* noundef %1) #0 {
  %3 = icmp eq %struct._Heap* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %23

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %21, %5
  %.01 = phi %struct._Heap* [ %0, %5 ], [ %20, %21 ]
  %7 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 0
  %8 = load %struct._Vertices*, %struct._Vertices** %7, align 8
  %9 = call i32 @LessThan(%struct._Vertices* noundef %8, %struct._Vertices* noundef %1) #4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %6
  br label %23

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 2
  %13 = load %struct._Heap*, %struct._Heap** %12, align 8
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 0
  %15 = load %struct._Vertices*, %struct._Vertices** %14, align 8
  %16 = call i32 @SanityCheck1(%struct._Heap* noundef %13, %struct._Vertices* noundef %15)
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %17, label %18

17:                                               ; preds = %11
  br label %23

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 3
  %20 = load %struct._Heap*, %struct._Heap** %19, align 8
  br label %21

21:                                               ; preds = %18
  %.not3 = icmp eq %struct._Heap* %20, %0
  br i1 %.not3, label %22, label %6, !llvm.loop !4

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22, %17, %10, %4
  %.0 = phi i32 [ 1, %4 ], [ 0, %10 ], [ 1, %22 ], [ 0, %17 ]
  ret i32 %.0
}

declare dso_local i32 @LessThan(%struct._Vertices* noundef, %struct._Vertices* noundef) #1

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @SanityCheck2(%struct._Heap* noundef readonly %0) #2 {
  %2 = icmp eq %struct._Heap* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %36

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %34, %4
  %.03 = phi %struct._Heap* [ %0, %4 ], [ %33, %34 ]
  %6 = getelementptr inbounds %struct._Heap, %struct._Heap* %.03, i64 0, i32 2
  %7 = load %struct._Heap*, %struct._Heap** %6, align 8
  %.not = icmp eq %struct._Heap* %7, null
  br i1 %.not, label %31, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._Heap, %struct._Heap* %.03, i64 0, i32 2
  %10 = load %struct._Heap*, %struct._Heap** %9, align 8
  %11 = getelementptr inbounds %struct._Heap, %struct._Heap* %.03, i64 0, i32 2
  br label %12

12:                                               ; preds = %19, %8
  %.02 = phi i32 [ 0, %8 ], [ %16, %19 ]
  %.01 = phi %struct._Heap* [ %10, %8 ], [ %18, %19 ]
  %13 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  %16 = add nsw i32 %.02, %15
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 3
  %18 = load %struct._Heap*, %struct._Heap** %17, align 8
  br label %19

19:                                               ; preds = %12
  %20 = load %struct._Heap*, %struct._Heap** %11, align 8
  %.not5 = icmp eq %struct._Heap* %18, %20
  br i1 %.not5, label %21, label %12, !llvm.loop !6

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %.03, i64 0, i32 5
  %23 = load i32, i32* %22, align 8
  %.not6 = icmp eq i32 %16, %23
  br i1 %.not6, label %25, label %24

24:                                               ; preds = %21
  br label %36

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct._Heap, %struct._Heap* %.03, i64 0, i32 2
  %27 = load %struct._Heap*, %struct._Heap** %26, align 8
  %28 = call i32 @SanityCheck2(%struct._Heap* noundef %27)
  %.not7 = icmp eq i32 %28, 0
  br i1 %.not7, label %29, label %30

29:                                               ; preds = %25
  br label %36

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %5
  %32 = getelementptr inbounds %struct._Heap, %struct._Heap* %.03, i64 0, i32 3
  %33 = load %struct._Heap*, %struct._Heap** %32, align 8
  br label %34

34:                                               ; preds = %31
  %.not4 = icmp eq %struct._Heap* %33, %0
  br i1 %.not4, label %35, label %5, !llvm.loop !7

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35, %29, %24, %3
  %.0 = phi i32 [ 1, %3 ], [ 0, %24 ], [ 1, %35 ], [ 0, %29 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @SanityCheck3(%struct._Heap* noundef readonly %0, i32 noundef %1) #2 {
  %3 = icmp eq %struct._Heap* %0, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %25

7:                                                ; preds = %4, %2
  br label %8

8:                                                ; preds = %20, %7
  %.02 = phi i32 [ 0, %7 ], [ %12, %20 ]
  %.01 = phi %struct._Heap* [ %0, %7 ], [ %19, %20 ]
  %9 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = add nsw i32 %.02, %11
  %13 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 2
  %14 = load %struct._Heap*, %struct._Heap** %13, align 8
  %15 = call i32 @SanityCheck3(%struct._Heap* noundef %14, i32 noundef %10)
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %16, label %17

16:                                               ; preds = %8
  br label %25

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 3
  %19 = load %struct._Heap*, %struct._Heap** %18, align 8
  br label %20

20:                                               ; preds = %17
  %.not4 = icmp eq %struct._Heap* %19, %0
  br i1 %.not4, label %21, label %8, !llvm.loop !8

21:                                               ; preds = %20
  %22 = icmp eq i32 %12, %1
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  br label %25

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %23, %16, %6
  %.0 = phi i32 [ 1, %6 ], [ 1, %23 ], [ 0, %24 ], [ 0, %16 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrettyPrint(%struct._Heap* noundef readonly %0) #0 {
  %2 = icmp eq %struct._Heap* %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #4
  br label %16

5:                                                ; preds = %1
  %putchar = call i32 @putchar(i32 40)
  br label %6

6:                                                ; preds = %14, %5
  %.0 = phi %struct._Heap* [ %0, %5 ], [ %13, %14 ]
  %7 = getelementptr inbounds %struct._Heap, %struct._Heap* %.0, i64 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 noundef %8) #4
  %10 = getelementptr inbounds %struct._Heap, %struct._Heap* %.0, i64 0, i32 2
  %11 = load %struct._Heap*, %struct._Heap** %10, align 8
  call void @PrettyPrint(%struct._Heap* noundef %11)
  %12 = getelementptr inbounds %struct._Heap, %struct._Heap* %.0, i64 0, i32 3
  %13 = load %struct._Heap*, %struct._Heap** %12, align 8
  br label %14

14:                                               ; preds = %6
  %.not = icmp eq %struct._Heap* %13, %0
  br i1 %.not, label %15, label %6, !llvm.loop !9

15:                                               ; preds = %14
  %putchar1 = call i32 @putchar(i32 41)
  br label %16

16:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
