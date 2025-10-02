; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/vla.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/vla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bork = dso_local global [4 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6], [3 x i32] [i32 7, i32 8, i32 9], [3 x i32] [i32 10, i32 11, i32 12]], align 16
@bork2 = dso_local global [2 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 1, i32 2, i32 3, i32 4], [4 x i32] [i32 5, i32 6, i32 7, i32 8], [4 x i32] [i32 9, i32 10, i32 11, i32 12]], [3 x [4 x i32]] [[4 x i32] [i32 13, i32 14, i32 15, i32 16], [4 x i32] [i32 17, i32 18, i32 19, i32 20], [4 x i32] [i32 21, i32 22, i32 23, i32 24]]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @function(i16 noundef signext %0, i32* noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16 %0, i16* %3, align 2
  store i32* %1, i32** %4, align 8
  %7 = load i16, i16* %3, align 2
  %8 = zext i16 %7 to i64
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %42, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i16, i16* %3, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @bork, i64 0, i64 %20
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, %8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %25, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  call void @abort() #2
  unreachable

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %13, !llvm.loop !4

41:                                               ; preds = %13
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %9, !llvm.loop !6

45:                                               ; preds = %9
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test() #0 {
  call void @function(i16 noundef signext 3, i32* noundef getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @bork, i32 0, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @function2(i16 noundef signext %0, i16 noundef signext %1, i32* noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i16 %1, i16* %5, align 2
  store i32* %2, i32** %6, align 8
  %10 = load i16, i16* %4, align 2
  %11 = zext i16 %10 to i64
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i64
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %65, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %68

17:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %61, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i16, i16* %4, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %57, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i16, i16* %5, align 2
  %27 = sext i16 %26 to i32
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x [3 x [4 x i32]]], [2 x [3 x [4 x i32]]]* @bork2, i64 0, i64 %31
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %32, i64 0, i64 %34
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = mul nuw i64 %11, %13
  %44 = mul nsw i64 %42, %43
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, %13
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %39, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %29
  call void @abort() #2
  unreachable

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %24, !llvm.loop !7

60:                                               ; preds = %24
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %18, !llvm.loop !8

64:                                               ; preds = %18
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %14, !llvm.loop !9

68:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2() #0 {
  call void @function2(i16 noundef signext 3, i16 noundef signext 4, i32* noundef getelementptr inbounds ([2 x [3 x [4 x i32]]], [2 x [3 x [4 x i32]]]* @bork2, i32 0, i32 0, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @test()
  call void @test2()
  ret i32 0
}

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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
