; ModuleID = './20031204-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031204-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.addr = internal global [19 x i8] c"10.11.12.13:/hello\00", align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @in_aton(i8* nocapture noundef readnone %0) #0 {
  ret i64 168496141
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @root_nfs_parse_addr(i8* noundef %0) #1 {
  br label %2

2:                                                ; preds = %34, %1
  %.02 = phi i32 [ 0, %1 ], [ %.1, %34 ]
  %.0 = phi i8* [ %0, %1 ], [ %.2, %34 ]
  %3 = icmp slt i32 %.02, 4
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %13, %4
  %.14 = phi i8* [ %.0, %4 ], [ %14, %13 ]
  %6 = load i8, i8* %.14, align 1
  %7 = icmp sgt i8 %6, 47
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i8, i8* %.14, align 1
  %10 = icmp slt i8 %9, 58
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %.14, i64 1
  br label %5, !llvm.loop !4

15:                                               ; preds = %11
  %16 = icmp eq i8* %.14, %.0
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = ptrtoint i8* %.14 to i64
  %19 = ptrtoint i8* %.0 to i64
  %20 = sub i64 %18, %19
  %21 = icmp sgt i64 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %15
  br label %35

23:                                               ; preds = %17
  %24 = load i8, i8* %.14, align 1
  %25 = icmp eq i8 %24, 46
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = icmp eq i32 %.02, 3
  br i1 %27, label %28, label %30

28:                                               ; preds = %26, %23
  %29 = add nsw i32 %.02, 1
  br label %30

30:                                               ; preds = %28, %26
  %.1 = phi i32 [ %29, %28 ], [ %.02, %26 ]
  %31 = icmp slt i32 %.1, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = getelementptr inbounds i8, i8* %.14, i64 1
  br label %34

34:                                               ; preds = %32, %30
  %.2 = phi i8* [ %33, %32 ], [ %.14, %30 ]
  br label %2, !llvm.loop !6

.loopexit:                                        ; preds = %2
  br label %35

35:                                               ; preds = %.loopexit, %22
  %.3 = phi i8* [ %.14, %22 ], [ %.0, %.loopexit ]
  %36 = icmp eq i32 %.02, 4
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = load i8, i8* %.3, align 1
  %39 = icmp eq i8 %38, 58
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i8, i8* %.3, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40, %37
  %44 = load i8, i8* %.3, align 1
  %45 = icmp eq i8 %44, 58
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, i8* %.3, i64 1
  store i8 0, i8* %.3, align 1
  br label %48

48:                                               ; preds = %46, %43
  %.4 = phi i8* [ %47, %46 ], [ %.3, %43 ]
  %49 = call i64 @in_aton(i8* noundef %0)
  %50 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull %.4) #4
  br label %52

51:                                               ; preds = %40, %35
  br label %52

52:                                               ; preds = %51, %48
  %.01 = phi i64 [ %49, %48 ], [ -1, %51 ]
  ret i64 %.01
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i64 @root_nfs_parse_addr(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @main.addr, i64 0, i64 0))
  %.not = icmp eq i64 %1, 168496141
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #5
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
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
