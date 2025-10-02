; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/acc2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/acc2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.values = private unnamed_addr constant [4 x double] [double 0x7FEFFFFFFFFFFFFF, double 2.000000e+00, double 5.000000e-01, double 1.000000e+00], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local double @func(double* noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  store double* %0, double** %3, align 8
  %5 = load double*, double** %3, align 8
  %6 = load double, double* %5, align 8
  store double %6, double* %4, align 8
  %7 = load double, double* %4, align 8
  %8 = fcmp oeq double %7, 1.000000e+00
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load double, double* %4, align 8
  store double %10, double* %2, align 8
  br label %17

11:                                               ; preds = %1
  %12 = load double, double* %4, align 8
  %13 = load double*, double** %3, align 8
  %14 = getelementptr inbounds double, double* %13, i64 1
  %15 = call double @func(double* noundef %14)
  %16 = fmul double %12, %15
  store double %16, double* %2, align 8
  br label %17

17:                                               ; preds = %11, %9
  %18 = load double, double* %2, align 8
  ret double %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x double], align 16
  store i32 0, i32* %1, align 4
  %3 = bitcast [4 x double]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([4 x double]* @__const.main.values to i8*), i64 32, i1 false)
  %4 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 0
  %5 = call double @func(double* noundef %4)
  %6 = fcmp une double %5, 0x7FEFFFFFFFFFFFFF
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
