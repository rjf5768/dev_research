; ModuleID = './920501-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@factab = dso_local global [10 x i64] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i64 @gcd_ll(i64 noundef %0, i64 noundef %1) #0 {
  br label %3

3:                                                ; preds = %10, %2
  %.02 = phi i64 [ %1, %2 ], [ %11, %10 ]
  %.01 = phi i64 [ %0, %2 ], [ %7, %10 ]
  %4 = icmp eq i64 %.02, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %12

6:                                                ; preds = %3
  %7 = urem i64 %.01, %.02
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %12

10:                                               ; preds = %6
  %11 = urem i64 %.02, %7
  br label %3

12:                                               ; preds = %9, %5
  %.0 = phi i64 [ %.01, %5 ], [ %.02, %9 ]
  ret i64 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i64 @powmod_ll(i64 noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %28

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %9, %6
  %.04 = phi i32 [ %1, %6 ], [ %10, %9 ]
  %.01 = phi i32 [ 0, %6 ], [ %11, %9 ]
  %.not = icmp eq i32 %.04, 0
  br i1 %.not, label %12, label %8

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %8
  %10 = lshr i32 %.04, 1
  %11 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !4

12:                                               ; preds = %7
  %13 = add nsw i32 %.01, -2
  br label %14

14:                                               ; preds = %25, %12
  %.02 = phi i64 [ %0, %12 ], [ %.13, %25 ]
  %.1 = phi i32 [ %13, %12 ], [ %26, %25 ]
  %15 = icmp sgt i32 %.1, -1
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = mul i64 %.02, %.02
  %18 = urem i64 %17, %2
  %19 = shl i32 1, %.1
  %20 = and i32 %19, %1
  %.not5 = icmp eq i32 %20, 0
  br i1 %.not5, label %24, label %21

21:                                               ; preds = %16
  %22 = mul i64 %18, %0
  %23 = urem i64 %22, %2
  br label %24

24:                                               ; preds = %21, %16
  %.13 = phi i64 [ %23, %21 ], [ %18, %16 ]
  br label %25

25:                                               ; preds = %24
  %26 = add nsw i32 %.1, -1
  br label %14, !llvm.loop !6

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %5
  %.0 = phi i64 [ 1, %5 ], [ %.02, %27 ]
  ret i64 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @facts(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = sext i32 %1 to i64
  %6 = sext i32 %2 to i64
  %7 = sext i32 %2 to i64
  br label %8

8:                                                ; preds = %38, %4
  %.012 = phi i32 [ 1, %4 ], [ %39, %38 ]
  %.011 = phi i64 [ 1, %4 ], [ %24, %38 ]
  %.010 = phi i64 [ %7, %4 ], [ %16, %38 ]
  %.09 = phi i64 [ %6, %4 ], [ %12, %38 ]
  %.06 = phi i64* [ getelementptr inbounds ([10 x i64], [10 x i64]* @factab, i64 0, i64 0), %4 ], [ %.28, %38 ]
  %.04 = phi i32 [ 1, %4 ], [ %.15, %38 ]
  %.01 = phi i32 [ 0, %4 ], [ %.12, %38 ]
  %.0 = phi i64 [ %0, %4 ], [ %.2, %38 ]
  %9 = icmp ult i32 %.012, 10000
  br i1 %9, label %10, label %.loopexit

10:                                               ; preds = %8
  %11 = call i64 @powmod_ll(i64 noundef %.09, i32 noundef %3, i64 noundef %.0)
  %12 = add i64 %11, %5
  %13 = call i64 @powmod_ll(i64 noundef %.010, i32 noundef %3, i64 noundef %.0)
  %14 = add i64 %13, %5
  %15 = call i64 @powmod_ll(i64 noundef %14, i32 noundef %3, i64 noundef %.0)
  %16 = add i64 %15, %5
  %17 = icmp ugt i64 %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = sub i64 %12, %16
  br label %22

20:                                               ; preds = %10
  %21 = sub i64 %16, %12
  br label %22

22:                                               ; preds = %20, %18
  %.03 = phi i64 [ %19, %18 ], [ %21, %20 ]
  %23 = mul i64 %.011, %.03
  %24 = urem i64 %23, %.0
  %25 = icmp eq i32 %.012, %.04
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = add nsw i32 %.01, 1
  %28 = add nsw i32 %.04, %27
  %29 = call i64 @gcd_ll(i64 noundef %24, i64 noundef %.0)
  %.not = icmp eq i64 %29, 1
  br i1 %.not, label %36, label %30

30:                                               ; preds = %26
  store i64 %29, i64* %.06, align 8
  %31 = udiv i64 %.0, %29
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds i64, i64* %.06, i64 1
  br label %36

36:                                               ; preds = %34, %26
  %.17 = phi i64* [ %35, %34 ], [ %.06, %26 ]
  %.1 = phi i64 [ %31, %34 ], [ %.0, %26 ]
  br label %37

37:                                               ; preds = %36, %22
  %.28 = phi i64* [ %.17, %36 ], [ %.06, %22 ]
  %.15 = phi i32 [ %28, %36 ], [ %.04, %22 ]
  %.12 = phi i32 [ %27, %36 ], [ %.01, %22 ]
  %.2 = phi i64 [ %.1, %36 ], [ %.0, %22 ]
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i32 %.012, 1
  br label %8, !llvm.loop !7

.loopexit:                                        ; preds = %8
  br label %40

40:                                               ; preds = %.loopexit, %33
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  call void @facts(i64 noundef 134217727, i32 noundef -1, i32 noundef 3, i32 noundef 27)
  %1 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @factab, i64 0, i64 0), align 16
  %.not = icmp eq i64 %1, 7
  br i1 %.not, label %2, label %6

2:                                                ; preds = %0
  %3 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @factab, i64 0, i64 1), align 8
  %.not1 = icmp eq i64 %3, 73
  br i1 %.not1, label %4, label %6

4:                                                ; preds = %2
  %5 = load i64, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @factab, i64 0, i64 2), align 16
  %.not2 = icmp eq i64 %5, 262657
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %4, %2, %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %7, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
