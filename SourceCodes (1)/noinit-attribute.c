; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/noinit-attribute.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/noinit-attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@var_zero = dso_local global i32 0, align 4
@var_one = dso_local global i32 1, align 4
@var_init = dso_local global i32 2, align 4
@var_common = dso_local global i32 0, align 4
@var_noinit = dso_local global i32 0, align 4
@var_section1 = dso_local global i32 0, section "mysection", align 4
@var_section2 = dso_local global i32 0, section "mysection", align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @var_common, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = load i32, i32* @var_init, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, i32* @var_zero, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @var_one, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %8
  call void @abort() #2
  unreachable

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %5
  %17 = load i32, i32* @var_init, align 4
  switch i32 %17, label %24 [
    i32 2, label %18
    i32 3, label %19
  ]

18:                                               ; preds = %16
  store i32 3, i32* @var_init, align 4
  store i32 3, i32* @var_noinit, align 4
  store i32 3, i32* @var_one, align 4
  store i32 3, i32* @var_zero, align 4
  store i32 3, i32* @var_common, align 4
  br label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @var_noinit, align 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @abort() #2
  unreachable

23:                                               ; preds = %19
  call void @exit(i32 noundef 0) #2
  unreachable

24:                                               ; preds = %16
  call void @abort() #2
  unreachable

25:                                               ; preds = %18
  call void @_start() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @_start() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
