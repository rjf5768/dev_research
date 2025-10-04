; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr54471.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr54471.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i64 } @foo(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i128, align 16
  %5 = alloca i128, align 16
  %6 = alloca i128, align 16
  %7 = alloca i32, align 4
  %8 = alloca i128, align 16
  %9 = alloca i128, align 16
  %10 = bitcast i128* %5 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 16
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  %13 = load i128, i128* %5, align 16
  store i128 %13, i128* %6, align 16
  store i32 %2, i32* %7, align 4
  store i128 1, i128* %8, align 16
  %14 = load i128, i128* %6, align 16
  store i128 %14, i128* %9, align 16
  br label %15

15:                                               ; preds = %25, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i128, i128* %9, align 16
  %20 = load i128, i128* %8, align 16
  %21 = mul i128 %20, %19
  store i128 %21, i128* %8, align 16
  %22 = load i128, i128* %9, align 16
  %23 = load i128, i128* %9, align 16
  %24 = mul nsw i128 %23, %22
  store i128 %24, i128* %9, align 16
  br label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %7, align 4
  br label %15, !llvm.loop !4

28:                                               ; preds = %15
  %29 = load i128, i128* %8, align 16
  %30 = icmp ne i128 %29, 14348907
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #2
  unreachable

32:                                               ; preds = %28
  %33 = load i128, i128* %8, align 16
  store i128 %33, i128* %4, align 16
  %34 = bitcast i128* %4 to { i64, i64 }*
  %35 = load { i64, i64 }, { i64, i64 }* %34, align 16
  ret { i64, i64 } %35
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i128, align 16
  %3 = alloca i128, align 16
  %4 = alloca i128, align 16
  store i32 0, i32* %1, align 4
  store i128 3, i128* %3, align 16
  %5 = bitcast i128* %3 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 16
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call { i64, i64 } @foo(i64 noundef %7, i64 noundef %9, i32 noundef 4)
  %11 = bitcast i128* %4 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = extractvalue { i64, i64 } %10, 0
  store i64 %13, i64* %12, align 16
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = extractvalue { i64, i64 } %10, 1
  store i64 %15, i64* %14, align 8
  %16 = load i128, i128* %4, align 16
  store i128 %16, i128* %2, align 16
  ret i32 0
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
