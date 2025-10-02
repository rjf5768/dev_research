; ModuleID = './pr79737-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79737-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [9 x i8] }

@i = dso_local global %struct.S zeroinitializer, align 8
@j = dso_local global %struct.S zeroinitializer, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo() #0 {
  store i72 1441160676848959493, i72* bitcast (%struct.S* @i to i72*), align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @bar() #0 {
  store i72 1441160676848959493, i72* bitcast (%struct.S* @j to i72*), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @foo()
  call void @bar()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  %1 = load i72, i72* bitcast (%struct.S* @i to i72*), align 8
  %2 = shl i72 %1, 54
  %3 = ashr exact i72 %2, 54
  %4 = trunc i72 %3 to i32
  %5 = load i72, i72* bitcast (%struct.S* @j to i72*), align 8
  %6 = shl i72 %5, 54
  %7 = ashr exact i72 %6, 54
  %8 = trunc i72 %7 to i32
  %.not = icmp eq i32 %4, %8
  br i1 %.not, label %9, label %43

9:                                                ; preds = %0
  %10 = load i72, i72* bitcast (%struct.S* @i to i72*), align 8
  %11 = shl i72 %10, 53
  %12 = ashr i72 %11, 71
  %13 = trunc i72 %12 to i32
  %14 = load i72, i72* bitcast (%struct.S* @j to i72*), align 8
  %15 = shl i72 %14, 53
  %16 = ashr i72 %15, 71
  %17 = trunc i72 %16 to i32
  %.not1 = icmp eq i32 %13, %17
  br i1 %.not1, label %18, label %43

18:                                               ; preds = %9
  %19 = load i72, i72* bitcast (%struct.S* @i to i72*), align 8
  %20 = shl i72 %19, 29
  %21 = ashr i72 %20, 48
  %22 = trunc i72 %21 to i32
  %23 = load i72, i72* bitcast (%struct.S* @j to i72*), align 8
  %24 = shl i72 %23, 29
  %25 = ashr i72 %24, 48
  %26 = trunc i72 %25 to i32
  %.not2 = icmp eq i32 %22, %26
  br i1 %.not2, label %27, label %43

27:                                               ; preds = %18
  %28 = load i72, i72* bitcast (%struct.S* @i to i72*), align 8
  %29 = shl i72 %28, 14
  %30 = ashr i72 %29, 57
  %31 = trunc i72 %30 to i32
  %32 = load i72, i72* bitcast (%struct.S* @j to i72*), align 8
  %33 = shl i72 %32, 14
  %34 = ashr i72 %33, 57
  %35 = trunc i72 %34 to i32
  %.not3 = icmp eq i32 %31, %35
  br i1 %.not3, label %36, label %43

36:                                               ; preds = %27
  %37 = load i72, i72* bitcast (%struct.S* @i to i72*), align 8
  %38 = ashr i72 %37, 58
  %39 = trunc i72 %38 to i32
  %40 = load i72, i72* bitcast (%struct.S* @j to i72*), align 8
  %41 = ashr i72 %40, 58
  %42 = trunc i72 %41 to i32
  %.not4 = icmp eq i32 %39, %42
  br i1 %.not4, label %44, label %43

43:                                               ; preds = %36, %27, %18, %9, %0
  call void @abort() #4
  unreachable

44:                                               ; preds = %36
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 455}
