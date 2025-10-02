; ModuleID = './20040409-2w.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20040409-2w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test3(i32 noundef %0) #0 {
  %2 = or i32 %0, -2147483648
  %3 = xor i32 %2, 4660
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test4(i32 noundef %0) #0 {
  %2 = or i32 %0, -2147483648
  %3 = xor i32 %2, 4660
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test5(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test6(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test9(i32 noundef %0) #0 {
  %2 = or i32 %0, -2147483648
  %3 = xor i32 %2, 4660
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test10(i32 noundef %0) #0 {
  %2 = or i32 %0, -2147483648
  %3 = xor i32 %2, 4660
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test11(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test12(i32 noundef %0) #0 {
  %2 = xor i32 %0, -2147478988
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, i32 noundef %1) #1 {
  %3 = call i32 @test3(i32 noundef %0)
  %.not = icmp eq i32 %3, %1
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  call void @abort() #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  %6 = call i32 @test4(i32 noundef %0)
  %.not1 = icmp eq i32 %6, %1
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %9 = call i32 @test5(i32 noundef %0)
  %.not2 = icmp eq i32 %9, %1
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  %12 = call i32 @test6(i32 noundef %0)
  %.not3 = icmp eq i32 %12, %1
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = call i32 @test9(i32 noundef %0)
  %.not4 = icmp eq i32 %15, %1
  br i1 %.not4, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #3
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  %18 = call i32 @test10(i32 noundef %0)
  %.not5 = icmp eq i32 %18, %1
  br i1 %.not5, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  %21 = call i32 @test11(i32 noundef %0)
  %.not6 = icmp eq i32 %21, %1
  br i1 %.not6, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  %24 = call i32 @test12(i32 noundef %0)
  %.not7 = icmp eq i32 %24, %1
  br i1 %.not7, label %26, label %25

25:                                               ; preds = %23
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  ret void

UnifiedUnreachableBlock:                          ; preds = %25, %22, %19, %16, %13, %10, %7, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @test(i32 noundef 0, i32 noundef -2147478988)
  call void @test(i32 noundef 4660, i32 noundef -2147483648)
  call void @test(i32 noundef -2147483648, i32 noundef 4660)
  call void @test(i32 noundef -2147478988, i32 noundef 0)
  call void @test(i32 noundef 2147483647, i32 noundef -4661)
  call void @test(i32 noundef -1, i32 noundef 2147478987)
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
