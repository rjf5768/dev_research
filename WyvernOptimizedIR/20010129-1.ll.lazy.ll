; ModuleID = './20010129-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20010129-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@baz1.l = internal global i64 0, align 8
@bar = dso_local global i8** null, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i64 @baz1(i8* nocapture noundef readnone %0) #0 {
  %2 = load i64, i64* @baz1.l, align 8
  %3 = add nsw i64 %2, 1
  store i64 %3, i64* @baz1.l, align 8
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @baz2(i8* nocapture noundef readnone %0) #1 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @baz3(i32 noundef %0) #2 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  call void @abort() #5
  unreachable

3:                                                ; preds = %1
  ret i32 1
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8* nocapture noundef readnone %0, i64 noundef %1, i32 noundef %2) #2 {
  %4 = alloca [256 x i8], align 16
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  store i8 10, i8* %5, align 16
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 1
  store i8 0, i8* %6, align 1
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %3
  %.02.ph = phi i32 [ 0, %3 ], [ %.02.ph.be, %.outer.backedge ]
  br label %7

7:                                                ; preds = %.outer, %24
  %8 = call i64 @baz1(i8* noundef %0)
  %9 = icmp slt i64 %8, %1
  br i1 %9, label %10, label %69

10:                                               ; preds = %7
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %12 = load i8, i8* %11, align 16
  %.not = icmp eq i8 %12, 32
  br i1 %.not, label %.loopexit4, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %15 = load i8, i8* %14, align 16
  %.not6 = icmp eq i8 %15, 9
  br i1 %.not6, label %.loopexit4, label %16

16:                                               ; preds = %13
  %.not7 = icmp eq i32 %.02.ph, 0
  br i1 %.not7, label %17, label %.loopexit5

17:                                               ; preds = %16
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %19 = call i32 @baz2(i8* noundef nonnull %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %.loopexit5

21:                                               ; preds = %17
  %22 = and i32 %2, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %7, !llvm.loop !4

25:                                               ; preds = %21
  br label %26

.loopexit5:                                       ; preds = %16, %17
  br label %26

26:                                               ; preds = %.loopexit5, %25
  %.not17 = phi i1 [ true, %.loopexit5 ], [ false, %25 ]
  %.1 = phi i32 [ %.02.ph, %.loopexit5 ], [ 1, %25 ]
  %27 = and i32 %2, 16
  %.not8 = icmp eq i32 %27, 0
  br i1 %.not8, label %31, label %28

28:                                               ; preds = %26
  %29 = and i32 %2, 16384
  %.not16 = icmp eq i32 %29, 0
  br i1 %.not16, label %31, label %30

30:                                               ; preds = %28
  br i1 %.not17, label %31, label %34

31:                                               ; preds = %30, %28, %26
  %32 = and i32 %2, 2
  %.not9 = icmp eq i32 %32, 0
  br i1 %.not9, label %34, label %33

33:                                               ; preds = %31
  br label %.outer.backedge

34:                                               ; preds = %31, %30
  %35 = and i32 %2, 8192
  %.not10 = icmp eq i32 %35, 0
  br i1 %.not10, label %41, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %38 = call i32 @baz2(i8* noundef nonnull %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %40, %47, %54, %68, %33
  %.02.ph.be = phi i32 [ %.1, %33 ], [ %.2, %68 ], [ %.1, %54 ], [ %.1, %47 ], [ %.1, %40 ]
  br label %.outer, !llvm.loop !4

41:                                               ; preds = %36, %34
  %42 = and i32 %2, 5128
  %.not11 = icmp eq i32 %42, 0
  br i1 %.not11, label %48, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %45 = call i32 @baz2(i8* noundef nonnull %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %.outer.backedge

48:                                               ; preds = %43, %41
  %49 = and i32 %2, 512
  %.not12 = icmp eq i32 %49, 0
  br i1 %.not12, label %55, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %52 = call i32 @baz2(i8* noundef nonnull %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %.outer.backedge

55:                                               ; preds = %50, %48
  %56 = and i32 %2, 128
  %.not13 = icmp eq i32 %56, 0
  br i1 %.not13, label %67, label %57

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %63, %57
  %.01 = phi i32 [ 0, %57 ], [ %65, %63 ]
  %.0.in = phi i8*** [ @bar, %57 ], [ %64, %63 ]
  %.0 = load i8**, i8*** %.0.in, align 8
  %.not14 = icmp eq i8** %.0, null
  br i1 %.not14, label %.loopexit, label %59

59:                                               ; preds = %58
  %60 = call i32 @baz3(i32 noundef %.01)
  %.not15 = icmp eq i32 %60, 0
  br i1 %.not15, label %62, label %61

61:                                               ; preds = %59
  br label %66

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62
  %64 = bitcast i8** %.0 to i8***
  %65 = add nuw nsw i32 %.01, 1
  br label %58, !llvm.loop !6

.loopexit:                                        ; preds = %58
  br label %66

66:                                               ; preds = %.loopexit, %61
  br label %67

67:                                               ; preds = %66, %55
  br label %68

.loopexit4:                                       ; preds = %10, %13
  br label %68

68:                                               ; preds = %.loopexit4, %67
  %.2 = phi i32 [ %.1, %67 ], [ %.02.ph, %.loopexit4 ]
  br label %.outer.backedge

69:                                               ; preds = %7
  ret i32 0
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i8*, align 8
  store i8* null, i8** %1, align 8
  store i8** %1, i8*** @bar, align 8
  %2 = bitcast i8** %1 to i8*
  %3 = call i32 @foo(i8* noundef nonnull %2, i64 noundef 1, i32 noundef 51217)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
