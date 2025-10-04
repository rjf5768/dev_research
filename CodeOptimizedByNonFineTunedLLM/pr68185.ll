; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68185.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 1, align 4
@w = dso_local global i32 1, align 4
@o = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i16 0, align 2
@z = dso_local global i32 0, align 4
@u = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@t = dso_local global i16 0, align 2
@f = dso_local global i32 0, align 4
@q = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %47, %0
  %5 = load i32, i32* @d, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %50

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %29, %7
  %9 = load i32, i32* @o, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* @e, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32, i32* @b, align 4
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* @c, align 2
  %18 = load i32, i32* @z, align 4
  store i32 %18, i32* @o, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %27, %15
  %20 = load i32, i32* @u, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %26, %22
  %24 = load i32, i32* @a, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %23, !llvm.loop !4

27:                                               ; preds = %23
  br label %19, !llvm.loop !6

28:                                               ; preds = %19
  br label %12, !llvm.loop !7

29:                                               ; preds = %12
  br label %8, !llvm.loop !8

30:                                               ; preds = %8
  %31 = load i16, i16* @t, align 2
  %32 = sext i16 %31 to i32
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @w, align 4
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %2, align 1
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i8, i8* %2, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* @f, align 4
  %40 = load i8, i8* %2, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i16 1, i16* @q, align 2
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i1 [ false, %37 ], [ true, %43 ]
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @d, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* @d, align 4
  br label %4, !llvm.loop !9

50:                                               ; preds = %4
  %51 = load i16, i16* @q, align 2
  %52 = sext i16 %51 to i32
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @abort() #2
  unreachable

55:                                               ; preds = %50
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
