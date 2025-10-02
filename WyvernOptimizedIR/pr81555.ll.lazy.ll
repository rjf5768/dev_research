; ModuleID = './pr81555.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81555.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@d = dso_local global i32 4014, align 4
@e = dso_local global i32 58230, align 4
@b = dso_local global i8 0, align 1
@f = dso_local global i8 1, align 1
@g = dso_local global i8 1, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo() #0 {
  %1 = load i32, i32* @a, align 4
  %2 = load i8, i8* @b, align 1
  %3 = and i8 %2, 1
  %4 = zext i8 %3 to i32
  %5 = icmp ne i32 %1, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i8 0, i8* @f, align 1
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* @e, align 4
  %9 = zext i1 %5 to i32
  %10 = and i32 %8, %9
  %11 = load i32, i32* @d, align 4
  %12 = and i32 %10, %11
  %13 = zext i1 %5 to i32
  %14 = and i32 %12, %13
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %16, label %15

15:                                               ; preds = %7
  store i8 0, i8* @g, align 1
  br label %16

16:                                               ; preds = %15, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @foo()
  %1 = load i8, i8* @f, align 1
  %2 = and i8 %1, 1
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %3, label %5

3:                                                ; preds = %0
  %4 = load i8, i8* @g, align 1
  %.not1 = icmp eq i8 %4, 1
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3, %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %3
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
