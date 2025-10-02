; ModuleID = './20040409-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040409-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test1(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test1u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test2(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test2u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test3u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test4u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test5u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test6u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test7(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test7u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test8(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test8u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test9u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test10u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test11u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test12u(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, i32 noundef %1) #1 {
  %3 = call i32 @test1(i32 noundef %0)
  %.not = icmp eq i32 %3, %1
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @abort() #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  %6 = call i32 @test2(i32 noundef %0)
  %.not1 = icmp eq i32 %6, %1
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %9 = call i32 @test7(i32 noundef %0)
  %.not2 = icmp eq i32 %9, %1
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  %12 = call i32 @test8(i32 noundef %0)
  %.not3 = icmp eq i32 %12, %1
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  ret void

UnifiedUnreachableBlock:                          ; preds = %13, %10, %7, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @testu(i32 noundef %0, i32 noundef %1) #1 {
  %3 = call i32 @test1u(i32 noundef %0)
  %.not = icmp eq i32 %3, %1
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @abort() #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  %6 = call i32 @test2u(i32 noundef %0)
  %.not1 = icmp eq i32 %6, %1
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %9 = call i32 @test3u(i32 noundef %0)
  %.not2 = icmp eq i32 %9, %1
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  %12 = call i32 @test4u(i32 noundef %0)
  %.not3 = icmp eq i32 %12, %1
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = call i32 @test5u(i32 noundef %0)
  %.not4 = icmp eq i32 %15, %1
  br i1 %.not4, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #3
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  %18 = call i32 @test6u(i32 noundef %0)
  %.not5 = icmp eq i32 %18, %1
  br i1 %.not5, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  %21 = call i32 @test7u(i32 noundef %0)
  %.not6 = icmp eq i32 %21, %1
  br i1 %.not6, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  %24 = call i32 @test8u(i32 noundef %0)
  %.not7 = icmp eq i32 %24, %1
  br i1 %.not7, label %26, label %25

25:                                               ; preds = %23
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  %27 = call i32 @test9u(i32 noundef %0)
  %.not8 = icmp eq i32 %27, %1
  br i1 %.not8, label %29, label %28

28:                                               ; preds = %26
  call void @abort() #3
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  %30 = call i32 @test10u(i32 noundef %0)
  %.not9 = icmp eq i32 %30, %1
  br i1 %.not9, label %32, label %31

31:                                               ; preds = %29
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %29
  %33 = call i32 @test11u(i32 noundef %0)
  %.not10 = icmp eq i32 %33, %1
  br i1 %.not10, label %35, label %34

34:                                               ; preds = %32
  call void @abort() #3
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  %36 = call i32 @test12u(i32 noundef %0)
  %.not11 = icmp eq i32 %36, %1
  br i1 %.not11, label %38, label %37

37:                                               ; preds = %35
  call void @abort() #3
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %35
  ret void

UnifiedUnreachableBlock:                          ; preds = %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @test(i32 noundef 0, i32 noundef -2147478988)
  call void @test(i32 noundef 4660, i32 noundef -2147483648)
  call void @test(i32 noundef -2147483648, i32 noundef 4660)
  call void @test(i32 noundef -2147478988, i32 noundef 0)
  call void @test(i32 noundef 2147483647, i32 noundef -4661)
  call void @test(i32 noundef -1, i32 noundef 2147478987)
  call void @testu(i32 noundef 0, i32 noundef -2147478988)
  call void @testu(i32 noundef 4660, i32 noundef -2147483648)
  call void @testu(i32 noundef -2147483648, i32 noundef 4660)
  call void @testu(i32 noundef -2147478988, i32 noundef 0)
  call void @testu(i32 noundef 2147483647, i32 noundef -4661)
  call void @testu(i32 noundef -1, i32 noundef 2147478987)
  ret i32 0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
