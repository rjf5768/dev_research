; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68506.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68506.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@n = dso_local global i32 0, align 4
@o = dso_local global i32 0, align 4
@p = dso_local global i32 0, align 4
@s = dso_local global i32 0, align 4
@u = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@c = dso_local global i8 0, align 1
@q = dso_local global i8 0, align 1
@y = dso_local global i8 0, align 1
@d = dso_local global i16 0, align 2
@e = dso_local global i8 0, align 1
@t = dso_local global i32 0, align 4
@v = internal global i16 0, align 2
@h = internal global i32 0, align 4
@f = internal global i32 0, align 4
@r = internal global i16 0, align 2
@g = internal global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @a, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  br label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @a, align 4
  %10 = add nsw i32 %8, %9
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i32 [ %6, %5 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @fn2(i8 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8, i8* %3, align 1
  %9 = zext i8 %8 to i32
  br label %15

10:                                               ; preds = %2
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %12, %13
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i32 [ %9, %7 ], [ %14, %10 ]
  %17 = trunc i32 %16 to i8
  ret i8 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call signext i16 @fn3()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @fn3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %95, %0
  %4 = load i32, i32* @p, align 4
  %5 = icmp slt i32 %4, 31
  br i1 %5, label %6, label %98

6:                                                ; preds = %3
  %7 = load i8, i8* @c, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @c, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i8, i8* @c, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = or i32 %8, %16
  %18 = call i32 @fn1(i32 noundef %17)
  store i32 %18, i32* @s, align 4
  %19 = load i32, i32* @s, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i32, i32* %2, align 4
  %22 = call zeroext i8 @fn2(i8 noundef zeroext %20, i32 noundef %21)
  %23 = zext i8 %22 to i32
  store i32 %23, i32* @t, align 4
  %24 = load i8, i8* @c, align 1
  %25 = sext i8 %24 to i32
  %26 = load i32, i32* @t, align 4
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* @d, align 2
  %28 = sext i16 %27 to i32
  store i32 %28, i32* @m, align 4
  %29 = load i32, i32* @p, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* @o, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ule i64 %32, 4
  %34 = zext i1 %33 to i32
  %35 = sub i32 0, %34
  %36 = icmp ugt i32 %25, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = load i32, i32* @n, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %6
  %41 = phi i1 [ false, %6 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* @c, align 1
  %44 = load i8, i8* @c, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 0, %45
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* @v, align 2
  store i8 1, i8* @y, align 1
  br label %48

48:                                               ; preds = %57, %40
  %49 = load i8, i8* @y, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i16, i16* @v, align 2
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %53, 1
  %55 = zext i1 %54 to i32
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* @e, align 1
  br label %57

57:                                               ; preds = %51
  %58 = load i8, i8* @y, align 1
  %59 = add i8 %58, 1
  store i8 %59, i8* @y, align 1
  br label %48, !llvm.loop !4

60:                                               ; preds = %48
  store i16 0, i16* @d, align 2
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @h, align 4
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %94

64:                                               ; preds = %61
  br label %65

65:                                               ; preds = %92, %64
  %66 = load i32, i32* @m, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call void @abort() #2
  unreachable

69:                                               ; preds = %65
  %70 = load i32, i32* @f, align 4
  %71 = sub nsw i32 7, %70
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* @r, align 2
  %73 = load i32, i32* @i, align 4
  %74 = load i16, i16* @r, align 2
  %75 = sext i16 %74 to i32
  %76 = or i32 %73, %75
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* @e, align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* @u, align 4
  %80 = load i16, i16* @g, align 2
  %81 = sext i16 %80 to i32
  %82 = mul nsw i32 %79, %81
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* @q, align 1
  %84 = load i32, i32* @b, align 4
  %85 = load i8, i8* @q, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* %1, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %69
  br label %93

92:                                               ; preds = %69
  br label %65

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %61
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* @p, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @p, align 4
  br label %3, !llvm.loop !6

98:                                               ; preds = %3
  %99 = load i32, i32* %2, align 4
  %100 = trunc i32 %99 to i16
  ret i16 %100
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
