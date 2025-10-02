; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/cmpsf-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/cmpsf-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@args = dso_local global [8 x float] [float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 0x47EFFFFFE0000000, float 0x3810000000000000, float 0x3D3C25C260000000, float 0x419D6F3460000000, float 0xC1CD6F3460000000], align 16
@correct_results = dso_local global [384 x i32] [i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 13, i32 140, i32 140, i32 13, i32 140, i32 13], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @feq(float noundef %0, float noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = load float, float* %5, align 4
  %8 = fcmp oeq float %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 13, i32* %3, align 4
  br label %11

10:                                               ; preds = %2
  store i32 140, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fne(float noundef %0, float noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = load float, float* %5, align 4
  %8 = fcmp une float %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 13, i32* %3, align 4
  br label %11

10:                                               ; preds = %2
  store i32 140, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @flt(float noundef %0, float noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = load float, float* %5, align 4
  %8 = fcmp olt float %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 13, i32* %3, align 4
  br label %11

10:                                               ; preds = %2
  store i32 140, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fge(float noundef %0, float noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = load float, float* %5, align 4
  %8 = fcmp oge float %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 13, i32* %3, align 4
  br label %11

10:                                               ; preds = %2
  store i32 140, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fgt(float noundef %0, float noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = load float, float* %5, align 4
  %8 = fcmp ogt float %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 13, i32* %3, align 4
  br label %11

10:                                               ; preds = %2
  store i32 140, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fle(float noundef %0, float noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %6 = load float, float* %4, align 4
  %7 = load float, float* %5, align 4
  %8 = fcmp ole float %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 13, i32* %3, align 4
  br label %11

10:                                               ; preds = %2
  store i32 140, i32* %3, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32* getelementptr inbounds ([384 x i32], [384 x i32]* @correct_results, i64 0, i64 0), i32** %4, align 8
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %81, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %84

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x float], [8 x float]* @args, i64 0, i64 %12
  %14 = load float, float* %13, align 4
  store float %14, float* %5, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %77, %10
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %80

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x float], [8 x float]* @args, i64 0, i64 %20
  %22 = load float, float* %21, align 4
  store float %22, float* %6, align 4
  %23 = load float, float* %5, align 4
  %24 = load float, float* %6, align 4
  %25 = call i32 @feq(float noundef %23, float noundef %24)
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %4, align 8
  %28 = load i32, i32* %26, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  call void @abort() #2
  unreachable

31:                                               ; preds = %18
  %32 = load float, float* %5, align 4
  %33 = load float, float* %6, align 4
  %34 = call i32 @fne(float noundef %32, float noundef %33)
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %4, align 8
  %37 = load i32, i32* %35, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  call void @abort() #2
  unreachable

40:                                               ; preds = %31
  %41 = load float, float* %5, align 4
  %42 = load float, float* %6, align 4
  %43 = call i32 @flt(float noundef %41, float noundef %42)
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %4, align 8
  %46 = load i32, i32* %44, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  call void @abort() #2
  unreachable

49:                                               ; preds = %40
  %50 = load float, float* %5, align 4
  %51 = load float, float* %6, align 4
  %52 = call i32 @fge(float noundef %50, float noundef %51)
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %4, align 8
  %55 = load i32, i32* %53, align 4
  %56 = icmp ne i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  call void @abort() #2
  unreachable

58:                                               ; preds = %49
  %59 = load float, float* %5, align 4
  %60 = load float, float* %6, align 4
  %61 = call i32 @fgt(float noundef %59, float noundef %60)
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %4, align 8
  %64 = load i32, i32* %62, align 4
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  call void @abort() #2
  unreachable

67:                                               ; preds = %58
  %68 = load float, float* %5, align 4
  %69 = load float, float* %6, align 4
  %70 = call i32 @fle(float noundef %68, float noundef %69)
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %4, align 8
  %73 = load i32, i32* %71, align 4
  %74 = icmp ne i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  call void @abort() #2
  unreachable

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %15, !llvm.loop !4

80:                                               ; preds = %15
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %7, !llvm.loop !6

84:                                               ; preds = %7
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

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
