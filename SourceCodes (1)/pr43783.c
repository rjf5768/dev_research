; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43783.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr43783.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UINT192 = type { [3 x i64] }

@bid_Kx192 = dso_local global [32 x %struct.UINT192] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %17, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 32
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32 x %struct.UINT192], [32 x %struct.UINT192]* @bid_Kx192, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.UINT192, %struct.UINT192* %14, i32 0, i32 0
  %16 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  store i64 %11, i64* %16, align 8
  br label %17

17:                                               ; preds = %7
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %4, !llvm.loop !4

20:                                               ; preds = %4
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %28, %20
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i64, i64* getelementptr inbounds ([32 x %struct.UINT192], [32 x %struct.UINT192]* @bid_Kx192, i64 0, i64 1, i32 0, i64 1), align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %21, !llvm.loop !6

31:                                               ; preds = %21
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 32
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @abort() #2
  unreachable

35:                                               ; preds = %31
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
!6 = distinct !{!6, !5}
