; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20010226-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/20010226-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dfrom = dso_local global x86_fp80 0xK3FFF8CCCCCCCCCCCCCCD, align 16
@m1 = dso_local global x86_fp80 0xK00000000000000000000, align 16
@m2 = dso_local global x86_fp80 0xK00000000000000000000, align 16
@mant_long = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load x86_fp80, x86_fp80* @dfrom, align 16
  %3 = fdiv x86_fp80 %2, 0xK40008000000000000000
  store x86_fp80 %3, x86_fp80* @m1, align 16
  %4 = load x86_fp80, x86_fp80* @m1, align 16
  %5 = fmul x86_fp80 %4, 0xK401F8000000000000000
  store x86_fp80 %5, x86_fp80* @m2, align 16
  %6 = load x86_fp80, x86_fp80* @m2, align 16
  %7 = fptoui x86_fp80 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* @mant_long, align 8
  %9 = load i64, i64* @mant_long, align 8
  %10 = icmp eq i64 %9, 2362232012
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  ret i32 0

12:                                               ; preds = %0
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
