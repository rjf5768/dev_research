; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findsavr.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/findsavr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external dso_local global [19 x [19 x i8]], align 16
@mymove = external dso_local global i32, align 4
@l = external dso_local global [19 x [19 x i8]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findsaver(i32* noundef %0, i32* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %5, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  store i32 -1, i32* %16, align 4
  store i32 1, i32* %10, align 4
  br label %17

17:                                               ; preds = %78, %3
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %81

20:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %74, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 19
  br i1 %23, label %24, label %77

24:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %70, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 19
  br i1 %27, label %28, label %73

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x i8], [19 x i8]* %31, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* @mymove, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %41
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [19 x i8], [19 x i8]* %42, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %39
  call void @initmark()
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @findnextmove(i32 noundef %51, i32 noundef %52, i32* noundef %11, i32* noundef %12, i32* noundef %13, i32 noundef %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %56, %50
  br label %69

69:                                               ; preds = %68, %39, %28
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %25, !llvm.loop !4

73:                                               ; preds = %25
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %21, !llvm.loop !6

77:                                               ; preds = %21
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %17, !llvm.loop !7

81:                                               ; preds = %17
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* %4, align 4
  br label %87

86:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %85
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local void @initmark() #1

declare dso_local i32 @findnextmove(i32 noundef, i32 noundef, i32* noundef, i32* noundef, i32* noundef, i32 noundef) #1

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
!7 = distinct !{!7, !5}
