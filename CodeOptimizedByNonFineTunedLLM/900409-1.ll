; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/900409-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/900409-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f1(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 4278190080
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f2(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -4278190081
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f3(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 255
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f4(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -256
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f5(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 65535
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f6(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -65536
  ret i64 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 2309737967, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @f1(i64 noundef %3)
  %5 = icmp ne i64 %4, 2298478592
  br i1 %5, label %26, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @f2(i64 noundef %7)
  %9 = icmp ne i64 %8, 11259375
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @f3(i64 noundef %11)
  %13 = icmp ne i64 %12, 239
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @f4(i64 noundef %15)
  %17 = icmp ne i64 %16, 2309737728
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @f5(i64 noundef %19)
  %21 = icmp ne i64 %20, 52719
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %2, align 8
  %24 = call i64 @f6(i64 noundef %23)
  %25 = icmp ne i64 %24, 2309685248
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %14, %10, %6, %0
  call void @abort() #2
  unreachable

27:                                               ; preds = %22
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
