; ModuleID = './pr20466-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr20466-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @f(i32** nocapture noundef %0, i32* nocapture noundef readonly %1, i32* noundef %2, i32** nocapture noundef writeonly %3, i32** nocapture noundef readonly %4) #0 {
  %6 = load i32, i32* %1, align 4
  %7 = load i32*, i32** %0, align 8
  store i32 %6, i32* %7, align 4
  store i32* %2, i32** %0, align 8
  %8 = load i32*, i32** %4, align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %0, align 8
  store i32 99, i32* %9, align 4
  ret i32 3
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 42, i32* %1, align 4
  store i32 66, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  store i32 55, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %4, i32** %7, align 8
  store i32* %5, i32** %8, align 8
  %9 = call i32 @f(i32** noundef nonnull %6, i32* noundef nonnull %2, i32* noundef nonnull %3, i32** noundef nonnull %7, i32** noundef nonnull %8)
  %10 = load i32, i32* %1, align 4
  %.not = icmp eq i32 %10, 66
  br i1 %.not, label %11, label %22

11:                                               ; preds = %0
  %12 = load i32*, i32** %6, align 8
  %.not1 = icmp eq i32* %12, %3
  br i1 %.not1, label %13, label %22

13:                                               ; preds = %11
  %14 = load i32, i32* %3, align 4
  %.not2 = icmp eq i32 %14, 99
  br i1 %.not2, label %15, label %22

15:                                               ; preds = %13
  %16 = load i32, i32* %4, align 4
  %.not3 = icmp eq i32 %16, -1
  br i1 %.not3, label %17, label %22

17:                                               ; preds = %15
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %.not4 = icmp eq i32* %18, %19
  br i1 %.not4, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %.not5 = icmp eq i32 %21, 55
  br i1 %.not5, label %23, label %22

22:                                               ; preds = %20, %17, %15, %13, %11, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %23, %22
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
