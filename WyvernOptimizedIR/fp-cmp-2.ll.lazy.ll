; ModuleID = './fp-cmp-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fnan = dso_local global float 0x7FF8000000000000, align 4
@x = dso_local global float 1.000000e+00, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @leave() #0 {
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call void (i32)* @signal(i32 noundef 8, void (i32)* noundef bitcast (void ()* @leave to void (i32)*)) #4
  %2 = load float, float* @fnan, align 4
  %3 = fcmp ord float %2, 0.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  %6 = load float, float* @fnan, align 4
  %7 = load float, float* @x, align 4
  %8 = fcmp une float %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store float 1.000000e+00, float* @x, align 4
  br label %11

10:                                               ; preds = %5
  call void @abort() #3
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9
  %12 = load float, float* @fnan, align 4
  %13 = load float, float* @x, align 4
  %14 = fcmp olt float %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %11
  %17 = load float, float* @fnan, align 4
  %18 = load float, float* @x, align 4
  %19 = fcmp ogt float %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %16
  %22 = load float, float* @fnan, align 4
  %23 = load float, float* @x, align 4
  %24 = fcmp ugt float %22, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %21
  %27 = load float, float* @fnan, align 4
  %28 = load float, float* @x, align 4
  %29 = fcmp ult float %27, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @abort() #3
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %26
  %32 = load float, float* @fnan, align 4
  %33 = load float, float* @x, align 4
  %34 = fcmp oeq float %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %31
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %36, %35, %30, %25, %20, %15, %10, %4
  unreachable
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32 noundef, void (i32)* noundef) #2

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
