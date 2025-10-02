; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031010-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20031010-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @foo(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  %13 = zext i1 %2 to i8
  store i8 %13, i8* %8, align 1
  %14 = zext i1 %3 to i8
  store i8 %14, i8* %9, align 1
  %15 = zext i1 %4 to i8
  store i8 %15, i8* %10, align 1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = sub nsw i64 %16, %17
  store i64 %18, i64* %11, align 8
  %19 = load i8, i8* %8, align 1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %21, label %37

21:                                               ; preds = %5
  %22 = load i8, i8* %9, align 1
  %23 = trunc i8 %22 to i1
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i8, i8* %10, align 1
  %26 = trunc i8 %25 to i1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %12, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %31, %21
  %36 = load i64, i64* %11, align 8
  ret i64 %36

37:                                               ; preds = %5
  call void @abort() #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @foo(i64 noundef 2, i64 noundef 3, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  ret i32 0
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
