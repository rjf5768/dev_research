; ModuleID = './pr67714.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr67714.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local signext i8 @fn1() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp eq i32 %.0, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

6:                                                ; preds = %1
  ret i8 -15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %5, %0
  %storemerge = phi i32 [ 0, %0 ], [ %7, %5 ]
  store i32 %storemerge, i32* @c, align 4
  %3 = icmp slt i32 %storemerge, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  store i32 0, i32* @b, align 4
  br label %5

5:                                                ; preds = %4
  %6 = load i32, i32* @c, align 4
  %7 = add nsw i32 %6, 1
  br label %2, !llvm.loop !6

8:                                                ; preds = %2
  %9 = call signext i8 @fn1()
  %10 = load i32, i32* @b, align 4
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %9, %11
  %13 = sext i8 %12 to i32
  store volatile i32 %13, i32* %1, align 4
  %14 = load volatile i32, i32* %1, align 4
  %.not = icmp eq i32 %14, -15
  br i1 %.not, label %16, label %15

15:                                               ; preds = %8
  call void @abort() #3
  unreachable

16:                                               ; preds = %8
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
