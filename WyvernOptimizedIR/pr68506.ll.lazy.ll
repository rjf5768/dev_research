; ModuleID = './pr68506.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @fn1(i32 noundef %0) #0 {
  %2 = load i32, i32* @a, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = load i32, i32* @a, align 4
  %6 = add nsw i32 %5, %0
  br label %7

7:                                                ; preds = %4, %3
  %8 = phi i32 [ %0, %3 ], [ %6, %4 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local zeroext i8 @fn2(i8 noundef zeroext %0, i32 noundef %1) #1 {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext i8 %0 to i32
  br label %9

6:                                                ; preds = %2
  %7 = zext i8 %0 to i32
  %8 = lshr i32 %7, %1
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call signext i16 @fn3()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @fn3() #2 {
  br label %1

1:                                                ; preds = %60, %0
  %.0 = phi i32 [ 0, %0 ], [ %.1, %60 ]
  %2 = load i32, i32* @p, align 4
  %3 = icmp slt i32 %2, 31
  br i1 %3, label %4, label %63

4:                                                ; preds = %1
  %5 = load i8, i8* @c, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp ne i8 %5, 0
  %8 = zext i1 %7 to i32
  %9 = sext i8 %5 to i32
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = or i32 %6, %11
  %13 = call i32 @fn1(i32 noundef %12)
  store i32 %13, i32* @s, align 4
  %14 = trunc i32 %13 to i8
  %15 = call zeroext i8 @fn2(i8 noundef zeroext %14, i32 noundef %.0)
  %16 = zext i8 %15 to i32
  store i32 %16, i32* @t, align 4
  %17 = zext i8 %15 to i16
  store i16 %17, i16* @d, align 2
  %18 = zext i8 %15 to i32
  store i32 %18, i32* @m, align 4
  %19 = load i32, i32* @p, align 4
  %20 = icmp eq i32 %19, %18
  %21 = zext i1 %20 to i32
  store i32 %21, i32* @o, align 4
  br i1 false, label %22, label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %4
  store i8 0, i8* @c, align 1
  store i16 0, i16* @v, align 2
  br label %24

24:                                               ; preds = %29, %23
  %storemerge = phi i8 [ 1, %23 ], [ %31, %29 ]
  store i8 %storemerge, i8* @y, align 1
  %.not = icmp eq i8 %storemerge, 0
  br i1 %.not, label %32, label %25

25:                                               ; preds = %24
  %26 = load i16, i16* @v, align 2
  %27 = icmp eq i16 %26, 1
  %28 = zext i1 %27 to i8
  store i8 %28, i8* @e, align 1
  br label %29

29:                                               ; preds = %25
  %30 = load i8, i8* @y, align 1
  %31 = add i8 %30, 1
  br label %24, !llvm.loop !4

32:                                               ; preds = %24
  store i16 0, i16* @d, align 2
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @h, align 4
  %.not2 = icmp eq i32 %34, 2
  br i1 %.not2, label %59, label %35

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* @m, align 4
  %.not3 = icmp eq i32 %37, 0
  br i1 %.not3, label %38, label %39

38:                                               ; preds = %36
  call void @abort() #4
  unreachable

39:                                               ; preds = %36
  %40 = load i32, i32* @f, align 4
  %41 = trunc i32 %40 to i16
  %42 = sub i16 7, %41
  store i16 %42, i16* @r, align 2
  %43 = load i32, i32* @i, align 4
  %44 = zext i16 %42 to i32
  %45 = or i32 %43, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* @e, align 1
  %47 = and i32 %45, 255
  %48 = load i32, i32* @u, align 4
  %49 = load i16, i16* @g, align 2
  %50 = sext i16 %49 to i32
  %51 = mul nsw i32 %48, %50
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* @q, align 1
  %53 = load i32, i32* @b, align 4
  %sext = shl i32 %51, 24
  %54 = ashr exact i32 %sext, 24
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %39
  br label %58

57:                                               ; preds = %39
  br label %36

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58, %33
  %.1 = phi i32 [ %47, %58 ], [ %.0, %33 ]
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* @p, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @p, align 4
  br label %1, !llvm.loop !6

63:                                               ; preds = %1
  %64 = trunc i32 %.0 to i16
  ret i16 %64
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
