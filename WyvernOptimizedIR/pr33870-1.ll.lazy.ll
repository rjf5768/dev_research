; ModuleID = './pr33870-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr33870-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { i32, %struct.anon }
%struct.anon = type { i32, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, %struct.PgHdr*, i8, i16, %struct.PgHdr*, %struct.PgHdr*, i32 }

@xx = dso_local global %struct.PgHdr** null, align 8
@vx = dso_local global i32 0, align 4

; Function Attrs: nofree noinline nounwind uwtable
define dso_local %struct.PgHdr* @sort_pagelist(%struct.PgHdr* noundef %0) #0 {
  %2 = alloca [25 x %struct.PgHdr*], align 16
  %3 = bitcast [25 x %struct.PgHdr*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(200) %3, i8 0, i64 200, i1 false)
  br label %4

4:                                                ; preds = %40, %1
  %.0 = phi %struct.PgHdr* [ %0, %1 ], [ %7, %40 ]
  %.not = icmp eq %struct.PgHdr* %.0, null
  br i1 %.not, label %41, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.0, i64 0, i32 1, i32 8
  %7 = load %struct.PgHdr*, %struct.PgHdr** %6, align 8
  %8 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.0, i64 0, i32 1, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %8, align 8
  br label %9

9:                                                ; preds = %29, %5
  %.02 = phi i32 [ 0, %5 ], [ %30, %29 ]
  %.01 = phi %struct.PgHdr* [ %.0, %5 ], [ %23, %29 ]
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
  br label %31

19:                                               ; preds = %11
  %20 = zext i32 %.02 to i64
  %21 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %20
  %22 = load %struct.PgHdr*, %struct.PgHdr** %21, align 8
  %23 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %22, %struct.PgHdr* noundef %.01)
  %24 = zext i32 %.02 to i64
  %25 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %24
  store %struct.PgHdr* null, %struct.PgHdr** %25, align 8
  %26 = zext i32 %.02 to i64
  %27 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %26
  store %struct.PgHdr* null, %struct.PgHdr** %27, align 8
  br label %28

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.02, 1
  br label %9, !llvm.loop !4

.loopexit:                                        ; preds = %9
  br label %31

31:                                               ; preds = %.loopexit, %16
  %32 = icmp eq i32 %.02, 24
  br i1 %32, label %33, label %40

33:                                               ; preds = %31
  %34 = zext i32 %.02 to i64
  %35 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %34
  %36 = load %struct.PgHdr*, %struct.PgHdr** %35, align 8
  %37 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %36, %struct.PgHdr* noundef %.01)
  %38 = zext i32 %.02 to i64
  %39 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %38
  store %struct.PgHdr* %37, %struct.PgHdr** %39, align 8
  br label %40

40:                                               ; preds = %33, %31
  br label %4, !llvm.loop !6

41:                                               ; preds = %4
  %42 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 0
  %43 = load %struct.PgHdr*, %struct.PgHdr** %42, align 16
  br label %44

44:                                               ; preds = %51, %41
  %.13 = phi i32 [ 1, %41 ], [ %52, %51 ]
  %.1 = phi %struct.PgHdr* [ %43, %41 ], [ %50, %51 ]
  %45 = icmp ult i32 %.13, 25
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = zext i32 %.13 to i64
  %48 = getelementptr inbounds [25 x %struct.PgHdr*], [25 x %struct.PgHdr*]* %2, i64 0, i64 %47
  %49 = load %struct.PgHdr*, %struct.PgHdr** %48, align 8
  %50 = call %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %.1, %struct.PgHdr* noundef %49)
  br label %51

51:                                               ; preds = %46
  %52 = add nuw nsw i32 %.13, 1
  br label %44, !llvm.loop !7

53:                                               ; preds = %44
  ret %struct.PgHdr* %.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree noinline norecurse nounwind uwtable
define internal %struct.PgHdr* @merge_pagelist(%struct.PgHdr* noundef %0, %struct.PgHdr* noundef %1) #2 {
  %3 = alloca %struct.PgHdr, align 8
  %4 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %3, i64 0, i32 1, i32 8
  store %struct.PgHdr** %4, %struct.PgHdr*** @xx, align 8
  br label %5

5:                                                ; preds = %24, %2
  %.03 = phi %struct.PgHdr* [ %3, %2 ], [ %.14, %24 ]
  %.01 = phi %struct.PgHdr* [ %1, %2 ], [ %.12, %24 ]
  %.0 = phi %struct.PgHdr* [ %0, %2 ], [ %.1, %24 ]
  %.not = icmp eq %struct.PgHdr* %.0, null
  br i1 %.not, label %8, label %6

6:                                                ; preds = %5
  %7 = icmp ne %struct.PgHdr* %.01, null
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i1 [ false, %5 ], [ %7, %6 ]
  br i1 %9, label %10, label %29

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.0, i64 0, i32 1, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.01, i64 0, i32 1, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.03, i64 0, i32 1, i32 8
  store %struct.PgHdr* %.0, %struct.PgHdr** %17, align 8
  %18 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.0, i64 0, i32 1, i32 8
  %19 = load %struct.PgHdr*, %struct.PgHdr** %18, align 8
  br label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.03, i64 0, i32 1, i32 8
  store %struct.PgHdr* %.01, %struct.PgHdr** %21, align 8
  %22 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.01, i64 0, i32 1, i32 8
  %23 = load %struct.PgHdr*, %struct.PgHdr** %22, align 8
  br label %24

24:                                               ; preds = %20, %16
  %.14 = phi %struct.PgHdr* [ %.0, %16 ], [ %.01, %20 ]
  %.12 = phi %struct.PgHdr* [ %.01, %16 ], [ %23, %20 ]
  %.1 = phi %struct.PgHdr* [ %19, %16 ], [ %.0, %20 ]
  %25 = load %struct.PgHdr**, %struct.PgHdr*** @xx, align 8
  %26 = load %struct.PgHdr*, %struct.PgHdr** %25, align 8
  %27 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %26, i64 0, i32 0
  %28 = load i32, i32* %27, align 8
  store volatile i32 %28, i32* @vx, align 4
  br label %5, !llvm.loop !8

29:                                               ; preds = %8
  %.not5 = icmp eq %struct.PgHdr* %.0, null
  br i1 %.not5, label %32, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.03, i64 0, i32 1, i32 8
  store %struct.PgHdr* %.0, %struct.PgHdr** %31, align 8
  br label %38

32:                                               ; preds = %29
  %.not6 = icmp eq %struct.PgHdr* %.01, null
  br i1 %.not6, label %35, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.03, i64 0, i32 1, i32 8
  store %struct.PgHdr* %.01, %struct.PgHdr** %34, align 8
  br label %37

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %.03, i64 0, i32 1, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %36, align 8
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %30
  %39 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %3, i64 0, i32 1, i32 8
  %40 = load %struct.PgHdr*, %struct.PgHdr** %39, align 8
  ret %struct.PgHdr* %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca [5 x %struct.PgHdr], align 16
  %2 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 0, i32 1, i32 0
  store i32 5, i32* %2, align 8
  %3 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 1
  %4 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 0, i32 1, i32 8
  store %struct.PgHdr* %3, %struct.PgHdr** %4, align 16
  %5 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 1, i32 1, i32 0
  store i32 4, i32* %5, align 16
  %6 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 2
  %7 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 1, i32 1, i32 8
  store %struct.PgHdr* %6, %struct.PgHdr** %7, align 8
  %8 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 2, i32 1, i32 0
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 3
  %10 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 2, i32 1, i32 8
  store %struct.PgHdr* %9, %struct.PgHdr** %10, align 16
  %11 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 3, i32 1, i32 0
  store i32 3, i32* %11, align 16
  %12 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 3, i32 1, i32 8
  store %struct.PgHdr* null, %struct.PgHdr** %12, align 8
  %13 = getelementptr inbounds [5 x %struct.PgHdr], [5 x %struct.PgHdr]* %1, i64 0, i64 0
  %14 = call %struct.PgHdr* @sort_pagelist(%struct.PgHdr* noundef nonnull %13)
  %15 = getelementptr inbounds %struct.PgHdr, %struct.PgHdr* %14, i64 0, i32 1, i32 8
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

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
