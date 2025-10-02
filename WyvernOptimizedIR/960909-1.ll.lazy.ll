; ModuleID = './960909-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960909-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @ffs(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %12

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %8, %4
  %.02 = phi i32 [ 1, %4 ], [ %9, %8 ]
  %.01 = phi i32 [ 1, %4 ], [ %10, %8 ]
  %6 = and i32 %.01, %0
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %11

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %7
  %9 = add nuw nsw i32 %.02, 1
  %10 = shl i32 %.01, 1
  br label %5, !llvm.loop !4

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %3
  %.0 = phi i32 [ 0, %3 ], [ %.02, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0) #1 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  call void @abort() #5
  unreachable

3:                                                ; preds = %1
  ret i32 undef
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = call i32 @f(i32 noundef 1)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
