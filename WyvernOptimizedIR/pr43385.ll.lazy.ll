; ModuleID = './pr43385.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43385.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo(i32 noundef %0, i32 noundef %1) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %7, label %4

4:                                                ; preds = %3
  %5 = load i32, i32* @e, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @e, align 4
  br label %7

7:                                                ; preds = %4, %3, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @bar(i32 noundef %0, i32 noundef %1) #1 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3, %2
  br label %6

6:                                                ; preds = %5, %4
  %.0 = phi i32 [ 1, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 0) #4, !srcloc !4
  %2 = add nsw i32 %1, 2
  %3 = add nsw i32 %1, 1
  call void @foo(i32 noundef %2, i32 noundef %3)
  %4 = load i32, i32* @e, align 4
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  %7 = add nsw i32 %1, 2
  call void @foo(i32 noundef %7, i32 noundef %1)
  %8 = load i32, i32* @e, align 4
  %.not1 = icmp eq i32 %8, 1
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  %11 = add nsw i32 %1, 1
  %12 = add nsw i32 %1, 1
  call void @foo(i32 noundef %11, i32 noundef %12)
  %13 = load i32, i32* @e, align 4
  %.not2 = icmp eq i32 %13, 2
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %10
  call void @abort() #5
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %10
  %16 = add nsw i32 %1, 1
  call void @foo(i32 noundef %16, i32 noundef %1)
  %17 = load i32, i32* @e, align 4
  %.not3 = icmp eq i32 %17, 2
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %15
  call void @abort() #5
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %15
  %20 = add nsw i32 %1, 1
  call void @foo(i32 noundef %1, i32 noundef %20)
  %21 = load i32, i32* @e, align 4
  %.not4 = icmp eq i32 %21, 2
  br i1 %.not4, label %23, label %22

22:                                               ; preds = %19
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %19
  call void @foo(i32 noundef %1, i32 noundef %1)
  %24 = load i32, i32* @e, align 4
  %.not5 = icmp eq i32 %24, 2
  br i1 %.not5, label %26, label %25

25:                                               ; preds = %23
  call void @abort() #5
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %23
  %27 = add nsw i32 %1, 2
  %28 = add nsw i32 %1, 1
  %29 = call i32 @bar(i32 noundef %27, i32 noundef %28)
  %.not6 = icmp eq i32 %29, 1
  br i1 %.not6, label %31, label %30

30:                                               ; preds = %26
  call void @abort() #5
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %26
  %32 = add nsw i32 %1, 2
  %33 = call i32 @bar(i32 noundef %32, i32 noundef %1)
  %.not7 = icmp eq i32 %33, 0
  br i1 %.not7, label %35, label %34

34:                                               ; preds = %31
  call void @abort() #5
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %31
  %36 = add nsw i32 %1, 1
  %37 = add nsw i32 %1, 1
  %38 = call i32 @bar(i32 noundef %36, i32 noundef %37)
  %.not8 = icmp eq i32 %38, 1
  br i1 %.not8, label %40, label %39

39:                                               ; preds = %35
  call void @abort() #5
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %35
  %41 = add nsw i32 %1, 1
  %42 = call i32 @bar(i32 noundef %41, i32 noundef %1)
  %.not9 = icmp eq i32 %42, 0
  br i1 %.not9, label %44, label %43

43:                                               ; preds = %40
  call void @abort() #5
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %40
  %45 = add nsw i32 %1, 1
  %46 = call i32 @bar(i32 noundef %1, i32 noundef %45)
  %.not10 = icmp eq i32 %46, 0
  br i1 %.not10, label %48, label %47

47:                                               ; preds = %44
  call void @abort() #5
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %44
  %49 = call i32 @bar(i32 noundef %1, i32 noundef %1)
  %.not11 = icmp eq i32 %49, 0
  br i1 %.not11, label %51, label %50

50:                                               ; preds = %48
  call void @abort() #5
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %48
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %50, %47, %43, %39, %34, %30, %25, %22, %18, %14, %9, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 328}
