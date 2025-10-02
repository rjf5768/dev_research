; ModuleID = './pr33870.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33870.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { i32, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, i8, i16, %struct.PgHdr*, %struct.PgHdr*, i32 }

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local %struct.PgHdr* @sort_pagelist(%struct.PgHdr* noundef %0) #0 {
  %2 = alloca [25 x %struct.PgHdr*], align 16
  %3 = bitcast [25 x %struct.PgHdr*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(200) %3, i8 0, i64 200, i1 false)
  br label %4

4:                                                ; preds = %38, %1
  %.0 = phi %struct.PgHdr* [ %0, %1 ], [ %7, %38 ]
  %.not = icmp eq %struct.PgHdr* %.0, null
  br i1 %.not, label %39, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.0, i64 0, i32 8
  %7 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %8 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.0, i64 0, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %8, align 8
  br label %9

9:                                                ; preds = %27, %5
  %.02 = phi i32 [ 0, %5 ], [ %28, %27 ]
  %.01 = phi %struct.PgHdr* [ %.0, %5 ], [ %23, %27 ]
  %10 = icmp ult i32 %.02, 24
  br i1 %10, label %11, label %.loopexit

11:                                               ; preds = %9
  %12 = zext i32 %.02 to i64
  %13 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %12
  %14 = load %struct.PgHdr*, %struct.PgHdr** %13, align 8
  %15 = icmp eq %struct.PgHdr* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = zext i32 %.02 to i64
  %18 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %17
  store %struct.PgHdr* %.01, %struct.PgHdr** %18, align 8
  br label %29

19:                                               ; preds = %11
  %20 = zext i32 %.02 to i64
  %21 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %20
  %22 = load %struct.PgHdr*, %struct.PgHdr** %21, align 8
  %23 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %22, %struct.PgHdr* noundef %.01)
  %24 = zext i32 %.02 to i64
  %25 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %24
  store %struct.PgHdr* null, %struct.PgHdr** %25, align 8
  br label %26

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.02, 1
  br label %9, !llvm.loop !4

.loopexit:                                        ; preds = %9
  br label %29

29:                                               ; preds = %.loopexit, %16
  %30 = icmp eq i32 %.02, 24
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = zext i32 %.02 to i64
  %33 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %32
  %34 = load %struct.PgHdr*, %struct.PgHdr** %33, align 8
  %35 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %34, %struct.PgHdr* noundef %.01)
  %36 = zext i32 %.02 to i64
  %37 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %36
  store %struct.PgHdr* %35, %struct.PgHdr** %37, align 8
  br label %38

38:                                               ; preds = %31, %29
  br label %4, !llvm.loop !6

39:                                               ; preds = %4
  %40 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 0
  %41 = load %struct.PgHdr*, %struct.PgHdr** %40, align 16
  br label %42

42:                                               ; preds = %49, %39
  %.13 = phi i32 [ 1, %39 ], [ %50, %49 ]
  %.1 = phi %struct.PgHdr* [ %41, %39 ], [ %48, %49 ]
  %43 = icmp ult i32 %.13, 25
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  %45 = zext i32 %.13 to i64
  %46 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %45
  %47 = load %struct.PgHdr*, %struct.PgHdr** %46, align 8
  %48 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %.1, %struct.PgHdr* noundef %47)
  br label %49

49:                                               ; preds = %44
  %50 = add nuw nsw i32 %.13, 1
  br label %42, !llvm.loop !7

51:                                               ; preds = %42
  ret %struct.PgHdr* %.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %0, %struct.PgHdr* noundef %1) #2 {
  %3 = alloca %struct.PgHdr, align 8
  br label %4

4:                                                ; preds = %23, %2
  %.03 = phi %struct.PgHdr* [ %3, %2 ], [ %.14, %23 ]
  %.01 = phi %struct.PgHdr* [ %1, %2 ], [ %.12, %23 ]
  %.0 = phi %struct.PgHdr* [ %0, %2 ], [ %.1, %23 ]
  %.not = icmp eq %struct.PgHdr* %.0, null
  br i1 %.not, label %7, label %5

5:                                                ; preds = %4
  %6 = icmp ne %struct.PgHdr* %.01, null
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i1 [ false, %4 ], [ %6, %5 ]
  br i1 %8, label %9, label %24

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.0, i64 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.01, i64 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.03, i64 0, i32 8
  store %struct.PgHdr* %.0, %struct.PgHdr** %16, align 8
  %17 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.0, i64 0, i32 8
  %18 = load %struct.PgHdr*, %struct.PgHdr** %17, align 8
  br label %23

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.03, i64 0, i32 8
  store %struct.PgHdr* %.01, %struct.PgHdr** %20, align 8
  %21 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.01, i64 0, i32 8
  %22 = load %struct.PgHdr*, %struct.PgHdr** %21, align 8
  br label %23

23:                                               ; preds = %19, %15
  %.14 = phi %struct.PgHdr* [ %.0, %15 ], [ %.01, %19 ]
  %.12 = phi %struct.PgHdr* [ %.01, %15 ], [ %22, %19 ]
  %.1 = phi %struct.PgHdr* [ %18, %15 ], [ %.0, %19 ]
  br label %4, !llvm.loop !8

24:                                               ; preds = %7
  %.not5 = icmp eq %struct.PgHdr* %.0, null
  br i1 %.not5, label %27, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.03, i64 0, i32 8
  store %struct.PgHdr* %.0, %struct.PgHdr** %26, align 8
  br label %33

27:                                               ; preds = %24
  %.not6 = icmp eq %struct.PgHdr* %.01, null
  br i1 %.not6, label %30, label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.03, i64 0, i32 8
  store %struct.PgHdr* %.01, %struct.PgHdr** %29, align 8
  br label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.03, i64 0, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %31, align 8
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %25
  %34 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %3, i64 0, i32 8
  %35 = load %struct.PgHdr*, %struct.PgHdr** %34, align 8
  ret %struct.PgHdr* %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca [5 x %struct.PgHdr], align 16
  %2 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 0, i32 0
  store i32 5, i32* %2, align 16
  %3 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 1
  %4 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 0, i32 8
  store %struct.PgHdr* %3, %struct.PgHdr** %4, align 8
  %5 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 1, i32 0
  store i32 4, i32* %5, align 16
  %6 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 2
  %7 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 1, i32 8
  store %struct.PgHdr* %6, %struct.PgHdr** %7, align 8
  %8 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 2, i32 0
  store i32 1, i32* %8, align 16
  %9 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 3
  %10 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 2, i32 8
  store %struct.PgHdr* %9, %struct.PgHdr** %10, align 8
  %11 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 3, i32 0
  store i32 3, i32* %11, align 16
  %12 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 3, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %12, align 8
  %13 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 0
  %14 = call %struct.PgHdr* @sort_pagelist(%struct.PgHdr* noundef nonnull %13)
  %15 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %14, i64 0, i32 8
  %16 = load %struct.PgHdr*, %struct.PgHdr** %15, align 8
  %17 = icmp eq %struct.PgHdr* %16, %14
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  call void @abort() #5
  unreachable

19:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

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
