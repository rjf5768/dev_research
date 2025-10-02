; ModuleID = './shiftdi.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/shiftdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @g(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64* nocapture noundef %3) #0 {
  %5 = zext i32 %1 to i64
  %6 = lshr i64 %0, %5
  %7 = and i32 %2, 31
  %8 = zext i32 %7 to i64
  %9 = shl i64 %6, %8
  %10 = and i64 %9, 4294967295
  %11 = zext i32 %2 to i64
  %12 = shl i64 %10, %11
  %13 = load i64, i64* %3, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @main() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  call void @g(i64 noundef -2401053092593056409, i32 noundef 0, i32 noundef 0, i64* noundef nonnull %1)
  %2 = load i64, i64* %1, align 8
  %3 = icmp ne i64 %2, 19088743
  %4 = zext i1 %3 to i32
  ret i32 %4
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
