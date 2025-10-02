; ModuleID = './mzero2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mzero2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pzero = internal global double 0.000000e+00, align 8
@nzero = internal global double -0.000000e+00, align 8
@nan = internal global double 0x7FF8000000000000, align 8
@pinf = internal global double 0x7FF0000000000000, align 8
@ninf = internal global double 0xFFF0000000000000, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @expect(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = fcmp uno double %1, 0.000000e+00
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load double, double* %3, align 8
  %8 = fcmp ord double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void @abort() #4
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %6
  br label %21

11:                                               ; preds = %2
  %12 = load double, double* %3, align 8
  %13 = fcmp uno double %12, 0.000000e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @abort() #4
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  %16 = bitcast double* %3 to i64*
  %lhsv = load i64, i64* %16, align 8
  %17 = bitcast double* %4 to i64*
  %rhsv = load i64, i64* %17, align 8
  %.not = icmp eq i64 %lhsv, %rhsv
  br i1 %.not, label %19, label %18

18:                                               ; preds = %15
  call void @abort() #4
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20, %10
  ret void

UnifiedUnreachableBlock:                          ; preds = %18, %14, %9
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = load double, double* @pzero, align 8
  %2 = fadd double %1, %1
  call void @expect(double noundef %2, double noundef %1)
  %3 = load double, double* @pzero, align 8
  %4 = load double, double* @nzero, align 8
  %5 = fadd double %3, %4
  call void @expect(double noundef %5, double noundef %3)
  %6 = load double, double* @nzero, align 8
  %7 = load double, double* @pzero, align 8
  %8 = fadd double %6, %7
  call void @expect(double noundef %8, double noundef %7)
  %9 = load double, double* @nzero, align 8
  %10 = fadd double %9, %9
  call void @expect(double noundef %10, double noundef %9)
  %11 = load double, double* @pzero, align 8
  %12 = fsub double %11, %11
  call void @expect(double noundef %12, double noundef %11)
  %13 = load double, double* @pzero, align 8
  %14 = load double, double* @nzero, align 8
  %15 = fsub double %13, %14
  call void @expect(double noundef %15, double noundef %13)
  %16 = load double, double* @nzero, align 8
  %17 = load double, double* @pzero, align 8
  %18 = fsub double %16, %17
  call void @expect(double noundef %18, double noundef %16)
  %19 = load double, double* @nzero, align 8
  %20 = fsub double %19, %19
  %21 = load double, double* @pzero, align 8
  call void @expect(double noundef %20, double noundef %21)
  %22 = load double, double* @pzero, align 8
  %23 = fmul double %22, %22
  call void @expect(double noundef %23, double noundef %22)
  %24 = load double, double* @pzero, align 8
  %25 = load double, double* @nzero, align 8
  %26 = fmul double %24, %25
  call void @expect(double noundef %26, double noundef %25)
  %27 = load double, double* @nzero, align 8
  %28 = load double, double* @pzero, align 8
  %29 = fmul double %27, %28
  call void @expect(double noundef %29, double noundef %27)
  %30 = load double, double* @nzero, align 8
  %31 = fmul double %30, %30
  %32 = load double, double* @pzero, align 8
  call void @expect(double noundef %31, double noundef %32)
  %33 = load double, double* @pzero, align 8
  call void @expect(double noundef %33, double noundef %33)
  %34 = load double, double* @pzero, align 8
  %35 = fneg double %34
  %36 = load double, double* @nzero, align 8
  call void @expect(double noundef %35, double noundef %36)
  %37 = load double, double* @nzero, align 8
  call void @expect(double noundef %37, double noundef %37)
  %38 = load double, double* @nzero, align 8
  %39 = fneg double %38
  %40 = load double, double* @pzero, align 8
  call void @expect(double noundef %39, double noundef %40)
  %41 = load double, double* @pzero, align 8
  %42 = fdiv double %41, %41
  %43 = load double, double* @nan, align 8
  call void @expect(double noundef %42, double noundef %43)
  %44 = load double, double* @pzero, align 8
  %45 = load double, double* @nzero, align 8
  %46 = fdiv double %44, %45
  %47 = load double, double* @nan, align 8
  call void @expect(double noundef %46, double noundef %47)
  %48 = load double, double* @nzero, align 8
  %49 = load double, double* @pzero, align 8
  %50 = fdiv double %48, %49
  %51 = load double, double* @nan, align 8
  call void @expect(double noundef %50, double noundef %51)
  %52 = load double, double* @nzero, align 8
  %53 = fdiv double %52, %52
  %54 = load double, double* @nan, align 8
  call void @expect(double noundef %53, double noundef %54)
  %55 = load double, double* @pzero, align 8
  %56 = fdiv double 1.000000e+00, %55
  %57 = load double, double* @pinf, align 8
  call void @expect(double noundef %56, double noundef %57)
  %58 = load double, double* @pzero, align 8
  %59 = fdiv double -1.000000e+00, %58
  %60 = load double, double* @ninf, align 8
  call void @expect(double noundef %59, double noundef %60)
  %61 = load double, double* @nzero, align 8
  %62 = fdiv double 1.000000e+00, %61
  %63 = load double, double* @ninf, align 8
  call void @expect(double noundef %62, double noundef %63)
  %64 = load double, double* @nzero, align 8
  %65 = fdiv double -1.000000e+00, %64
  %66 = load double, double* @pinf, align 8
  call void @expect(double noundef %65, double noundef %66)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
