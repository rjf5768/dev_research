; ModuleID = './pr58277-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58277-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32* null, align 8
@i = dso_local global i32** @e, align 8
@l = dso_local global i32 1, align 4
@u = dso_local global i8 0, align 1
@m = dso_local constant i32 0, align 4
@a = internal global [2 x i32] zeroinitializer, align 4
@d = dso_local global i32 0, align 4
@__const.main.t6 = private unnamed_addr constant [6 x i32*] [i32* @d, i32* @d, i32* null, i32* null, i32* null, i32* null], align 16
@n = dso_local global i32 0, align 4
@j = internal global i32** @e, align 8
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@o = dso_local global i32 0, align 4
@p = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @bar() #0 {
  store i8 0, i8* @u, align 1
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz() #1 {
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [5 x i32], align 16
  store i32 1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @a, i64 0, i64 0), align 4
  br label %2

2:                                                ; preds = %23, %0
  %storemerge = phi i32 [ 1, %0 ], [ %25, %23 ]
  store i32 %storemerge, i32* @n, align 4
  %.not = icmp eq i32 %storemerge, 0
  br i1 %.not, label %26, label %3

3:                                                ; preds = %2
  %4 = call i32 @foo()
  %.not3 = icmp eq i32 %4, 0
  br i1 %.not3, label %22, label %5

5:                                                ; preds = %3
  store i32 0, i32* @d, align 4
  br label %6

6:                                                ; preds = %13, %5
  %7 = load i8, i8* @u, align 1
  %8 = icmp slt i8 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load volatile i32**, i32*** @j, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = load i32**, i32*** @i, align 8
  store i32* %11, i32** %12, align 8
  br label %13

13:                                               ; preds = %9
  %14 = load i8, i8* @u, align 1
  %15 = add i8 %14, 1
  store i8 %15, i8* @u, align 1
  br label %6, !llvm.loop !5

16:                                               ; preds = %6
  %17 = load i32**, i32*** @i, align 8
  store i32* null, i32** %17, align 8
  %18 = load i32**, i32*** @i, align 8
  store i32* null, i32** %18, align 8
  %19 = bitcast [5 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(20) %19, i8 0, i64 20, i1 false)
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %1, i64 0, i64 0
  %21 = load i32**, i32*** @i, align 8
  store i32* %20, i32** %21, align 8
  br label %22

22:                                               ; preds = %16, %3
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @n, align 4
  %25 = add nsw i32 %24, -1
  br label %2, !llvm.loop !7

26:                                               ; preds = %2
  store i8 0, i8* @u, align 1
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i32, i32* @b, align 4
  %.not1 = icmp eq i32 %28, 0
  br i1 %.not1, label %64, label %29

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %58, %29
  %.0 = phi i32 [ 0, %29 ], [ %59, %58 ]
  %31 = icmp ult i32 %.0, 10
  br i1 %31, label %32, label %60

32:                                               ; preds = %30
  %33 = load i32, i32* @c, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* @c, align 4
  br label %58

58:                                               ; preds = %32
  %59 = add nuw nsw i32 %.0, 1
  br label %30, !llvm.loop !8

60:                                               ; preds = %30
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @b, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @b, align 4
  br label %27, !llvm.loop !9

64:                                               ; preds = %27
  call void @baz()
  %65 = load i8, i8* @u, align 1
  %66 = sext i8 %65 to i64
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* @a, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %.not2 = icmp eq i32 %110, 0
  br i1 %.not2, label %111, label %112

111:                                              ; preds = %64
  call void @abort() #7
  unreachable

112:                                              ; preds = %64
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: nofree noinline nounwind uwtable
define internal i32 @foo() #5 {
  %1 = call i32 @bar()
  store i32 %1, i32* @g, align 4
  %2 = load i32, i32* @l, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  br label %38

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %35, %4
  %6 = load i32**, i32*** @i, align 8
  store i32* null, i32** %6, align 8
  %7 = load i32*, i32** @e, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* @o, align 4
  %8 = load i32, i32* @p, align 4
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %10, label %9

9:                                                ; preds = %5
  store i32 0, i32* @f, align 4
  br label %40

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %19, %10
  %12 = load i32**, i32*** @i, align 8
  %13 = load i32*, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load volatile i32**, i32*** @j, align 8
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %.not3 = icmp eq i32 %16, 0
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %11
  br label %22

18:                                               ; preds = %11
  store i8 0, i8* @u, align 1
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* @k, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @k, align 4
  br label %11

22:                                               ; preds = %17
  %23 = load volatile i32**, i32*** @j, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = load i32**, i32*** @i, align 8
  store i32* %24, i32** %25, align 8
  br label %26

26:                                               ; preds = %32, %22
  %.01 = phi i32 [ 0, %22 ], [ %33, %32 ]
  %27 = icmp ult i32 %.01, 5
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = load volatile i32**, i32*** @j, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = load i32**, i32*** @i, align 8
  store i32* %30, i32** %31, align 8
  br label %32

32:                                               ; preds = %28
  %33 = add nuw nsw i32 %.01, 1
  br label %26, !llvm.loop !10

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* @h, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @h, align 4
  br label %5

38:                                               ; preds = %3
  %39 = load volatile i32**, i32*** @j, align 8
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %38, %9
  %.0 = phi i32 [ 1, %38 ], [ 0, %9 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 279}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
