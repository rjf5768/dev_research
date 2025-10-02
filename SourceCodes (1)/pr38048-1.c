; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38048-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr38048-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  %1 = alloca [2 x [1 x i32]], align 4
  %2 = alloca [1 x i32]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %1, i64 0, i64 0
  store [1 x i32]* %5, [1 x i32]** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %1, i64 0, i64 0
  %7 = getelementptr inbounds [1 x i32], [1 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds [2 x [1 x i32]], [2 x [1 x i32]]* %1, i64 0, i64 1
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32 2, i32* %9, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %22, %0
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load [1 x i32]*, [1 x i32]** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1 x i32], [1 x i32]* %14, i64 %16
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %10, !llvm.loop !4

25:                                               ; preds = %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo()
  %3 = icmp ne i32 %2, 3
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
