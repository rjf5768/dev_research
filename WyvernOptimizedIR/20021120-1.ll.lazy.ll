; ModuleID = './20021120-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021120-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gd = dso_local global [32 x double] zeroinitializer, align 16
@gf = dso_local global [32 x float] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local void @foo(i32 noundef %0) #0 {
  %2 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 0), align 16
  %3 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 1), align 8
  %4 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 2), align 16
  %5 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 3), align 8
  %6 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 4), align 16
  %7 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 5), align 8
  %8 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 6), align 16
  %9 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 7), align 8
  %10 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 8), align 16
  %11 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 9), align 8
  %12 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 10), align 16
  %13 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 11), align 8
  %14 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 12), align 16
  %15 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 13), align 8
  %16 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 14), align 16
  %17 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 15), align 8
  %18 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 16), align 16
  %19 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 17), align 8
  %20 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 18), align 16
  %21 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 19), align 8
  %22 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 20), align 16
  %23 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 21), align 8
  %24 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 22), align 16
  %25 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 23), align 8
  %26 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 24), align 16
  %27 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 25), align 8
  %28 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 26), align 16
  %29 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 27), align 8
  %30 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 28), align 16
  %31 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 29), align 8
  %32 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 30), align 16
  %33 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 31), align 8
  br label %34

34:                                               ; preds = %165, %1
  %.032 = phi double [ %33, %1 ], [ %168, %165 ]
  %.031 = phi double [ %32, %1 ], [ %171, %165 ]
  %.030 = phi double [ %31, %1 ], [ %174, %165 ]
  %.029 = phi double [ %30, %1 ], [ %177, %165 ]
  %.028 = phi double [ %29, %1 ], [ %180, %165 ]
  %.027 = phi double [ %28, %1 ], [ %183, %165 ]
  %.026 = phi double [ %27, %1 ], [ %186, %165 ]
  %.025 = phi double [ %26, %1 ], [ %189, %165 ]
  %.024 = phi double [ %25, %1 ], [ %192, %165 ]
  %.023 = phi double [ %24, %1 ], [ %195, %165 ]
  %.022 = phi double [ %23, %1 ], [ %198, %165 ]
  %.021 = phi double [ %22, %1 ], [ %201, %165 ]
  %.020 = phi double [ %21, %1 ], [ %204, %165 ]
  %.019 = phi double [ %20, %1 ], [ %207, %165 ]
  %.018 = phi double [ %19, %1 ], [ %210, %165 ]
  %.017 = phi double [ %18, %1 ], [ %213, %165 ]
  %.016 = phi double [ %17, %1 ], [ %216, %165 ]
  %.015 = phi double [ %16, %1 ], [ %219, %165 ]
  %.014 = phi double [ %15, %1 ], [ %222, %165 ]
  %.013 = phi double [ %14, %1 ], [ %225, %165 ]
  %.012 = phi double [ %13, %1 ], [ %228, %165 ]
  %.011 = phi double [ %12, %1 ], [ %231, %165 ]
  %.010 = phi double [ %11, %1 ], [ %234, %165 ]
  %.09 = phi double [ %10, %1 ], [ %237, %165 ]
  %.08 = phi double [ %9, %1 ], [ %240, %165 ]
  %.07 = phi double [ %8, %1 ], [ %243, %165 ]
  %.06 = phi double [ %7, %1 ], [ %246, %165 ]
  %.05 = phi double [ %6, %1 ], [ %249, %165 ]
  %.04 = phi double [ %5, %1 ], [ %252, %165 ]
  %.03 = phi double [ %4, %1 ], [ %255, %165 ]
  %.02 = phi double [ %3, %1 ], [ %258, %165 ]
  %.01 = phi double [ %2, %1 ], [ %261, %165 ]
  %.0 = phi i32 [ 0, %1 ], [ %262, %165 ]
  %35 = icmp slt i32 %.0, %0
  br i1 %35, label %36, label %263

36:                                               ; preds = %34
  %37 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 0), align 16
  %38 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 1), align 4
  %39 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 2), align 8
  %40 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 3), align 4
  %41 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 4), align 16
  %42 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 5), align 4
  %43 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 6), align 8
  %44 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 7), align 4
  %45 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 8), align 16
  %46 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 9), align 4
  %47 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 10), align 8
  %48 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 11), align 4
  %49 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 12), align 16
  %50 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 13), align 4
  %51 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 14), align 8
  %52 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 15), align 4
  %53 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 16), align 16
  %54 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 17), align 4
  %55 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 18), align 8
  %56 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 19), align 4
  %57 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 20), align 16
  %58 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 21), align 4
  %59 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 22), align 8
  %60 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 23), align 4
  %61 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 24), align 16
  %62 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 25), align 4
  %63 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 26), align 8
  %64 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 27), align 4
  %65 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 28), align 16
  %66 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 29), align 4
  %67 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 30), align 8
  %68 = load volatile float, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 31), align 4
  %69 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 0), align 16
  %70 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 1), align 8
  %71 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 2), align 16
  %72 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 3), align 8
  %73 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 4), align 16
  %74 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 5), align 8
  %75 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 6), align 16
  %76 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 7), align 8
  %77 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 8), align 16
  %78 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 9), align 8
  %79 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 10), align 16
  %80 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 11), align 8
  %81 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 12), align 16
  %82 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 13), align 8
  %83 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 14), align 16
  %84 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 15), align 8
  %85 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 16), align 16
  %86 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 17), align 8
  %87 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 18), align 16
  %88 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 19), align 8
  %89 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 20), align 16
  %90 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 21), align 8
  %91 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 22), align 16
  %92 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 23), align 8
  %93 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 24), align 16
  %94 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 25), align 8
  %95 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 26), align 16
  %96 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 27), align 8
  %97 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 28), align 16
  %98 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 29), align 8
  %99 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 30), align 16
  %100 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 31), align 8
  %101 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 0), align 16
  %102 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 1), align 8
  %103 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 2), align 16
  %104 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 3), align 8
  %105 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 4), align 16
  %106 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 5), align 8
  %107 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 6), align 16
  %108 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 7), align 8
  %109 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 8), align 16
  %110 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 9), align 8
  %111 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 10), align 16
  %112 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 11), align 8
  %113 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 12), align 16
  %114 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 13), align 8
  %115 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 14), align 16
  %116 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 15), align 8
  %117 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 16), align 16
  %118 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 17), align 8
  %119 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 18), align 16
  %120 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 19), align 8
  %121 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 20), align 16
  %122 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 21), align 8
  %123 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 22), align 16
  %124 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 23), align 8
  %125 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 24), align 16
  %126 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 25), align 8
  %127 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 26), align 16
  %128 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 27), align 8
  %129 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 28), align 16
  %130 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 29), align 8
  %131 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 30), align 16
  %132 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 31), align 8
  %133 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 0), align 16
  %134 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 1), align 8
  %135 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 2), align 16
  %136 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 3), align 8
  %137 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 4), align 16
  %138 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 5), align 8
  %139 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 6), align 16
  %140 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 7), align 8
  %141 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 8), align 16
  %142 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 9), align 8
  %143 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 10), align 16
  %144 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 11), align 8
  %145 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 12), align 16
  %146 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 13), align 8
  %147 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 14), align 16
  %148 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 15), align 8
  %149 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 16), align 16
  %150 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 17), align 8
  %151 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 18), align 16
  %152 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 19), align 8
  %153 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 20), align 16
  %154 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 21), align 8
  %155 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 22), align 16
  %156 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 23), align 8
  %157 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 24), align 16
  %158 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 25), align 8
  %159 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 26), align 16
  %160 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 27), align 8
  %161 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 28), align 16
  %162 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 29), align 8
  %163 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 30), align 16
  %164 = load volatile double, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 31), align 8
  store volatile float %37, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 0), align 16
  store volatile float %38, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 1), align 4
  store volatile float %39, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 2), align 8
  store volatile float %40, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 3), align 4
  store volatile float %41, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 4), align 16
  store volatile float %42, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 5), align 4
  store volatile float %43, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 6), align 8
  store volatile float %44, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 7), align 4
  store volatile float %45, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 8), align 16
  store volatile float %46, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 9), align 4
  store volatile float %47, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 10), align 8
  store volatile float %48, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 11), align 4
  store volatile float %49, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 12), align 16
  store volatile float %50, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 13), align 4
  store volatile float %51, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 14), align 8
  store volatile float %52, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 15), align 4
  store volatile float %53, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 16), align 16
  store volatile float %54, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 17), align 4
  store volatile float %55, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 18), align 8
  store volatile float %56, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 19), align 4
  store volatile float %57, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 20), align 16
  store volatile float %58, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 21), align 4
  store volatile float %59, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 22), align 8
  store volatile float %60, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 23), align 4
  store volatile float %61, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 24), align 16
  store volatile float %62, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 25), align 4
  store volatile float %63, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 26), align 8
  store volatile float %64, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 27), align 4
  store volatile float %65, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 28), align 16
  store volatile float %66, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 29), align 4
  store volatile float %67, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 30), align 8
  store volatile float %68, float* getelementptr inbounds ([32 x float], [32 x float]* @gf, i64 0, i64 31), align 4
  br label %165

165:                                              ; preds = %36
  %166 = fadd double %.032, %100
  %167 = fadd double %166, %132
  %168 = fadd double %167, %164
  %169 = fadd double %.031, %99
  %170 = fadd double %169, %131
  %171 = fadd double %170, %163
  %172 = fadd double %.030, %98
  %173 = fadd double %172, %130
  %174 = fadd double %173, %162
  %175 = fadd double %.029, %97
  %176 = fadd double %175, %129
  %177 = fadd double %176, %161
  %178 = fadd double %.028, %96
  %179 = fadd double %178, %128
  %180 = fadd double %179, %160
  %181 = fadd double %.027, %95
  %182 = fadd double %181, %127
  %183 = fadd double %182, %159
  %184 = fadd double %.026, %94
  %185 = fadd double %184, %126
  %186 = fadd double %185, %158
  %187 = fadd double %.025, %93
  %188 = fadd double %187, %125
  %189 = fadd double %188, %157
  %190 = fadd double %.024, %92
  %191 = fadd double %190, %124
  %192 = fadd double %191, %156
  %193 = fadd double %.023, %91
  %194 = fadd double %193, %123
  %195 = fadd double %194, %155
  %196 = fadd double %.022, %90
  %197 = fadd double %196, %122
  %198 = fadd double %197, %154
  %199 = fadd double %.021, %89
  %200 = fadd double %199, %121
  %201 = fadd double %200, %153
  %202 = fadd double %.020, %88
  %203 = fadd double %202, %120
  %204 = fadd double %203, %152
  %205 = fadd double %.019, %87
  %206 = fadd double %205, %119
  %207 = fadd double %206, %151
  %208 = fadd double %.018, %86
  %209 = fadd double %208, %118
  %210 = fadd double %209, %150
  %211 = fadd double %.017, %85
  %212 = fadd double %211, %117
  %213 = fadd double %212, %149
  %214 = fadd double %.016, %84
  %215 = fadd double %214, %116
  %216 = fadd double %215, %148
  %217 = fadd double %.015, %83
  %218 = fadd double %217, %115
  %219 = fadd double %218, %147
  %220 = fadd double %.014, %82
  %221 = fadd double %220, %114
  %222 = fadd double %221, %146
  %223 = fadd double %.013, %81
  %224 = fadd double %223, %113
  %225 = fadd double %224, %145
  %226 = fadd double %.012, %80
  %227 = fadd double %226, %112
  %228 = fadd double %227, %144
  %229 = fadd double %.011, %79
  %230 = fadd double %229, %111
  %231 = fadd double %230, %143
  %232 = fadd double %.010, %78
  %233 = fadd double %232, %110
  %234 = fadd double %233, %142
  %235 = fadd double %.09, %77
  %236 = fadd double %235, %109
  %237 = fadd double %236, %141
  %238 = fadd double %.08, %76
  %239 = fadd double %238, %108
  %240 = fadd double %239, %140
  %241 = fadd double %.07, %75
  %242 = fadd double %241, %107
  %243 = fadd double %242, %139
  %244 = fadd double %.06, %74
  %245 = fadd double %244, %106
  %246 = fadd double %245, %138
  %247 = fadd double %.05, %73
  %248 = fadd double %247, %105
  %249 = fadd double %248, %137
  %250 = fadd double %.04, %72
  %251 = fadd double %250, %104
  %252 = fadd double %251, %136
  %253 = fadd double %.03, %71
  %254 = fadd double %253, %103
  %255 = fadd double %254, %135
  %256 = fadd double %.02, %70
  %257 = fadd double %256, %102
  %258 = fadd double %257, %134
  %259 = fadd double %.01, %69
  %260 = fadd double %259, %101
  %261 = fadd double %260, %133
  %262 = add nuw nsw i32 %.0, 1
  br label %34, !llvm.loop !4

263:                                              ; preds = %34
  store volatile double %.01, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 0), align 16
  store volatile double %.02, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 1), align 8
  store volatile double %.03, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 2), align 16
  store volatile double %.04, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 3), align 8
  store volatile double %.05, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 4), align 16
  store volatile double %.06, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 5), align 8
  store volatile double %.07, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 6), align 16
  store volatile double %.08, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 7), align 8
  store volatile double %.09, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 8), align 16
  store volatile double %.010, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 9), align 8
  store volatile double %.011, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 10), align 16
  store volatile double %.012, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 11), align 8
  store volatile double %.013, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 12), align 16
  store volatile double %.014, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 13), align 8
  store volatile double %.015, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 14), align 16
  store volatile double %.016, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 15), align 8
  store volatile double %.017, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 16), align 16
  store volatile double %.018, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 17), align 8
  store volatile double %.019, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 18), align 16
  store volatile double %.020, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 19), align 8
  store volatile double %.021, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 20), align 16
  store volatile double %.022, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 21), align 8
  store volatile double %.023, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 22), align 16
  store volatile double %.024, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 23), align 8
  store volatile double %.025, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 24), align 16
  store volatile double %.026, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 25), align 8
  store volatile double %.027, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 26), align 16
  store volatile double %.028, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 27), align 8
  store volatile double %.029, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 28), align 16
  store volatile double %.030, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 29), align 8
  store volatile double %.031, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 30), align 16
  store volatile double %.032, double* getelementptr inbounds ([32 x double], [32 x double]* @gd, i64 0, i64 31), align 8
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.0, 32
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = sitofp i32 %.0 to double
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [32 x double], [32 x double]* @gd, i64 0, i64 %5
  store volatile double %4, double* %6, align 8
  %7 = sitofp i32 %.0 to float
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [32 x float], [32 x float]* @gf, i64 0, i64 %8
  store volatile float %7, float* %9, align 4
  br label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

12:                                               ; preds = %1
  call void @foo(i32 noundef 1)
  br label %13

13:                                               ; preds = %30, %12
  %.1 = phi i32 [ 0, %12 ], [ %31, %30 ]
  %14 = icmp ult i32 %.1, 32
  br i1 %14, label %15, label %32

15:                                               ; preds = %13
  %16 = zext i32 %.1 to i64
  %17 = getelementptr inbounds [32 x double], [32 x double]* @gd, i64 0, i64 %16
  %18 = load volatile double, double* %17, align 8
  %19 = shl nsw i32 %.1, 2
  %20 = sitofp i32 %19 to double
  %21 = fcmp une double %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = zext i32 %.1 to i64
  %24 = getelementptr inbounds [32 x float], [32 x float]* @gf, i64 0, i64 %23
  %25 = load volatile float, float* %24, align 4
  %26 = sitofp i32 %.1 to float
  %27 = fcmp une float %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = add nuw nsw i32 %.1, 1
  br label %13, !llvm.loop !7

32:                                               ; preds = %13
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %32, %28
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { nofree noinline norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
