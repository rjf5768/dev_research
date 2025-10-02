; ModuleID = './divcmp-3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/divcmp-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test1(i8 noundef signext %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test1u(i8 noundef zeroext %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test2(i8 noundef signext %0) #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test2u(i8 noundef zeroext %0) #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test3(i8 noundef signext %0) #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test3u(i8 noundef zeroext %0) #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test4(i8 noundef signext %0) #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test4u(i8 noundef zeroext %0) #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test5(i8 noundef signext %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test5u(i8 noundef zeroext %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test6(i8 noundef signext %0) #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @test6u(i8 noundef zeroext %0) #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %52, %0
  %.0 = phi i32 [ -128, %0 ], [ %53, %52 ]
  %2 = icmp slt i32 %.0, 256
  br i1 %2, label %3, label %54

3:                                                ; preds = %1
  %4 = trunc i32 %.0 to i8
  %5 = call i32 @test1(i8 noundef signext %4)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %7, label %6

6:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %3
  %8 = trunc i32 %.0 to i8
  %9 = call i32 @test1u(i8 noundef zeroext %8)
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  %12 = trunc i32 %.0 to i8
  %13 = call i32 @test2(i8 noundef signext %12)
  %.not2 = icmp eq i32 %13, 1
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  %16 = trunc i32 %.0 to i8
  %17 = call i32 @test2u(i8 noundef zeroext %16)
  %.not3 = icmp eq i32 %17, 1
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %15
  %20 = trunc i32 %.0 to i8
  %21 = call i32 @test3(i8 noundef signext %20)
  %.not4 = icmp eq i32 %21, 1
  br i1 %.not4, label %23, label %22

22:                                               ; preds = %19
  call void @abort() #3
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %19
  %24 = trunc i32 %.0 to i8
  %25 = call i32 @test3u(i8 noundef zeroext %24)
  %.not5 = icmp eq i32 %25, 1
  br i1 %.not5, label %27, label %26

26:                                               ; preds = %23
  call void @abort() #3
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %23
  %28 = trunc i32 %.0 to i8
  %29 = call i32 @test4(i8 noundef signext %28)
  %.not6 = icmp eq i32 %29, 1
  br i1 %.not6, label %31, label %30

30:                                               ; preds = %27
  call void @abort() #3
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %27
  %32 = trunc i32 %.0 to i8
  %33 = call i32 @test4u(i8 noundef zeroext %32)
  %.not7 = icmp eq i32 %33, 1
  br i1 %.not7, label %35, label %34

34:                                               ; preds = %31
  call void @abort() #3
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %31
  %36 = trunc i32 %.0 to i8
  %37 = call i32 @test5(i8 noundef signext %36)
  %.not8 = icmp eq i32 %37, 0
  br i1 %.not8, label %39, label %38

38:                                               ; preds = %35
  call void @abort() #3
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %35
  %40 = trunc i32 %.0 to i8
  %41 = call i32 @test5u(i8 noundef zeroext %40)
  %.not9 = icmp eq i32 %41, 0
  br i1 %.not9, label %43, label %42

42:                                               ; preds = %39
  call void @abort() #3
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %39
  %44 = trunc i32 %.0 to i8
  %45 = call i32 @test6(i8 noundef signext %44)
  %.not10 = icmp eq i32 %45, 0
  br i1 %.not10, label %47, label %46

46:                                               ; preds = %43
  call void @abort() #3
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %43
  %48 = trunc i32 %.0 to i8
  %49 = call i32 @test6u(i8 noundef zeroext %48)
  %.not11 = icmp eq i32 %49, 0
  br i1 %.not11, label %51, label %50

50:                                               ; preds = %47
  call void @abort() #3
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = add nsw i32 %.0, 1
  br label %1, !llvm.loop !4

54:                                               ; preds = %1
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
