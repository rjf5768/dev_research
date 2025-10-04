; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/power/compute.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/power/compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.root = type { %struct.demand, double, double, %struct.demand, double, double, [11 x %struct.lateral*] }
%struct.demand = type { double, double }
%struct.lateral = type { %struct.demand, double, double, double, double, %struct.lateral*, %struct.branch* }
%struct.branch = type { %struct.demand, double, double, double, double, %struct.branch*, [12 x %struct.leaf*] }
%struct.leaf = type { %struct.demand, double, double }

@P = internal global double 1.000000e+00, align 8
@Q = internal global double 1.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @Compute_Tree(%struct.root* noundef %0) #0 {
  %2 = alloca %struct.root*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lateral*, align 8
  %5 = alloca %struct.demand, align 8
  %6 = alloca %struct.demand, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.demand, align 8
  store %struct.root* %0, %struct.root** %2, align 8
  %10 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 0
  store double 0.000000e+00, double* %10, align 8
  %11 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 1
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %51, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 11
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = load %struct.root*, %struct.root** %2, align 8
  %17 = getelementptr inbounds %struct.root, %struct.root* %16, i32 0, i32 6
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [11 x %struct.lateral*], [11 x %struct.lateral*]* %17, i64 0, i64 %19
  %21 = load %struct.lateral*, %struct.lateral** %20, align 8
  store %struct.lateral* %21, %struct.lateral** %4, align 8
  %22 = load %struct.root*, %struct.root** %2, align 8
  %23 = getelementptr inbounds %struct.root, %struct.root* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  store double %24, double* %7, align 8
  %25 = load %struct.root*, %struct.root** %2, align 8
  %26 = getelementptr inbounds %struct.root, %struct.root* %25, i32 0, i32 2
  %27 = load double, double* %26, align 8
  store double %27, double* %8, align 8
  %28 = load %struct.lateral*, %struct.lateral** %4, align 8
  %29 = load double, double* %7, align 8
  %30 = load double, double* %8, align 8
  %31 = load double, double* %7, align 8
  %32 = load double, double* %8, align 8
  %33 = call { double, double } @Compute_Lateral(%struct.lateral* noundef %28, double noundef %29, double noundef %30, double noundef %31, double noundef %32)
  %34 = bitcast %struct.demand* %9 to { double, double }*
  %35 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 0
  %36 = extractvalue { double, double } %33, 0
  store double %36, double* %35, align 8
  %37 = getelementptr inbounds { double, double }, { double, double }* %34, i32 0, i32 1
  %38 = extractvalue { double, double } %33, 1
  store double %38, double* %37, align 8
  %39 = bitcast %struct.demand* %5 to i8*
  %40 = bitcast %struct.demand* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = getelementptr inbounds %struct.demand, %struct.demand* %5, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = fadd double %44, %42
  store double %45, double* %43, align 8
  %46 = getelementptr inbounds %struct.demand, %struct.demand* %5, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = fadd double %49, %47
  store double %50, double* %48, align 8
  br label %51

51:                                               ; preds = %15
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %12, !llvm.loop !4

54:                                               ; preds = %12
  %55 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = load %struct.root*, %struct.root** %2, align 8
  %58 = getelementptr inbounds %struct.root, %struct.root* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.demand, %struct.demand* %58, i32 0, i32 0
  store double %56, double* %59, align 8
  %60 = getelementptr inbounds %struct.demand, %struct.demand* %6, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = load %struct.root*, %struct.root** %2, align 8
  %63 = getelementptr inbounds %struct.root, %struct.root* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.demand, %struct.demand* %63, i32 0, i32 1
  store double %61, double* %64, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @Compute_Lateral(%struct.lateral* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #0 {
  %6 = alloca %struct.demand, align 8
  %7 = alloca %struct.lateral*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.demand, align 8
  %13 = alloca %struct.demand, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.lateral*, align 8
  %21 = alloca %struct.branch*, align 8
  %22 = alloca %struct.demand, align 8
  %23 = alloca %struct.demand, align 8
  store %struct.lateral* %0, %struct.lateral** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  %24 = load double, double* %10, align 8
  %25 = load %struct.lateral*, %struct.lateral** %7, align 8
  %26 = getelementptr inbounds %struct.lateral, %struct.lateral* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = load double, double* %8, align 8
  %29 = load double, double* %9, align 8
  %30 = load %struct.lateral*, %struct.lateral** %7, align 8
  %31 = getelementptr inbounds %struct.lateral, %struct.lateral* %30, i32 0, i32 4
  %32 = load double, double* %31, align 8
  %33 = fmul double %29, %32
  %34 = load %struct.lateral*, %struct.lateral** %7, align 8
  %35 = getelementptr inbounds %struct.lateral, %struct.lateral* %34, i32 0, i32 3
  %36 = load double, double* %35, align 8
  %37 = fdiv double %33, %36
  %38 = fadd double %28, %37
  %39 = call double @llvm.fmuladd.f64(double %27, double %38, double %24)
  store double %39, double* %14, align 8
  %40 = load double, double* %11, align 8
  %41 = load %struct.lateral*, %struct.lateral** %7, align 8
  %42 = getelementptr inbounds %struct.lateral, %struct.lateral* %41, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = load double, double* %9, align 8
  %45 = load double, double* %8, align 8
  %46 = load %struct.lateral*, %struct.lateral** %7, align 8
  %47 = getelementptr inbounds %struct.lateral, %struct.lateral* %46, i32 0, i32 3
  %48 = load double, double* %47, align 8
  %49 = fmul double %45, %48
  %50 = load %struct.lateral*, %struct.lateral** %7, align 8
  %51 = getelementptr inbounds %struct.lateral, %struct.lateral* %50, i32 0, i32 4
  %52 = load double, double* %51, align 8
  %53 = fdiv double %49, %52
  %54 = fadd double %44, %53
  %55 = call double @llvm.fmuladd.f64(double %43, double %54, double %40)
  store double %55, double* %15, align 8
  %56 = load %struct.lateral*, %struct.lateral** %7, align 8
  %57 = getelementptr inbounds %struct.lateral, %struct.lateral* %56, i32 0, i32 5
  %58 = load %struct.lateral*, %struct.lateral** %57, align 8
  store %struct.lateral* %58, %struct.lateral** %20, align 8
  %59 = load %struct.lateral*, %struct.lateral** %20, align 8
  %60 = icmp ne %struct.lateral* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %5
  %62 = load %struct.lateral*, %struct.lateral** %20, align 8
  %63 = load double, double* %8, align 8
  %64 = load double, double* %9, align 8
  %65 = load double, double* %14, align 8
  %66 = load double, double* %15, align 8
  %67 = call { double, double } @Compute_Lateral(%struct.lateral* noundef %62, double noundef %63, double noundef %64, double noundef %65, double noundef %66)
  %68 = bitcast %struct.demand* %22 to { double, double }*
  %69 = getelementptr inbounds { double, double }, { double, double }* %68, i32 0, i32 0
  %70 = extractvalue { double, double } %67, 0
  store double %70, double* %69, align 8
  %71 = getelementptr inbounds { double, double }, { double, double }* %68, i32 0, i32 1
  %72 = extractvalue { double, double } %67, 1
  store double %72, double* %71, align 8
  %73 = bitcast %struct.demand* %12 to i8*
  %74 = bitcast %struct.demand* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  br label %75

75:                                               ; preds = %61, %5
  %76 = load %struct.lateral*, %struct.lateral** %7, align 8
  %77 = getelementptr inbounds %struct.lateral, %struct.lateral* %76, i32 0, i32 6
  %78 = load %struct.branch*, %struct.branch** %77, align 8
  store %struct.branch* %78, %struct.branch** %21, align 8
  %79 = load %struct.branch*, %struct.branch** %21, align 8
  %80 = load double, double* %8, align 8
  %81 = load double, double* %9, align 8
  %82 = load double, double* %14, align 8
  %83 = load double, double* %15, align 8
  %84 = call { double, double } @Compute_Branch(%struct.branch* noundef %79, double noundef %80, double noundef %81, double noundef %82, double noundef %83)
  %85 = bitcast %struct.demand* %23 to { double, double }*
  %86 = getelementptr inbounds { double, double }, { double, double }* %85, i32 0, i32 0
  %87 = extractvalue { double, double } %84, 0
  store double %87, double* %86, align 8
  %88 = getelementptr inbounds { double, double }, { double, double }* %85, i32 0, i32 1
  %89 = extractvalue { double, double } %84, 1
  store double %89, double* %88, align 8
  %90 = bitcast %struct.demand* %13 to i8*
  %91 = bitcast %struct.demand* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = load %struct.lateral*, %struct.lateral** %20, align 8
  %93 = icmp ne %struct.lateral* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %75
  %95 = getelementptr inbounds %struct.demand, %struct.demand* %12, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = fadd double %96, %98
  %100 = load %struct.lateral*, %struct.lateral** %7, align 8
  %101 = getelementptr inbounds %struct.lateral, %struct.lateral* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.demand, %struct.demand* %101, i32 0, i32 0
  store double %99, double* %102, align 8
  %103 = getelementptr inbounds %struct.demand, %struct.demand* %12, i32 0, i32 1
  %104 = load double, double* %103, align 8
  %105 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %106 = load double, double* %105, align 8
  %107 = fadd double %104, %106
  %108 = load %struct.lateral*, %struct.lateral** %7, align 8
  %109 = getelementptr inbounds %struct.lateral, %struct.lateral* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.demand, %struct.demand* %109, i32 0, i32 1
  store double %107, double* %110, align 8
  br label %122

111:                                              ; preds = %75
  %112 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  %113 = load double, double* %112, align 8
  %114 = load %struct.lateral*, %struct.lateral** %7, align 8
  %115 = getelementptr inbounds %struct.lateral, %struct.lateral* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.demand, %struct.demand* %115, i32 0, i32 0
  store double %113, double* %116, align 8
  %117 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %118 = load double, double* %117, align 8
  %119 = load %struct.lateral*, %struct.lateral** %7, align 8
  %120 = getelementptr inbounds %struct.lateral, %struct.lateral* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.demand, %struct.demand* %120, i32 0, i32 1
  store double %118, double* %121, align 8
  br label %122

122:                                              ; preds = %111, %94
  %123 = load %struct.lateral*, %struct.lateral** %7, align 8
  %124 = getelementptr inbounds %struct.lateral, %struct.lateral* %123, i32 0, i32 3
  %125 = load double, double* %124, align 8
  %126 = load %struct.lateral*, %struct.lateral** %7, align 8
  %127 = getelementptr inbounds %struct.lateral, %struct.lateral* %126, i32 0, i32 3
  %128 = load double, double* %127, align 8
  %129 = load %struct.lateral*, %struct.lateral** %7, align 8
  %130 = getelementptr inbounds %struct.lateral, %struct.lateral* %129, i32 0, i32 4
  %131 = load double, double* %130, align 8
  %132 = load %struct.lateral*, %struct.lateral** %7, align 8
  %133 = getelementptr inbounds %struct.lateral, %struct.lateral* %132, i32 0, i32 4
  %134 = load double, double* %133, align 8
  %135 = fmul double %131, %134
  %136 = call double @llvm.fmuladd.f64(double %125, double %128, double %135)
  store double %136, double* %16, align 8
  %137 = load %struct.lateral*, %struct.lateral** %7, align 8
  %138 = getelementptr inbounds %struct.lateral, %struct.lateral* %137, i32 0, i32 3
  %139 = load double, double* %138, align 8
  %140 = fmul double 2.000000e+00, %139
  %141 = load %struct.lateral*, %struct.lateral** %7, align 8
  %142 = getelementptr inbounds %struct.lateral, %struct.lateral* %141, i32 0, i32 4
  %143 = load double, double* %142, align 8
  %144 = fmul double %140, %143
  %145 = load %struct.lateral*, %struct.lateral** %7, align 8
  %146 = getelementptr inbounds %struct.lateral, %struct.lateral* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.demand, %struct.demand* %146, i32 0, i32 1
  %148 = load double, double* %147, align 8
  %149 = load %struct.lateral*, %struct.lateral** %7, align 8
  %150 = getelementptr inbounds %struct.lateral, %struct.lateral* %149, i32 0, i32 4
  %151 = load double, double* %150, align 8
  %152 = fmul double 2.000000e+00, %151
  %153 = load %struct.lateral*, %struct.lateral** %7, align 8
  %154 = getelementptr inbounds %struct.lateral, %struct.lateral* %153, i32 0, i32 4
  %155 = load double, double* %154, align 8
  %156 = fmul double %152, %155
  %157 = load %struct.lateral*, %struct.lateral** %7, align 8
  %158 = getelementptr inbounds %struct.lateral, %struct.lateral* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.demand, %struct.demand* %158, i32 0, i32 0
  %160 = load double, double* %159, align 8
  %161 = fmul double %156, %160
  %162 = fneg double %161
  %163 = call double @llvm.fmuladd.f64(double %144, double %148, double %162)
  %164 = load %struct.lateral*, %struct.lateral** %7, align 8
  %165 = getelementptr inbounds %struct.lateral, %struct.lateral* %164, i32 0, i32 3
  %166 = load double, double* %165, align 8
  %167 = fsub double %163, %166
  store double %167, double* %17, align 8
  %168 = load %struct.lateral*, %struct.lateral** %7, align 8
  %169 = getelementptr inbounds %struct.lateral, %struct.lateral* %168, i32 0, i32 3
  %170 = load double, double* %169, align 8
  %171 = load %struct.lateral*, %struct.lateral** %7, align 8
  %172 = getelementptr inbounds %struct.lateral, %struct.lateral* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.demand, %struct.demand* %172, i32 0, i32 1
  %174 = load double, double* %173, align 8
  %175 = load %struct.lateral*, %struct.lateral** %7, align 8
  %176 = getelementptr inbounds %struct.lateral, %struct.lateral* %175, i32 0, i32 4
  %177 = load double, double* %176, align 8
  %178 = load %struct.lateral*, %struct.lateral** %7, align 8
  %179 = getelementptr inbounds %struct.lateral, %struct.lateral* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.demand, %struct.demand* %179, i32 0, i32 0
  %181 = load double, double* %180, align 8
  %182 = fmul double %177, %181
  %183 = fneg double %182
  %184 = call double @llvm.fmuladd.f64(double %170, double %174, double %183)
  store double %184, double* %18, align 8
  %185 = load double, double* %18, align 8
  %186 = load double, double* %18, align 8
  %187 = load %struct.lateral*, %struct.lateral** %7, align 8
  %188 = getelementptr inbounds %struct.lateral, %struct.lateral* %187, i32 0, i32 3
  %189 = load double, double* %188, align 8
  %190 = load %struct.lateral*, %struct.lateral** %7, align 8
  %191 = getelementptr inbounds %struct.lateral, %struct.lateral* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.demand, %struct.demand* %191, i32 0, i32 0
  %193 = load double, double* %192, align 8
  %194 = fmul double %189, %193
  %195 = call double @llvm.fmuladd.f64(double %185, double %186, double %194)
  store double %195, double* %18, align 8
  %196 = load double, double* %17, align 8
  %197 = fneg double %196
  %198 = load double, double* %17, align 8
  %199 = load double, double* %17, align 8
  %200 = load double, double* %16, align 8
  %201 = fmul double 4.000000e+00, %200
  %202 = load double, double* %18, align 8
  %203 = fmul double %201, %202
  %204 = fneg double %203
  %205 = call double @llvm.fmuladd.f64(double %198, double %199, double %204)
  %206 = call double @sqrt(double noundef %205) #4
  %207 = fsub double %197, %206
  %208 = load double, double* %16, align 8
  %209 = fmul double 2.000000e+00, %208
  %210 = fdiv double %207, %209
  store double %210, double* %19, align 8
  %211 = load %struct.lateral*, %struct.lateral** %7, align 8
  %212 = getelementptr inbounds %struct.lateral, %struct.lateral* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.demand, %struct.demand* %212, i32 0, i32 1
  %214 = load double, double* %213, align 8
  %215 = load double, double* %19, align 8
  %216 = load %struct.lateral*, %struct.lateral** %7, align 8
  %217 = getelementptr inbounds %struct.lateral, %struct.lateral* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.demand, %struct.demand* %217, i32 0, i32 0
  %219 = load double, double* %218, align 8
  %220 = fsub double %215, %219
  %221 = load %struct.lateral*, %struct.lateral** %7, align 8
  %222 = getelementptr inbounds %struct.lateral, %struct.lateral* %221, i32 0, i32 4
  %223 = load double, double* %222, align 8
  %224 = fmul double %220, %223
  %225 = load %struct.lateral*, %struct.lateral** %7, align 8
  %226 = getelementptr inbounds %struct.lateral, %struct.lateral* %225, i32 0, i32 3
  %227 = load double, double* %226, align 8
  %228 = fdiv double %224, %227
  %229 = fadd double %214, %228
  %230 = load %struct.lateral*, %struct.lateral** %7, align 8
  %231 = getelementptr inbounds %struct.lateral, %struct.lateral* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.demand, %struct.demand* %231, i32 0, i32 1
  store double %229, double* %232, align 8
  %233 = load double, double* %19, align 8
  %234 = load %struct.lateral*, %struct.lateral** %7, align 8
  %235 = getelementptr inbounds %struct.lateral, %struct.lateral* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.demand, %struct.demand* %235, i32 0, i32 0
  store double %233, double* %236, align 8
  %237 = load %struct.lateral*, %struct.lateral** %7, align 8
  %238 = getelementptr inbounds %struct.lateral, %struct.lateral* %237, i32 0, i32 3
  %239 = load double, double* %238, align 8
  %240 = fmul double 2.000000e+00, %239
  %241 = load %struct.lateral*, %struct.lateral** %7, align 8
  %242 = getelementptr inbounds %struct.lateral, %struct.lateral* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.demand, %struct.demand* %242, i32 0, i32 0
  %244 = load double, double* %243, align 8
  %245 = fmul double %240, %244
  store double %245, double* %16, align 8
  %246 = load %struct.lateral*, %struct.lateral** %7, align 8
  %247 = getelementptr inbounds %struct.lateral, %struct.lateral* %246, i32 0, i32 4
  %248 = load double, double* %247, align 8
  %249 = fmul double 2.000000e+00, %248
  %250 = load %struct.lateral*, %struct.lateral** %7, align 8
  %251 = getelementptr inbounds %struct.lateral, %struct.lateral* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.demand, %struct.demand* %251, i32 0, i32 1
  %253 = load double, double* %252, align 8
  %254 = fmul double %249, %253
  store double %254, double* %17, align 8
  %255 = load double, double* %16, align 8
  %256 = load double, double* %16, align 8
  %257 = fsub double 1.000000e+00, %256
  %258 = load double, double* %17, align 8
  %259 = fsub double %257, %258
  %260 = fdiv double %255, %259
  %261 = load %struct.lateral*, %struct.lateral** %7, align 8
  %262 = getelementptr inbounds %struct.lateral, %struct.lateral* %261, i32 0, i32 1
  store double %260, double* %262, align 8
  %263 = load double, double* %17, align 8
  %264 = load double, double* %16, align 8
  %265 = fsub double 1.000000e+00, %264
  %266 = load double, double* %17, align 8
  %267 = fsub double %265, %266
  %268 = fdiv double %263, %267
  %269 = load %struct.lateral*, %struct.lateral** %7, align 8
  %270 = getelementptr inbounds %struct.lateral, %struct.lateral* %269, i32 0, i32 2
  store double %268, double* %270, align 8
  %271 = load %struct.lateral*, %struct.lateral** %7, align 8
  %272 = getelementptr inbounds %struct.lateral, %struct.lateral* %271, i32 0, i32 0
  %273 = bitcast %struct.demand* %6 to i8*
  %274 = bitcast %struct.demand* %272 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %273, i8* align 8 %274, i64 16, i1 false)
  %275 = bitcast %struct.demand* %6 to { double, double }*
  %276 = load { double, double }, { double, double }* %275, align 8
  ret { double, double } %276
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @Compute_Branch(%struct.branch* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #0 {
  %6 = alloca %struct.demand, align 8
  %7 = alloca %struct.branch*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %struct.demand, align 8
  %13 = alloca %struct.demand, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca %struct.leaf*, align 8
  %21 = alloca %struct.branch*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.demand, align 8
  %24 = alloca %struct.demand, align 8
  %25 = alloca %struct.demand, align 8
  store %struct.branch* %0, %struct.branch** %7, align 8
  store double %1, double* %8, align 8
  store double %2, double* %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  %26 = load double, double* %10, align 8
  %27 = load %struct.branch*, %struct.branch** %7, align 8
  %28 = getelementptr inbounds %struct.branch, %struct.branch* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = load double, double* %8, align 8
  %31 = load double, double* %9, align 8
  %32 = load %struct.branch*, %struct.branch** %7, align 8
  %33 = getelementptr inbounds %struct.branch, %struct.branch* %32, i32 0, i32 4
  %34 = load double, double* %33, align 8
  %35 = fmul double %31, %34
  %36 = load %struct.branch*, %struct.branch** %7, align 8
  %37 = getelementptr inbounds %struct.branch, %struct.branch* %36, i32 0, i32 3
  %38 = load double, double* %37, align 8
  %39 = fdiv double %35, %38
  %40 = fadd double %30, %39
  %41 = call double @llvm.fmuladd.f64(double %29, double %40, double %26)
  store double %41, double* %14, align 8
  %42 = load double, double* %11, align 8
  %43 = load %struct.branch*, %struct.branch** %7, align 8
  %44 = getelementptr inbounds %struct.branch, %struct.branch* %43, i32 0, i32 2
  %45 = load double, double* %44, align 8
  %46 = load double, double* %9, align 8
  %47 = load double, double* %8, align 8
  %48 = load %struct.branch*, %struct.branch** %7, align 8
  %49 = getelementptr inbounds %struct.branch, %struct.branch* %48, i32 0, i32 3
  %50 = load double, double* %49, align 8
  %51 = fmul double %47, %50
  %52 = load %struct.branch*, %struct.branch** %7, align 8
  %53 = getelementptr inbounds %struct.branch, %struct.branch* %52, i32 0, i32 4
  %54 = load double, double* %53, align 8
  %55 = fdiv double %51, %54
  %56 = fadd double %46, %55
  %57 = call double @llvm.fmuladd.f64(double %45, double %56, double %42)
  store double %57, double* %15, align 8
  %58 = load %struct.branch*, %struct.branch** %7, align 8
  %59 = getelementptr inbounds %struct.branch, %struct.branch* %58, i32 0, i32 5
  %60 = load %struct.branch*, %struct.branch** %59, align 8
  store %struct.branch* %60, %struct.branch** %21, align 8
  %61 = load %struct.branch*, %struct.branch** %21, align 8
  %62 = icmp ne %struct.branch* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %5
  %64 = load %struct.branch*, %struct.branch** %21, align 8
  %65 = load double, double* %8, align 8
  %66 = load double, double* %9, align 8
  %67 = load double, double* %14, align 8
  %68 = load double, double* %15, align 8
  %69 = call { double, double } @Compute_Branch(%struct.branch* noundef %64, double noundef %65, double noundef %66, double noundef %67, double noundef %68)
  %70 = bitcast %struct.demand* %24 to { double, double }*
  %71 = getelementptr inbounds { double, double }, { double, double }* %70, i32 0, i32 0
  %72 = extractvalue { double, double } %69, 0
  store double %72, double* %71, align 8
  %73 = getelementptr inbounds { double, double }, { double, double }* %70, i32 0, i32 1
  %74 = extractvalue { double, double } %69, 1
  store double %74, double* %73, align 8
  %75 = bitcast %struct.demand* %23 to i8*
  %76 = bitcast %struct.demand* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 16, i1 false)
  br label %77

77:                                               ; preds = %63, %5
  %78 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  store double 0.000000e+00, double* %78, align 8
  %79 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  store double 0.000000e+00, double* %79, align 8
  store i32 0, i32* %22, align 4
  br label %80

80:                                               ; preds = %111, %77
  %81 = load i32, i32* %22, align 4
  %82 = icmp slt i32 %81, 12
  br i1 %82, label %83, label %114

83:                                               ; preds = %80
  %84 = load %struct.branch*, %struct.branch** %7, align 8
  %85 = getelementptr inbounds %struct.branch, %struct.branch* %84, i32 0, i32 6
  %86 = load i32, i32* %22, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [12 x %struct.leaf*], [12 x %struct.leaf*]* %85, i64 0, i64 %87
  %89 = load %struct.leaf*, %struct.leaf** %88, align 8
  store %struct.leaf* %89, %struct.leaf** %20, align 8
  %90 = load %struct.leaf*, %struct.leaf** %20, align 8
  %91 = load double, double* %14, align 8
  %92 = load double, double* %15, align 8
  %93 = call { double, double } @Compute_Leaf(%struct.leaf* noundef %90, double noundef %91, double noundef %92)
  %94 = bitcast %struct.demand* %25 to { double, double }*
  %95 = getelementptr inbounds { double, double }, { double, double }* %94, i32 0, i32 0
  %96 = extractvalue { double, double } %93, 0
  store double %96, double* %95, align 8
  %97 = getelementptr inbounds { double, double }, { double, double }* %94, i32 0, i32 1
  %98 = extractvalue { double, double } %93, 1
  store double %98, double* %97, align 8
  %99 = bitcast %struct.demand* %12 to i8*
  %100 = bitcast %struct.demand* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 16, i1 false)
  %101 = getelementptr inbounds %struct.demand, %struct.demand* %12, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = fadd double %104, %102
  store double %105, double* %103, align 8
  %106 = getelementptr inbounds %struct.demand, %struct.demand* %12, i32 0, i32 1
  %107 = load double, double* %106, align 8
  %108 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = fadd double %109, %107
  store double %110, double* %108, align 8
  br label %111

111:                                              ; preds = %83
  %112 = load i32, i32* %22, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %22, align 4
  br label %80, !llvm.loop !6

114:                                              ; preds = %80
  %115 = load %struct.branch*, %struct.branch** %21, align 8
  %116 = icmp ne %struct.branch* %115, null
  br i1 %116, label %117, label %134

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.demand, %struct.demand* %23, i32 0, i32 0
  %119 = load double, double* %118, align 8
  %120 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  %121 = load double, double* %120, align 8
  %122 = fadd double %119, %121
  %123 = load %struct.branch*, %struct.branch** %7, align 8
  %124 = getelementptr inbounds %struct.branch, %struct.branch* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.demand, %struct.demand* %124, i32 0, i32 0
  store double %122, double* %125, align 8
  %126 = getelementptr inbounds %struct.demand, %struct.demand* %23, i32 0, i32 1
  %127 = load double, double* %126, align 8
  %128 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %129 = load double, double* %128, align 8
  %130 = fadd double %127, %129
  %131 = load %struct.branch*, %struct.branch** %7, align 8
  %132 = getelementptr inbounds %struct.branch, %struct.branch* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.demand, %struct.demand* %132, i32 0, i32 1
  store double %130, double* %133, align 8
  br label %145

134:                                              ; preds = %114
  %135 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 0
  %136 = load double, double* %135, align 8
  %137 = load %struct.branch*, %struct.branch** %7, align 8
  %138 = getelementptr inbounds %struct.branch, %struct.branch* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.demand, %struct.demand* %138, i32 0, i32 0
  store double %136, double* %139, align 8
  %140 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %141 = load double, double* %140, align 8
  %142 = load %struct.branch*, %struct.branch** %7, align 8
  %143 = getelementptr inbounds %struct.branch, %struct.branch* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.demand, %struct.demand* %143, i32 0, i32 1
  store double %141, double* %144, align 8
  br label %145

145:                                              ; preds = %134, %117
  %146 = load %struct.branch*, %struct.branch** %7, align 8
  %147 = getelementptr inbounds %struct.branch, %struct.branch* %146, i32 0, i32 3
  %148 = load double, double* %147, align 8
  %149 = load %struct.branch*, %struct.branch** %7, align 8
  %150 = getelementptr inbounds %struct.branch, %struct.branch* %149, i32 0, i32 3
  %151 = load double, double* %150, align 8
  %152 = load %struct.branch*, %struct.branch** %7, align 8
  %153 = getelementptr inbounds %struct.branch, %struct.branch* %152, i32 0, i32 4
  %154 = load double, double* %153, align 8
  %155 = load %struct.branch*, %struct.branch** %7, align 8
  %156 = getelementptr inbounds %struct.branch, %struct.branch* %155, i32 0, i32 4
  %157 = load double, double* %156, align 8
  %158 = fmul double %154, %157
  %159 = call double @llvm.fmuladd.f64(double %148, double %151, double %158)
  store double %159, double* %16, align 8
  %160 = load %struct.branch*, %struct.branch** %7, align 8
  %161 = getelementptr inbounds %struct.branch, %struct.branch* %160, i32 0, i32 3
  %162 = load double, double* %161, align 8
  %163 = fmul double 2.000000e+00, %162
  %164 = load %struct.branch*, %struct.branch** %7, align 8
  %165 = getelementptr inbounds %struct.branch, %struct.branch* %164, i32 0, i32 4
  %166 = load double, double* %165, align 8
  %167 = fmul double %163, %166
  %168 = load %struct.branch*, %struct.branch** %7, align 8
  %169 = getelementptr inbounds %struct.branch, %struct.branch* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.demand, %struct.demand* %169, i32 0, i32 1
  %171 = load double, double* %170, align 8
  %172 = load %struct.branch*, %struct.branch** %7, align 8
  %173 = getelementptr inbounds %struct.branch, %struct.branch* %172, i32 0, i32 4
  %174 = load double, double* %173, align 8
  %175 = fmul double 2.000000e+00, %174
  %176 = load %struct.branch*, %struct.branch** %7, align 8
  %177 = getelementptr inbounds %struct.branch, %struct.branch* %176, i32 0, i32 4
  %178 = load double, double* %177, align 8
  %179 = fmul double %175, %178
  %180 = load %struct.branch*, %struct.branch** %7, align 8
  %181 = getelementptr inbounds %struct.branch, %struct.branch* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.demand, %struct.demand* %181, i32 0, i32 0
  %183 = load double, double* %182, align 8
  %184 = fmul double %179, %183
  %185 = fneg double %184
  %186 = call double @llvm.fmuladd.f64(double %167, double %171, double %185)
  %187 = load %struct.branch*, %struct.branch** %7, align 8
  %188 = getelementptr inbounds %struct.branch, %struct.branch* %187, i32 0, i32 3
  %189 = load double, double* %188, align 8
  %190 = fsub double %186, %189
  store double %190, double* %17, align 8
  %191 = load %struct.branch*, %struct.branch** %7, align 8
  %192 = getelementptr inbounds %struct.branch, %struct.branch* %191, i32 0, i32 3
  %193 = load double, double* %192, align 8
  %194 = load %struct.branch*, %struct.branch** %7, align 8
  %195 = getelementptr inbounds %struct.branch, %struct.branch* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.demand, %struct.demand* %195, i32 0, i32 1
  %197 = load double, double* %196, align 8
  %198 = load %struct.branch*, %struct.branch** %7, align 8
  %199 = getelementptr inbounds %struct.branch, %struct.branch* %198, i32 0, i32 4
  %200 = load double, double* %199, align 8
  %201 = load %struct.branch*, %struct.branch** %7, align 8
  %202 = getelementptr inbounds %struct.branch, %struct.branch* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.demand, %struct.demand* %202, i32 0, i32 0
  %204 = load double, double* %203, align 8
  %205 = fmul double %200, %204
  %206 = fneg double %205
  %207 = call double @llvm.fmuladd.f64(double %193, double %197, double %206)
  store double %207, double* %18, align 8
  %208 = load double, double* %18, align 8
  %209 = load double, double* %18, align 8
  %210 = load %struct.branch*, %struct.branch** %7, align 8
  %211 = getelementptr inbounds %struct.branch, %struct.branch* %210, i32 0, i32 3
  %212 = load double, double* %211, align 8
  %213 = load %struct.branch*, %struct.branch** %7, align 8
  %214 = getelementptr inbounds %struct.branch, %struct.branch* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.demand, %struct.demand* %214, i32 0, i32 0
  %216 = load double, double* %215, align 8
  %217 = fmul double %212, %216
  %218 = call double @llvm.fmuladd.f64(double %208, double %209, double %217)
  store double %218, double* %18, align 8
  %219 = load double, double* %17, align 8
  %220 = fneg double %219
  %221 = load double, double* %17, align 8
  %222 = load double, double* %17, align 8
  %223 = load double, double* %16, align 8
  %224 = fmul double 4.000000e+00, %223
  %225 = load double, double* %18, align 8
  %226 = fmul double %224, %225
  %227 = fneg double %226
  %228 = call double @llvm.fmuladd.f64(double %221, double %222, double %227)
  %229 = call double @sqrt(double noundef %228) #4
  %230 = fsub double %220, %229
  %231 = load double, double* %16, align 8
  %232 = fmul double 2.000000e+00, %231
  %233 = fdiv double %230, %232
  store double %233, double* %19, align 8
  %234 = load %struct.branch*, %struct.branch** %7, align 8
  %235 = getelementptr inbounds %struct.branch, %struct.branch* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.demand, %struct.demand* %235, i32 0, i32 1
  %237 = load double, double* %236, align 8
  %238 = load double, double* %19, align 8
  %239 = load %struct.branch*, %struct.branch** %7, align 8
  %240 = getelementptr inbounds %struct.branch, %struct.branch* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.demand, %struct.demand* %240, i32 0, i32 0
  %242 = load double, double* %241, align 8
  %243 = fsub double %238, %242
  %244 = load %struct.branch*, %struct.branch** %7, align 8
  %245 = getelementptr inbounds %struct.branch, %struct.branch* %244, i32 0, i32 4
  %246 = load double, double* %245, align 8
  %247 = fmul double %243, %246
  %248 = load %struct.branch*, %struct.branch** %7, align 8
  %249 = getelementptr inbounds %struct.branch, %struct.branch* %248, i32 0, i32 3
  %250 = load double, double* %249, align 8
  %251 = fdiv double %247, %250
  %252 = fadd double %237, %251
  %253 = load %struct.branch*, %struct.branch** %7, align 8
  %254 = getelementptr inbounds %struct.branch, %struct.branch* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.demand, %struct.demand* %254, i32 0, i32 1
  store double %252, double* %255, align 8
  %256 = load double, double* %19, align 8
  %257 = load %struct.branch*, %struct.branch** %7, align 8
  %258 = getelementptr inbounds %struct.branch, %struct.branch* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.demand, %struct.demand* %258, i32 0, i32 0
  store double %256, double* %259, align 8
  %260 = load %struct.branch*, %struct.branch** %7, align 8
  %261 = getelementptr inbounds %struct.branch, %struct.branch* %260, i32 0, i32 3
  %262 = load double, double* %261, align 8
  %263 = fmul double 2.000000e+00, %262
  %264 = load %struct.branch*, %struct.branch** %7, align 8
  %265 = getelementptr inbounds %struct.branch, %struct.branch* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.demand, %struct.demand* %265, i32 0, i32 0
  %267 = load double, double* %266, align 8
  %268 = fmul double %263, %267
  store double %268, double* %16, align 8
  %269 = load %struct.branch*, %struct.branch** %7, align 8
  %270 = getelementptr inbounds %struct.branch, %struct.branch* %269, i32 0, i32 4
  %271 = load double, double* %270, align 8
  %272 = fmul double 2.000000e+00, %271
  %273 = load %struct.branch*, %struct.branch** %7, align 8
  %274 = getelementptr inbounds %struct.branch, %struct.branch* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.demand, %struct.demand* %274, i32 0, i32 1
  %276 = load double, double* %275, align 8
  %277 = fmul double %272, %276
  store double %277, double* %17, align 8
  %278 = load double, double* %16, align 8
  %279 = load double, double* %16, align 8
  %280 = fsub double 1.000000e+00, %279
  %281 = load double, double* %17, align 8
  %282 = fsub double %280, %281
  %283 = fdiv double %278, %282
  %284 = load %struct.branch*, %struct.branch** %7, align 8
  %285 = getelementptr inbounds %struct.branch, %struct.branch* %284, i32 0, i32 1
  store double %283, double* %285, align 8
  %286 = load double, double* %17, align 8
  %287 = load double, double* %16, align 8
  %288 = fsub double 1.000000e+00, %287
  %289 = load double, double* %17, align 8
  %290 = fsub double %288, %289
  %291 = fdiv double %286, %290
  %292 = load %struct.branch*, %struct.branch** %7, align 8
  %293 = getelementptr inbounds %struct.branch, %struct.branch* %292, i32 0, i32 2
  store double %291, double* %293, align 8
  %294 = load %struct.branch*, %struct.branch** %7, align 8
  %295 = getelementptr inbounds %struct.branch, %struct.branch* %294, i32 0, i32 0
  %296 = bitcast %struct.demand* %6 to i8*
  %297 = bitcast %struct.demand* %295 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %296, i8* align 8 %297, i64 16, i1 false)
  %298 = bitcast %struct.demand* %6 to { double, double }*
  %299 = load { double, double }, { double, double }* %298, align 8
  ret { double, double } %299
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @Compute_Leaf(%struct.leaf* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.demand, align 8
  %5 = alloca %struct.leaf*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.leaf* %0, %struct.leaf** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %8 = load %struct.leaf*, %struct.leaf** %5, align 8
  %9 = getelementptr inbounds %struct.leaf, %struct.leaf* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.demand, %struct.demand* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  store double %11, double* @P, align 8
  %12 = load %struct.leaf*, %struct.leaf** %5, align 8
  %13 = getelementptr inbounds %struct.leaf, %struct.leaf* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.demand, %struct.demand* %13, i32 0, i32 1
  %15 = load double, double* %14, align 8
  store double %15, double* @Q, align 8
  %16 = load double, double* %6, align 8
  %17 = load double, double* %7, align 8
  call void @optimize_node(double noundef %16, double noundef %17)
  %18 = load double, double* @P, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store double 0.000000e+00, double* @P, align 8
  store double 0.000000e+00, double* @Q, align 8
  br label %21

21:                                               ; preds = %20, %3
  %22 = load double, double* @P, align 8
  %23 = load %struct.leaf*, %struct.leaf** %5, align 8
  %24 = getelementptr inbounds %struct.leaf, %struct.leaf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.demand, %struct.demand* %24, i32 0, i32 0
  store double %22, double* %25, align 8
  %26 = load double, double* @Q, align 8
  %27 = load %struct.leaf*, %struct.leaf** %5, align 8
  %28 = getelementptr inbounds %struct.leaf, %struct.leaf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.demand, %struct.demand* %28, i32 0, i32 1
  store double %26, double* %29, align 8
  %30 = load %struct.leaf*, %struct.leaf** %5, align 8
  %31 = getelementptr inbounds %struct.leaf, %struct.leaf* %30, i32 0, i32 0
  %32 = bitcast %struct.demand* %4 to i8*
  %33 = bitcast %struct.demand* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = bitcast %struct.demand* %4 to { double, double }*
  %35 = load { double, double }, { double, double }* %34, align 8
  ret { double, double } %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @optimize_node(double noundef %0, double noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [2 x double], align 16
  %8 = alloca [2 x double], align 16
  %9 = alloca [2 x double], align 16
  %10 = alloca [2 x double], align 16
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  br label %15

15:                                               ; preds = %183, %2
  %16 = call double @find_h()
  store double %16, double* %6, align 8
  %17 = load double, double* %6, align 8
  %18 = call double @llvm.fabs.f64(double %17)
  %19 = fcmp ogt double %18, 0x3EB0C6F7A0B5ED8D
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  %21 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %22 = call double @find_gradient_h(double* noundef %21)
  store double %22, double* %11, align 8
  %23 = load double, double* %6, align 8
  %24 = load double, double* %11, align 8
  %25 = fdiv double %23, %24
  store double %25, double* %13, align 8
  %26 = load double, double* %13, align 8
  %27 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %28 = load double, double* %27, align 16
  %29 = load double, double* @P, align 8
  %30 = fneg double %26
  %31 = call double @llvm.fmuladd.f64(double %30, double %28, double %29)
  store double %31, double* @P, align 8
  %32 = load double, double* %13, align 8
  %33 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  %34 = load double, double* %33, align 8
  %35 = load double, double* @Q, align 8
  %36 = fneg double %32
  %37 = call double @llvm.fmuladd.f64(double %36, double %34, double %35)
  store double %37, double* @Q, align 8
  br label %38

38:                                               ; preds = %20, %15
  %39 = call double @find_g()
  store double %39, double* %5, align 8
  %40 = load double, double* %5, align 8
  %41 = fcmp ogt double %40, 0x3EB0C6F7A0B5ED8D
  br i1 %41, label %42, label %67

42:                                               ; preds = %38
  %43 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %44 = call double @find_gradient_g(double* noundef %43)
  store double %44, double* %11, align 8
  %45 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %46 = call double @find_gradient_h(double* noundef %45)
  %47 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %48 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %49 = call double @make_orthogonal(double* noundef %47, double* noundef %48)
  %50 = load double, double* %11, align 8
  %51 = fmul double %50, %49
  store double %51, double* %11, align 8
  %52 = load double, double* %5, align 8
  %53 = load double, double* %11, align 8
  %54 = fdiv double %52, %53
  store double %54, double* %13, align 8
  %55 = load double, double* %13, align 8
  %56 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %57 = load double, double* %56, align 16
  %58 = load double, double* @P, align 8
  %59 = fneg double %55
  %60 = call double @llvm.fmuladd.f64(double %59, double %57, double %58)
  store double %60, double* @P, align 8
  %61 = load double, double* %13, align 8
  %62 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 1
  %63 = load double, double* %62, align 8
  %64 = load double, double* @Q, align 8
  %65 = fneg double %61
  %66 = call double @llvm.fmuladd.f64(double %65, double %63, double %64)
  store double %66, double* @Q, align 8
  br label %67

67:                                               ; preds = %42, %38
  %68 = load double, double* %3, align 8
  %69 = load double, double* %4, align 8
  %70 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %71 = call double @find_gradient_f(double noundef %68, double noundef %69, double* noundef %70)
  store double %71, double* %11, align 8
  %72 = load double, double* %3, align 8
  %73 = load double, double* %4, align 8
  %74 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 0
  call void @find_dd_grad_f(double noundef %72, double noundef %73, double* noundef %74)
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %89, %67
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 %80
  %82 = load double, double* %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x double], [2 x double]* %10, i64 0, i64 %84
  %86 = load double, double* %85, align 8
  %87 = load double, double* %13, align 8
  %88 = call double @llvm.fmuladd.f64(double %82, double %86, double %87)
  store double %88, double* %13, align 8
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %75, !llvm.loop !7

92:                                               ; preds = %75
  %93 = load double, double* %13, align 8
  %94 = call double @llvm.fabs.f64(double %93)
  %95 = load double, double* %11, align 8
  %96 = fdiv double %95, %94
  store double %96, double* %11, align 8
  %97 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %98 = call double @find_gradient_h(double* noundef %97)
  %99 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %100 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %101 = call double @make_orthogonal(double* noundef %99, double* noundef %100)
  %102 = load double, double* %11, align 8
  %103 = fmul double %102, %101
  store double %103, double* %11, align 8
  %104 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 0
  %105 = call double @find_gradient_g(double* noundef %104)
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %120, %92
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %109, label %123

109:                                              ; preds = %106
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 %111
  %113 = load double, double* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 %115
  %117 = load double, double* %116, align 8
  %118 = load double, double* %13, align 8
  %119 = call double @llvm.fmuladd.f64(double %113, double %117, double %118)
  store double %119, double* %13, align 8
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %106, !llvm.loop !8

123:                                              ; preds = %106
  %124 = load double, double* %13, align 8
  %125 = fcmp ogt double %124, 0.000000e+00
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = call double @find_g()
  %128 = fneg double %127
  %129 = load double, double* %13, align 8
  %130 = fdiv double %128, %129
  store double %130, double* %14, align 8
  %131 = load double, double* %11, align 8
  %132 = load double, double* %14, align 8
  %133 = fcmp ogt double %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load double, double* %14, align 8
  store double %135, double* %11, align 8
  br label %136

136:                                              ; preds = %134, %126
  br label %137

137:                                              ; preds = %136, %123
  %138 = load double, double* %11, align 8
  %139 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %140 = load double, double* %139, align 16
  %141 = load double, double* @P, align 8
  %142 = call double @llvm.fmuladd.f64(double %138, double %140, double %141)
  store double %142, double* @P, align 8
  %143 = load double, double* %11, align 8
  %144 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %145 = load double, double* %144, align 8
  %146 = load double, double* @Q, align 8
  %147 = call double @llvm.fmuladd.f64(double %143, double %145, double %146)
  store double %147, double* @Q, align 8
  %148 = call double @find_h()
  store double %148, double* %6, align 8
  %149 = call double @find_g()
  store double %149, double* %5, align 8
  %150 = load double, double* %3, align 8
  %151 = load double, double* %4, align 8
  %152 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %153 = call double @find_gradient_f(double noundef %150, double noundef %151, double* noundef %152)
  %154 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %155 = call double @find_gradient_h(double* noundef %154)
  br label %156

156:                                              ; preds = %137
  %157 = load double, double* %6, align 8
  %158 = call double @llvm.fabs.f64(double %157)
  %159 = fcmp ogt double %158, 0x3EB0C6F7A0B5ED8D
  br i1 %159, label %183, label %160

160:                                              ; preds = %156
  %161 = load double, double* %5, align 8
  %162 = fcmp ogt double %161, 0x3EB0C6F7A0B5ED8D
  br i1 %162, label %183, label %163

163:                                              ; preds = %160
  %164 = load double, double* %5, align 8
  %165 = call double @llvm.fabs.f64(double %164)
  %166 = fcmp ogt double %165, 0x3EB0C6F7A0B5ED8D
  br i1 %166, label %167, label %181

167:                                              ; preds = %163
  %168 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 0
  %169 = load double, double* %168, align 16
  %170 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  %171 = load double, double* %170, align 8
  %172 = getelementptr inbounds [2 x double], [2 x double]* %7, i64 0, i64 1
  %173 = load double, double* %172, align 8
  %174 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %175 = load double, double* %174, align 16
  %176 = fmul double %173, %175
  %177 = fneg double %176
  %178 = call double @llvm.fmuladd.f64(double %169, double %171, double %177)
  %179 = call double @llvm.fabs.f64(double %178)
  %180 = fcmp ogt double %179, 0x3EB0C6F7A0B5ED8D
  br label %181

181:                                              ; preds = %167, %163
  %182 = phi i1 [ false, %163 ], [ %180, %167 ]
  br label %183

183:                                              ; preds = %181, %160, %156
  %184 = phi i1 [ true, %160 ], [ true, %156 ], [ %182, %181 ]
  br i1 %184, label %15, label %185, !llvm.loop !9

185:                                              ; preds = %183
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_gradient_h(double* noundef %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store double* %0, double** %2, align 8
  store double 0.000000e+00, double* %4, align 8
  %5 = load double*, double** %2, align 8
  %6 = getelementptr inbounds double, double* %5, i64 0
  store double 1.000000e+00, double* %6, align 8
  %7 = load double*, double** %2, align 8
  %8 = getelementptr inbounds double, double* %7, i64 1
  store double -5.000000e+00, double* %8, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %25, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load double*, double** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, double* %13, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = load double, double* %21, align 8
  %23 = load double, double* %4, align 8
  %24 = call double @llvm.fmuladd.f64(double %17, double %22, double %23)
  store double %24, double* %4, align 8
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %9, !llvm.loop !10

28:                                               ; preds = %9
  %29 = load double, double* %4, align 8
  %30 = call double @sqrt(double noundef %29) #4
  store double %30, double* %4, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %42, %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load double, double* %4, align 8
  %36 = load double*, double** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  %41 = fdiv double %40, %35
  store double %41, double* %39, align 8
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %31, !llvm.loop !11

45:                                               ; preds = %31
  %46 = load double, double* %4, align 8
  ret double %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_gradient_g(double* noundef %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store double* %0, double** %2, align 8
  store double 0.000000e+00, double* %4, align 8
  %5 = load double, double* @P, align 8
  %6 = fmul double 2.000000e+00, %5
  %7 = load double*, double** %2, align 8
  %8 = getelementptr inbounds double, double* %7, i64 0
  store double %6, double* %8, align 8
  %9 = load double, double* @Q, align 8
  %10 = fmul double 2.000000e+00, %9
  %11 = load double*, double** %2, align 8
  %12 = getelementptr inbounds double, double* %11, i64 1
  store double %10, double* %12, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load double*, double** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %17, i64 %19
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load double, double* %4, align 8
  %28 = call double @llvm.fmuladd.f64(double %21, double %26, double %27)
  store double %28, double* %4, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %13, !llvm.loop !12

32:                                               ; preds = %13
  %33 = load double, double* %4, align 8
  %34 = call double @sqrt(double noundef %33) #4
  store double %34, double* %4, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %46, %32
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load double, double* %4, align 8
  %40 = load double*, double** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fdiv double %44, %39
  store double %45, double* %43, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %35, !llvm.loop !13

49:                                               ; preds = %35
  %50 = load double, double* %4, align 8
  ret double %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @make_orthogonal(double* noundef %0, double* noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load double*, double** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, double* %13, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = load double, double* %21, align 8
  %23 = load double, double* %7, align 8
  %24 = call double @llvm.fmuladd.f64(double %17, double %22, double %23)
  store double %24, double* %7, align 8
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %9, !llvm.loop !14

28:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %58, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load double, double* %7, align 8
  %34 = load double*, double** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double*, double** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  %43 = load double, double* %42, align 8
  %44 = fneg double %33
  %45 = call double @llvm.fmuladd.f64(double %44, double %38, double %43)
  store double %45, double* %42, align 8
  %46 = load double*, double** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load double*, double** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  %55 = load double, double* %54, align 8
  %56 = load double, double* %8, align 8
  %57 = call double @llvm.fmuladd.f64(double %50, double %55, double %56)
  store double %57, double* %8, align 8
  br label %58

58:                                               ; preds = %32
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %29, !llvm.loop !15

61:                                               ; preds = %29
  %62 = load double, double* %8, align 8
  %63 = call double @sqrt(double noundef %62) #4
  store double %63, double* %8, align 8
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %75, %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 2
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load double, double* %8, align 8
  %69 = load double*, double** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fdiv double %73, %68
  store double %74, double* %72, align 8
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %64, !llvm.loop !16

78:                                               ; preds = %64
  %79 = load double, double* %7, align 8
  %80 = load double, double* %7, align 8
  %81 = fneg double %79
  %82 = call double @llvm.fmuladd.f64(double %81, double %80, double 1.000000e+00)
  %83 = fcmp olt double %82, 0.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store double 0.000000e+00, double* %3, align 8
  br label %91

85:                                               ; preds = %78
  %86 = load double, double* %7, align 8
  %87 = load double, double* %7, align 8
  %88 = fneg double %86
  %89 = call double @llvm.fmuladd.f64(double %88, double %87, double 1.000000e+00)
  %90 = call double @sqrt(double noundef %89) #4
  store double %90, double* %3, align 8
  br label %91

91:                                               ; preds = %85, %84
  %92 = load double, double* %3, align 8
  ret double %92
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_gradient_f(double noundef %0, double noundef %1, double* noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double* %2, double** %6, align 8
  store double 0.000000e+00, double* %8, align 8
  %9 = load double, double* @P, align 8
  %10 = fadd double 1.000000e+00, %9
  %11 = fdiv double 1.000000e+00, %10
  %12 = load double, double* %4, align 8
  %13 = fsub double %11, %12
  %14 = load double*, double** %6, align 8
  %15 = getelementptr inbounds double, double* %14, i64 0
  store double %13, double* %15, align 8
  %16 = load double, double* @Q, align 8
  %17 = fadd double 1.000000e+00, %16
  %18 = fdiv double 1.000000e+00, %17
  %19 = load double, double* %5, align 8
  %20 = fsub double %18, %19
  %21 = load double*, double** %6, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  store double %20, double* %22, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %39, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load double*, double** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %27, i64 %29
  %31 = load double, double* %30, align 8
  %32 = load double*, double** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  %36 = load double, double* %35, align 8
  %37 = load double, double* %8, align 8
  %38 = call double @llvm.fmuladd.f64(double %31, double %36, double %37)
  store double %38, double* %8, align 8
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %23, !llvm.loop !17

42:                                               ; preds = %23
  %43 = load double, double* %8, align 8
  %44 = call double @sqrt(double noundef %43) #4
  store double %44, double* %8, align 8
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %56, %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load double, double* %8, align 8
  %50 = load double*, double** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  %55 = fdiv double %54, %49
  store double %55, double* %53, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %45, !llvm.loop !18

59:                                               ; preds = %45
  %60 = load double, double* %8, align 8
  ret double %60
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @find_dd_grad_f(double noundef %0, double noundef %1, double* noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double* %2, double** %6, align 8
  %12 = load double, double* @P, align 8
  %13 = fadd double %12, 1.000000e+00
  %14 = fdiv double 1.000000e+00, %13
  store double %14, double* %7, align 8
  %15 = load double, double* @Q, align 8
  %16 = fadd double %15, 1.000000e+00
  %17 = fdiv double 1.000000e+00, %16
  store double %17, double* %8, align 8
  %18 = load double, double* %7, align 8
  %19 = load double, double* %4, align 8
  %20 = fsub double %18, %19
  store double %20, double* %9, align 8
  %21 = load double, double* %8, align 8
  %22 = load double, double* %5, align 8
  %23 = fsub double %21, %22
  store double %23, double* %10, align 8
  %24 = load double, double* %9, align 8
  %25 = load double, double* %9, align 8
  %26 = load double, double* %10, align 8
  %27 = load double, double* %10, align 8
  %28 = fmul double %26, %27
  %29 = call double @llvm.fmuladd.f64(double %24, double %25, double %28)
  %30 = call double @sqrt(double noundef %29) #4
  store double %30, double* %11, align 8
  %31 = load double, double* %7, align 8
  %32 = fneg double %31
  %33 = load double, double* %7, align 8
  %34 = fmul double %32, %33
  %35 = load double, double* %9, align 8
  %36 = fmul double %34, %35
  %37 = load double, double* %11, align 8
  %38 = fdiv double %36, %37
  %39 = load double*, double** %6, align 8
  %40 = getelementptr inbounds double, double* %39, i64 0
  store double %38, double* %40, align 8
  %41 = load double, double* %8, align 8
  %42 = fneg double %41
  %43 = load double, double* %8, align 8
  %44 = fmul double %42, %43
  %45 = load double, double* %10, align 8
  %46 = fmul double %44, %45
  %47 = load double, double* %11, align 8
  %48 = fdiv double %46, %47
  %49 = load double*, double** %6, align 8
  %50 = getelementptr inbounds double, double* %49, i64 1
  store double %48, double* %50, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_g() #0 {
  %1 = load double, double* @P, align 8
  %2 = load double, double* @P, align 8
  %3 = load double, double* @Q, align 8
  %4 = load double, double* @Q, align 8
  %5 = fmul double %3, %4
  %6 = call double @llvm.fmuladd.f64(double %1, double %2, double %5)
  %7 = fsub double %6, 8.000000e-01
  ret double %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @find_h() #0 {
  %1 = load double, double* @P, align 8
  %2 = load double, double* @Q, align 8
  %3 = call double @llvm.fmuladd.f64(double -5.000000e+00, double %2, double %1)
  ret double %3
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
