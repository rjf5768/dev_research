; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/exambord.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/exambord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mymove = external dso_local global i32, align 4
@mik = external dso_local global i32, align 4
@mjk = external dso_local global i32, align 4
@uik = external dso_local global i32, align 4
@ujk = external dso_local global i32, align 4
@p = external dso_local global [19 x [19 x i8]], align 16
@l = external dso_local global [19 x [19 x i8]], align 16
@mk = external dso_local global i32, align 4
@uk = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @examboard(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  call void @eval(i32 noundef %6)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @mymove, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* @mik, align 4
  store i32 -1, i32* @mjk, align 4
  br label %12

11:                                               ; preds = %1
  store i32 -1, i32* @uik, align 4
  store i32 -1, i32* @ujk, align 4
  br label %12

12:                                               ; preds = %11, %10
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %69, %12
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 19
  br i1 %15, label %16, label %72

16:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %65, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 19
  br i1 %19, label %20, label %68

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %22
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [19 x i8], [19 x i8]* %23, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i64 0, i64 %33
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [19 x i8], [19 x i8]* %34, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %64

41:                                               ; preds = %31
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %43
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [19 x i8], [19 x i8]* %44, i64 0, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @mymove, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load i32, i32* %3, align 4
  store i32 %52, i32* @mik, align 4
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* @mjk, align 4
  %54 = load i32, i32* @mk, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @mk, align 4
  br label %61

56:                                               ; preds = %41
  %57 = load i32, i32* %3, align 4
  store i32 %57, i32* @uik, align 4
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* @ujk, align 4
  %59 = load i32, i32* @uk, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @uk, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %31, %20
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %17, !llvm.loop !4

68:                                               ; preds = %17
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %13, !llvm.loop !6

72:                                               ; preds = %13
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* @mymove, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 -1, i32* @mik, align 4
  store i32 -1, i32* @mjk, align 4
  br label %85

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %5, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 -1, i32* @uik, align 4
  store i32 -1, i32* @ujk, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %79
  ret void
}

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
