; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/simd-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <4 x i32> }

@i = dso_local global <4 x i32> <i32 150, i32 100, i32 150, i32 200>, align 16
@j = dso_local global <4 x i32> <i32 10, i32 13, i32 20, i32 30>, align 16
@k = dso_local global <4 x i32> zeroinitializer, align 16
@res = dso_local global %union.anon zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @verify(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %20, %8
  call void @abort() #2
  unreachable

33:                                               ; preds = %28
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load <4 x i32>, <4 x i32>* @i, align 16
  %3 = load <4 x i32>, <4 x i32>* @j, align 16
  %4 = add <4 x i32> %2, %3
  store <4 x i32> %4, <4 x i32>* @k, align 16
  %5 = load <4 x i32>, <4 x i32>* @k, align 16
  store <4 x i32> %5, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %6 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 0), align 16
  %7 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 1), align 4
  %8 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 2), align 8
  %9 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 3), align 4
  call void @verify(i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 160, i32 noundef 113, i32 noundef 170, i32 noundef 230)
  %10 = load <4 x i32>, <4 x i32>* @i, align 16
  %11 = load <4 x i32>, <4 x i32>* @j, align 16
  %12 = mul <4 x i32> %10, %11
  store <4 x i32> %12, <4 x i32>* @k, align 16
  %13 = load <4 x i32>, <4 x i32>* @k, align 16
  store <4 x i32> %13, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %14 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 0), align 16
  %15 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 1), align 4
  %16 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 2), align 8
  %17 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 3), align 4
  call void @verify(i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef 1500, i32 noundef 1300, i32 noundef 3000, i32 noundef 6000)
  %18 = load <4 x i32>, <4 x i32>* @i, align 16
  %19 = load <4 x i32>, <4 x i32>* @j, align 16
  %20 = sdiv <4 x i32> %18, %19
  store <4 x i32> %20, <4 x i32>* @k, align 16
  %21 = load <4 x i32>, <4 x i32>* @k, align 16
  store <4 x i32> %21, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %22 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 0), align 16
  %23 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 1), align 4
  %24 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 2), align 8
  %25 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 3), align 4
  call void @verify(i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef 15, i32 noundef 7, i32 noundef 7, i32 noundef 6)
  %26 = load <4 x i32>, <4 x i32>* @i, align 16
  %27 = load <4 x i32>, <4 x i32>* @j, align 16
  %28 = and <4 x i32> %26, %27
  store <4 x i32> %28, <4 x i32>* @k, align 16
  %29 = load <4 x i32>, <4 x i32>* @k, align 16
  store <4 x i32> %29, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %30 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 0), align 16
  %31 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 1), align 4
  %32 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 2), align 8
  %33 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 3), align 4
  call void @verify(i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef 2, i32 noundef 4, i32 noundef 20, i32 noundef 8)
  %34 = load <4 x i32>, <4 x i32>* @i, align 16
  %35 = load <4 x i32>, <4 x i32>* @j, align 16
  %36 = or <4 x i32> %34, %35
  store <4 x i32> %36, <4 x i32>* @k, align 16
  %37 = load <4 x i32>, <4 x i32>* @k, align 16
  store <4 x i32> %37, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %38 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 0), align 16
  %39 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 1), align 4
  %40 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 2), align 8
  %41 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 3), align 4
  call void @verify(i32 noundef %38, i32 noundef %39, i32 noundef %40, i32 noundef %41, i32 noundef 158, i32 noundef 109, i32 noundef 150, i32 noundef 222)
  %42 = load <4 x i32>, <4 x i32>* @i, align 16
  %43 = load <4 x i32>, <4 x i32>* @j, align 16
  %44 = xor <4 x i32> %42, %43
  store <4 x i32> %44, <4 x i32>* @k, align 16
  %45 = load <4 x i32>, <4 x i32>* @k, align 16
  store <4 x i32> %45, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %46 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 0), align 16
  %47 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 1), align 4
  %48 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 2), align 8
  %49 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 3), align 4
  call void @verify(i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49, i32 noundef 156, i32 noundef 105, i32 noundef 130, i32 noundef 214)
  %50 = load <4 x i32>, <4 x i32>* @i, align 16
  %51 = sub <4 x i32> zeroinitializer, %50
  store <4 x i32> %51, <4 x i32>* @k, align 16
  %52 = load <4 x i32>, <4 x i32>* @k, align 16
  store <4 x i32> %52, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %53 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 0), align 16
  %54 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 1), align 4
  %55 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 2), align 8
  %56 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 3), align 4
  call void @verify(i32 noundef %53, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef -150, i32 noundef -100, i32 noundef -150, i32 noundef -200)
  %57 = load <4 x i32>, <4 x i32>* @i, align 16
  %58 = xor <4 x i32> %57, <i32 -1, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %58, <4 x i32>* @k, align 16
  %59 = load <4 x i32>, <4 x i32>* @k, align 16
  store <4 x i32> %59, <4 x i32>* getelementptr inbounds (%union.anon, %union.anon* @res, i32 0, i32 0), align 16
  %60 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 0), align 16
  %61 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 1), align 4
  %62 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 2), align 8
  %63 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* bitcast (%union.anon* @res to [4 x i32]*), i64 0, i64 3), align 4
  call void @verify(i32 noundef %60, i32 noundef %61, i32 noundef %62, i32 noundef %63, i32 noundef -151, i32 noundef -101, i32 noundef -151, i32 noundef -201)
  call void @exit(i32 noundef 0) #2
  unreachable
}

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
