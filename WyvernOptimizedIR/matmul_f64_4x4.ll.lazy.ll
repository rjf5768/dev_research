; ModuleID = './matmul_f64_4x4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/matmul_f64_4x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.A = private unnamed_addr constant [4 x [4 x double]] [[4 x double] [double 4.500000e+00, double 1.300000e+00, double 6.000000e+00, double 4.100000e+00], [4 x double] [double 2.500000e+00, double 7.200000e+00, double 7.700000e+00, double 1.700000e+00], [4 x double] [double 6.700000e+00, double 1.300000e+00, double 9.400000e+00, double 1.300000e+00], [4 x double] [double 1.100000e+00, double 2.200000e+00, double 3.000000e+00, double 2.100000e+00]], align 16
@__const.main.B = private unnamed_addr constant [4 x [4 x double]] [[4 x double] [double 1.000000e+00, double 7.900000e+00, double 5.100000e+00, double 3.400000e+00], [4 x double] [double 6.600000e+00, double 2.800000e+00, double 5.400000e+00, double 0x4022666666666666], [4 x double] [double 5.000000e+00, double 4.100000e+00, double 4.100000e+00, double 9.900000e+00], [4 x double] [double 8.400000e+00, double 3.700000e+00, double 9.500000e+00, double 6.400000e+00]], align 16
@.str = private unnamed_addr constant [6 x i8] c"%8.2f\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @wrap_mul4(double* nocapture noundef writeonly %0, [4 x double]* noundef %1, [4 x double]* noundef %2) #0 {
  call void @mul4(double* noundef %0, [4 x double]* noundef %1, [4 x double]* noundef %2)
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @mul4(double* nocapture noundef writeonly %0, [4 x double]* noundef readonly %1, [4 x double]* noundef readonly %2) #0 {
  %4 = alloca [16 x double], align 16
  %5 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 0
  %6 = load double, double* %5, align 8
  %7 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 0
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 1
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 0
  %12 = load double, double* %11, align 8
  %13 = fmul double %10, %12
  %14 = call double @llvm.fmuladd.f64(double %6, double %8, double %13)
  %15 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 2
  %16 = load double, double* %15, align 8
  %17 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 0
  %18 = load double, double* %17, align 8
  %19 = call double @llvm.fmuladd.f64(double %16, double %18, double %14)
  %20 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 3
  %21 = load double, double* %20, align 8
  %22 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 0
  %23 = load double, double* %22, align 8
  %24 = call double @llvm.fmuladd.f64(double %21, double %23, double %19)
  %25 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 0
  store double %24, double* %25, align 16
  %26 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 0
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 1
  %29 = load double, double* %28, align 8
  %30 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 1
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 1
  %33 = load double, double* %32, align 8
  %34 = fmul double %31, %33
  %35 = call double @llvm.fmuladd.f64(double %27, double %29, double %34)
  %36 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 2
  %37 = load double, double* %36, align 8
  %38 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 1
  %39 = load double, double* %38, align 8
  %40 = call double @llvm.fmuladd.f64(double %37, double %39, double %35)
  %41 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 3
  %42 = load double, double* %41, align 8
  %43 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 1
  %44 = load double, double* %43, align 8
  %45 = call double @llvm.fmuladd.f64(double %42, double %44, double %40)
  %46 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 1
  store double %45, double* %46, align 8
  %47 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 0
  %48 = load double, double* %47, align 8
  %49 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 2
  %50 = load double, double* %49, align 8
  %51 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 1
  %52 = load double, double* %51, align 8
  %53 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 2
  %54 = load double, double* %53, align 8
  %55 = fmul double %52, %54
  %56 = call double @llvm.fmuladd.f64(double %48, double %50, double %55)
  %57 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 2
  %58 = load double, double* %57, align 8
  %59 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 2
  %60 = load double, double* %59, align 8
  %61 = call double @llvm.fmuladd.f64(double %58, double %60, double %56)
  %62 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 3
  %63 = load double, double* %62, align 8
  %64 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 2
  %65 = load double, double* %64, align 8
  %66 = call double @llvm.fmuladd.f64(double %63, double %65, double %61)
  %67 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 2
  store double %66, double* %67, align 16
  %68 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 0
  %69 = load double, double* %68, align 8
  %70 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 3
  %71 = load double, double* %70, align 8
  %72 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 1
  %73 = load double, double* %72, align 8
  %74 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 3
  %75 = load double, double* %74, align 8
  %76 = fmul double %73, %75
  %77 = call double @llvm.fmuladd.f64(double %69, double %71, double %76)
  %78 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 2
  %79 = load double, double* %78, align 8
  %80 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 3
  %81 = load double, double* %80, align 8
  %82 = call double @llvm.fmuladd.f64(double %79, double %81, double %77)
  %83 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 0, i64 3
  %84 = load double, double* %83, align 8
  %85 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 3
  %86 = load double, double* %85, align 8
  %87 = call double @llvm.fmuladd.f64(double %84, double %86, double %82)
  %88 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 3
  store double %87, double* %88, align 8
  %89 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 0
  %90 = load double, double* %89, align 8
  %91 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 0
  %92 = load double, double* %91, align 8
  %93 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 1
  %94 = load double, double* %93, align 8
  %95 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 0
  %96 = load double, double* %95, align 8
  %97 = fmul double %94, %96
  %98 = call double @llvm.fmuladd.f64(double %90, double %92, double %97)
  %99 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 2
  %100 = load double, double* %99, align 8
  %101 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 0
  %102 = load double, double* %101, align 8
  %103 = call double @llvm.fmuladd.f64(double %100, double %102, double %98)
  %104 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 3
  %105 = load double, double* %104, align 8
  %106 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 0
  %107 = load double, double* %106, align 8
  %108 = call double @llvm.fmuladd.f64(double %105, double %107, double %103)
  %109 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 4
  store double %108, double* %109, align 16
  %110 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 0
  %111 = load double, double* %110, align 8
  %112 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 1
  %113 = load double, double* %112, align 8
  %114 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 1
  %115 = load double, double* %114, align 8
  %116 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 1
  %117 = load double, double* %116, align 8
  %118 = fmul double %115, %117
  %119 = call double @llvm.fmuladd.f64(double %111, double %113, double %118)
  %120 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 2
  %121 = load double, double* %120, align 8
  %122 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 1
  %123 = load double, double* %122, align 8
  %124 = call double @llvm.fmuladd.f64(double %121, double %123, double %119)
  %125 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 3
  %126 = load double, double* %125, align 8
  %127 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 1
  %128 = load double, double* %127, align 8
  %129 = call double @llvm.fmuladd.f64(double %126, double %128, double %124)
  %130 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 5
  store double %129, double* %130, align 8
  %131 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 0
  %132 = load double, double* %131, align 8
  %133 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 2
  %134 = load double, double* %133, align 8
  %135 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 1
  %136 = load double, double* %135, align 8
  %137 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 2
  %138 = load double, double* %137, align 8
  %139 = fmul double %136, %138
  %140 = call double @llvm.fmuladd.f64(double %132, double %134, double %139)
  %141 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 2
  %142 = load double, double* %141, align 8
  %143 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 2
  %144 = load double, double* %143, align 8
  %145 = call double @llvm.fmuladd.f64(double %142, double %144, double %140)
  %146 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 3
  %147 = load double, double* %146, align 8
  %148 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 2
  %149 = load double, double* %148, align 8
  %150 = call double @llvm.fmuladd.f64(double %147, double %149, double %145)
  %151 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 6
  store double %150, double* %151, align 16
  %152 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 0
  %153 = load double, double* %152, align 8
  %154 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 3
  %155 = load double, double* %154, align 8
  %156 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 1
  %157 = load double, double* %156, align 8
  %158 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 3
  %159 = load double, double* %158, align 8
  %160 = fmul double %157, %159
  %161 = call double @llvm.fmuladd.f64(double %153, double %155, double %160)
  %162 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 2
  %163 = load double, double* %162, align 8
  %164 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 3
  %165 = load double, double* %164, align 8
  %166 = call double @llvm.fmuladd.f64(double %163, double %165, double %161)
  %167 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 1, i64 3
  %168 = load double, double* %167, align 8
  %169 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 3
  %170 = load double, double* %169, align 8
  %171 = call double @llvm.fmuladd.f64(double %168, double %170, double %166)
  %172 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 7
  store double %171, double* %172, align 8
  %173 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 0
  %174 = load double, double* %173, align 8
  %175 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 0
  %176 = load double, double* %175, align 8
  %177 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 1
  %178 = load double, double* %177, align 8
  %179 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 0
  %180 = load double, double* %179, align 8
  %181 = fmul double %178, %180
  %182 = call double @llvm.fmuladd.f64(double %174, double %176, double %181)
  %183 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 2
  %184 = load double, double* %183, align 8
  %185 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 0
  %186 = load double, double* %185, align 8
  %187 = call double @llvm.fmuladd.f64(double %184, double %186, double %182)
  %188 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 3
  %189 = load double, double* %188, align 8
  %190 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 0
  %191 = load double, double* %190, align 8
  %192 = call double @llvm.fmuladd.f64(double %189, double %191, double %187)
  %193 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 8
  store double %192, double* %193, align 16
  %194 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 0
  %195 = load double, double* %194, align 8
  %196 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 1
  %197 = load double, double* %196, align 8
  %198 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 1
  %199 = load double, double* %198, align 8
  %200 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 1
  %201 = load double, double* %200, align 8
  %202 = fmul double %199, %201
  %203 = call double @llvm.fmuladd.f64(double %195, double %197, double %202)
  %204 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 2
  %205 = load double, double* %204, align 8
  %206 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 1
  %207 = load double, double* %206, align 8
  %208 = call double @llvm.fmuladd.f64(double %205, double %207, double %203)
  %209 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 3
  %210 = load double, double* %209, align 8
  %211 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 1
  %212 = load double, double* %211, align 8
  %213 = call double @llvm.fmuladd.f64(double %210, double %212, double %208)
  %214 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 9
  store double %213, double* %214, align 8
  %215 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 0
  %216 = load double, double* %215, align 8
  %217 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 2
  %218 = load double, double* %217, align 8
  %219 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 1
  %220 = load double, double* %219, align 8
  %221 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 2
  %222 = load double, double* %221, align 8
  %223 = fmul double %220, %222
  %224 = call double @llvm.fmuladd.f64(double %216, double %218, double %223)
  %225 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 2
  %226 = load double, double* %225, align 8
  %227 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 2
  %228 = load double, double* %227, align 8
  %229 = call double @llvm.fmuladd.f64(double %226, double %228, double %224)
  %230 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 3
  %231 = load double, double* %230, align 8
  %232 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 2
  %233 = load double, double* %232, align 8
  %234 = call double @llvm.fmuladd.f64(double %231, double %233, double %229)
  %235 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 10
  store double %234, double* %235, align 16
  %236 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 0
  %237 = load double, double* %236, align 8
  %238 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 3
  %239 = load double, double* %238, align 8
  %240 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 1
  %241 = load double, double* %240, align 8
  %242 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 3
  %243 = load double, double* %242, align 8
  %244 = fmul double %241, %243
  %245 = call double @llvm.fmuladd.f64(double %237, double %239, double %244)
  %246 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 2
  %247 = load double, double* %246, align 8
  %248 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 3
  %249 = load double, double* %248, align 8
  %250 = call double @llvm.fmuladd.f64(double %247, double %249, double %245)
  %251 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 2, i64 3
  %252 = load double, double* %251, align 8
  %253 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 3
  %254 = load double, double* %253, align 8
  %255 = call double @llvm.fmuladd.f64(double %252, double %254, double %250)
  %256 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 11
  store double %255, double* %256, align 8
  %257 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 0
  %258 = load double, double* %257, align 8
  %259 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 0
  %260 = load double, double* %259, align 8
  %261 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 1
  %262 = load double, double* %261, align 8
  %263 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 0
  %264 = load double, double* %263, align 8
  %265 = fmul double %262, %264
  %266 = call double @llvm.fmuladd.f64(double %258, double %260, double %265)
  %267 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 2
  %268 = load double, double* %267, align 8
  %269 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 0
  %270 = load double, double* %269, align 8
  %271 = call double @llvm.fmuladd.f64(double %268, double %270, double %266)
  %272 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 3
  %273 = load double, double* %272, align 8
  %274 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 0
  %275 = load double, double* %274, align 8
  %276 = call double @llvm.fmuladd.f64(double %273, double %275, double %271)
  %277 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 12
  store double %276, double* %277, align 16
  %278 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 0
  %279 = load double, double* %278, align 8
  %280 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 1
  %281 = load double, double* %280, align 8
  %282 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 1
  %283 = load double, double* %282, align 8
  %284 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 1
  %285 = load double, double* %284, align 8
  %286 = fmul double %283, %285
  %287 = call double @llvm.fmuladd.f64(double %279, double %281, double %286)
  %288 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 2
  %289 = load double, double* %288, align 8
  %290 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 1
  %291 = load double, double* %290, align 8
  %292 = call double @llvm.fmuladd.f64(double %289, double %291, double %287)
  %293 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 3
  %294 = load double, double* %293, align 8
  %295 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 1
  %296 = load double, double* %295, align 8
  %297 = call double @llvm.fmuladd.f64(double %294, double %296, double %292)
  %298 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 13
  store double %297, double* %298, align 8
  %299 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 0
  %300 = load double, double* %299, align 8
  %301 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 2
  %302 = load double, double* %301, align 8
  %303 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 1
  %304 = load double, double* %303, align 8
  %305 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 2
  %306 = load double, double* %305, align 8
  %307 = fmul double %304, %306
  %308 = call double @llvm.fmuladd.f64(double %300, double %302, double %307)
  %309 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 2
  %310 = load double, double* %309, align 8
  %311 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 2
  %312 = load double, double* %311, align 8
  %313 = call double @llvm.fmuladd.f64(double %310, double %312, double %308)
  %314 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 3
  %315 = load double, double* %314, align 8
  %316 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 2
  %317 = load double, double* %316, align 8
  %318 = call double @llvm.fmuladd.f64(double %315, double %317, double %313)
  %319 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 14
  store double %318, double* %319, align 16
  %320 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 0
  %321 = load double, double* %320, align 8
  %322 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 0, i64 3
  %323 = load double, double* %322, align 8
  %324 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 1
  %325 = load double, double* %324, align 8
  %326 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 1, i64 3
  %327 = load double, double* %326, align 8
  %328 = fmul double %325, %327
  %329 = call double @llvm.fmuladd.f64(double %321, double %323, double %328)
  %330 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 2
  %331 = load double, double* %330, align 8
  %332 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 2, i64 3
  %333 = load double, double* %332, align 8
  %334 = call double @llvm.fmuladd.f64(double %331, double %333, double %329)
  %335 = getelementptr inbounds [4 x double], [4 x double]* %1, i64 3, i64 3
  %336 = load double, double* %335, align 8
  %337 = getelementptr inbounds [4 x double], [4 x double]* %2, i64 3, i64 3
  %338 = load double, double* %337, align 8
  %339 = call double @llvm.fmuladd.f64(double %336, double %338, double %334)
  %340 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 15
  store double %339, double* %340, align 8
  br label %341

341:                                              ; preds = %349, %3
  %.0 = phi i32 [ 0, %3 ], [ %350, %349 ]
  %342 = icmp ult i32 %.0, 16
  br i1 %342, label %343, label %351

343:                                              ; preds = %341
  %344 = zext i32 %.0 to i64
  %345 = getelementptr inbounds [16 x double], [16 x double]* %4, i64 0, i64 %344
  %346 = load double, double* %345, align 8
  %347 = zext i32 %.0 to i64
  %348 = getelementptr inbounds double, double* %0, i64 %347
  store double %346, double* %348, align 8
  br label %349

349:                                              ; preds = %343
  %350 = add i32 %.0, 1
  br label %341, !llvm.loop !4

351:                                              ; preds = %341
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca [4 x [4 x double]], align 16
  %2 = alloca [4 x [4 x double]], align 16
  %3 = alloca [4 x [4 x double]], align 16
  %4 = bitcast [4 x [4 x double]]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) %4, i8* noundef nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @__const.main.A to i8*), i64 128, i1 false)
  %5 = bitcast [4 x [4 x double]]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(128) %5, i8* noundef nonnull align 16 dereferenceable(128) bitcast ([4 x [4 x double]]* @__const.main.B to i8*), i64 128, i1 false)
  br label %6

6:                                                ; preds = %11, %0
  %.01 = phi i32 [ 0, %0 ], [ %12, %11 ]
  %.not = icmp eq i32 %.01, 50000000
  br i1 %.not, label %13, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %3, i64 0, i64 0, i64 0
  %9 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %1, i64 0, i64 0
  %10 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %2, i64 0, i64 0
  call void @wrap_mul4(double* noundef nonnull %8, [4 x double]* noundef nonnull %9, [4 x double]* noundef nonnull %10)
  br label %11

11:                                               ; preds = %7
  %12 = add i32 %.01, 1
  br label %6, !llvm.loop !6

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %26, %13
  %.1 = phi i32 [ 0, %13 ], [ %27, %26 ]
  %.not2 = icmp eq i32 %.1, 4
  br i1 %.not2, label %28, label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %23, %15
  %.0 = phi i32 [ 0, %15 ], [ %24, %23 ]
  %.not3 = icmp eq i32 %.0, 4
  br i1 %.not3, label %25, label %17

17:                                               ; preds = %16
  %18 = zext i32 %.1 to i64
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %3, i64 0, i64 %18, i64 %19
  %21 = load double, double* %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double noundef %21) #6
  br label %23

23:                                               ; preds = %17
  %24 = add i32 %.0, 1
  br label %16, !llvm.loop !7

25:                                               ; preds = %16
  %putchar = call i32 @putchar(i32 10)
  br label %26

26:                                               ; preds = %25
  %27 = add i32 %.1, 1
  br label %14, !llvm.loop !8

28:                                               ; preds = %14
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

declare dso_local i32 @puts(i8* noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !5}
