; ModuleID = './930603-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/930603-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @fx(double noundef %0) #0 {
  %2 = fptrunc double %0 to float
  %3 = fpext float %2 to double
  %4 = fmul double %3, 0x40026BB1BBB58975
  %5 = fdiv double 3.000000e+00, %4
  %6 = fadd double %5, 1.000000e+00
  %7 = fptrunc double %6 to float
  ret float %7
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call float @inita()
  %2 = call float @initc()
  %3 = fpext float %2 to double
  %4 = call float @fx(double noundef %3)
  %5 = fadd float %4, %1
  %6 = fcmp une float %1, 3.000000e+00
  br i1 %6, label %15, label %7

7:                                                ; preds = %0
  %8 = fpext float %5 to double
  %9 = fcmp olt double %8, 4.325700e+00
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = fpext float %5 to double
  %12 = fcmp ogt double %11, 4.325800e+00
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = fcmp une float %2, 4.000000e+00
  br i1 %14, label %15, label %16

15:                                               ; preds = %13, %10, %7, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %13
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %16, %15
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @inita() #0 {
  ret float 3.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @initc() #0 {
  ret float 4.000000e+00
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @f() #0 {
  ret i32 undef
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
