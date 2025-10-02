; ModuleID = './930614-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930614-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @f(double* nocapture noundef writeonly %0) #0 {
  store double -1.000000e+00, double* %0, align 8
  ret i32 undef
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca double, align 8
  %2 = call i32 @f(double* noundef nonnull %1)
  %3 = load double, double* %1, align 8
  %4 = fcmp olt double %3, 0.000000e+00
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load double, double* %1, align 8
  %7 = fneg double %6
  store double %7, double* %1, align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load double, double* %1, align 8
  %10 = fcmp olt double %9, 0.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %14

12:                                               ; preds = %8
  %13 = load double, double* %1, align 8
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi double [ 0.000000e+00, %11 ], [ %13, %12 ]
  %16 = load double, double* %1, align 8
  %17 = fcmp une double %16, %15
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @abort() #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %14
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %19, %18
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
