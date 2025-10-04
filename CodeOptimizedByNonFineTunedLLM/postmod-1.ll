; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/postmod-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/postmod-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@counter0 = dso_local global float 0.000000e+00, align 4
@counter1 = dso_local global float 0.000000e+00, align 4
@counter2 = dso_local global float 0.000000e+00, align 4
@counter3 = dso_local global float 0.000000e+00, align 4
@counter4 = dso_local global float 0.000000e+00, align 4
@counter5 = dso_local global float 0.000000e+00, align 4
@stop = dso_local global i32 1, align 4
@array0 = dso_local global [16 x float] zeroinitializer, align 16
@array1 = dso_local global [16 x float] zeroinitializer, align 16
@array2 = dso_local global [16 x float] zeroinitializer, align 16
@array3 = dso_local global [16 x float] zeroinitializer, align 16
@array4 = dso_local global [16 x float] zeroinitializer, align 16
@array5 = dso_local global [16 x float] zeroinitializer, align 16
@vol = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* getelementptr inbounds ([16 x float], [16 x float]* @array0, i64 0, i64 0), i64 %16
  store float* %17, float** %3, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* getelementptr inbounds ([16 x float], [16 x float]* @array1, i64 0, i64 0), i64 %19
  store float* %20, float** %4, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* getelementptr inbounds ([16 x float], [16 x float]* @array2, i64 0, i64 0), i64 %22
  store float* %23, float** %5, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* getelementptr inbounds ([16 x float], [16 x float]* @array3, i64 0, i64 0), i64 %25
  store float* %26, float** %6, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* getelementptr inbounds ([16 x float], [16 x float]* @array4, i64 0, i64 0), i64 %28
  store float* %29, float** %7, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* getelementptr inbounds ([16 x float], [16 x float]* @array5, i64 0, i64 0), i64 %31
  store float* %32, float** %8, align 8
  br label %33

33:                                               ; preds = %140, %1
  %34 = load float*, float** %3, align 8
  %35 = load float, float* %34, align 4
  %36 = load float, float* @counter0, align 4
  %37 = fadd float %36, %35
  store float %37, float* @counter0, align 4
  %38 = load float*, float** %3, align 8
  %39 = getelementptr inbounds float, float* %38, i64 3
  store float* %39, float** %3, align 8
  %40 = load float*, float** %4, align 8
  %41 = load float, float* %40, align 4
  %42 = load float, float* @counter1, align 4
  %43 = fadd float %42, %41
  store float %43, float* @counter1, align 4
  %44 = load float*, float** %4, align 8
  %45 = getelementptr inbounds float, float* %44, i64 3
  store float* %45, float** %4, align 8
  %46 = load float*, float** %5, align 8
  %47 = load float, float* %46, align 4
  %48 = load float, float* @counter2, align 4
  %49 = fadd float %48, %47
  store float %49, float* @counter2, align 4
  %50 = load float*, float** %5, align 8
  %51 = getelementptr inbounds float, float* %50, i64 3
  store float* %51, float** %5, align 8
  %52 = load float*, float** %6, align 8
  %53 = load float, float* %52, align 4
  %54 = load float, float* @counter3, align 4
  %55 = fadd float %54, %53
  store float %55, float* @counter3, align 4
  %56 = load float*, float** %6, align 8
  %57 = getelementptr inbounds float, float* %56, i64 3
  store float* %57, float** %6, align 8
  %58 = load float*, float** %7, align 8
  %59 = load float, float* %58, align 4
  %60 = load float, float* @counter4, align 4
  %61 = fadd float %60, %59
  store float %61, float* @counter4, align 4
  %62 = load float*, float** %7, align 8
  %63 = getelementptr inbounds float, float* %62, i64 3
  store float* %63, float** %7, align 8
  %64 = load float*, float** %8, align 8
  %65 = load float, float* %64, align 4
  %66 = load float, float* @counter5, align 4
  %67 = fadd float %66, %65
  store float %67, float* @counter5, align 4
  %68 = load float*, float** %8, align 8
  %69 = getelementptr inbounds float, float* %68, i64 3
  store float* %69, float** %8, align 8
  %70 = load float*, float** %3, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = load float, float* @counter0, align 4
  %76 = fadd float %75, %74
  store float %76, float* @counter0, align 4
  %77 = load float*, float** %4, align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = load float, float* @counter1, align 4
  %83 = fadd float %82, %81
  store float %83, float* @counter1, align 4
  %84 = load float*, float** %5, align 8
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load float, float* @counter2, align 4
  %90 = fadd float %89, %88
  store float %90, float* @counter2, align 4
  %91 = load float*, float** %6, align 8
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  %95 = load float, float* %94, align 4
  %96 = load float, float* @counter3, align 4
  %97 = fadd float %96, %95
  store float %97, float* @counter3, align 4
  %98 = load float*, float** %7, align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = load float, float* @counter4, align 4
  %104 = fadd float %103, %102
  store float %104, float* @counter4, align 4
  %105 = load float*, float** %8, align 8
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  %109 = load float, float* %108, align 4
  %110 = load float, float* @counter5, align 4
  %111 = fadd float %110, %109
  store float %111, float* @counter5, align 4
  %112 = load volatile i32, i32* @vol, align 4
  store i32 %112, i32* %10, align 4
  %113 = load volatile i32, i32* @vol, align 4
  store i32 %113, i32* %11, align 4
  %114 = load volatile i32, i32* @vol, align 4
  store i32 %114, i32* %12, align 4
  %115 = load volatile i32, i32* @vol, align 4
  store i32 %115, i32* %13, align 4
  %116 = load volatile i32, i32* @vol, align 4
  store i32 %116, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %136, %33
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 10
  br i1 %119, label %120, label %139

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  %122 = load volatile i32, i32* @vol, align 4
  %123 = add nsw i32 %122, %121
  store volatile i32 %123, i32* @vol, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load volatile i32, i32* @vol, align 4
  %126 = add nsw i32 %125, %124
  store volatile i32 %126, i32* @vol, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load volatile i32, i32* @vol, align 4
  %129 = add nsw i32 %128, %127
  store volatile i32 %129, i32* @vol, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load volatile i32, i32* @vol, align 4
  %132 = add nsw i32 %131, %130
  store volatile i32 %132, i32* @vol, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load volatile i32, i32* @vol, align 4
  %135 = add nsw i32 %134, %133
  store volatile i32 %135, i32* @vol, align 4
  br label %136

136:                                              ; preds = %120
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %117, !llvm.loop !4

139:                                              ; preds = %117
  br label %140

140:                                              ; preds = %139
  %141 = load volatile i32, i32* @stop, align 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  br i1 %143, label %33, label %144, !llvm.loop !6

144:                                              ; preds = %140
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array0, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array0, i64 0, i64 5), align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array1, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array1, i64 0, i64 5), align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array2, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array2, i64 0, i64 5), align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array3, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array3, i64 0, i64 5), align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array4, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array4, i64 0, i64 5), align 4
  store float 1.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array5, i64 0, i64 1), align 4
  store float 2.000000e+00, float* getelementptr inbounds ([16 x float], [16 x float]* @array5, i64 0, i64 5), align 4
  call void @foo(i32 noundef 1)
  %3 = load float, float* @counter0, align 4
  %4 = fcmp une float %3, 3.000000e+00
  %5 = zext i1 %4 to i32
  %6 = load i32, i32* %2, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %2, align 4
  %8 = load float, float* @counter1, align 4
  %9 = fcmp une float %8, 3.000000e+00
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %2, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %2, align 4
  %13 = load float, float* @counter2, align 4
  %14 = fcmp une float %13, 3.000000e+00
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %2, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %2, align 4
  %18 = load float, float* @counter3, align 4
  %19 = fcmp une float %18, 3.000000e+00
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %2, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %2, align 4
  %23 = load float, float* @counter4, align 4
  %24 = fcmp une float %23, 3.000000e+00
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %2, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %2, align 4
  %28 = load float, float* @counter5, align 4
  %29 = fcmp une float %28, 3.000000e+00
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %2, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
