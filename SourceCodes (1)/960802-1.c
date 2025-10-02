; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960802-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/960802-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local global i64 1577058304, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f1() #0 {
  ret i64 306
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f2() #0 {
  ret i64 1577058304
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  store i64 %3, i64* @val, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @f1()
  store i64 %3, i64* %1, align 8
  %4 = call i64 @f2()
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %1, align 8
  %6 = and i64 %5, 16777215
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, 4278190080
  %9 = or i64 %6, %8
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  call void @f3(i64 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @f4()
  %2 = load i64, i64* @val, align 8
  %3 = icmp ne i64 %2, 1577058610
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
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
