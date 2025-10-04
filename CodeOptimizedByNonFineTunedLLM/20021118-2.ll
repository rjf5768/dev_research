; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021118-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021118-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.f = private unnamed_addr constant [3 x float] [float 2.000000e+00, float 3.000000e+00, float 4.000000e+00], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @t1(float* noundef %0, i32 noundef %1, void (double)* noundef %2, void (float, float)* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (double)*, align 8
  %9 = alloca void (float, float)*, align 8
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (double)* %2, void (double)** %8, align 8
  store void (float, float)* %3, void (float, float)** %9, align 8
  %10 = load void (double)*, void (double)** %8, align 8
  call void %10(double noundef 3.000000e+00)
  %11 = load float*, float** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, float* %11, i64 %14
  %16 = load float, float* %15, align 4
  %17 = load float*, float** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %17, i64 %19
  store float %16, float* %20, align 4
  %21 = load void (float, float)*, void (float, float)** %9, align 8
  call void %21(float noundef 2.500000e+00, float noundef 3.500000e+00)
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @t2(float* noundef %0, i32 noundef %1, void (double)* noundef %2, void (float, float)* noundef %3, void (float)* noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (double)*, align 8
  %10 = alloca void (float, float)*, align 8
  %11 = alloca void (float)*, align 8
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store void (double)* %2, void (double)** %9, align 8
  store void (float, float)* %3, void (float, float)** %10, align 8
  store void (float)* %4, void (float)** %11, align 8
  %12 = load void (float)*, void (float)** %11, align 8
  call void %12(float noundef 6.000000e+00)
  %13 = load void (double)*, void (double)** %9, align 8
  call void %13(double noundef 3.000000e+00)
  %14 = load float*, float** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %14, i64 %17
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  store float %19, float* %23, align 4
  %24 = load void (float, float)*, void (float, float)** %10, align 8
  call void %24(float noundef 2.500000e+00, float noundef 3.500000e+00)
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fcmp une double %3, 3.000000e+00
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #3
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = fcmp une float %5, 2.500000e+00
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load float, float* %4, align 4
  %9 = fcmp une float %8, 3.500000e+00
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %2
  call void @abort() #3
  unreachable

11:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fcmp une float %3, 6.000000e+00
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #3
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x float], align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast [3 x float]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast ([3 x float]* @__const.main.f to i8*), i64 12, i1 false)
  %4 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %5 = call i32 @t1(float* noundef %4, i32 noundef 0, void (double)* noundef @f1, void (float, float)* noundef @f2)
  %6 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %7 = call i32 @t2(float* noundef %6, i32 noundef 1, void (double)* noundef @f1, void (float, float)* noundef @f2, void (float)* noundef @f3)
  %8 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 0
  %9 = load float, float* %8, align 4
  %10 = fcmp une float %9, 3.000000e+00
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = getelementptr inbounds [3 x float], [3 x float]* %2, i64 0, i64 1
  %13 = load float, float* %12, align 4
  %14 = fcmp une float %13, 4.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @abort() #3
  unreachable

16:                                               ; preds = %11, %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
