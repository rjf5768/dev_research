; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930518-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930518-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 2, i32* %4, align 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @bar, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32, i32* @bar, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %3, align 8
  store i32 %13, i32* %14, align 4
  store i32 1, i32* @bar, align 4
  br label %5, !llvm.loop !4

16:                                               ; preds = %5
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %6 = call i32 @f(i32* noundef %5)
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 2
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %0
  call void @abort() #2
  unreachable

15:                                               ; preds = %10
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
