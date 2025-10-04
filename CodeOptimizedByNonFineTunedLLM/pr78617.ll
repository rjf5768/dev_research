; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78617.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78617.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@d = dso_local global i32 1, align 4
@f = dso_local global i32 1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1() #0 {
  %1 = load i32, i32* @a, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @a, align 4
  %5 = ashr i32 1, %4
  %6 = icmp ne i32 %5, 0
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i1 [ true, %0 ], [ %6, %3 ]
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn2(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  br label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 1
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %8, %7 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @d, align 4
  %4 = load i32, i32* %2, align 4
  %5 = xor i32 %3, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn4(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @d, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @fn1()
  %10 = sub nsw i32 %9, 1000
  store i32 %10, i32* @f, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ true, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @fn2(i32 noundef %17, i32 noundef %18)
  %20 = icmp sgt i32 %8, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @fn3(i32 noundef %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @fn4(i32 noundef 0, i32 noundef 0)
  %3 = icmp ne i32 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
