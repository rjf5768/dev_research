; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mul-subnormal-single-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mul-subnormal-single-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32 }
%union.uf = type { i32 }

@ok = dso_local global i32 1, align 4
@expected = dso_local global [3 x %struct.anon] [%struct.anon { i32 4095, i32 1065354240, i32 4095 }, %struct.anon { i32 15, i32 1070106760, i32 23 }, %struct.anon { i32 15, i32 1065632836, i32 15 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %38, %0
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = icmp ult i64 %5, 3
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %2, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %2, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  call void @tstmul(i32 noundef %12, i32 noundef %17, i32 noundef %22)
  %23 = load i32, i32* %2, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %2, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %2, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @expected, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  call void @tstmul(i32 noundef %27, i32 noundef %32, i32 noundef %37)
  br label %38

38:                                               ; preds = %7
  %39 = load i32, i32* %2, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %3, !llvm.loop !4

41:                                               ; preds = %3
  %42 = load i32, i32* @ok, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @tstmul(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call float @u2f(i32 noundef %9)
  store float %10, float* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call float @u2f(i32 noundef %11)
  store float %12, float* %8, align 4
  %13 = load float, float* %7, align 4
  %14 = load float, float* %8, align 4
  %15 = fmul float %13, %14
  %16 = call i32 @f2u(float noundef %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* @ok, align 4
  br label %20

20:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal float @u2f(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.uf, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = bitcast %union.uf* %3 to i32*
  store i32 %4, i32* %5, align 4
  %6 = bitcast %union.uf* %3 to float*
  %7 = load float, float* %6, align 4
  ret float %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @f2u(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %union.uf, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = bitcast %union.uf* %3 to float*
  store float %4, float* %5, align 4
  %6 = bitcast %union.uf* %3 to i32*
  %7 = load i32, i32* %6, align 4
  ret i32 %7
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
