; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mzero2.c'
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
  %5 = load double, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = fcmp une double %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load double, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = fcmp oeq double %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void @abort() #3
  unreachable

13:                                               ; preds = %8
  br label %27

14:                                               ; preds = %2
  %15 = load double, double* %3, align 8
  %16 = load double, double* %3, align 8
  %17 = fcmp une double %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @abort() #3
  unreachable

19:                                               ; preds = %14
  %20 = bitcast double* %3 to i8*
  %21 = bitcast double* %4 to i8*
  %22 = call i32 @memcmp(i8* noundef %20, i8* noundef %21, i64 noundef 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  call void @abort() #3
  unreachable

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %13
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load double, double* @pzero, align 8
  %3 = load double, double* @pzero, align 8
  %4 = fadd double %2, %3
  %5 = load double, double* @pzero, align 8
  call void @expect(double noundef %4, double noundef %5)
  %6 = load double, double* @pzero, align 8
  %7 = load double, double* @nzero, align 8
  %8 = fadd double %6, %7
  %9 = load double, double* @pzero, align 8
  call void @expect(double noundef %8, double noundef %9)
  %10 = load double, double* @nzero, align 8
  %11 = load double, double* @pzero, align 8
  %12 = fadd double %10, %11
  %13 = load double, double* @pzero, align 8
  call void @expect(double noundef %12, double noundef %13)
  %14 = load double, double* @nzero, align 8
  %15 = load double, double* @nzero, align 8
  %16 = fadd double %14, %15
  %17 = load double, double* @nzero, align 8
  call void @expect(double noundef %16, double noundef %17)
  %18 = load double, double* @pzero, align 8
  %19 = load double, double* @pzero, align 8
  %20 = fsub double %18, %19
  %21 = load double, double* @pzero, align 8
  call void @expect(double noundef %20, double noundef %21)
  %22 = load double, double* @pzero, align 8
  %23 = load double, double* @nzero, align 8
  %24 = fsub double %22, %23
  %25 = load double, double* @pzero, align 8
  call void @expect(double noundef %24, double noundef %25)
  %26 = load double, double* @nzero, align 8
  %27 = load double, double* @pzero, align 8
  %28 = fsub double %26, %27
  %29 = load double, double* @nzero, align 8
  call void @expect(double noundef %28, double noundef %29)
  %30 = load double, double* @nzero, align 8
  %31 = load double, double* @nzero, align 8
  %32 = fsub double %30, %31
  %33 = load double, double* @pzero, align 8
  call void @expect(double noundef %32, double noundef %33)
  %34 = load double, double* @pzero, align 8
  %35 = load double, double* @pzero, align 8
  %36 = fmul double %34, %35
  %37 = load double, double* @pzero, align 8
  call void @expect(double noundef %36, double noundef %37)
  %38 = load double, double* @pzero, align 8
  %39 = load double, double* @nzero, align 8
  %40 = fmul double %38, %39
  %41 = load double, double* @nzero, align 8
  call void @expect(double noundef %40, double noundef %41)
  %42 = load double, double* @nzero, align 8
  %43 = load double, double* @pzero, align 8
  %44 = fmul double %42, %43
  %45 = load double, double* @nzero, align 8
  call void @expect(double noundef %44, double noundef %45)
  %46 = load double, double* @nzero, align 8
  %47 = load double, double* @nzero, align 8
  %48 = fmul double %46, %47
  %49 = load double, double* @pzero, align 8
  call void @expect(double noundef %48, double noundef %49)
  %50 = load double, double* @pzero, align 8
  %51 = fmul double 1.000000e+00, %50
  %52 = load double, double* @pzero, align 8
  call void @expect(double noundef %51, double noundef %52)
  %53 = load double, double* @pzero, align 8
  %54 = fmul double -1.000000e+00, %53
  %55 = load double, double* @nzero, align 8
  call void @expect(double noundef %54, double noundef %55)
  %56 = load double, double* @nzero, align 8
  %57 = fmul double 1.000000e+00, %56
  %58 = load double, double* @nzero, align 8
  call void @expect(double noundef %57, double noundef %58)
  %59 = load double, double* @nzero, align 8
  %60 = fmul double -1.000000e+00, %59
  %61 = load double, double* @pzero, align 8
  call void @expect(double noundef %60, double noundef %61)
  %62 = load double, double* @pzero, align 8
  %63 = load double, double* @pzero, align 8
  %64 = fdiv double %62, %63
  %65 = load double, double* @nan, align 8
  call void @expect(double noundef %64, double noundef %65)
  %66 = load double, double* @pzero, align 8
  %67 = load double, double* @nzero, align 8
  %68 = fdiv double %66, %67
  %69 = load double, double* @nan, align 8
  call void @expect(double noundef %68, double noundef %69)
  %70 = load double, double* @nzero, align 8
  %71 = load double, double* @pzero, align 8
  %72 = fdiv double %70, %71
  %73 = load double, double* @nan, align 8
  call void @expect(double noundef %72, double noundef %73)
  %74 = load double, double* @nzero, align 8
  %75 = load double, double* @nzero, align 8
  %76 = fdiv double %74, %75
  %77 = load double, double* @nan, align 8
  call void @expect(double noundef %76, double noundef %77)
  %78 = load double, double* @pzero, align 8
  %79 = fdiv double 1.000000e+00, %78
  %80 = load double, double* @pinf, align 8
  call void @expect(double noundef %79, double noundef %80)
  %81 = load double, double* @pzero, align 8
  %82 = fdiv double -1.000000e+00, %81
  %83 = load double, double* @ninf, align 8
  call void @expect(double noundef %82, double noundef %83)
  %84 = load double, double* @nzero, align 8
  %85 = fdiv double 1.000000e+00, %84
  %86 = load double, double* @ninf, align 8
  call void @expect(double noundef %85, double noundef %86)
  %87 = load double, double* @nzero, align 8
  %88 = fdiv double -1.000000e+00, %87
  %89 = load double, double* @pinf, align 8
  call void @expect(double noundef %88, double noundef %89)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
