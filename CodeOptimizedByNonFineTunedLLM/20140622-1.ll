; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20140622-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20140622-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @test(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @p, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add i32 %3, %4
  %6 = zext i32 %5 to i64
  %7 = load i32, i32* @p, align 4
  %8 = zext i32 %7 to i64
  %9 = sub nsw i64 %6, %8
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -2, i32* @p, align 4
  %2 = call i64 @test(i32 noundef 0)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call i64 @test(i32 noundef 1)
  %7 = icmp ne i64 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call i64 @test(i32 noundef 2)
  %11 = icmp ne i64 %10, -4294967294
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  store i32 -1, i32* @p, align 4
  %14 = call i64 @test(i32 noundef 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call i64 @test(i32 noundef 1)
  %19 = icmp ne i64 %18, -4294967295
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call i64 @test(i32 noundef 2)
  %23 = icmp ne i64 %22, -4294967294
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
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
