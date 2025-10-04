; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68250.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68250.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i8 0, align 1
@a = dso_local global i8 0, align 1
@o = dso_local global i8 0, align 1
@d = dso_local global i16 0, align 2
@n = dso_local global i16 0, align 2
@j = dso_local global i32 0, align 4
@c = dso_local global i16 0, align 2
@m = dso_local global i8 0, align 1
@f = dso_local global i32 0, align 4
@l = dso_local global i8 0, align 1
@h = dso_local global i8 0, align 1
@k = dso_local global i8 0, align 1
@e = dso_local global i32 0, align 4
@q = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn1() #0 {
  %1 = alloca i32, align 4
  %2 = load i8, i8* @b, align 1
  %3 = sext i8 %2 to i32
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i8, i8* @a, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i1 [ true, %0 ], [ %8, %5 ]
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %1, align 4
  %12 = load i8, i8* @o, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = load i16, i16* @d, align 2
  %17 = sext i16 %16 to i32
  %18 = load i8, i8* @o, align 1
  %19 = sext i8 %18 to i32
  %20 = ashr i32 1, %19
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %9
  %23 = load i16, i16* @d, align 2
  %24 = sext i16 %23 to i32
  br label %31

25:                                               ; preds = %15
  %26 = load i16, i16* @d, align 2
  %27 = sext i16 %26 to i32
  %28 = load i8, i8* @o, align 1
  %29 = sext i8 %28 to i32
  %30 = shl i32 %27, %29
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i32 [ %24, %22 ], [ %30, %25 ]
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* @n, align 2
  br label %34

34:                                               ; preds = %55, %31
  %35 = load i32, i32* @j, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load i16, i16* @c, align 2
  %39 = sext i16 %38 to i32
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = load i8, i8* @m, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i16, i16* @c, align 2
  %47 = sext i16 %46 to i32
  %48 = load i32, i32* %1, align 4
  %49 = shl i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %45, %41, %37
  %52 = phi i1 [ true, %41 ], [ true, %37 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* @m, align 1
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @j, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @j, align 4
  br label %34, !llvm.loop !4

58:                                               ; preds = %34
  %59 = load i32, i32* @f, align 4
  %60 = add nsw i32 %59, 1
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* @l, align 1
  br label %62

62:                                               ; preds = %70, %58
  %63 = load i32, i32* @f, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i8, i8* @h, align 1
  %67 = sext i8 %66 to i32
  %68 = add nsw i32 %67, 1
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* @k, align 1
  br label %70

70:                                               ; preds = %65
  store i32 1, i32* @f, align 4
  br label %62, !llvm.loop !6

71:                                               ; preds = %62
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %18, %0
  %4 = load i32, i32* @e, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  call void @fn1()
  %7 = load i8, i8* @k, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i8, i8* @k, align 1
  store i8 %10, i8* %2, align 1
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i8, i8* %2, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, i32* @q, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* @g, align 4
  br label %17

17:                                               ; preds = %16, %11
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @e, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @e, align 4
  br label %3, !llvm.loop !7

21:                                               ; preds = %3
  %22 = load i8, i8* @k, align 1
  %23 = sext i8 %22 to i32
  call void @fn2(i32 noundef %23)
  ret i32 0
}

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
