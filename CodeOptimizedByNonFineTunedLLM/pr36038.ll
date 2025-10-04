; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36038.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr36038.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expect = dso_local global [10 x i64] [i64 0, i64 1, i64 2, i64 3, i64 4, i64 4, i64 5, i64 6, i64 7, i64 9], align 16
@stack_base = dso_local global i64* null, align 8
@markstack_ptr = dso_local global i32* null, align 8
@list = dso_local global [10 x i64] zeroinitializer, align 16
@indices = dso_local global [10 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @doit() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i64*, i64** @stack_base, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 5
  store i64* %8, i64** %3, align 8
  store i32 2, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32*, i32** @markstack_ptr, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 -1
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @markstack_ptr, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 -2
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = sub nsw i32 %9, %16
  store i32 %17, i32* %5, align 4
  %18 = load i64*, i64** %3, align 8
  %19 = load i64*, i64** @stack_base, align 8
  %20 = ptrtoint i64* %18 to i64
  %21 = ptrtoint i64* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8
  %24 = load i32*, i32** @markstack_ptr, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 -1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %23, %27
  %29 = add nsw i64 %28, 2
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i64*, i64** %3, align 8
  store i64* %31, i64** %1, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i64*, i64** %3, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64* %35, i64** %3, align 8
  store i64* %35, i64** %2, align 8
  br label %36

36:                                               ; preds = %40, %0
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i64*, i64** %1, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 -1
  store i64* %42, i64** %1, align 8
  %43 = load i64, i64* %41, align 8
  %44 = load i64*, i64** %2, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 -1
  store i64* %45, i64** %2, align 8
  store i64 %43, i64* %44, align 8
  br label %36, !llvm.loop !4

46:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %12, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [10 x i64], [10 x i64]* @list, i64 0, i64 %10
  store i64 %8, i64* %11, align 8
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %3, !llvm.loop !6

15:                                               ; preds = %3
  store i32* getelementptr inbounds ([10 x i32], [10 x i32]* @indices, i64 0, i64 9), i32** @markstack_ptr, align 8
  %16 = load i32*, i32** @markstack_ptr, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 -1
  store i32 2, i32* %17, align 4
  %18 = load i32*, i32** @markstack_ptr, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 -2
  store i32 1, i32* %19, align 4
  store i64* getelementptr inbounds ([10 x i64], [10 x i64]* @list, i64 0, i64 2), i64** @stack_base, align 8
  call void @doit()
  %20 = call i32 @memcmp(i8* noundef bitcast ([10 x i64]* @expect to i8*), i8* noundef bitcast ([10 x i64]* @list to i8*), i64 noundef 80) #3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  call void @abort() #4
  unreachable

23:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
