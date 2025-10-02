; ModuleID = './921202-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921202-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [2056 x i64], align 16
  br label %2

2:                                                ; preds = %21, %0
  br label %3

3:                                                ; preds = %6, %2
  %.0 = phi i32 [ 0, %2 ], [ %7, %6 ]
  %4 = icmp eq i32 %.0, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5
  %7 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %12, %8
  %.1 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %10 = icmp eq i32 %.1, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.1, 1
  br label %9, !llvm.loop !6

14:                                               ; preds = %9
  br i1 undef, label %20, label %15

15:                                               ; preds = %14
  %16 = call i32 @mpn_cmp()
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %17, label %20

17:                                               ; preds = %15
  %18 = getelementptr inbounds [2056 x i64], [2056 x i64]* %1, i64 0, i64 2055
  %19 = load i64, i64* %18, align 8
  %.not3 = icmp eq i64 %19, 305419896
  br i1 %.not3, label %21, label %20

20:                                               ; preds = %17, %15, %14
  br label %21

21:                                               ; preds = %20, %17
  %22 = call i32 @exxit()
  br label %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @foo() #1 {
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @mpn_mul_1() #1 {
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @mpn_print() #1 {
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @mpn_random2() #1 {
  ret i32 undef
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @mpn_cmp() #1 {
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @exxit() #0 {
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
