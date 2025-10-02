; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58431.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58431.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i16 0, align 2
@b = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global i8 0, align 1
@d = dso_local global i32 0, align 4
@h = dso_local global i8 0, align 1
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %5 = load i16, i16* @i, align 2
  %6 = sext i16 %5 to i32
  %7 = xor i32 %6, 1
  %8 = trunc i32 %7 to i16
  store i16 %8, i16* @i, align 2
  %9 = sext i16 %8 to i32
  store i32 %9, i32* %2, align 4
  store i32 0, i32* @b, align 4
  br label %10

10:                                               ; preds = %50, %0
  %11 = load i32, i32* @b, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %53

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %3, align 1
  %16 = load i32, i32* @k, align 4
  store i32 %16, i32* @g, align 4
  %17 = load i32, i32* @j, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load volatile i32, i32* @c, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i1 [ true, %13 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* @j, align 4
  %25 = load i8, i8* @a, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* %3, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i32, i32* @d, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* @d, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @d, align 4
  br label %31, !llvm.loop !4

38:                                               ; preds = %31
  br label %49

39:                                               ; preds = %22
  store i8* @h, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  store i8 1, i8* %40, align 1
  br label %41

41:                                               ; preds = %45, %39
  %42 = load i32, i32* @e, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* @e, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @e, align 4
  br label %41, !llvm.loop !6

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* @b, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @b, align 4
  br label %10, !llvm.loop !7

53:                                               ; preds = %10
  %54 = load i8, i8* @h, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  call void @abort() #2
  unreachable

58:                                               ; preds = %53
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
!7 = distinct !{!7, !5}
