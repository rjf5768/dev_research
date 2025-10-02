; ModuleID = './960215-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960215-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C = dso_local global x86_fp80 0xK40008000000000000000, align 16
@U = dso_local global x86_fp80 0xK3FFF8000000000000000, align 16
@Y2 = dso_local global x86_fp80 0xK4000C000000000000000, align 16
@Y1 = dso_local global x86_fp80 0xK3FFF8000000000000000, align 16
@X = dso_local global x86_fp80 0xK00000000000000000000, align 16
@Y = dso_local global x86_fp80 0xK00000000000000000000, align 16
@Z = dso_local global x86_fp80 0xK00000000000000000000, align 16
@T = dso_local global x86_fp80 0xK00000000000000000000, align 16
@R = dso_local global x86_fp80 0xK00000000000000000000, align 16
@S = dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load x86_fp80, x86_fp80* @C, align 16
  %2 = load x86_fp80, x86_fp80* @U, align 16
  %3 = fadd x86_fp80 %1, %2
  %4 = load x86_fp80, x86_fp80* @Y2, align 16
  %5 = fmul x86_fp80 %3, %4
  store x86_fp80 %5, x86_fp80* @X, align 16
  %6 = fsub x86_fp80 %1, %2
  %7 = fsub x86_fp80 %6, %2
  store x86_fp80 %7, x86_fp80* @Y, align 16
  %8 = load x86_fp80, x86_fp80* @C, align 16
  %9 = load x86_fp80, x86_fp80* @U, align 16
  %10 = fadd x86_fp80 %8, %9
  %11 = fadd x86_fp80 %10, %9
  store x86_fp80 %11, x86_fp80* @Z, align 16
  %12 = fsub x86_fp80 %8, %9
  %13 = load x86_fp80, x86_fp80* @Y1, align 16
  %14 = fmul x86_fp80 %12, %13
  store x86_fp80 %14, x86_fp80* @T, align 16
  %15 = load x86_fp80, x86_fp80* @X, align 16
  %16 = load x86_fp80, x86_fp80* @U, align 16
  %17 = fadd x86_fp80 %11, %16
  %18 = fsub x86_fp80 %15, %17
  store x86_fp80 %18, x86_fp80* @X, align 16
  %19 = load x86_fp80, x86_fp80* @Y, align 16
  %20 = load x86_fp80, x86_fp80* @Y1, align 16
  %21 = fmul x86_fp80 %19, %20
  store x86_fp80 %21, x86_fp80* @R, align 16
  %22 = load x86_fp80, x86_fp80* @Z, align 16
  %23 = load x86_fp80, x86_fp80* @Y2, align 16
  %24 = fmul x86_fp80 %22, %23
  store x86_fp80 %24, x86_fp80* @S, align 16
  %25 = load x86_fp80, x86_fp80* @T, align 16
  %26 = load x86_fp80, x86_fp80* @Y, align 16
  %27 = fsub x86_fp80 %25, %26
  store x86_fp80 %27, x86_fp80* @T, align 16
  %28 = load x86_fp80, x86_fp80* @U, align 16
  %29 = fsub x86_fp80 %28, %26
  %30 = load x86_fp80, x86_fp80* @R, align 16
  %31 = fadd x86_fp80 %29, %30
  store x86_fp80 %31, x86_fp80* @Y, align 16
  %32 = load x86_fp80, x86_fp80* @S, align 16
  %33 = load x86_fp80, x86_fp80* @Z, align 16
  %34 = load x86_fp80, x86_fp80* @U, align 16
  %35 = fadd x86_fp80 %33, %34
  %36 = fadd x86_fp80 %35, %34
  %37 = fsub x86_fp80 %32, %36
  store x86_fp80 %37, x86_fp80* @Z, align 16
  %38 = load x86_fp80, x86_fp80* @Y2, align 16
  %39 = fadd x86_fp80 %38, %34
  %40 = load x86_fp80, x86_fp80* @Y1, align 16
  %41 = fmul x86_fp80 %39, %40
  store x86_fp80 %41, x86_fp80* @R, align 16
  %42 = fmul x86_fp80 %38, %40
  store x86_fp80 %42, x86_fp80* @Y1, align 16
  %43 = load x86_fp80, x86_fp80* @Y2, align 16
  %44 = fsub x86_fp80 %41, %43
  store x86_fp80 %44, x86_fp80* @R, align 16
  %45 = fadd x86_fp80 %42, 0xKBFFE8000000000000000
  store x86_fp80 %45, x86_fp80* @Y1, align 16
  %46 = load x86_fp80, x86_fp80* @Z, align 16
  %47 = fcmp une x86_fp80 %46, 0xK4001C000000000000000
  br i1 %47, label %48, label %49

48:                                               ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %0
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %49, %48
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
