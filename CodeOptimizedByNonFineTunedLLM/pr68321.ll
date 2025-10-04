; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68321.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68321.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32 1, align 4
@u = dso_local global i32 5, align 4
@t5 = dso_local global i32 0, align 4
@n = dso_local global i8 0, align 1
@t2 = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@t = dso_local global i8 0, align 1
@a = dso_local global [1 x i32] zeroinitializer, align 4
@i = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x i32], align 4
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %30, %1
  %5 = load i32, i32* %2, align 4
  %6 = sdiv i32 %5, 3
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %19, %8
  %10 = load i32, i32* @t5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i32, i32* @u, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i8, i8* @n, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ true, %12 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  br label %9, !llvm.loop !4

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22, %4
  %24 = load i32, i32* %2, align 4
  %25 = and i32 %24, 4
  store i32 %25, i32* @t2, align 4
  %26 = load i32, i32* @b, align 4
  %27 = add nsw i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  ret i32 0

30:                                               ; preds = %23
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %3, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* @u, align 4
  br label %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %15, %0
  %4 = load i32, i32* @e, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load i32, i32* @m, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i8, i8* @t, align 1
  store i8 %10, i8* %2, align 1
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i8, i8* %2, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 @fn1(i32 noundef %13)
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @e, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @e, align 4
  br label %3, !llvm.loop !6

18:                                               ; preds = %3
  %19 = load i32, i32* @t2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  call void @abort() #2
  unreachable

25:                                               ; preds = %18
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
