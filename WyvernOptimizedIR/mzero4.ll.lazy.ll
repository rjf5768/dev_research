; ModuleID = './mzero4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mzero4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @expectd(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = fcmp une double %0, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = bitcast double* %3 to i64*
  %lhsv = load i64, i64* %7, align 8
  %8 = bitcast double* %4 to i64*
  %rhsv = load i64, i64* %8, align 8
  %.not = icmp eq i64 %lhsv, %rhsv
  br i1 %.not, label %10, label %9

9:                                                ; preds = %6, %2
  call void @abort() #4
  unreachable

10:                                               ; preds = %6
  ret void
}

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @expectf(float noundef %0, float noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = fcmp une float %0, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = bitcast float* %3 to i32*
  %lhsv = load i32, i32* %7, align 4
  %8 = bitcast float* %4 to i32*
  %rhsv = load i32, i32* %8, align 4
  %.not = icmp eq i32 %lhsv, %rhsv
  br i1 %.not, label %10, label %9

9:                                                ; preds = %6, %2
  call void @abort() #4
  unreachable

10:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call double @sin(double noundef 0.000000e+00) #5
  call void @expectd(double noundef 0.000000e+00, double noundef 0.000000e+00)
  %2 = call double @tan(double noundef 0.000000e+00) #5
  call void @expectd(double noundef 0.000000e+00, double noundef 0.000000e+00)
  %3 = call double @atan(double noundef 0.000000e+00) #5
  call void @expectd(double noundef 0.000000e+00, double noundef 0.000000e+00)
  %4 = call double @sin(double noundef -0.000000e+00) #5
  call void @expectd(double noundef -0.000000e+00, double noundef -0.000000e+00)
  %5 = call double @tan(double noundef -0.000000e+00) #5
  call void @expectd(double noundef -0.000000e+00, double noundef -0.000000e+00)
  %6 = call double @atan(double noundef -0.000000e+00) #5
  call void @expectd(double noundef -0.000000e+00, double noundef -0.000000e+00)
  %7 = call float @sinf(float noundef 0.000000e+00) #5
  call void @expectf(float noundef 0.000000e+00, float noundef 0.000000e+00)
  %8 = call float @tanf(float noundef 0.000000e+00) #5
  call void @expectf(float noundef 0.000000e+00, float noundef 0.000000e+00)
  %9 = call float @atanf(float noundef 0.000000e+00) #5
  call void @expectf(float noundef 0.000000e+00, float noundef 0.000000e+00)
  %10 = call float @sinf(float noundef -0.000000e+00) #5
  call void @expectf(float noundef -0.000000e+00, float noundef -0.000000e+00)
  %11 = call float @tanf(float noundef -0.000000e+00) #5
  call void @expectf(float noundef -0.000000e+00, float noundef -0.000000e+00)
  %12 = call float @atanf(float noundef -0.000000e+00) #5
  call void @expectf(float noundef -0.000000e+00, float noundef -0.000000e+00)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @tan(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #3

; Function Attrs: nounwind
declare dso_local float @sinf(float noundef) #3

; Function Attrs: nounwind
declare dso_local float @tanf(float noundef) #3

; Function Attrs: nounwind
declare dso_local float @atanf(float noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
