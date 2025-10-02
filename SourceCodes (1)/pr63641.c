; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63641.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr63641.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tab1 = dso_local global [32 x i8] c"\01\01\01\01\01\01\01\01\01\00\00\01\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01", align 16
@tab2 = dso_local global [64 x i8] c"\01\01\01\01\01\01\01\01\01\00\00\01\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8 noundef zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp sle i32 0, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sle i32 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %36

12:                                               ; preds = %7, %1
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 11
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %36

17:                                               ; preds = %12
  %18 = load i8, i8* %3, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sle i32 14, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sle i32 %23, 26
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %36

26:                                               ; preds = %21, %17
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sle i32 28, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8, i8* %3, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sle i32 %32, 31
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %36

35:                                               ; preds = %30, %26
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %34, %25, %16, %11
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(i8 noundef zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp sle i32 0, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sle i32 %9, 8
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %36

12:                                               ; preds = %7, %1
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 11
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %36

17:                                               ; preds = %12
  %18 = load i8, i8* %3, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sle i32 14, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sle i32 %23, 26
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %36

26:                                               ; preds = %21, %17
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sle i32 60, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8, i8* %3, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sle i32 %32, 63
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %36

35:                                               ; preds = %30, %26
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %34, %25, %16, %11
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %24, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 256
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = trunc i32 %7 to i8
  %9 = call i32 @foo(i8 noundef zeroext %8)
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* @tab1, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  br label %19

18:                                               ; preds = %6
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %17, %12 ], [ 0, %18 ]
  %21 = icmp ne i32 %9, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @abort() #3
  unreachable

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %3, !llvm.loop !5

27:                                               ; preds = %3
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %2, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = trunc i32 %32 to i8
  %34 = call i32 @bar(i8 noundef zeroext %33)
  %35 = load i32, i32* %2, align 4
  %36 = icmp slt i32 %35, 64
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* @tab2, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  br label %44

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32 [ %42, %37 ], [ 0, %43 ]
  %46 = icmp ne i32 %34, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @abort() #3
  unreachable

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %28, !llvm.loop !7

52:                                               ; preds = %28
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 922}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
