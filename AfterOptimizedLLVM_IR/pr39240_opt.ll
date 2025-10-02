; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39240.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr39240.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@l1 = dso_local global i64 4294967292, align 8
@l2 = dso_local global i64 65532, align 8
@l3 = dso_local global i64 252, align 8
@l4 = dso_local global i64 -4, align 8
@l5 = dso_local global i64 -4, align 8
@l6 = dso_local global i64 -4, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 6
  %5 = call i32 @foo1(i32 noundef %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i16 @bar2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 6
  %5 = call signext i16 @foo2(i32 noundef %4)
  ret i16 %5
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @foo2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = trunc i32 %3 to i16
  ret i16 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @bar3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 6
  %5 = call signext i8 @foo3(i32 noundef %4)
  ret i8 %5
}

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @foo3(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar4(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 6
  %5 = call i32 @foo4(i32 noundef %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo4(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @bar5(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 6
  %5 = call zeroext i16 @foo5(i32 noundef %4)
  ret i16 %5
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @foo5(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = trunc i32 %3 to i16
  ret i16 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @bar6(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 6
  %5 = call zeroext i8 @foo6(i32 noundef %4)
  ret i8 %5
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @foo6(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = trunc i32 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @bar1(i32 noundef -10)
  %3 = zext i32 %2 to i64
  %4 = load volatile i64, i64* @l1, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #2
  unreachable

7:                                                ; preds = %0
  %8 = call zeroext i16 @bar2(i32 noundef -10)
  %9 = zext i16 %8 to i64
  %10 = load volatile i64, i64* @l2, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @abort() #2
  unreachable

13:                                               ; preds = %7
  %14 = call zeroext i8 @bar3(i32 noundef -10)
  %15 = zext i8 %14 to i64
  %16 = load volatile i64, i64* @l3, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  call void @abort() #2
  unreachable

19:                                               ; preds = %13
  %20 = call i32 @bar4(i32 noundef -10)
  %21 = sext i32 %20 to i64
  %22 = load volatile i64, i64* @l4, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @abort() #2
  unreachable

25:                                               ; preds = %19
  %26 = call signext i16 @bar5(i32 noundef -10)
  %27 = sext i16 %26 to i64
  %28 = load volatile i64, i64* @l5, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @abort() #2
  unreachable

31:                                               ; preds = %25
  %32 = call signext i8 @bar6(i32 noundef -10)
  %33 = sext i8 %32 to i64
  %34 = load volatile i64, i64* @l6, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @abort() #2
  unreachable

37:                                               ; preds = %31
  ret i32 0
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
