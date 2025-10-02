; ModuleID = './eeprof-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/eeprof-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_fn_entered = dso_local global void (...)* null, align 8
@entry_calls = dso_local global i32 0, align 4
@exit_calls = dso_local global i32 0, align 4
@last_fn_exited = dso_local global void (...)* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = load void (...)*, void (...)** @last_fn_entered, align 8
  %2 = icmp eq void (...)* %1, bitcast (void ()* @foo to void (...)*)
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  unreachable

4:                                                ; preds = %0
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @nfoo() #0 {
  %1 = load i32, i32* @entry_calls, align 4
  %2 = icmp eq i32 %1, 2
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @exit_calls, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %7, label %6

6:                                                ; preds = %3, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %3
  %8 = load void (...)*, void (...)** @last_fn_entered, align 8
  %9 = icmp eq void (...)* %8, bitcast (void ()* @foo to void (...)*)
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  %12 = load void (...)*, void (...)** @last_fn_exited, align 8
  %13 = icmp eq void (...)* %12, bitcast (void ()* @foo2 to void (...)*)
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  call void @foo()
  %16 = load i32, i32* @entry_calls, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @exit_calls, align 4
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %18
  %23 = load void (...)*, void (...)** @last_fn_entered, align 8
  %24 = icmp eq void (...)* %23, bitcast (void ()* @foo to void (...)*)
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %22
  %27 = load void (...)*, void (...)** @last_fn_exited, align 8
  %28 = icmp eq void (...)* %27, bitcast (void ()* @foo to void (...)*)
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @abort() #3
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %26
  ret void

UnifiedUnreachableBlock:                          ; preds = %29, %25, %21, %14, %10, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @entry_calls, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @exit_calls, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %3
  call void @foo2()
  %8 = load i32, i32* @entry_calls, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @exit_calls, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  %15 = load void (...)*, void (...)** @last_fn_entered, align 8
  %16 = icmp eq void (...)* %15, bitcast (void ()* @foo to void (...)*)
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %14
  %19 = load void (...)*, void (...)** @last_fn_exited, align 8
  %20 = icmp eq void (...)* %19, bitcast (void ()* @foo2 to void (...)*)
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %18
  call void @nfoo()
  %23 = load i32, i32* @entry_calls, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @exit_calls, align 4
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %22
  call void @abort() #3
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %25
  %30 = load void (...)*, void (...)** @last_fn_entered, align 8
  %31 = icmp eq void (...)* %30, bitcast (void ()* @foo to void (...)*)
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  call void @abort() #3
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %29
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %32, %28, %21, %17, %13, %6
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @__cyg_profile_func_enter(i8* noundef %0, i8* nocapture noundef readnone %1) #2 {
  %3 = load i32, i32* @entry_calls, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @entry_calls, align 4
  store i8* %0, i8** bitcast (void (...)** @last_fn_entered to i8**), align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @__cyg_profile_func_exit(i8* noundef %0, i8* nocapture noundef readnone %1) #2 {
  %3 = load i32, i32* @exit_calls, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @exit_calls, align 4
  store i8* %0, i8** bitcast (void (...)** @last_fn_exited to i8**), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo2() #0 {
  %1 = load i32, i32* @entry_calls, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @exit_calls, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %3
  %8 = load void (...)*, void (...)** @last_fn_entered, align 8
  %9 = icmp eq void (...)* %8, bitcast (void ()* @foo2 to void (...)*)
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  call void @foo()
  %12 = load i32, i32* @entry_calls, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @exit_calls, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %14
  %19 = load void (...)*, void (...)** @last_fn_entered, align 8
  %20 = icmp eq void (...)* %19, bitcast (void ()* @foo to void (...)*)
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %18
  %23 = load void (...)*, void (...)** @last_fn_exited, align 8
  %24 = icmp eq void (...)* %23, bitcast (void ()* @foo to void (...)*)
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %22
  ret void

UnifiedUnreachableBlock:                          ; preds = %25, %21, %17, %10, %6
  unreachable
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
