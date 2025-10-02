; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/eeprof-1.c'
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
  call void @abort() #2
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
  call void @abort() #2
  unreachable

7:                                                ; preds = %3
  %8 = load void (...)*, void (...)** @last_fn_entered, align 8
  %9 = icmp eq void (...)* %8, bitcast (void ()* @foo to void (...)*)
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #2
  unreachable

11:                                               ; preds = %7
  %12 = load void (...)*, void (...)** @last_fn_exited, align 8
  %13 = icmp eq void (...)* %12, bitcast (void ()* @foo2 to void (...)*)
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #2
  unreachable

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
  call void @abort() #2
  unreachable

22:                                               ; preds = %18
  %23 = load void (...)*, void (...)** @last_fn_entered, align 8
  %24 = icmp eq void (...)* %23, bitcast (void ()* @foo to void (...)*)
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  %27 = load void (...)*, void (...)** @last_fn_exited, align 8
  %28 = icmp eq void (...)* %27, bitcast (void ()* @foo to void (...)*)
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @abort() #2
  unreachable

30:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @entry_calls, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32, i32* @exit_calls, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4, %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %4
  call void @foo2()
  %9 = load i32, i32* @entry_calls, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @exit_calls, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %8
  call void @abort() #2
  unreachable

15:                                               ; preds = %11
  %16 = load void (...)*, void (...)** @last_fn_entered, align 8
  %17 = icmp eq void (...)* %16, bitcast (void ()* @foo to void (...)*)
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call void @abort() #2
  unreachable

19:                                               ; preds = %15
  %20 = load void (...)*, void (...)** @last_fn_exited, align 8
  %21 = icmp eq void (...)* %20, bitcast (void ()* @foo2 to void (...)*)
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  call void @abort() #2
  unreachable

23:                                               ; preds = %19
  call void @nfoo()
  %24 = load i32, i32* @entry_calls, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @exit_calls, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %23
  call void @abort() #2
  unreachable

30:                                               ; preds = %26
  %31 = load void (...)*, void (...)** @last_fn_entered, align 8
  %32 = icmp eq void (...)* %31, bitcast (void ()* @foo to void (...)*)
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  call void @abort() #2
  unreachable

34:                                               ; preds = %30
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @__cyg_profile_func_enter(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @entry_calls, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @entry_calls, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to void (...)*
  store void (...)* %8, void (...)** @last_fn_entered, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @__cyg_profile_func_exit(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @exit_calls, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @exit_calls, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to void (...)*
  store void (...)* %8, void (...)** @last_fn_exited, align 8
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
  call void @abort() #2
  unreachable

7:                                                ; preds = %3
  %8 = load void (...)*, void (...)** @last_fn_entered, align 8
  %9 = icmp eq void (...)* %8, bitcast (void ()* @foo2 to void (...)*)
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  call void @abort() #2
  unreachable

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
  call void @abort() #2
  unreachable

18:                                               ; preds = %14
  %19 = load void (...)*, void (...)** @last_fn_entered, align 8
  %20 = icmp eq void (...)* %19, bitcast (void ()* @foo to void (...)*)
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void @abort() #2
  unreachable

22:                                               ; preds = %18
  %23 = load void (...)*, void (...)** @last_fn_exited, align 8
  %24 = icmp eq void (...)* %23, bitcast (void ()* @foo to void (...)*)
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void @abort() #2
  unreachable

26:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
