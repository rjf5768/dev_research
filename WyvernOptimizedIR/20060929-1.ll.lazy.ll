; ModuleID = './20060929-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20060929-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo(i32** nocapture noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* %1, align 4
  %4 = load i32*, i32** %0, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32* %5, i32** %0, align 8
  store i32 %3, i32* %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @bar(i32** nocapture noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* %1, align 4
  %4 = load i32*, i32** %0, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32*, i32** %0, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  store i32* %6, i32** %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @baz(i32** nocapture noundef %0, i32* nocapture noundef readonly %1) #0 {
  %3 = load i32, i32* %1, align 4
  %4 = load i32*, i32** %0, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32*, i32** %0, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  store i32* %6, i32** %0, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 42, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32* %1, i32** %3, align 8
  call void @foo(i32** noundef nonnull %3, i32* noundef nonnull %2)
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 -1
  %.not = icmp eq i32* %5, %1
  br i1 %.not, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %8, label %10

8:                                                ; preds = %6
  %9 = load i32, i32* %1, align 4
  %.not2 = icmp eq i32 %9, 0
  br i1 %.not2, label %11, label %10

10:                                               ; preds = %8, %6, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  store i32 43, i32* %1, align 4
  store i32* %1, i32** %3, align 8
  call void @bar(i32** noundef nonnull %3, i32* noundef nonnull %2)
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 -1
  %.not3 = icmp eq i32* %13, %1
  br i1 %.not3, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %16, label %18

16:                                               ; preds = %14
  %17 = load i32, i32* %1, align 4
  %.not5 = icmp eq i32 %17, 0
  br i1 %.not5, label %19, label %18

18:                                               ; preds = %16, %14, %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %16
  store i32 44, i32* %1, align 4
  store i32* %1, i32** %3, align 8
  call void @baz(i32** noundef nonnull %3, i32* noundef nonnull %2)
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 -1
  %.not6 = icmp eq i32* %21, %1
  br i1 %.not6, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %.not7 = icmp eq i32 %23, 0
  br i1 %.not7, label %24, label %26

24:                                               ; preds = %22
  %25 = load i32, i32* %1, align 4
  %.not8 = icmp eq i32 %25, 0
  br i1 %.not8, label %27, label %26

26:                                               ; preds = %24, %22, %19
  call void @abort() #3
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %26, %18, %10
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
