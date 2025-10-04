; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr71550.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr71550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 3, align 4
@h = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@c = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global i8* null, align 8
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %48, %0
  %4 = load i32, i32* @a, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %51

6:                                                ; preds = %3
  %7 = load i32, i32* @h, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @c, align 4
  %14 = load i32, i32* @f, align 4
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %13, i32 noundef %14)
  br label %16

16:                                               ; preds = %12, %9, %6
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i32, i32* @g, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %31, %23
  %25 = load i32, i32* @d, align 4
  %26 = icmp ult i32 %25, 10
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i8*, i8** @e, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* @b, align 4
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @d, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* @d, align 4
  br label %24, !llvm.loop !4

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %17, !llvm.loop !6

39:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %44, %39
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %40, !llvm.loop !7

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* @a, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* @a, align 4
  br label %3, !llvm.loop !8

51:                                               ; preds = %3
  call void @exit(i32 noundef 0) #3
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

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
!8 = distinct !{!8, !5}
