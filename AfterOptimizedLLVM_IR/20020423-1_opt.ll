; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020423-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020423-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 924, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = mul nsw i32 %4, 2
  %6 = add nsw i32 %5, 4
  %7 = sub i32 %6, 8
  %8 = udiv i32 %7, 2
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 922
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #2
  unreachable

12:                                               ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = mul nsw i32 %13, 2
  %15 = sub i32 %14, 4
  %16 = add i32 %15, 2
  %17 = udiv i32 %16, 2
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 923
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  call void @abort() #2
  unreachable

21:                                               ; preds = %12
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 2
  %24 = mul nsw i32 %23, 2
  %25 = sub i32 %24, 8
  %26 = sub i32 %25, 4
  %27 = udiv i32 %26, 2
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 920
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  call void @abort() #2
  unreachable

31:                                               ; preds = %21
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 2
  %34 = mul nsw i32 %33, 2
  %35 = sub i32 %34, 12
  %36 = udiv i32 %35, 2
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 920
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  call void @abort() #2
  unreachable

40:                                               ; preds = %31
  %41 = load i32, i32* %2, align 4
  %42 = mul nsw i32 %41, 4
  %43 = add i32 %42, 2
  %44 = sub i32 %43, 4
  %45 = udiv i32 %44, 2
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 1847
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  call void @abort() #2
  unreachable

49:                                               ; preds = %40
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
