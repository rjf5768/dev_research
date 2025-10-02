; ModuleID = './pr84748.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr84748.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g0 = dso_local global i64 0, align 8
@g1 = dso_local global i64 0, align 8
@a = dso_local global i32 0, align 4
@b = dso_local global i128 0, align 16
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @store(i64 noundef %0, i64 noundef %1) #0 {
  store i64 %0, i64* @g0, align 8
  store i64 %1, i64* @g1, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo() #1 {
  %1 = load i32, i32* @a, align 4
  %2 = sext i32 %1 to i128
  %3 = load i128, i128* @b, align 16
  %4 = add i128 %3, %2
  store i128 %4, i128* @b, align 16
  %5 = load i32, i32* @d, align 4
  %6 = icmp ne i32 %5, 84347
  %7 = zext i1 %6 to i32
  store i32 %7, i32* @c, align 4
  store i128 %4, i128* @b, align 16
  %8 = trunc i128 %4 to i64
  %9 = lshr i128 %4, 64
  %10 = trunc i128 %9 to i64
  call void @store(i64 noundef %8, i64 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  call void @foo()
  %1 = load i64, i64* @g0, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = load i64, i64* @g1, align 8
  %.not1 = icmp eq i64 %3, 0
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %2, %0
  call void @abort() #4
  unreachable

5:                                                ; preds = %2
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
