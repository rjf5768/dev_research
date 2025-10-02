; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20051110-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20051110-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bytes = dso_local global [5 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_unwind_adjustsp(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = sub nsw i64 %5, 516
  %7 = ashr i64 %6, 2
  store i64 %7, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 127
  %14 = trunc i64 %13 to i8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* @bytes, i64 0, i64 %16
  store i8 %14, i8* %17, align 1
  %18 = load i64, i64* %4, align 8
  %19 = lshr i64 %18, 7
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* @bytes, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, 128
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  br label %30

30:                                               ; preds = %22, %11
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %8, !llvm.loop !4

33:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @add_unwind_adjustsp(i64 noundef 4132)
  %2 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bytes, i64 0, i64 0), align 1
  %3 = zext i8 %2 to i32
  %4 = icmp ne i32 %3, 136
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @bytes, i64 0, i64 1), align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ne i32 %7, 7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %0
  call void @abort() #2
  unreachable

10:                                               ; preds = %5
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
