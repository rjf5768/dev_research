; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79737-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79737-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [9 x i8] }

@i = dso_local global %struct.S zeroinitializer, align 1
@j = dso_local global %struct.S zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = load i72, i72* bitcast (%struct.S* @i to i72*), align 1
  %2 = and i72 %1, -288221580058689537
  %3 = or i72 %2, 0
  store i72 %3, i72* bitcast (%struct.S* @i to i72*), align 1
  %4 = load i72, i72* bitcast (%struct.S* @i to i72*), align 1
  %5 = and i72 %4, -262144
  %6 = or i72 %5, 5
  store i72 %6, i72* bitcast (%struct.S* @i to i72*), align 1
  %7 = load i72, i72* bitcast (%struct.S* @i to i72*), align 1
  %8 = and i72 %7, -262145
  %9 = or i72 %8, 0
  store i72 %9, i72* bitcast (%struct.S* @i to i72*), align 1
  %10 = load i72, i72* bitcast (%struct.S* @i to i72*), align 1
  %11 = and i72 %10, -8796092497921
  %12 = or i72 %11, 8796090400768
  store i72 %12, i72* bitcast (%struct.S* @i to i72*), align 1
  %13 = load i72, i72* bitcast (%struct.S* @i to i72*), align 1
  %14 = and i72 %13, 288230376151711743
  %15 = or i72 %14, 1441151880758558720
  store i72 %15, i72* bitcast (%struct.S* @i to i72*), align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  %1 = load i72, i72* bitcast (%struct.S* @j to i72*), align 1
  %2 = and i72 %1, -262144
  %3 = or i72 %2, 5
  store i72 %3, i72* bitcast (%struct.S* @j to i72*), align 1
  %4 = load i72, i72* bitcast (%struct.S* @j to i72*), align 1
  %5 = and i72 %4, -262145
  %6 = or i72 %5, 0
  store i72 %6, i72* bitcast (%struct.S* @j to i72*), align 1
  %7 = load i72, i72* bitcast (%struct.S* @j to i72*), align 1
  %8 = and i72 %7, -8796092497921
  %9 = or i72 %8, 8796090400768
  store i72 %9, i72* bitcast (%struct.S* @j to i72*), align 1
  %10 = load i72, i72* bitcast (%struct.S* @j to i72*), align 1
  %11 = and i72 %10, -288221580058689537
  %12 = or i72 %11, 0
  store i72 %12, i72* bitcast (%struct.S* @j to i72*), align 1
  %13 = load i72, i72* bitcast (%struct.S* @j to i72*), align 1
  %14 = and i72 %13, 288230376151711743
  %15 = or i72 %14, 1441151880758558720
  store i72 %15, i72* bitcast (%struct.S* @j to i72*), align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @foo()
  call void @bar()
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %1 = load i72, i72* bitcast (%struct.S* @i to i72*), align 1
  %2 = shl i72 %1, 54
  %3 = ashr i72 %2, 54
  %4 = trunc i72 %3 to i32
  %5 = load i72, i72* bitcast (%struct.S* @j to i72*), align 1
  %6 = shl i72 %5, 54
  %7 = ashr i72 %6, 54
  %8 = trunc i72 %7 to i32
  %9 = icmp ne i32 %4, %8
  br i1 %9, label %48, label %10

10:                                               ; preds = %0
  %11 = load i72, i72* bitcast (%struct.S* @i to i72*), align 1
  %12 = shl i72 %11, 53
  %13 = ashr i72 %12, 71
  %14 = trunc i72 %13 to i32
  %15 = load i72, i72* bitcast (%struct.S* @j to i72*), align 1
  %16 = shl i72 %15, 53
  %17 = ashr i72 %16, 71
  %18 = trunc i72 %17 to i32
  %19 = icmp ne i32 %14, %18
  br i1 %19, label %48, label %20

20:                                               ; preds = %10
  %21 = load i72, i72* bitcast (%struct.S* @i to i72*), align 1
  %22 = shl i72 %21, 29
  %23 = ashr i72 %22, 48
  %24 = trunc i72 %23 to i32
  %25 = load i72, i72* bitcast (%struct.S* @j to i72*), align 1
  %26 = shl i72 %25, 29
  %27 = ashr i72 %26, 48
  %28 = trunc i72 %27 to i32
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %48, label %30

30:                                               ; preds = %20
  %31 = load i72, i72* bitcast (%struct.S* @i to i72*), align 1
  %32 = shl i72 %31, 14
  %33 = ashr i72 %32, 57
  %34 = trunc i72 %33 to i32
  %35 = load i72, i72* bitcast (%struct.S* @j to i72*), align 1
  %36 = shl i72 %35, 14
  %37 = ashr i72 %36, 57
  %38 = trunc i72 %37 to i32
  %39 = icmp ne i32 %34, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %30
  %41 = load i72, i72* bitcast (%struct.S* @i to i72*), align 1
  %42 = ashr i72 %41, 58
  %43 = trunc i72 %42 to i32
  %44 = load i72, i72* bitcast (%struct.S* @j to i72*), align 1
  %45 = ashr i72 %44, 58
  %46 = trunc i72 %45 to i32
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %30, %20, %10, %0
  call void @abort() #3
  unreachable

49:                                               ; preds = %40
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 455}
