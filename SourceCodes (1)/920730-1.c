; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920730-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920730-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1() #0 {
  %1 = alloca i32, align 4
  store i32 -2147483648, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp sge i32 %2, -2147483648
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2() #0 {
  %1 = alloca i32, align 4
  store i32 -2147483647, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp uge i32 %2, -2147483647
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3() #0 {
  %1 = alloca i32, align 4
  store i32 2147483647, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp sge i32 %2, 2147483647
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f4() #0 {
  %1 = alloca i32, align 4
  store i32 -1, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp uge i32 %2, -1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @f1()
  %3 = call i32 @f2()
  %4 = and i32 %2, %3
  %5 = call i32 @f3()
  %6 = and i32 %4, %5
  %7 = call i32 @f4()
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  call void @abort() #2
  unreachable

11:                                               ; preds = %0
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
