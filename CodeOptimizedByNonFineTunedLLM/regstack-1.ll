; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/regstack-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/regstack-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C = dso_local global x86_fp80 0xK4001A000000000000000, align 16
@U = dso_local global x86_fp80 0xK3FFF8000000000000000, align 16
@Y2 = dso_local global x86_fp80 0xK4002B000000000000000, align 16
@Y1 = dso_local global x86_fp80 0xK40038800000000000000, align 16
@X = dso_local global x86_fp80 0xK00000000000000000000, align 16
@Y = dso_local global x86_fp80 0xK00000000000000000000, align 16
@Z = dso_local global x86_fp80 0xK00000000000000000000, align 16
@T = dso_local global x86_fp80 0xK00000000000000000000, align 16
@R = dso_local global x86_fp80 0xK00000000000000000000, align 16
@S = dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load x86_fp80, x86_fp80* @C, align 16
  %3 = load x86_fp80, x86_fp80* @U, align 16
  %4 = fadd x86_fp80 %2, %3
  %5 = load x86_fp80, x86_fp80* @Y2, align 16
  %6 = fmul x86_fp80 %4, %5
  store x86_fp80 %6, x86_fp80* @X, align 16
  %7 = load x86_fp80, x86_fp80* @C, align 16
  %8 = load x86_fp80, x86_fp80* @U, align 16
  %9 = fsub x86_fp80 %7, %8
  %10 = load x86_fp80, x86_fp80* @U, align 16
  %11 = fsub x86_fp80 %9, %10
  store x86_fp80 %11, x86_fp80* @Y, align 16
  %12 = load x86_fp80, x86_fp80* @C, align 16
  %13 = load x86_fp80, x86_fp80* @U, align 16
  %14 = fadd x86_fp80 %12, %13
  %15 = load x86_fp80, x86_fp80* @U, align 16
  %16 = fadd x86_fp80 %14, %15
  store x86_fp80 %16, x86_fp80* @Z, align 16
  %17 = load x86_fp80, x86_fp80* @C, align 16
  %18 = load x86_fp80, x86_fp80* @U, align 16
  %19 = fsub x86_fp80 %17, %18
  %20 = load x86_fp80, x86_fp80* @Y1, align 16
  %21 = fmul x86_fp80 %19, %20
  store x86_fp80 %21, x86_fp80* @T, align 16
  %22 = load x86_fp80, x86_fp80* @X, align 16
  %23 = load x86_fp80, x86_fp80* @Z, align 16
  %24 = load x86_fp80, x86_fp80* @U, align 16
  %25 = fadd x86_fp80 %23, %24
  %26 = fsub x86_fp80 %22, %25
  store x86_fp80 %26, x86_fp80* @X, align 16
  %27 = load x86_fp80, x86_fp80* @Y, align 16
  %28 = load x86_fp80, x86_fp80* @Y1, align 16
  %29 = fmul x86_fp80 %27, %28
  store x86_fp80 %29, x86_fp80* @R, align 16
  %30 = load x86_fp80, x86_fp80* @Z, align 16
  %31 = load x86_fp80, x86_fp80* @Y2, align 16
  %32 = fmul x86_fp80 %30, %31
  store x86_fp80 %32, x86_fp80* @S, align 16
  %33 = load x86_fp80, x86_fp80* @T, align 16
  %34 = load x86_fp80, x86_fp80* @Y, align 16
  %35 = fsub x86_fp80 %33, %34
  store x86_fp80 %35, x86_fp80* @T, align 16
  %36 = load x86_fp80, x86_fp80* @U, align 16
  %37 = load x86_fp80, x86_fp80* @Y, align 16
  %38 = fsub x86_fp80 %36, %37
  %39 = load x86_fp80, x86_fp80* @R, align 16
  %40 = fadd x86_fp80 %38, %39
  store x86_fp80 %40, x86_fp80* @Y, align 16
  %41 = load x86_fp80, x86_fp80* @S, align 16
  %42 = load x86_fp80, x86_fp80* @Z, align 16
  %43 = load x86_fp80, x86_fp80* @U, align 16
  %44 = fadd x86_fp80 %42, %43
  %45 = load x86_fp80, x86_fp80* @U, align 16
  %46 = fadd x86_fp80 %44, %45
  %47 = fsub x86_fp80 %41, %46
  store x86_fp80 %47, x86_fp80* @Z, align 16
  %48 = load x86_fp80, x86_fp80* @Y2, align 16
  %49 = load x86_fp80, x86_fp80* @U, align 16
  %50 = fadd x86_fp80 %48, %49
  %51 = load x86_fp80, x86_fp80* @Y1, align 16
  %52 = fmul x86_fp80 %50, %51
  store x86_fp80 %52, x86_fp80* @R, align 16
  %53 = load x86_fp80, x86_fp80* @Y2, align 16
  %54 = load x86_fp80, x86_fp80* @Y1, align 16
  %55 = fmul x86_fp80 %53, %54
  store x86_fp80 %55, x86_fp80* @Y1, align 16
  %56 = load x86_fp80, x86_fp80* @R, align 16
  %57 = load x86_fp80, x86_fp80* @Y2, align 16
  %58 = fsub x86_fp80 %56, %57
  store x86_fp80 %58, x86_fp80* @R, align 16
  %59 = load x86_fp80, x86_fp80* @Y1, align 16
  %60 = fsub x86_fp80 %59, 0xK3FFE8000000000000000
  store x86_fp80 %60, x86_fp80* @Y1, align 16
  %61 = load x86_fp80, x86_fp80* @Z, align 16
  %62 = fcmp une x86_fp80 %61, 0xK40058800000000000000
  br i1 %62, label %84, label %63

63:                                               ; preds = %0
  %64 = load x86_fp80, x86_fp80* @Y, align 16
  %65 = fcmp une x86_fp80 %64, 0xK4004C400000000000000
  br i1 %65, label %84, label %66

66:                                               ; preds = %63
  %67 = load x86_fp80, x86_fp80* @X, align 16
  %68 = fcmp une x86_fp80 %67, 0xK4004E800000000000000
  br i1 %68, label %84, label %69

69:                                               ; preds = %66
  %70 = load x86_fp80, x86_fp80* @Y1, align 16
  %71 = fcmp une x86_fp80 %70, 0xK4006BA80000000000000
  br i1 %71, label %84, label %72

72:                                               ; preds = %69
  %73 = load x86_fp80, x86_fp80* @R, align 16
  %74 = fcmp une x86_fp80 %73, 0xK4006C100000000000000
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load x86_fp80, x86_fp80* @S, align 16
  %77 = fcmp une x86_fp80 %76, 0xK40059A00000000000000
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load x86_fp80, x86_fp80* @T, align 16
  %80 = fcmp une x86_fp80 %79, 0xK40058200000000000000
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load x86_fp80, x86_fp80* @Y2, align 16
  %83 = fcmp une x86_fp80 %82, 0xK4002B000000000000000
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %78, %75, %72, %69, %66, %63, %0
  call void @abort() #2
  unreachable

85:                                               ; preds = %81
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
