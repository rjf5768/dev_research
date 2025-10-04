; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921029-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921029-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hpart = dso_local global i64 0, align 8
@lpart = dso_local global i64 0, align 8
@back = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @build(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  store i64 %5, i64* @hpart, align 8
  %6 = load i64, i64* @hpart, align 8
  %7 = shl i64 %6, 32
  store i64 %7, i64* @hpart, align 8
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* @lpart, align 8
  %9 = load i64, i64* @lpart, align 8
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* @lpart, align 8
  %11 = load i64, i64* @hpart, align 8
  %12 = load i64, i64* @lpart, align 8
  %13 = or i64 %11, %12
  store i64 %13, i64* @back, align 8
  %14 = load i64, i64* @back, align 8
  ret i64 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @build(i64 noundef 0, i64 noundef 1)
  %3 = icmp ne i64 %2, 1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call i64 @build(i64 noundef 0, i64 noundef 0)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call i64 @build(i64 noundef 0, i64 noundef 4294967295)
  %11 = icmp ne i64 %10, 4294967295
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call i64 @build(i64 noundef 0, i64 noundef 4294967294)
  %15 = icmp ne i64 %14, 4294967294
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call i64 @build(i64 noundef 1, i64 noundef 1)
  %19 = icmp ne i64 %18, 4294967297
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call i64 @build(i64 noundef 1, i64 noundef 0)
  %23 = icmp ne i64 %22, 4294967296
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
  %26 = call i64 @build(i64 noundef 1, i64 noundef 4294967295)
  %27 = icmp ne i64 %26, 8589934591
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  %30 = call i64 @build(i64 noundef 1, i64 noundef 4294967294)
  %31 = icmp ne i64 %30, 8589934590
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  %34 = call i64 @build(i64 noundef 4294967295, i64 noundef 1)
  %35 = icmp ne i64 %34, -4294967295
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
  %38 = call i64 @build(i64 noundef 4294967295, i64 noundef 0)
  %39 = icmp ne i64 %38, -4294967296
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  %42 = call i64 @build(i64 noundef 4294967295, i64 noundef 4294967295)
  %43 = icmp ne i64 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  %46 = call i64 @build(i64 noundef 4294967295, i64 noundef 4294967294)
  %47 = icmp ne i64 %46, -2
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @abort() #2
  unreachable

49:                                               ; preds = %45
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
