; ModuleID = './20080522-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20080522-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = internal global i32* @i, align 8
@i = internal global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @foo(i32* nocapture noundef writeonly %0) #0 {
  %2 = load i32*, i32** @p, align 8
  store i32 1, i32* %2, align 4
  store i32 2, i32* %0, align 4
  %3 = load i32*, i32** @p, align 8
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @bar(i32* nocapture noundef %0) #0 {
  store i32 2, i32* %0, align 4
  %2 = load i32*, i32** @p, align 8
  store i32 1, i32* %2, align 4
  %3 = load i32, i32* %0, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo(i32* noundef nonnull @i)
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %0
  %5 = call i32 @bar(i32* noundef nonnull @i)
  %.not1 = icmp eq i32 %5, 1
  br i1 %.not1, label %7, label %6

6:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %4
  %8 = call i32 @foo(i32* noundef nonnull %1)
  %.not2 = icmp eq i32 %8, 1
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %.not3 = icmp eq i32 %11, 2
  br i1 %.not3, label %13, label %12

12:                                               ; preds = %10
  call void @abort() #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %10
  %14 = call i32 @bar(i32* noundef nonnull %1)
  %.not4 = icmp eq i32 %14, 2
  br i1 %.not4, label %16, label %15

15:                                               ; preds = %13
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %.not5 = icmp eq i32 %17, 2
  br i1 %.not5, label %19, label %18

18:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %16
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %18, %15, %12, %9, %6, %3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
