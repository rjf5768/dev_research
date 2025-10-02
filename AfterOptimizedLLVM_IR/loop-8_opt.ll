; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-8.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [3 x double] [double 0.000000e+00, double 1.000000e+00, double 2.000000e+00], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, double* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load double*, double** %4, align 8
  %9 = load double, double* %8, align 8
  %10 = fcmp une double %9, 1.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %2
  call void @abort() #2
  unreachable

12:                                               ; preds = %7
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %0
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [3 x double], [3 x double]* @a, i64 0, i64 %9
  %11 = load double, double* %10, align 8
  store double %11, double* %2, align 8
  %12 = load double, double* %2, align 8
  %13 = fcmp ogt double %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %20

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4, !llvm.loop !4

19:                                               ; preds = %4
  call void @bar(i32 noundef 1, double* noundef %2)
  call void @exit(i32 noundef 1) #2
  unreachable

20:                                               ; preds = %14
  call void @bar(i32 noundef 0, double* noundef %2)
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
