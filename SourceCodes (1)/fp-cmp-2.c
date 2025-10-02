; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fnan = dso_local global float 0x7FF8000000000000, align 4
@x = dso_local global float 1.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @leave() #0 {
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call void (i32)* @signal(i32 noundef 8, void (i32)* noundef bitcast (void ()* @leave to void (i32)*)) #4
  %3 = load float, float* @fnan, align 4
  %4 = load float, float* @fnan, align 4
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  %8 = load float, float* @fnan, align 4
  %9 = load float, float* @x, align 4
  %10 = fcmp une float %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store float 1.000000e+00, float* @x, align 4
  br label %13

12:                                               ; preds = %7
  call void @abort() #3
  unreachable

13:                                               ; preds = %11
  %14 = load float, float* @fnan, align 4
  %15 = load float, float* @x, align 4
  %16 = fcmp olt float %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @abort() #3
  unreachable

18:                                               ; preds = %13
  %19 = load float, float* @fnan, align 4
  %20 = load float, float* @x, align 4
  %21 = fcmp ogt float %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @abort() #3
  unreachable

23:                                               ; preds = %18
  %24 = load float, float* @fnan, align 4
  %25 = load float, float* @x, align 4
  %26 = fcmp ole float %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  call void @abort() #3
  unreachable

28:                                               ; preds = %23
  %29 = load float, float* @fnan, align 4
  %30 = load float, float* @x, align 4
  %31 = fcmp oge float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  call void @abort() #3
  unreachable

33:                                               ; preds = %28
  %34 = load float, float* @fnan, align 4
  %35 = load float, float* @x, align 4
  %36 = fcmp oeq float %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void @abort() #3
  unreachable

38:                                               ; preds = %33
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
