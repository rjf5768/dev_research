; ModuleID = './pr68376-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68376-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f1(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = xor i32 %0, -1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ %0, %5 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f2(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = xor i32 %0, -1
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ %0, %3 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f3(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = xor i32 %0, -1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ %0, %5 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f4(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = xor i32 %0, -1
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ %0, %3 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f5(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = xor i32 %0, -1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ %0, %5 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f6(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = xor i32 %0, -1
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ %0, %3 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f7(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = xor i32 %0, -1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ %0, %5 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f8(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %6

4:                                                ; preds = %1
  %5 = xor i32 %0, -1
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ %0, %3 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @f1(i32 noundef 5)
  %.not = icmp eq i32 %1, 5
  br i1 %.not, label %2, label %6

2:                                                ; preds = %0
  %3 = call i32 @f1(i32 noundef -5)
  %.not1 = icmp eq i32 %3, 4
  br i1 %.not1, label %4, label %6

4:                                                ; preds = %2
  %5 = call i32 @f1(i32 noundef 0)
  %.not2 = icmp eq i32 %5, 0
  br i1 %.not2, label %7, label %6

6:                                                ; preds = %4, %2, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = call i32 @f2(i32 noundef 5)
  %.not3 = icmp eq i32 %8, -6
  br i1 %.not3, label %9, label %13

9:                                                ; preds = %7
  %10 = call i32 @f2(i32 noundef -5)
  %.not4 = icmp eq i32 %10, -5
  br i1 %.not4, label %11, label %13

11:                                               ; preds = %9
  %12 = call i32 @f2(i32 noundef 0)
  %.not5 = icmp eq i32 %12, -1
  br i1 %.not5, label %14, label %13

13:                                               ; preds = %11, %9, %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = call i32 @f3(i32 noundef 5)
  %.not6 = icmp eq i32 %15, 5
  br i1 %.not6, label %16, label %20

16:                                               ; preds = %14
  %17 = call i32 @f3(i32 noundef -5)
  %.not7 = icmp eq i32 %17, 4
  br i1 %.not7, label %18, label %20

18:                                               ; preds = %16
  %19 = call i32 @f3(i32 noundef 0)
  %.not8 = icmp eq i32 %19, -1
  br i1 %.not8, label %21, label %20

20:                                               ; preds = %18, %16, %14
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  %22 = call i32 @f4(i32 noundef 5)
  %.not9 = icmp eq i32 %22, -6
  br i1 %.not9, label %23, label %27

23:                                               ; preds = %21
  %24 = call i32 @f4(i32 noundef -5)
  %.not10 = icmp eq i32 %24, -5
  br i1 %.not10, label %25, label %27

25:                                               ; preds = %23
  %26 = call i32 @f4(i32 noundef 0)
  %.not11 = icmp eq i32 %26, 0
  br i1 %.not11, label %28, label %27

27:                                               ; preds = %25, %23, %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %25
  %29 = call i32 @f5(i32 noundef 5)
  %.not12 = icmp eq i32 %29, -6
  br i1 %.not12, label %30, label %34

30:                                               ; preds = %28
  %31 = call i32 @f5(i32 noundef -5)
  %.not13 = icmp eq i32 %31, -5
  br i1 %.not13, label %32, label %34

32:                                               ; preds = %30
  %33 = call i32 @f5(i32 noundef 0)
  %.not14 = icmp eq i32 %33, -1
  br i1 %.not14, label %35, label %34

34:                                               ; preds = %32, %30, %28
  call void @abort() #3
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %32
  %36 = call i32 @f6(i32 noundef 5)
  %.not15 = icmp eq i32 %36, 5
  br i1 %.not15, label %37, label %41

37:                                               ; preds = %35
  %38 = call i32 @f6(i32 noundef -5)
  %.not16 = icmp eq i32 %38, 4
  br i1 %.not16, label %39, label %41

39:                                               ; preds = %37
  %40 = call i32 @f6(i32 noundef 0)
  %.not17 = icmp eq i32 %40, 0
  br i1 %.not17, label %42, label %41

41:                                               ; preds = %39, %37, %35
  call void @abort() #3
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %39
  %43 = call i32 @f7(i32 noundef 5)
  %.not18 = icmp eq i32 %43, -6
  br i1 %.not18, label %44, label %48

44:                                               ; preds = %42
  %45 = call i32 @f7(i32 noundef -5)
  %.not19 = icmp eq i32 %45, -5
  br i1 %.not19, label %46, label %48

46:                                               ; preds = %44
  %47 = call i32 @f7(i32 noundef 0)
  %.not20 = icmp eq i32 %47, 0
  br i1 %.not20, label %49, label %48

48:                                               ; preds = %46, %44, %42
  call void @abort() #3
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %46
  %50 = call i32 @f8(i32 noundef 5)
  %.not21 = icmp eq i32 %50, 5
  br i1 %.not21, label %51, label %55

51:                                               ; preds = %49
  %52 = call i32 @f8(i32 noundef -5)
  %.not22 = icmp eq i32 %52, 4
  br i1 %.not22, label %53, label %55

53:                                               ; preds = %51
  %54 = call i32 @f8(i32 noundef 0)
  %.not23 = icmp eq i32 %54, -1
  br i1 %.not23, label %56, label %55

55:                                               ; preds = %53, %51, %49
  call void @abort() #3
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %53
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %55, %48, %41, %34, %27, %20, %13, %6
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
