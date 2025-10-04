; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr84235.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr84235.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store double 0x7FF0000000000000, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = load double, double* %2, align 8
  %6 = fcmp oeq double %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load double, double* %2, align 8
  %9 = load double, double* %2, align 8
  %10 = fsub double %8, %9
  %11 = load double, double* %2, align 8
  %12 = load double, double* %2, align 8
  %13 = fsub double %11, %12
  %14 = fcmp une double %10, %13
  br label %15

15:                                               ; preds = %7, %0
  %16 = phi i1 [ false, %0 ], [ %14, %7 ]
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %3, align 1
  %18 = load i8, i8* %3, align 1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  call void @abort() #2
  unreachable

21:                                               ; preds = %15
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
