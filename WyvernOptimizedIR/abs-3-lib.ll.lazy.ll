; ModuleID = './abs-3-lib.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtins/abs-3-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @abs(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2
  %4 = icmp slt i32 %0, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = sub nsw i32 0, %0
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ %0, %7 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @labs(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2
  %4 = icmp slt i64 %0, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = sub nsw i64 0, %0
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i64 [ %6, %5 ], [ %0, %7 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @llabs(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2
  %4 = icmp slt i64 %0, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = sub nsw i64 0, %0
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i64 [ %6, %5 ], [ %0, %7 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @imaxabs(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %2
  %4 = icmp slt i64 %0, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = sub nsw i64 0, %0
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i64 [ %6, %5 ], [ %0, %7 ]
  ret i64 %9
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
