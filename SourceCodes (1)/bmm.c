; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/bmm/bmm.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/bmm/bmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@a = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@b = dso_local global [1024 x [1024 x float]] zeroinitializer, align 16
@BLOCK = dso_local global i32 0, align 4
@NUM = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Usage: bmm <size> <block>\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"size must be in [0, 1024]; block must be <= than size\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"final sum = %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_rand_r(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* %4, align 4
  %6 = mul i32 %5, 1664525
  %7 = add i32 %6, 1013904223
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 32767
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %44, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 1024
  br i1 %6, label %7, label %47

7:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %40, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = call i32 @my_rand_r(i32* noundef %3)
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %1, align 4
  %15 = sub nsw i32 %13, %14
  %16 = and i32 %15, 31
  %17 = lshr i32 %12, %16
  %18 = and i32 %17, 15
  %19 = uitofp i32 %18 to float
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @a, i64 0, i64 %21
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [1024 x float], [1024 x float]* %22, i64 0, i64 %24
  store float %19, float* %25, align 4
  %26 = call i32 @my_rand_r(i32* noundef %3)
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %27, %28
  %30 = and i32 %29, 31
  %31 = shl i32 %26, %30
  %32 = and i32 %31, 15
  %33 = uitofp i32 %32 to float
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @b, i64 0, i64 %35
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [1024 x float], [1024 x float]* %36, i64 0, i64 %38
  store float %33, float* %39, align 4
  br label %40

40:                                               ; preds = %11
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %8, !llvm.loop !4

43:                                               ; preds = %8
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %4, !llvm.loop !6

47:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm_inner(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %64, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BLOCK, align 4
  %15 = add nsw i32 %13, %14
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %60, %17
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @BLOCK, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %56, %25
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @BLOCK, align 4
  %31 = add nsw i32 %29, %30
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @a, i64 0, i64 %35
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [1024 x float], [1024 x float]* %36, i64 0, i64 %38
  %40 = load float, float* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @b, i64 0, i64 %42
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1024 x float], [1024 x float]* %43, i64 0, i64 %45
  %47 = load float, float* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @c, i64 0, i64 %49
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1024 x float], [1024 x float]* %50, i64 0, i64 %52
  %54 = load float, float* %53, align 4
  %55 = call float @llvm.fmuladd.f32(float %40, float %47, float %54)
  store float %55, float* %53, align 4
  br label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %27, !llvm.loop !7

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %19, !llvm.loop !8

63:                                               ; preds = %19
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %11, !llvm.loop !9

67:                                               ; preds = %11
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @matmult() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %33, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NUM, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %28, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %23, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @NUM, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  call void @mm_inner(i32 noundef %20, i32 noundef %21, i32 noundef %22)
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @BLOCK, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %15, !llvm.loop !10

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @BLOCK, align 4
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %2, align 4
  br label %10, !llvm.loop !11

32:                                               ; preds = %10
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @BLOCK, align 4
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %1, align 4
  br label %5, !llvm.loop !12

37:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @mm_sum(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store float 0.000000e+00, float* %7, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @BLOCK, align 4
  %13 = add nsw i32 %11, %12
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %33, %15
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @BLOCK, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1024 x [1024 x float]], [1024 x [1024 x float]]* @c, i64 0, i64 %25
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1024 x float], [1024 x float]* %26, i64 0, i64 %28
  %30 = load float, float* %29, align 4
  %31 = load float, float* %7, align 4
  %32 = fadd float %31, %30
  store float %32, float* %7, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %17, !llvm.loop !13

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %9, !llvm.loop !14

40:                                               ; preds = %9
  %41 = load float, float* %7, align 4
  ret float %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @sumup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store float 0.000000e+00, float* %3, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %24, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @NUM, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %19, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call float @mm_sum(i32 noundef %14, i32 noundef %15)
  %17 = load float, float* %3, align 4
  %18 = fadd float %17, %16
  store float %18, float* %3, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @BLOCK, align 4
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %2, align 4
  br label %9, !llvm.loop !15

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @BLOCK, align 4
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %1, align 4
  br label %4, !llvm.loop !16

28:                                               ; preds = %4
  %29 = load float, float* %3, align 4
  ret float %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @atoi(i8* noundef %17) #6
  store i32 %18, i32* @NUM, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @atoi(i8* noundef %21) #6
  store i32 %22, i32* @BLOCK, align 4
  %23 = load i32, i32* @NUM, align 4
  %24 = icmp ugt i32 %23, 1024
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @BLOCK, align 4
  %27 = load i32, i32* @NUM, align 4
  %28 = icmp ugt i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = or i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

34:                                               ; preds = %14
  call void @init()
  call void @matmult()
  %35 = call float @sumup()
  store float %35, float* %9, align 4
  %36 = load float, float* %9, align 4
  %37 = fpext float %36 to double
  %38 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), double noundef %37)
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly willreturn }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
