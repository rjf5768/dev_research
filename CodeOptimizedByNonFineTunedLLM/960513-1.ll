; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960513-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960513-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @f(x86_fp80 noundef %0, i32 noundef %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca i32, align 4
  %5 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %3, align 16
  store i32 %1, i32* %4, align 4
  %6 = load x86_fp80, x86_fp80* %3, align 16
  %7 = fneg x86_fp80 %6
  store x86_fp80 %7, x86_fp80* %3, align 16
  %8 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %8, x86_fp80* %5, align 16
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load x86_fp80, x86_fp80* %3, align 16
  %13 = fmul x86_fp80 %12, 0xK40008000000000000000
  store x86_fp80 %13, x86_fp80* %3, align 16
  br label %14

14:                                               ; preds = %11, %2
  %15 = load x86_fp80, x86_fp80* %5, align 16
  %16 = load x86_fp80, x86_fp80* %3, align 16
  %17 = load x86_fp80, x86_fp80* %3, align 16
  %18 = fneg x86_fp80 %15
  %19 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %18, x86_fp80 %16, x86_fp80 %17)
  store x86_fp80 %19, x86_fp80* %3, align 16
  %20 = load x86_fp80, x86_fp80* %5, align 16
  %21 = load x86_fp80, x86_fp80* %3, align 16
  %22 = load x86_fp80, x86_fp80* %3, align 16
  %23 = fneg x86_fp80 %20
  %24 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %23, x86_fp80 %21, x86_fp80 %22)
  store x86_fp80 %24, x86_fp80* %3, align 16
  %25 = load x86_fp80, x86_fp80* %5, align 16
  %26 = load x86_fp80, x86_fp80* %3, align 16
  %27 = load x86_fp80, x86_fp80* %3, align 16
  %28 = fneg x86_fp80 %25
  %29 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %28, x86_fp80 %26, x86_fp80 %27)
  store x86_fp80 %29, x86_fp80* %3, align 16
  %30 = load x86_fp80, x86_fp80* %5, align 16
  %31 = load x86_fp80, x86_fp80* %3, align 16
  %32 = load x86_fp80, x86_fp80* %3, align 16
  %33 = fneg x86_fp80 %30
  %34 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %33, x86_fp80 %31, x86_fp80 %32)
  store x86_fp80 %34, x86_fp80* %3, align 16
  %35 = load x86_fp80, x86_fp80* %5, align 16
  %36 = load x86_fp80, x86_fp80* %3, align 16
  %37 = load x86_fp80, x86_fp80* %3, align 16
  %38 = fneg x86_fp80 %35
  %39 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %38, x86_fp80 %36, x86_fp80 %37)
  store x86_fp80 %39, x86_fp80* %3, align 16
  %40 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call x86_fp80 @f(x86_fp80 noundef 0xK40008000000000000000, i32 noundef 1)
  %3 = fptosi x86_fp80 %2 to i32
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
