; ModuleID = './20011109-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20011109-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @fail1() #0 {
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @fail2() #0 {
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @fail3() #0 {
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @fail4() #0 {
  call void @abort() #3
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64 noundef %0) #2 {
  switch i64 %0, label %6 [
    i64 -6, label %2
    i64 0, label %3
    i64 1, label %4
    i64 2, label %4
    i64 3, label %5
    i64 4, label %5
    i64 5, label %5
  ]

2:                                                ; preds = %1
  call void @fail1()
  br label %7

3:                                                ; preds = %1
  call void @fail2()
  br label %7

4:                                                ; preds = %1, %1
  br label %7

5:                                                ; preds = %1, %1, %1
  call void @fail3()
  br label %7

6:                                                ; preds = %1
  call void @fail4()
  br label %7

7:                                                ; preds = %6, %5, %4, %3, %2
  switch i64 %0, label %12 [
    i64 -3, label %8
    i64 0, label %9
    i64 4, label %9
    i64 1, label %10
    i64 3, label %10
    i64 2, label %11
    i64 8, label %11
  ]

8:                                                ; preds = %7
  call void @fail1()
  br label %13

9:                                                ; preds = %7, %7
  call void @fail2()
  br label %13

10:                                               ; preds = %7, %7
  br label %13

11:                                               ; preds = %7, %7
  call void @abort() #3
  unreachable

12:                                               ; preds = %7
  call void @fail4()
  br label %13

13:                                               ; preds = %12, %10, %9, %8
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  call void @foo(i64 noundef 1)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
