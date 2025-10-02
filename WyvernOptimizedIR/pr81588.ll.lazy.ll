; ModuleID = './pr81588.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr81588.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i32 noundef %0) #0 {
  call void asm sideeffect "", "imr,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0) #2, !srcloc !4
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0, i64 noundef %1) #0 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %13

5:                                                ; preds = %2
  %6 = shl i32 %0, 2
  %7 = zext i32 %6 to i64
  %8 = icmp sgt i64 %7, %1
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = trunc i64 %1 to i32
  %11 = call i32 @bar(i32 noundef %10)
  br label %13

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12, %9, %4
  %.0 = phi i32 [ 0, %4 ], [ 1, %9 ], [ 0, %12 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store volatile i32 10, i32* %1, align 4
  store volatile i64 -10000, i64* %2, align 8
  %3 = load volatile i32, i32* %1, align 4
  %4 = load volatile i64, i64* %2, align 8
  %5 = call i32 @foo(i32 noundef %3, i64 noundef %4)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %0
  store volatile i64 -1, i64* %2, align 8
  %8 = load volatile i32, i32* %1, align 4
  %9 = load volatile i64, i64* %2, align 8
  %10 = call i32 @foo(i32 noundef %8, i64 noundef %9)
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %12, label %11

11:                                               ; preds = %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  store volatile i64 0, i64* %2, align 8
  %13 = load volatile i32, i32* %1, align 4
  %14 = load volatile i64, i64* %2, align 8
  %15 = call i32 @foo(i32 noundef %13, i64 noundef %14)
  %.not2 = icmp eq i32 %15, 1
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %12
  store volatile i64 39, i64* %2, align 8
  %18 = load volatile i32, i32* %1, align 4
  %19 = load volatile i64, i64* %2, align 8
  %20 = call i32 @foo(i32 noundef %18, i64 noundef %19)
  %.not3 = icmp eq i32 %20, 1
  br i1 %.not3, label %22, label %21

21:                                               ; preds = %17
  call void @abort() #3
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %17
  store volatile i64 40, i64* %2, align 8
  %23 = load volatile i32, i32* %1, align 4
  %24 = load volatile i64, i64* %2, align 8
  %25 = call i32 @foo(i32 noundef %23, i64 noundef %24)
  %.not4 = icmp eq i32 %25, 0
  br i1 %.not4, label %27, label %26

26:                                               ; preds = %22
  call void @abort() #3
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %22
  store volatile i64 10000, i64* %2, align 8
  %28 = load volatile i32, i32* %1, align 4
  %29 = load volatile i64, i64* %2, align 8
  %30 = call i32 @foo(i32 noundef %28, i64 noundef %29)
  %.not5 = icmp eq i32 %30, 0
  br i1 %.not5, label %32, label %31

31:                                               ; preds = %27
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %27
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %31, %26, %21, %16, %11, %6
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 107}
