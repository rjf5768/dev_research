; ModuleID = './pr37924.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr37924.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i8 0, align 1
@b = dso_local global i8 0, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @test1() #0 {
  %1 = load i8, i8* @a, align 1
  %2 = xor i8 %1, -1
  %3 = sext i8 %2 to i32
  %4 = lshr i32 %3, 9
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @test2() #0 {
  ret i32 8388607
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  store i8 0, i8* @a, align 1
  %1 = call i32 @test1()
  %.not = icmp eq i32 %1, 8388607
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  store i8 64, i8* @a, align 1
  %4 = call i32 @test1()
  %.not1 = icmp eq i32 %4, 8388607
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  store i8 -128, i8* @a, align 1
  %7 = call i32 @test1()
  %.not2 = icmp eq i32 %7, 1
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  br i1 false, label %10, label %11

9:                                                ; preds = %6
  br i1 true, label %10, label %11

10:                                               ; preds = %9, %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9, %8
  store i8 -1, i8* @a, align 1
  %12 = call i32 @test1()
  %.not3 = icmp eq i32 %12, 1
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %11
  br i1 false, label %15, label %16

14:                                               ; preds = %11
  br i1 true, label %15, label %16

15:                                               ; preds = %14, %13
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14, %13
  store i8 0, i8* @b, align 1
  %17 = call i32 @test2()
  %.not4 = icmp eq i32 %17, 8388607
  br i1 %.not4, label %19, label %18

18:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %16
  store i8 64, i8* @b, align 1
  %20 = call i32 @test2()
  %.not5 = icmp eq i32 %20, 8388607
  br i1 %.not5, label %22, label %21

21:                                               ; preds = %19
  call void @abort() #3
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %19
  store i8 -128, i8* @b, align 1
  %23 = call i32 @test2()
  %.not6 = icmp eq i32 %23, 8388607
  br i1 %.not6, label %25, label %24

24:                                               ; preds = %22
  call void @abort() #3
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %22
  store i8 -1, i8* @b, align 1
  %26 = call i32 @test2()
  %.not7 = icmp eq i32 %26, 8388607
  br i1 %.not7, label %28, label %27

27:                                               ; preds = %25
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %25
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %27, %24, %21, %18, %15, %10, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
