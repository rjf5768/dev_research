; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011109-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011109-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @fail1() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fail2() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fail3() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fail4() #0 {
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  switch i64 %3, label %8 [
    i64 -6, label %4
    i64 0, label %5
    i64 1, label %6
    i64 2, label %6
    i64 3, label %7
    i64 4, label %7
    i64 5, label %7
  ]

4:                                                ; preds = %1
  call void @fail1()
  br label %9

5:                                                ; preds = %1
  call void @fail2()
  br label %9

6:                                                ; preds = %1, %1
  br label %9

7:                                                ; preds = %1, %1, %1
  call void @fail3()
  br label %9

8:                                                ; preds = %1
  call void @fail4()
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %4
  %10 = load i64, i64* %2, align 8
  switch i64 %10, label %15 [
    i64 -3, label %11
    i64 0, label %12
    i64 4, label %12
    i64 1, label %13
    i64 3, label %13
    i64 2, label %14
    i64 8, label %14
  ]

11:                                               ; preds = %9
  call void @fail1()
  br label %16

12:                                               ; preds = %9, %9
  call void @fail2()
  br label %16

13:                                               ; preds = %9, %9
  br label %16

14:                                               ; preds = %9, %9
  call void @abort() #2
  unreachable

15:                                               ; preds = %9
  call void @fail4()
  br label %16

16:                                               ; preds = %15, %13, %12, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo(i64 noundef 1)
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
