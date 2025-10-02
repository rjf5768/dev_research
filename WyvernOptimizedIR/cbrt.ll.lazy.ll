; ModuleID = './cbrt.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/cbrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local double @cbrtl(double noundef %0) #0 {
  %2 = alloca %union.anon, align 8
  %3 = alloca %union.anon, align 8
  %4 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  store double 0.000000e+00, double* %4, align 8
  %5 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  store double %0, double* %5, align 8
  %6 = bitcast %union.anon* %3 to [2 x i32]*
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, -2147483648
  %10 = and i32 %8, 2147483647
  %11 = icmp ugt i32 %10, 2146435071
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = fadd double %0, %0
  br label %88

14:                                               ; preds = %1
  %15 = bitcast %union.anon* %3 to i32*
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %10, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %21 = load double, double* %20, align 8
  br label %88

22:                                               ; preds = %14
  %23 = bitcast %union.anon* %3 to [2 x i32]*
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  store i32 %10, i32* %24, align 4
  %25 = icmp ult i32 %10, 1048576
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = bitcast %union.anon* %2 to [2 x i32]*
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  store i32 1129316352, i32* %28, align 4
  %29 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = fmul double %30, %0
  store double %31, double* %29, align 8
  %32 = bitcast %union.anon* %2 to [2 x i32]*
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = udiv i32 %34, 3
  %narrow1 = add nuw nsw i32 %35, 696219795
  %36 = bitcast %union.anon* %2 to [2 x i32]*
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 1
  store i32 %narrow1, i32* %37, align 4
  br label %42

38:                                               ; preds = %22
  %39 = udiv i32 %10, 3
  %narrow = add nuw nsw i32 %39, 715094163
  %40 = bitcast %union.anon* %2 to [2 x i32]*
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i64 0, i64 1
  store i32 %narrow, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %26
  %43 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = fmul double %44, %44
  %46 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = fdiv double %45, %47
  %49 = call double @llvm.fmuladd.f64(double %48, double %44, double 0x3FE15F15F15F15F1)
  %50 = fadd double %49, 0x3FF6A0EA0EA0EA0F
  %51 = fdiv double 0xBFE691DE2532C834, %49
  %52 = fadd double %50, %51
  %53 = fdiv double 0x3FF9B6DB6DB6DB6E, %52
  %54 = fadd double %53, 0x3FD6DB6DB6DB6DB7
  %55 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = fmul double %56, %54
  store double %57, double* %55, align 8
  %58 = bitcast %union.anon* %2 to i32*
  store i32 0, i32* %58, align 8
  %59 = bitcast %union.anon* %2 to [2 x i32]*
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %59, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = fmul double %64, %64
  %66 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = fdiv double %67, %65
  %69 = fadd double %64, %64
  %70 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  %71 = load double, double* %70, align 8
  %72 = fsub double %68, %71
  %73 = fadd double %69, %68
  %74 = fdiv double %72, %73
  %75 = call double @llvm.fmuladd.f64(double %71, double %74, double %71)
  %76 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  store double %75, double* %76, align 8
  %77 = bitcast %union.anon* %2 to [2 x i32]*
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %77, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %9
  store i32 %80, i32* %78, align 4
  %81 = getelementptr inbounds %union.anon, %union.anon* %2, i64 0, i32 0
  %82 = load double, double* %81, align 8
  %83 = fmul double %82, %82
  %84 = fdiv double %0, %83
  %85 = fsub double %82, %84
  %86 = fneg double %85
  %87 = call double @llvm.fmuladd.f64(double %86, double 0x3FD5555555555555, double %82)
  br label %88

88:                                               ; preds = %42, %19, %12
  %.0 = phi double [ %13, %12 ], [ %21, %19 ], [ %87, %42 ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call double @cbrtl(double noundef 2.700000e+01)
  %2 = fadd double %1, 5.000000e-01
  %3 = fptosi double %2 to i32
  %.not = icmp eq i32 %3, 3
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %5, %4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
