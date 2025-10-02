; ModuleID = './pr42006.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr42006.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @func_4(i32 noundef 0)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @func_4(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %12, %1
  %.02 = phi i32 [ 0, %1 ], [ %5, %12 ]
  %.01 = phi i32 [ 1, %1 ], [ %13, %12 ]
  %3 = icmp ult i32 %.01, 3
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = add nuw nsw i32 %.02, 1
  %6 = icmp ugt i32 %.02, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  call void @abort() #3
  unreachable

8:                                                ; preds = %4
  %9 = call i32 @my_shift(i32 noundef %.01, i32 noundef %.01)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %8
  br label %15

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11
  %13 = call i32 @my_add(i32 noundef %.01, i32 noundef 1)
  br label %2, !llvm.loop !4

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @my_shift(i32 noundef %0, i32 noundef %1) #2 {
  %3 = icmp ugt i32 %1, 100
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %7

5:                                                ; preds = %2
  %6 = lshr i32 %0, %1
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i32 [ %0, %4 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @my_add(i32 noundef %0, i32 noundef %1) #2 {
  %3 = sub i32 50, %1
  %4 = icmp ult i32 %3, %0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %8

6:                                                ; preds = %2
  %7 = add i32 %0, %1
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ %0, %5 ], [ %7, %6 ]
  ret i32 %9
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
