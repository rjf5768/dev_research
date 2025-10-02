; ModuleID = './20140212-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20140212-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 1, align 4
@f = dso_local global i32 1, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@j = dso_local global i8 0, align 1
@g = dso_local global i8 0, align 1
@i = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @fn1() #0 {
  store i32 0, i32* @e, align 4
  store i32 0, i32* @c, align 4
  br label %1

1:                                                ; preds = %27, %0
  %2 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %6, label %3

3:                                                ; preds = %1
  %4 = load i32, i32* @b, align 4
  %5 = icmp ne i32 %4, 0
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ false, %1 ], [ %5, %3 ]
  %8 = zext i1 %7 to i32
  store i32 %8, i32* @k, align 4
  %9 = select i1 %7, i8 54, i8 0
  store i8 %9, i8* @j, align 1
  %10 = mul i8 %9, -109
  store i8 %10, i8* @g, align 1
  %11 = xor i8 %10, -1
  %12 = sext i8 %11 to i64
  %13 = load i32, i32* @e, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 0, %14
  %.not1 = icmp eq i64 %12, %15
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16, %6
  %18 = load i32, i32* @d, align 4
  %.not2 = icmp eq i32 %18, 0
  br i1 %.not2, label %22, label %19

19:                                               ; preds = %17
  %20 = xor i1 %.not1, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* @c, align 4
  br label %24

22:                                               ; preds = %17
  %23 = select i1 %.not1, i32 0, i32 9
  store i32 %23, i32* @i, align 4
  store i32 %23, i32* @h, align 4
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32, i32* @f, align 4
  %.not3 = icmp eq i32 %25, 0
  br i1 %.not3, label %27, label %26

26:                                               ; preds = %24
  ret void

27:                                               ; preds = %24
  br label %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @fn1()
  %1 = load i32, i32* @c, align 4
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  unreachable

3:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
