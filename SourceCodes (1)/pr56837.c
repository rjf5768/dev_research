; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56837.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56837.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [1024 x { i32, i32 }] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 1024
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [1024 x { i32, i32 }], [1024 x { i32, i32 }]* @a, i64 0, i64 %7
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %8, i32 0, i32 0
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %8, i32 0, i32 1
  store i32 -1, i32* %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2, !llvm.loop !4

14:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %19, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 1024
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [1024 x { i32, i32 }], [1024 x { i32, i32 }]* @a, i64 0, i64 %8
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %9, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %11, -1
  %15 = icmp ne i32 %13, 0
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  call void @abort() #2
  unreachable

18:                                               ; preds = %6
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %3, !llvm.loop !6

22:                                               ; preds = %3
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
