; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58209.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58209.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [1024 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i64* @foo(i64 noundef %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* @buf, i64 0, i64 0), i64** %2, align 8
  br label %16

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = sub nsw i64 %9, 1
  %11 = call i64* @foo(i64 noundef %10)
  %12 = ptrtoint i64* %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 8
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %2, align 8
  br label %16

16:                                               ; preds = %8, %7
  %17 = load i64*, i64** %2, align 8
  ret i64* %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64* @bar(i64 noundef %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* @buf, i64 0, i64 0), i64** %2, align 8
  br label %12

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = sub nsw i64 %8, 1
  %10 = call i64* @foo(i64 noundef %9)
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  store i64* %11, i64** %2, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = load i64*, i64** %2, align 8
  ret i64* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %24, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 27
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = call i64* @foo(i64 noundef %8)
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* @buf, i64 0, i64 0), i64 %11
  %13 = icmp ne i64* %9, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %6
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = call i64* @bar(i64 noundef %16)
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* @buf, i64 0, i64 0), i64 %19
  %21 = icmp ne i64* %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14, %6
  call void @abort() #2
  unreachable

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %3, !llvm.loop !4

27:                                               ; preds = %3
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
