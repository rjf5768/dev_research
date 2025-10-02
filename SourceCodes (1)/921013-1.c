; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921013-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/921013-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [4 x float] [float 5.000000e+00, float 1.000000e+00, float 3.000000e+00, float 5.000000e+00], align 16
@__const.main.b = private unnamed_addr constant [4 x float] [float 2.000000e+00, float 4.000000e+00, float 3.000000e+00, float 0.000000e+00], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32* noundef %0, float* noundef %1, float* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %10

10:                                               ; preds = %14, %4
  %11 = load i32, i32* %9, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %9, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load float*, float** %7, align 8
  %16 = getelementptr inbounds float, float* %15, i32 1
  store float* %16, float** %7, align 8
  %17 = load float, float* %15, align 4
  %18 = load float*, float** %8, align 8
  %19 = getelementptr inbounds float, float* %18, i32 1
  store float* %19, float** %8, align 8
  %20 = load float, float* %18, align 4
  %21 = fcmp oeq float %17, %20
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %10, !llvm.loop !4

25:                                               ; preds = %10
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = bitcast [4 x float]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x float]* @__const.main.a to i8*), i64 16, i1 false)
  %7 = bitcast [4 x float]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x float]* @__const.main.b to i8*), i64 16, i1 false)
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %9 = getelementptr inbounds [4 x float], [4 x float]* %3, i64 0, i64 0
  %10 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %11 = call i32 @f(i32* noundef %8, float* noundef %9, float* noundef %10, i32 noundef 4)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %33, %0
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x float], [4 x float]* %3, i64 0, i64 %17
  %19 = load float, float* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fcmp oeq float %19, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  call void @abort() #3
  unreachable

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %12, !llvm.loop !6

36:                                               ; preds = %12
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
