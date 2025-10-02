; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100416-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20100416-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i64, i32 }

@tests = dso_local global [5 x %struct.test] [%struct.test { i64 -1152921504606846976, i32 -1 }, %struct.test { i64 -1152921504606846977, i32 1 }, %struct.test { i64 -1152921504606846975, i32 -1 }, %struct.test { i64 0, i32 -1 }, %struct.test { i64 -9223372036854775808, i32 1 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @movegt(i32 noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i64, i64* %6, align 8
  %15 = icmp sge i64 %14, -1152921504606846976
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %8, align 4
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %18, %16
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %9, !llvm.loop !4

24:                                               ; preds = %9
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp ult i64 %5, 5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [5 x %struct.test], [5 x %struct.test]* @tests, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.test, %struct.test* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 16
  %13 = call i32 @movegt(i32 noundef -1, i32 noundef 1, i64 noundef %12)
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [5 x %struct.test], [5 x %struct.test]* @tests, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.test, %struct.test* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  call void @abort() #2
  unreachable

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %3, !llvm.loop !6

25:                                               ; preds = %3
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
