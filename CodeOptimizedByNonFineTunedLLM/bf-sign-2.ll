; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf-sign-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bf-sign-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.X = type { i40, i64, i40, i56 }

@x = dso_local global %struct.X zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* bitcast (%struct.X* @x to i64*), align 8
  %3 = and i64 %2, 7
  %4 = trunc i64 %3 to i32
  %5 = sub nsw i32 %4, 2
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #2
  unreachable

8:                                                ; preds = %0
  %9 = load i64, i64* bitcast (%struct.X* @x to i64*), align 8
  %10 = shl i64 %9, 30
  %11 = ashr i64 %10, 33
  %12 = trunc i64 %11 to i32
  %13 = sub nsw i32 %12, 2
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  call void @abort() #2
  unreachable

16:                                               ; preds = %8
  %17 = load i64, i64* getelementptr inbounds (%struct.X, %struct.X* @x, i32 0, i32 1), align 8
  %18 = shl i64 %17, 32
  %19 = ashr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = sub nsw i32 %20, 2
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  call void @abort() #2
  unreachable

24:                                               ; preds = %16
  %25 = load i64, i64* bitcast (i56* getelementptr inbounds (%struct.X, %struct.X* @x, i32 0, i32 3) to i64*), align 8
  %26 = lshr i64 %25, 35
  %27 = and i64 %26, 32767
  %28 = trunc i64 %27 to i32
  %29 = sub nsw i32 %28, 2
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  call void @abort() #2
  unreachable

32:                                               ; preds = %24
  %33 = load i64, i64* getelementptr inbounds (%struct.X, %struct.X* @x, i32 0, i32 1), align 8
  %34 = lshr i64 %33, 32
  %35 = and i64 %34, 2147483647
  %36 = trunc i64 %35 to i32
  %37 = sub nsw i32 %36, 2
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @abort() #2
  unreachable

40:                                               ; preds = %32
  %41 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.X, %struct.X* @x, i32 0, i32 2) to i64*), align 8
  %42 = and i64 %41, 4294967295
  %43 = trunc i64 %42 to i32
  %44 = sub i32 %43, 2
  %45 = icmp ult i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  call void @abort() #2
  unreachable

47:                                               ; preds = %40
  %48 = load i64, i64* bitcast (i40* getelementptr inbounds (%struct.X, %struct.X* @x, i32 0, i32 2) to i64*), align 8
  %49 = lshr i64 %48, 32
  %50 = and i64 %49, 7
  %51 = trunc i64 %50 to i32
  %52 = sub nsw i32 %51, 2
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  call void @abort() #2
  unreachable

55:                                               ; preds = %47
  %56 = load i64, i64* bitcast (i56* getelementptr inbounds (%struct.X, %struct.X* @x, i32 0, i32 3) to i64*), align 8
  %57 = and i64 %56, 34359738367
  %58 = sub i64 %57, 2
  %59 = icmp ult i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  call void @abort() #2
  unreachable

61:                                               ; preds = %55
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
