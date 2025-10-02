; ModuleID = './pr58277-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58277-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@j = internal global i32 0, align 4
@a = internal global [1 x i32] zeroinitializer, align 4
@k = internal global i32 0, align 4
@n = dso_local global i8 0, align 1
@d = dso_local global i32 0, align 4
@r = dso_local global i32** null, align 8
@f = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@o = dso_local global i32 0, align 4
@x = dso_local global i32 0, align 4
@i = internal global i32 0, align 4
@h = internal global i32* @f, align 8
@c = internal global i32 0, align 4
@e = internal global i32 0, align 4
@s = internal global i32*** @r, align 8
@q = internal global [2 x i32] [i32 1, i32 1], align 4
@p = internal global i32* null, align 8
@m = internal global i32 0, align 4
@t = internal global i32 0, align 4
@b = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load i32, i32* @j, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %7, label %3

3:                                                ; preds = %1
  store i32 0, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @a, i64 0, i64 0), align 4
  br label %4

4:                                                ; preds = %3
  %5 = load i32, i32* @j, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* @j, align 4
  br label %1, !llvm.loop !4

7:                                                ; preds = %1
  call void @fn3()
  br label %8

8:                                                ; preds = %11, %7
  %9 = load i32, i32* @k, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %14, label %10

10:                                               ; preds = %8
  call void @fn1()
  br label %11

11:                                               ; preds = %10
  %12 = load i32, i32* @k, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @k, align 4
  br label %8, !llvm.loop !6

14:                                               ; preds = %8
  call void @fn1()
  %15 = load i8, i8* @n, align 1
  %.not2 = icmp eq i8 %15, 0
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #5
  unreachable

17:                                               ; preds = %14
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: nofree noinline nounwind uwtable
define internal void @fn3() #2 {
  %1 = alloca [7 x i32], align 16
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %6, %0
  %4 = load i32, i32* @i, align 4
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %3
  store i32 0, i32* @x, align 4
  br label %6

6:                                                ; preds = %5
  %7 = load i32, i32* @i, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @i, align 4
  br label %3, !llvm.loop !7

9:                                                ; preds = %3
  %10 = call i32 @fn2()
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %37, label %11

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %17, %11
  %13 = load i8, i8* @n, align 1
  %14 = icmp slt i8 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load volatile i32*, i32** @h, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %15
  %18 = load i8, i8* @n, align 1
  %19 = add i8 %18, 1
  store i8 %19, i8* @n, align 1
  br label %12, !llvm.loop !8

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %26, %20
  %22 = load i32, i32* @c, align 4
  %.not3 = icmp eq i32 %22, 0
  br i1 %.not3, label %29, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds [7 x i32], [7 x i32]* %1, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  store i32 %25, i32* @o, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @c, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @c, align 4
  br label %21, !llvm.loop !9

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %33, %29
  %31 = load i32, i32* @e, align 4
  %.not4 = icmp eq i32 %31, 0
  br i1 %.not4, label %36, label %32

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @e, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* @e, align 4
  br label %30, !llvm.loop !10

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %9
  %38 = load volatile i32***, i32**** @s, align 8
  store i32** null, i32*** %38, align 8
  br label %39

39:                                               ; preds = %44, %37
  store i8 0, i8* @n, align 1
  store i32 0, i32* %2, align 4
  %40 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @q, i64 0, i64 0), align 4
  %.not2 = icmp eq i32 %40, 0
  br i1 %.not2, label %42, label %41

41:                                               ; preds = %39
  br label %45

42:                                               ; preds = %39
  %43 = load i32**, i32*** @r, align 8
  store i32* %2, i32** %43, align 8
  br label %44

44:                                               ; preds = %42
  br label %39

45:                                               ; preds = %41
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @fn2() #2 {
  store i8 0, i8* @n, align 1
  br label %1

1:                                                ; preds = %13, %0
  %2 = load i32, i32* @g, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %16, label %3

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3
  %5 = load volatile i32, i32* @d, align 4
  %6 = load i32*, i32** @p, align 8
  %7 = load i32, i32* %6, align 4
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %9, label %8

8:                                                ; preds = %4
  br label %11

9:                                                ; preds = %4
  br label %17

10:                                               ; No predecessors!
  unreachable

11:                                               ; preds = %8
  %12 = load volatile i32*, i32** @h, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %11
  %14 = load i32, i32* @t, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @t, align 4
  br label %1, !llvm.loop !11

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %9
  %.0 = phi i32 [ 0, %9 ], [ 1, %16 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @fn1() #4 {
  %1 = load i32, i32* @b, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %2
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @b, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* @b, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @b, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* @b, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [1 x i32], [1 x i32]* @a, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* @b, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
