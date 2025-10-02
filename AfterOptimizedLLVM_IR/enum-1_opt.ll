; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/enum-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/enum-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tok = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* @tok, align 4
  %2 = call i32 @atom()
  %3 = icmp ne i32 %2, 1
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

; Function Attrs: noinline nounwind uwtable
define internal i32 @atom() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @tok, align 4
  %3 = icmp sge i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @tok, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %31, label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @tok, align 4
  %9 = icmp sge i32 %8, 273
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @tok, align 4
  %12 = icmp eq i32 %11, 257
  br i1 %12, label %31, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @tok, align 4
  %15 = icmp eq i32 %14, 258
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @tok, align 4
  %18 = icmp eq i32 %17, 259
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @tok, align 4
  %21 = icmp eq i32 %20, 260
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @tok, align 4
  %24 = icmp eq i32 %23, 261
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @tok, align 4
  %27 = icmp eq i32 %26, 262
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @tok, align 4
  %30 = icmp eq i32 %29, 263
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %22, %19, %16, %13, %10, %7, %4
  store i32 1, i32* %1, align 4
  br label %33

32:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
