; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48571-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr48571-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global [624 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %19, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp ult i32 %3, 624
  br i1 %4, label %5, label %22

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = zext i32 %6 to i64
  %8 = add i64 %7, 4611686018427387903
  %9 = mul i64 %8, 4
  %10 = getelementptr i8, i8* bitcast ([624 x i32]* @c to i8*), i64 %9
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = mul i32 2, %12
  %14 = load i32, i32* %1, align 4
  %15 = zext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = getelementptr i8, i8* bitcast ([624 x i32]* @c to i8*), i64 %16
  %18 = bitcast i8* %17 to i32*
  store i32 %13, i32* %18, align 4
  br label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %1, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %2, !llvm.loop !4

22:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp ult i32 %5, 624
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [624 x i32], [624 x i32]* @c, i64 0, i64 %9
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %2, align 4
  br label %4, !llvm.loop !6

14:                                               ; preds = %4
  call void @bar()
  store i32 1, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %2, align 4
  %17 = icmp ult i32 %16, 624
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [624 x i32], [624 x i32]* @c, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  call void @abort() #2
  unreachable

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = mul i32 %27, 2
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %15, !llvm.loop !7

32:                                               ; preds = %15
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
!7 = distinct !{!7, !5}
