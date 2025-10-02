; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mzero4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mzero4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @expectd(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp une double %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = bitcast double* %3 to i8*
  %10 = bitcast double* %4 to i8*
  %11 = call i32 @memcmp(i8* noundef %9, i8* noundef %10, i64 noundef 8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  call void @abort() #4
  unreachable

14:                                               ; preds = %8
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
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp une float %5, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = bitcast float* %3 to i8*
  %10 = bitcast float* %4 to i8*
  %11 = call i32 @memcmp(i8* noundef %9, i8* noundef %10, i64 noundef 4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  call void @abort() #4
  unreachable

14:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call double @sin(double noundef 0.000000e+00) #5
  call void @expectd(double noundef %2, double noundef 0.000000e+00)
  %3 = call double @tan(double noundef 0.000000e+00) #5
  call void @expectd(double noundef %3, double noundef 0.000000e+00)
  %4 = call double @atan(double noundef 0.000000e+00) #5
  call void @expectd(double noundef %4, double noundef 0.000000e+00)
  %5 = call double @sin(double noundef -0.000000e+00) #5
  call void @expectd(double noundef %5, double noundef -0.000000e+00)
  %6 = call double @tan(double noundef -0.000000e+00) #5
  call void @expectd(double noundef %6, double noundef -0.000000e+00)
  %7 = call double @atan(double noundef -0.000000e+00) #5
  call void @expectd(double noundef %7, double noundef -0.000000e+00)
  %8 = call float @sinf(float noundef 0.000000e+00) #5
  call void @expectf(float noundef %8, float noundef 0.000000e+00)
  %9 = call float @tanf(float noundef 0.000000e+00) #5
  call void @expectf(float noundef %9, float noundef 0.000000e+00)
  %10 = call float @atanf(float noundef 0.000000e+00) #5
  call void @expectf(float noundef %10, float noundef 0.000000e+00)
  %11 = call float @sinf(float noundef -0.000000e+00) #5
  call void @expectf(float noundef %11, float noundef -0.000000e+00)
  %12 = call float @tanf(float noundef -0.000000e+00) #5
  call void @expectf(float noundef %12, float noundef -0.000000e+00)
  %13 = call float @atanf(float noundef -0.000000e+00) #5
  call void @expectf(float noundef %13, float noundef -0.000000e+00)
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
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
