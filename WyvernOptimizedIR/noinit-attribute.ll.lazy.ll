; ModuleID = './noinit-attribute.ll'
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

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @var_common, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #2
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = load i32, i32* @var_init, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load i32, i32* @var_zero, align 4
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %8, label %10

8:                                                ; preds = %6
  %9 = load i32, i32* @var_one, align 4
  %.not3 = icmp eq i32 %9, 1
  br i1 %.not3, label %11, label %10

10:                                               ; preds = %8, %6
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %3
  %13 = load i32, i32* @var_init, align 4
  switch i32 %13, label %19 [
    i32 2, label %14
    i32 3, label %15
  ]

14:                                               ; preds = %12
  store i32 3, i32* @var_init, align 4
  store i32 3, i32* @var_noinit, align 4
  store i32 3, i32* @var_one, align 4
  store i32 3, i32* @var_zero, align 4
  store i32 3, i32* @var_common, align 4
  br label %20

15:                                               ; preds = %12
  %16 = load i32, i32* @var_noinit, align 4
  %.not1 = icmp eq i32 %16, 3
  br i1 %.not1, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #2
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  call void @exit(i32 noundef 0) #2
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %12
  call void @abort() #2
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %14
  call void @_start() #2
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %20, %19, %18, %17, %10, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noreturn
declare dso_local void @_start() #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
