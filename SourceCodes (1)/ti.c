; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/ti.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/ti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ncol = external dso_local global i32, align 4
@dboxflg = external dso_local global i32, align 4
@nlin = external dso_local global i32, align 4
@fullbot = external dso_local global [0 x i32], align 4
@instead = external dso_local global [0 x i8*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @interv(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ncol, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @dboxflg, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 2, i32* %3, align 4
  br label %78

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @nlin, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %78

26:                                               ; preds = %21
  store i32 3, i32* %3, align 4
  br label %78

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ncol, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %78

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %11
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @lefdata(i32 noundef %38, i32 noundef %39)
  br label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32 [ %40, %36 ], [ 0, %41 ]
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* @nlin, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %62

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @allh(i32 noundef %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %53
  %59 = phi i32 [ %55, %53 ], [ %57, %56 ]
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @lefdata(i32 noundef %59, i32 noundef %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %48
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 3, i32* %3, align 4
  br label %78

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 2, i32* %3, align 4
  br label %78

77:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %72, %68, %31, %26, %25, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @lefdata(i32 noundef, i32 noundef) #1

declare dso_local i32 @allh(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @interh(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 61
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @dboxflg, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @nlin, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %19, %16, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ncol, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %113

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 2, i32* %3, align 4
  br label %113

33:                                               ; preds = %29
  store i32 3, i32* %3, align 4
  br label %113

34:                                               ; preds = %19, %13
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @nlin, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %113

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @thish(i32 noundef %43, i32 noundef %45)
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i32 [ %46, %42 ], [ 0, %47 ]
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sle i32 %50, 1
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @up1(i32 noundef %56)
  %58 = call i32 @allh(i32 noundef %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @up1(i32 noundef %64)
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @thish(i32 noundef %65, i32 noundef %67)
  br label %70

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %63
  %71 = phi i32 [ %68, %63 ], [ 0, %69 ]
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %55, %52, %48
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @thish(i32 noundef %73, i32 noundef %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sle i32 %76, 1
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @up1(i32 noundef %82)
  %84 = call i32 @allh(i32 noundef %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @up1(i32 noundef %90)
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @thish(i32 noundef %91, i32 noundef %92)
  br label %95

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %89
  %96 = phi i32 [ %93, %89 ], [ 0, %94 ]
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %81, %78, %72
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 61
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 61
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 3, i32* %3, align 4
  br label %113

104:                                              ; preds = %100, %97
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 61
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 1, i32* %3, align 4
  br label %113

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 61
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 2, i32* %3, align 4
  br label %113

112:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %111, %107, %103, %38, %33, %32, %28
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @thish(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @up1(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, -1
  store i32 %4, i32* %2, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 0
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i1 [ false, %5 ], [ %13, %11 ]
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %2, align 4
  br label %5, !llvm.loop !4

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
