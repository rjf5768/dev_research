; ModuleID = './pr81556.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81556.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i64 -5174645608211675751, align 8
@c = dso_local global i64 -3105204974106010226, align 8
@d = dso_local global i64 2, align 8
@f = dso_local global i64 1, align 8
@g = dso_local global i64 0, align 8
@h = dso_local global i64 0, align 8
@e = dso_local global i64 -975186032896380117, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo() #0 {
  %1 = load i64, i64* @d, align 8
  %2 = icmp ugt i64 %1, 1
  %3 = load i64, i64* @f, align 8
  %4 = and i64 %3, 511
  store i64 %4, i64* @g, align 8
  %5 = zext i1 %2 to i64
  %6 = load i64, i64* @e, align 8
  %7 = zext i1 %2 to i64
  %8 = load i64, i64* @b, align 8
  %9 = and i64 %8, %7
  %10 = load i64, i64* @c, align 8
  %11 = and i64 %9, %10
  %12 = and i64 %6, %11
  %13 = and i64 %12, %5
  store i64 %13, i64* @h, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @foo()
  %1 = load i64, i64* @g, align 8
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = load i64, i64* @h, align 8
  %.not1 = icmp eq i64 %3, 0
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %2, %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
