; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/matrix.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"get_gcd(%d, %d) = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mysort(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %18, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 8
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %30

18:                                               ; preds = %11
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %11

30:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %84, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %32, 8
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %87

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %80, %38
  %41 = load i32, i32* %5, align 4
  %42 = icmp ult i32 %41, 8
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %83

47:                                               ; preds = %40
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %52, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %47
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %59, %47
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %40

83:                                               ; preds = %46
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %31

87:                                               ; preds = %37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_gcd(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %3, align 4
  br label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = srem i32 %12, %13
  %15 = call i32 @get_gcd(i32 noundef %11, i32 noundef %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %10, %8
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_test([8 x i32]* noundef %0, [8 x i32]* noundef %1) #0 {
  %3 = alloca [8 x i32]*, align 8
  %4 = alloca [8 x i32]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x [8 x i32]], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store [8 x i32]* %0, [8 x i32]** %3, align 8
  store [8 x i32]* %1, [8 x i32]** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %75, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %16, 8
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %94

22:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %72, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp ult i32 %24, 8
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %75

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %9, i64 0, i64 %32
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %33, i64 0, i64 %35
  store i32 0, i32* %36, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %44, %30
  %38 = load i32, i32* %7, align 4
  %39 = icmp ult i32 %38, 8
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %72

44:                                               ; preds = %37
  %45 = load [8 x i32]*, [8 x i32]** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %45, i64 %47
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %48, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load [8 x i32]*, [8 x i32]** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %53, i64 %55
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %56, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %52, %60
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %9, i64 0, i64 %63
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %64, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %61
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %37

72:                                               ; preds = %43
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %23

75:                                               ; preds = %29
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %9, i64 0, i64 %77
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %78, i64 0, i64 0
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  call void @mysort(i32* noundef %79, i32* noundef %80)
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %82 = load i32, i32* %81, align 16
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @get_gcd(i32 noundef %82, i32 noundef %84)
  store i32 %85, i32* %11, align 4
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %87, i32 noundef %89, i32 noundef %90)
  %92 = load i32, i32* %5, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %15

94:                                               ; preds = %21
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [8 x [8 x i32]], align 16
  %5 = alloca [8 x [8 x i32]], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %40, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %43

9:                                                ; preds = %6
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %36, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 79
  %18 = mul nsw i32 %15, %17
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %4, i64 0, i64 %20
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %23
  store i32 %18, i32* %24, align 4
  %25 = load i32, i32* %2, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 255
  %29 = mul nsw i32 %26, %28
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %5, i64 0, i64 %31
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %32, i64 0, i64 %34
  store i32 %29, i32* %35, align 4
  br label %36

36:                                               ; preds = %13
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %10, !llvm.loop !4

39:                                               ; preds = %10
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %6, !llvm.loop !6

43:                                               ; preds = %6
  %44 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %4, i64 0, i64 0
  %45 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %5, i64 0, i64 0
  %46 = call i32 @my_test([8 x i32]* noundef %44, [8 x i32]* noundef %45)
  ret i32 0
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
!6 = distinct !{!6, !5}
