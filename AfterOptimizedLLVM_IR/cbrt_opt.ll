; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/cbrt.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/cbrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline nounwind uwtable
define dso_local double @cbrtl(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.anon, align 8
  %11 = alloca %union.anon, align 8
  %12 = alloca i32, align 4
  store double %0, double* %3, align 8
  %13 = bitcast %union.anon* %10 to double*
  store double 1.000000e+00, double* %13, align 8
  %14 = bitcast %union.anon* %10 to [2 x i32]*
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = bitcast %union.anon* %10 to double*
  store double 0.000000e+00, double* %19, align 8
  %20 = load double, double* %3, align 8
  %21 = bitcast %union.anon* %11 to double*
  store double %20, double* %21, align 8
  %22 = bitcast %union.anon* %11 to [2 x i32]*
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, 2147483648
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = xor i64 %33, %32
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp sge i64 %35, 2146435072
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load double, double* %3, align 8
  %39 = load double, double* %3, align 8
  %40 = fadd double %38, %39
  store double %40, double* %2, align 8
  br label %178

41:                                               ; preds = %1
  %42 = load i64, i64* %4, align 8
  %43 = bitcast %union.anon* %11 to [2 x i32]*
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 1, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %43, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  %50 = or i64 %42, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = bitcast %union.anon* %11 to double*
  %54 = load double, double* %53, align 8
  store double %54, double* %2, align 8
  br label %178

55:                                               ; preds = %41
  %56 = load i64, i64* %4, align 8
  %57 = trunc i64 %56 to i32
  %58 = bitcast %union.anon* %11 to [2 x i32]*
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i64 0, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load i64, i64* %4, align 8
  %63 = icmp slt i64 %62, 1048576
  br i1 %63, label %64, label %86

64:                                               ; preds = %55
  %65 = bitcast %union.anon* %10 to [2 x i32]*
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %65, i64 0, i64 %67
  store i32 1129316352, i32* %68, align 4
  %69 = load double, double* %3, align 8
  %70 = bitcast %union.anon* %10 to double*
  %71 = load double, double* %70, align 8
  %72 = fmul double %71, %69
  store double %72, double* %70, align 8
  %73 = bitcast %union.anon* %10 to [2 x i32]*
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %73, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = udiv i32 %77, 3
  %79 = zext i32 %78 to i64
  %80 = add i64 %79, 696219795
  %81 = trunc i64 %80 to i32
  %82 = bitcast %union.anon* %10 to [2 x i32]*
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %82, i64 0, i64 %84
  store i32 %81, i32* %85, align 4
  br label %95

86:                                               ; preds = %55
  %87 = load i64, i64* %4, align 8
  %88 = sdiv i64 %87, 3
  %89 = add i64 %88, 715094163
  %90 = trunc i64 %89 to i32
  %91 = bitcast %union.anon* %10 to [2 x i32]*
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %91, i64 0, i64 %93
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %86, %64
  %96 = bitcast %union.anon* %10 to double*
  %97 = load double, double* %96, align 8
  %98 = bitcast %union.anon* %10 to double*
  %99 = load double, double* %98, align 8
  %100 = fmul double %97, %99
  %101 = bitcast %union.anon* %11 to double*
  %102 = load double, double* %101, align 8
  %103 = fdiv double %100, %102
  store double %103, double* %5, align 8
  %104 = load double, double* %5, align 8
  %105 = bitcast %union.anon* %10 to double*
  %106 = load double, double* %105, align 8
  %107 = call double @llvm.fmuladd.f64(double %104, double %106, double 0x3FE15F15F15F15F1)
  store double %107, double* %6, align 8
  %108 = load double, double* %6, align 8
  %109 = fadd double %108, 0x3FF6A0EA0EA0EA0F
  %110 = load double, double* %6, align 8
  %111 = fdiv double 0xBFE691DE2532C834, %110
  %112 = fadd double %109, %111
  %113 = fdiv double 0x3FF9B6DB6DB6DB6E, %112
  %114 = fadd double 0x3FD6DB6DB6DB6DB7, %113
  %115 = bitcast %union.anon* %10 to double*
  %116 = load double, double* %115, align 8
  %117 = fmul double %116, %114
  store double %117, double* %115, align 8
  %118 = bitcast %union.anon* %10 to [2 x i32]*
  %119 = load i32, i32* %12, align 4
  %120 = sub nsw i32 1, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %118, i64 0, i64 %121
  store i32 0, i32* %122, align 4
  %123 = bitcast %union.anon* %10 to [2 x i32]*
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %123, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = bitcast %union.anon* %10 to double*
  %130 = load double, double* %129, align 8
  %131 = bitcast %union.anon* %10 to double*
  %132 = load double, double* %131, align 8
  %133 = fmul double %130, %132
  store double %133, double* %6, align 8
  %134 = bitcast %union.anon* %11 to double*
  %135 = load double, double* %134, align 8
  %136 = load double, double* %6, align 8
  %137 = fdiv double %135, %136
  store double %137, double* %5, align 8
  %138 = bitcast %union.anon* %10 to double*
  %139 = load double, double* %138, align 8
  %140 = bitcast %union.anon* %10 to double*
  %141 = load double, double* %140, align 8
  %142 = fadd double %139, %141
  store double %142, double* %7, align 8
  %143 = load double, double* %5, align 8
  %144 = bitcast %union.anon* %10 to double*
  %145 = load double, double* %144, align 8
  %146 = fsub double %143, %145
  %147 = load double, double* %7, align 8
  %148 = load double, double* %5, align 8
  %149 = fadd double %147, %148
  %150 = fdiv double %146, %149
  store double %150, double* %5, align 8
  %151 = bitcast %union.anon* %10 to double*
  %152 = load double, double* %151, align 8
  %153 = bitcast %union.anon* %10 to double*
  %154 = load double, double* %153, align 8
  %155 = load double, double* %5, align 8
  %156 = call double @llvm.fmuladd.f64(double %154, double %155, double %152)
  %157 = bitcast %union.anon* %10 to double*
  store double %156, double* %157, align 8
  %158 = load i32, i32* %9, align 4
  %159 = bitcast %union.anon* %10 to [2 x i32]*
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %159, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %158
  store i32 %164, i32* %162, align 4
  %165 = bitcast %union.anon* %10 to double*
  %166 = load double, double* %165, align 8
  store double %166, double* %8, align 8
  %167 = load double, double* %8, align 8
  %168 = load double, double* %3, align 8
  %169 = load double, double* %8, align 8
  %170 = load double, double* %8, align 8
  %171 = fmul double %169, %170
  %172 = fdiv double %168, %171
  %173 = fsub double %167, %172
  %174 = load double, double* %8, align 8
  %175 = fneg double %173
  %176 = call double @llvm.fmuladd.f64(double %175, double 0x3FD5555555555555, double %174)
  store double %176, double* %8, align 8
  %177 = load double, double* %8, align 8
  store double %177, double* %2, align 8
  br label %178

178:                                              ; preds = %95, %52, %37
  %179 = load double, double* %2, align 8
  ret double %179
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call double @cbrtl(double noundef 2.700000e+01)
  %3 = fadd double %2, 5.000000e-01
  %4 = fptosi double %3 to i32
  %5 = icmp ne i32 %4, 3
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #3
  unreachable

7:                                                ; preds = %0
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
