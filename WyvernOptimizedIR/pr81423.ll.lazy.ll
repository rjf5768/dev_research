; ModuleID = './pr81423.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81423.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ll = dso_local global i64 0, align 8
@ull1 = dso_local global i64 1, align 8
@ull2 = dso_local global i64 -6438459928895745270, align 8
@ull3 = dso_local global i64 0, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i64 @foo() #0 {
  store i64 -5597998501375493990, i64* @ll, align 8
  %1 = load i64, i64* @ull1, align 8
  %.not = icmp eq i64 %1, 0
  %2 = select i1 %.not, i64 2595916315, i64 2595916314
  store i64 %2, i64* @ll, align 8
  %3 = add nsw i64 %2, -2129105131
  %4 = xor i64 %3, -8165993929295883380
  %5 = add nsw i64 %4, 8165993929712309607
  %6 = shl i64 2067854353, %5
  %7 = trunc i64 %6 to i32
  %8 = load i64, i64* @ull2, align 8
  %9 = trunc i64 %8 to i32
  %10 = or i32 %9, -8651009
  %11 = add nsw i32 %10, 5
  %12 = lshr i32 %7, %11
  %13 = zext i32 %12 to i64
  ret i64 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i64 @foo()
  store i64 %1, i64* @ull3, align 8
  %.not = icmp eq i64 %1, 3998784
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
