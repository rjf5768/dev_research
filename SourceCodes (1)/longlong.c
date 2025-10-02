; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/longlong.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/longlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global [32 x i64] zeroinitializer, align 16
@r = dso_local global i64* getelementptr inbounds ([32 x i64], [32 x i64]* @b, i32 0, i32 0), align 8
@pars = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @alpha_ep_extbl_i_eq_0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i64, i64* @pars, align 8
  %6 = lshr i64 %5, 27
  %7 = and i64 %6, 31
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %1, align 4
  %9 = load i64, i64* @pars, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i32 %10, 5
  %12 = zext i32 %11 to i64
  %13 = and i64 %12, 31
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %2, align 4
  %15 = load i64, i64* @pars, align 8
  %16 = trunc i64 %15 to i32
  %17 = lshr i32 %16, 0
  %18 = zext i32 %17 to i64
  %19 = and i64 %18, 31
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load i64*, i64** @r, align 8
  %22 = load i32, i32* %2, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** @r, align 8
  %27 = load i32, i32* %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, 7
  %32 = shl i64 %31, 3
  %33 = lshr i64 %25, %32
  %34 = and i64 %33, 255
  store i64 %34, i64* %4, align 8
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 31
  br i1 %36, label %37, label %43

37:                                               ; preds = %0
  %38 = load i64, i64* %4, align 8
  %39 = load i64*, i64** @r, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 3160194, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @b, i64 0, i64 17), align 8
  store i64 6003104017374052362, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @b, i64 0, i64 2), align 16
  store i64 2281701442, i64* @pars, align 8
  call void @alpha_ep_extbl_i_eq_0()
  %2 = load i64, i64* getelementptr inbounds ([32 x i64], [32 x i64]* @b, i64 0, i64 2), align 16
  %3 = icmp ne i64 %2, 77
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
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
