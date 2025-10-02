; ModuleID = './utilities.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/utilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snode = type { %struct.rnode*, i32, %struct.snode* }
%struct.rnode = type { i16, %union.anon, i16, %struct.pnode*, %struct.pnode* }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.rnode*, %struct.rnode* }
%struct.pnode = type { i32, %struct.pnode* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.snode* @Push(%struct.snode** noundef %0, %struct.rnode* noundef %1) #0 {
  %3 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #4
  %4 = bitcast i8* %3 to %struct.snode*
  %5 = icmp eq %struct.snode** %0, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = icmp eq i8* %3, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %6, %2
  br label %24

9:                                                ; preds = %6
  %10 = load %struct.snode*, %struct.snode** %0, align 8
  %11 = getelementptr inbounds %struct.snode, %struct.snode* %4, i64 0, i32 2
  store %struct.snode* %10, %struct.snode** %11, align 8
  %12 = getelementptr inbounds %struct.snode, %struct.snode* %4, i64 0, i32 0
  store %struct.rnode* %1, %struct.rnode** %12, align 8
  %13 = icmp eq %struct.snode* %10, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.snode, %struct.snode* %4, i64 0, i32 1
  store i32 1, i32* %15, align 8
  br label %22

16:                                               ; preds = %9
  %17 = load %struct.snode*, %struct.snode** %0, align 8
  %18 = getelementptr inbounds %struct.snode, %struct.snode* %17, i64 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.snode, %struct.snode* %4, i64 0, i32 1
  store i32 %20, i32* %21, align 8
  br label %22

22:                                               ; preds = %16, %14
  %23 = bitcast %struct.snode** %0 to i8**
  store i8* %3, i8** %23, align 8
  %.cast = bitcast i8* %3 to %struct.snode*
  br label %24

24:                                               ; preds = %22, %8
  %.0 = phi %struct.snode* [ null, %8 ], [ %.cast, %22 ]
  ret %struct.snode* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.rnode* @Pop(%struct.snode** noundef %0) #0 {
  %2 = icmp eq %struct.snode** %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load %struct.snode*, %struct.snode** %0, align 8
  %5 = icmp eq %struct.snode* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %1
  br label %15

7:                                                ; preds = %3
  %8 = bitcast %struct.snode** %0 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast i8* %9 to %struct.rnode**
  %11 = load %struct.rnode*, %struct.rnode** %10, align 8
  %12 = getelementptr inbounds i8, i8* %9, i64 16
  %13 = bitcast i8* %12 to %struct.snode**
  %14 = load %struct.snode*, %struct.snode** %13, align 8
  store %struct.snode* %14, %struct.snode** %0, align 8
  call void @free(i8* noundef %9) #4
  br label %15

15:                                               ; preds = %7, %6
  %.0 = phi %struct.rnode* [ null, %6 ], [ %11, %7 ]
  ret %struct.rnode* %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct.rnode* @Top(%struct.snode* noundef readonly %0) #2 {
  %2 = icmp eq %struct.snode* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.snode, %struct.snode* %0, i64 0, i32 0
  %6 = load %struct.rnode*, %struct.rnode** %5, align 8
  br label %7

7:                                                ; preds = %4, %3
  %.0 = phi %struct.rnode* [ null, %3 ], [ %6, %4 ]
  ret %struct.rnode* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @Size(%struct.snode* noundef readonly %0) #2 {
  %2 = icmp eq %struct.snode* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.snode, %struct.snode* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 8
  br label %7

7:                                                ; preds = %4, %3
  %.0 = phi i32 [ 0, %3 ], [ %6, %4 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @occurs_in(i32 noundef %0, %struct.pnode* noundef readonly %1) #3 {
  br label %3

3:                                                ; preds = %10, %2
  %.01 = phi %struct.pnode* [ %1, %2 ], [ %12, %10 ]
  %.not = icmp eq %struct.pnode* %.01, null
  br i1 %.not, label %13, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.pnode, %struct.pnode* %.01, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %14

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.pnode, %struct.pnode* %.01, i64 0, i32 1
  %12 = load %struct.pnode*, %struct.pnode** %11, align 8
  br label %3, !llvm.loop !4

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %8
  %.0 = phi i32 [ 1, %8 ], [ 0, %13 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pnode* @pset_union(%struct.pnode* noundef readonly %0, %struct.pnode* noundef %1) #0 {
  br label %3

3:                                                ; preds = %23, %2
  %.05 = phi %struct.pnode* [ null, %2 ], [ %.1, %23 ]
  %.03 = phi %struct.pnode* [ null, %2 ], [ %.2, %23 ]
  %.02 = phi %struct.pnode* [ undef, %2 ], [ %.1, %23 ]
  %.01 = phi %struct.pnode* [ %0, %2 ], [ %25, %23 ]
  %.not = icmp eq %struct.pnode* %.01, null
  br i1 %.not, label %26, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.pnode, %struct.pnode* %.01, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @occurs_in(i32 noundef %6, %struct.pnode* noundef %1)
  %.not8 = icmp eq i32 %7, 0
  br i1 %.not8, label %8, label %23

8:                                                ; preds = %4
  %9 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #4
  %10 = bitcast i8* %9 to %struct.pnode*
  %11 = icmp eq i8* %9, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %32

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.pnode, %struct.pnode* %.01, i64 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.pnode, %struct.pnode* %10, i64 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = icmp eq %struct.pnode* %.03, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.pnode, %struct.pnode* %.05, i64 0, i32 1
  %21 = bitcast %struct.pnode** %20 to i8**
  store i8* %9, i8** %21, align 8
  br label %22

22:                                               ; preds = %19, %18
  %.14 = phi %struct.pnode* [ %10, %18 ], [ %.03, %19 ]
  br label %23

23:                                               ; preds = %22, %4
  %.2 = phi %struct.pnode* [ %.03, %4 ], [ %.14, %22 ]
  %.1 = phi %struct.pnode* [ %.02, %4 ], [ %10, %22 ]
  %24 = getelementptr inbounds %struct.pnode, %struct.pnode* %.01, i64 0, i32 1
  %25 = load %struct.pnode*, %struct.pnode** %24, align 8
  br label %3, !llvm.loop !6

26:                                               ; preds = %3
  %27 = icmp eq %struct.pnode* %.03, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.pnode, %struct.pnode* %.05, i64 0, i32 1
  store %struct.pnode* %1, %struct.pnode** %30, align 8
  br label %31

31:                                               ; preds = %29, %28
  %.3 = phi %struct.pnode* [ %1, %28 ], [ %.03, %29 ]
  br label %32

32:                                               ; preds = %31, %12
  %.0 = phi %struct.pnode* [ null, %12 ], [ %.3, %31 ]
  ret %struct.pnode* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.pnode* @create_pos(i32 noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #4
  %3 = bitcast i8* %2 to %struct.pnode*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pnode, %struct.pnode* %3, i64 0, i32 0
  store i32 %0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.pnode, %struct.pnode* %3, i64 0, i32 1
  store %struct.pnode* null, %struct.pnode** %8, align 8
  br label %9

9:                                                ; preds = %6, %5
  %.0 = phi %struct.pnode* [ null, %5 ], [ %3, %6 ]
  ret %struct.pnode* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @subset_pset(%struct.pnode* noundef readonly %0, %struct.pnode* noundef readonly %1) #3 {
  br label %3

3:                                                ; preds = %25, %2
  %.02 = phi i32 [ 1, %2 ], [ %.13, %25 ]
  %.01 = phi %struct.pnode* [ %1, %2 ], [ %.1, %25 ]
  %.0 = phi %struct.pnode* [ %0, %2 ], [ %27, %25 ]
  %.not = icmp eq %struct.pnode* %.0, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %3
  %5 = icmp ne i32 %.02, 0
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i1 [ false, %3 ], [ %5, %4 ]
  br i1 %7, label %8, label %28

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %24, %8
  %.13 = phi i32 [ 0, %8 ], [ %.24, %24 ]
  %.1 = phi %struct.pnode* [ %.01, %8 ], [ %.2, %24 ]
  %.not5 = icmp eq %struct.pnode* %.1, null
  br i1 %.not5, label %12, label %10

10:                                               ; preds = %9
  %11 = icmp ne i32 %.13, 1
  br label %12

12:                                               ; preds = %10, %9
  %13 = phi i1 [ false, %9 ], [ %11, %10 ]
  br i1 %13, label %14, label %25

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pnode, %struct.pnode* %.0, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.pnode, %struct.pnode* %.1, i64 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %24

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.pnode, %struct.pnode* %.1, i64 0, i32 1
  %23 = load %struct.pnode*, %struct.pnode** %22, align 8
  br label %24

24:                                               ; preds = %21, %20
  %.24 = phi i32 [ 1, %20 ], [ %.13, %21 ]
  %.2 = phi %struct.pnode* [ %.1, %20 ], [ %23, %21 ]
  br label %9, !llvm.loop !7

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.pnode, %struct.pnode* %.0, i64 0, i32 1
  %27 = load %struct.pnode*, %struct.pnode** %26, align 8
  br label %3, !llvm.loop !8

28:                                               ; preds = %6
  ret i32 %.02
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @eq_pset(%struct.pnode* noundef readonly %0, %struct.pnode* noundef readonly %1) #3 {
  %3 = call i32 @subset_pset(%struct.pnode* noundef %0, %struct.pnode* noundef %1)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %7, label %4

4:                                                ; preds = %2
  %5 = call i32 @subset_pset(%struct.pnode* noundef %1, %struct.pnode* noundef %0)
  %6 = icmp ne i32 %5, 0
  %phi.cast = zext i1 %6 to i32
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi i32 [ 0, %2 ], [ %phi.cast, %4 ]
  ret i32 %8
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
