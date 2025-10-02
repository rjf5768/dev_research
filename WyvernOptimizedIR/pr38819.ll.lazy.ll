; ModuleID = './pr38819.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38819.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@b = dso_local global i32 0, align 4
@x = dso_local global i32 2, align 4
@r = dso_local global i32 8, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @foo() #0 {
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load volatile i32, i32* @a, align 4
  %2 = load volatile i32, i32* @b, align 4
  br label %3

3:                                                ; preds = %15, %0
  %.0 = phi i32 [ 0, %0 ], [ %16, %15 ]
  %4 = icmp slt i32 %.0, 100
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  call void @foo()
  %6 = load volatile i32, i32* @x, align 4
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = add nsw i32 %.0, 1
  br label %10

10:                                               ; preds = %8, %5
  %.1 = phi i32 [ %9, %8 ], [ %.0, %5 ]
  %11 = srem i32 %1, %2
  %12 = add nsw i32 %.1, %11
  %13 = load volatile i32, i32* @r, align 4
  %14 = add nsw i32 %13, %12
  store volatile i32 %14, i32* @r, align 4
  br label %15

15:                                               ; preds = %10
  %16 = add nsw i32 %.1, 1
  br label %3, !llvm.loop !4

17:                                               ; preds = %3
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
