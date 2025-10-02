; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/suicide.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/suicide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lib = external dso_local global i32, align 4
@umove = external dso_local global i32, align 4
@p = external dso_local global [19 x [19 x i8]], align 16
@mymove = external dso_local global i32, align 4
@l = external dso_local global [19 x [19 x i8]], align 16
@uik = external dso_local global i32, align 4
@ujk = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @suicide(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* @lib, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @umove, align 4
  call void @countlib(i32 noundef %9, i32 noundef %10, i32 noundef %11)
  %12 = load i32, i32* @lib, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %84

14:                                               ; preds = %2
  %15 = load i32, i32* @umove, align 4
  %16 = trunc i32 %15 to i8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %18
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 %21
  store i8 %16, i8* %22, align 1
  %23 = load i32, i32* @mymove, align 4
  call void @eval(i32 noundef %23)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %59, %14
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 19
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %55, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 19
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %33
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [19 x i8], [19 x i8]* %34, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* @mymove, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %44
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [19 x i8], [19 x i8]* %45, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %42, %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %28, !llvm.loop !4

58:                                               ; preds = %28
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %24, !llvm.loop !6

62:                                               ; preds = %24
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @uik, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @ujk, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72, %62
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %78
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [19 x i8], [19 x i8]* %79, i64 0, i64 %81
  store i8 0, i8* %82, align 1
  store i32 1, i32* %3, align 4
  br label %85

83:                                               ; preds = %72, %68, %65
  store i32 0, i32* %3, align 4
  br label %85

84:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %76
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local void @countlib(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @eval(i32 noundef) #1

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
