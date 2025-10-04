; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58574.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58574.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @foo(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = fptosi double %5 to i32
  switch i32 %6, label %967 [
    i32 0, label %7
    i32 1, label %22
    i32 2, label %37
    i32 3, label %52
    i32 4, label %67
    i32 5, label %82
    i32 6, label %97
    i32 7, label %112
    i32 8, label %127
    i32 9, label %142
    i32 10, label %157
    i32 11, label %172
    i32 12, label %187
    i32 13, label %202
    i32 14, label %217
    i32 15, label %232
    i32 16, label %247
    i32 17, label %262
    i32 18, label %277
    i32 19, label %292
    i32 20, label %307
    i32 21, label %322
    i32 22, label %337
    i32 23, label %352
    i32 24, label %367
    i32 25, label %382
    i32 26, label %397
    i32 30, label %412
    i32 40, label %427
    i32 50, label %442
    i32 60, label %457
    i32 61, label %472
    i32 62, label %487
    i32 63, label %502
    i32 64, label %517
    i32 65, label %532
    i32 66, label %547
    i32 67, label %562
    i32 68, label %577
    i32 69, label %592
    i32 70, label %607
    i32 71, label %622
    i32 72, label %637
    i32 73, label %652
    i32 74, label %667
    i32 75, label %682
    i32 76, label %697
    i32 77, label %712
    i32 78, label %727
    i32 79, label %742
    i32 80, label %757
    i32 81, label %772
    i32 82, label %787
    i32 83, label %802
    i32 84, label %817
    i32 85, label %832
    i32 86, label %847
    i32 87, label %862
    i32 88, label %877
    i32 89, label %892
    i32 90, label %907
    i32 91, label %922
    i32 92, label %937
    i32 93, label %952
  ]

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %8, double -1.000000e+00)
  store double %9, double* %4, align 8
  %10 = load double, double* %4, align 8
  %11 = call double @llvm.fmuladd.f64(double 1.591700e-15, double %10, double 3.688500e-13)
  %12 = load double, double* %4, align 8
  %13 = call double @llvm.fmuladd.f64(double %11, double %12, double 8.171000e-11)
  %14 = load double, double* %4, align 8
  %15 = call double @llvm.fmuladd.f64(double %13, double %14, double 1.740300e-08)
  %16 = load double, double* %4, align 8
  %17 = call double @llvm.fmuladd.f64(double %15, double %16, double 3.577900e-06)
  %18 = load double, double* %4, align 8
  %19 = call double @llvm.fmuladd.f64(double %17, double %18, double 7.123400e-04)
  %20 = load double, double* %4, align 8
  %21 = call double @llvm.fmuladd.f64(double %19, double %20, double 7.087800e-04)
  store double %21, double* %2, align 8
  br label %968

22:                                               ; preds = %1
  %23 = load double, double* %3, align 8
  %24 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %23, double -3.000000e+00)
  store double %24, double* %4, align 8
  %25 = load double, double* %4, align 8
  %26 = call double @llvm.fmuladd.f64(double 1.686800e-15, double %25, double 3.885200e-13)
  %27 = load double, double* %4, align 8
  %28 = call double @llvm.fmuladd.f64(double %26, double %27, double 0x3DD7803F03D4DB15)
  %29 = load double, double* %4, align 8
  %30 = call double @llvm.fmuladd.f64(double %28, double %29, double 1.807100e-08)
  %31 = load double, double* %4, align 8
  %32 = call double @llvm.fmuladd.f64(double %30, double %31, double 3.684300e-06)
  %33 = load double, double* %4, align 8
  %34 = call double @llvm.fmuladd.f64(double %32, double %33, double 7.268600e-04)
  %35 = load double, double* %4, align 8
  %36 = call double @llvm.fmuladd.f64(double %34, double %35, double 2.147900e-03)
  store double %36, double* %2, align 8
  br label %968

37:                                               ; preds = %1
  %38 = load double, double* %3, align 8
  %39 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %38, double -5.000000e+00)
  store double %39, double* %4, align 8
  %40 = load double, double* %4, align 8
  %41 = call double @llvm.fmuladd.f64(double 1.787200e-15, double %40, double 4.093500e-13)
  %42 = load double, double* %4, align 8
  %43 = call double @llvm.fmuladd.f64(double %41, double %42, double 8.948400e-11)
  %44 = load double, double* %4, align 8
  %45 = call double @llvm.fmuladd.f64(double %43, double %44, double 1.877100e-08)
  %46 = load double, double* %4, align 8
  %47 = call double @llvm.fmuladd.f64(double %45, double %46, double 3.794800e-06)
  %48 = load double, double* %4, align 8
  %49 = call double @llvm.fmuladd.f64(double %47, double %48, double 7.418200e-04)
  %50 = load double, double* %4, align 8
  %51 = call double @llvm.fmuladd.f64(double %49, double %50, double 3.616500e-03)
  store double %51, double* %2, align 8
  br label %968

52:                                               ; preds = %1
  %53 = load double, double* %3, align 8
  %54 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %53, double -7.000000e+00)
  store double %54, double* %4, align 8
  %55 = load double, double* %4, align 8
  %56 = call double @llvm.fmuladd.f64(double 1.893900e-15, double %55, double 4.314300e-13)
  %57 = load double, double* %4, align 8
  %58 = call double @llvm.fmuladd.f64(double %56, double %57, double 9.368700e-11)
  %59 = load double, double* %4, align 8
  %60 = call double @llvm.fmuladd.f64(double %58, double %59, double 1.950400e-08)
  %61 = load double, double* %4, align 8
  %62 = call double @llvm.fmuladd.f64(double %60, double %61, double 3.909600e-06)
  %63 = load double, double* %4, align 8
  %64 = call double @llvm.fmuladd.f64(double %62, double %63, double 7.572200e-04)
  %65 = load double, double* %4, align 8
  %66 = call double @llvm.fmuladd.f64(double %64, double %65, double 5.115400e-03)
  store double %66, double* %2, align 8
  br label %968

67:                                               ; preds = %1
  %68 = load double, double* %3, align 8
  %69 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %68, double -9.000000e+00)
  store double %69, double* %4, align 8
  %70 = load double, double* %4, align 8
  %71 = call double @llvm.fmuladd.f64(double 2.007600e-15, double %70, double 4.548400e-13)
  %72 = load double, double* %4, align 8
  %73 = call double @llvm.fmuladd.f64(double %71, double %72, double 9.811700e-11)
  %74 = load double, double* %4, align 8
  %75 = call double @llvm.fmuladd.f64(double %73, double %74, double 2.027100e-08)
  %76 = load double, double* %4, align 8
  %77 = call double @llvm.fmuladd.f64(double %75, double %76, double 4.028900e-06)
  %78 = load double, double* %4, align 8
  %79 = call double @llvm.fmuladd.f64(double %77, double %78, double 7.731000e-04)
  %80 = load double, double* %4, align 8
  %81 = call double @llvm.fmuladd.f64(double %79, double %80, double 6.645700e-03)
  store double %81, double* %2, align 8
  br label %968

82:                                               ; preds = %1
  %83 = load double, double* %3, align 8
  %84 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %83, double -1.100000e+01)
  store double %84, double* %4, align 8
  %85 = load double, double* %4, align 8
  %86 = call double @llvm.fmuladd.f64(double 2.128500e-15, double %85, double 4.796500e-13)
  %87 = load double, double* %4, align 8
  %88 = call double @llvm.fmuladd.f64(double %86, double %87, double 1.027800e-10)
  %89 = load double, double* %4, align 8
  %90 = call double @llvm.fmuladd.f64(double %88, double %89, double 2.107400e-08)
  %91 = load double, double* %4, align 8
  %92 = call double @llvm.fmuladd.f64(double %90, double %91, double 4.152900e-06)
  %93 = load double, double* %4, align 8
  %94 = call double @llvm.fmuladd.f64(double %92, double %93, double 7.894600e-04)
  %95 = load double, double* %4, align 8
  %96 = call double @llvm.fmuladd.f64(double %94, double %95, double 8.208200e-03)
  store double %96, double* %2, align 8
  br label %968

97:                                               ; preds = %1
  %98 = load double, double* %3, align 8
  %99 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %98, double -1.300000e+01)
  store double %99, double* %4, align 8
  %100 = load double, double* %4, align 8
  %101 = call double @llvm.fmuladd.f64(double 2.257300e-15, double %100, double 5.059500e-13)
  %102 = load double, double* %4, align 8
  %103 = call double @llvm.fmuladd.f64(double %101, double %102, double 1.077100e-10)
  %104 = load double, double* %4, align 8
  %105 = call double @llvm.fmuladd.f64(double %103, double %104, double 2.191600e-08)
  %106 = load double, double* %4, align 8
  %107 = call double @llvm.fmuladd.f64(double %105, double %106, double 4.281900e-06)
  %108 = load double, double* %4, align 8
  %109 = call double @llvm.fmuladd.f64(double %107, double %108, double 0x3F4A6BFC7D698D37)
  %110 = load double, double* %4, align 8
  %111 = call double @llvm.fmuladd.f64(double %109, double %110, double 9.803900e-03)
  store double %111, double* %2, align 8
  br label %968

112:                                              ; preds = %1
  %113 = load double, double* %3, align 8
  %114 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %113, double -1.500000e+01)
  store double %114, double* %4, align 8
  %115 = load double, double* %4, align 8
  %116 = call double @llvm.fmuladd.f64(double 2.394400e-15, double %115, double 5.338600e-13)
  %117 = load double, double* %4, align 8
  %118 = call double @llvm.fmuladd.f64(double %116, double %117, double 1.129100e-10)
  %119 = load double, double* %4, align 8
  %120 = call double @llvm.fmuladd.f64(double %118, double %119, double 2.279800e-08)
  %121 = load double, double* %4, align 8
  %122 = call double @llvm.fmuladd.f64(double %120, double %121, double 4.416000e-06)
  %123 = load double, double* %4, align 8
  %124 = call double @llvm.fmuladd.f64(double %122, double %123, double 8.237200e-04)
  %125 = load double, double* %4, align 8
  %126 = call double @llvm.fmuladd.f64(double %124, double %125, double 1.143300e-02)
  store double %126, double* %2, align 8
  br label %968

127:                                              ; preds = %1
  %128 = load double, double* %3, align 8
  %129 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %128, double -1.700000e+01)
  store double %129, double* %4, align 8
  %130 = load double, double* %4, align 8
  %131 = call double @llvm.fmuladd.f64(double 2.540300e-15, double %130, double 5.634600e-13)
  %132 = load double, double* %4, align 8
  %133 = call double @llvm.fmuladd.f64(double %131, double %132, double 1.183900e-10)
  %134 = load double, double* %4, align 8
  %135 = call double @llvm.fmuladd.f64(double %133, double %134, double 2.372300e-08)
  %136 = load double, double* %4, align 8
  %137 = call double @llvm.fmuladd.f64(double %135, double %136, double 4.555500e-06)
  %138 = load double, double* %4, align 8
  %139 = call double @llvm.fmuladd.f64(double %137, double %138, double 0x3F4B94708FE00767)
  %140 = load double, double* %4, align 8
  %141 = call double @llvm.fmuladd.f64(double %139, double %140, double 1.309900e-02)
  store double %141, double* %2, align 8
  br label %968

142:                                              ; preds = %1
  %143 = load double, double* %3, align 8
  %144 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %143, double -1.900000e+01)
  store double %144, double* %4, align 8
  %145 = load double, double* %4, align 8
  %146 = call double @llvm.fmuladd.f64(double 2.695700e-15, double %145, double 0x3D64EE05C5BFFEAA)
  %147 = load double, double* %4, align 8
  %148 = call double @llvm.fmuladd.f64(double %146, double %147, double 1.241800e-10)
  %149 = load double, double* %4, align 8
  %150 = call double @llvm.fmuladd.f64(double %148, double %149, double 2.469400e-08)
  %151 = load double, double* %4, align 8
  %152 = call double @llvm.fmuladd.f64(double %150, double %151, double 4.700800e-06)
  %153 = load double, double* %4, align 8
  %154 = call double @llvm.fmuladd.f64(double %152, double %153, double 0x3F4C2FB67BFD7C6D)
  %155 = load double, double* %4, align 8
  %156 = call double @llvm.fmuladd.f64(double %154, double %155, double 1.480000e-02)
  store double %156, double* %2, align 8
  br label %968

157:                                              ; preds = %1
  %158 = load double, double* %3, align 8
  %159 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %158, double -2.100000e+01)
  store double %159, double* %4, align 8
  %160 = load double, double* %4, align 8
  %161 = call double @llvm.fmuladd.f64(double 2.861200e-15, double %160, double 6.282000e-13)
  %162 = load double, double* %4, align 8
  %163 = call double @llvm.fmuladd.f64(double %161, double %162, double 1.303000e-10)
  %164 = load double, double* %4, align 8
  %165 = call double @llvm.fmuladd.f64(double %163, double %164, double 2.571100e-08)
  %166 = load double, double* %4, align 8
  %167 = call double @llvm.fmuladd.f64(double %165, double %166, double 4.852000e-06)
  %168 = load double, double* %4, align 8
  %169 = call double @llvm.fmuladd.f64(double %167, double %168, double 0x3F4CCFEF6C0912A3)
  %170 = load double, double* %4, align 8
  %171 = call double @llvm.fmuladd.f64(double %169, double %170, double 1.654000e-02)
  store double %171, double* %2, align 8
  br label %968

172:                                              ; preds = %1
  %173 = load double, double* %3, align 8
  %174 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %173, double -2.300000e+01)
  store double %174, double* %4, align 8
  %175 = load double, double* %4, align 8
  %176 = call double @llvm.fmuladd.f64(double 3.037500e-15, double %175, double 6.635800e-13)
  %177 = load double, double* %4, align 8
  %178 = call double @llvm.fmuladd.f64(double %176, double %177, double 1.367500e-10)
  %179 = load double, double* %4, align 8
  %180 = call double @llvm.fmuladd.f64(double %178, double %179, double 2.677900e-08)
  %181 = load double, double* %4, align 8
  %182 = call double @llvm.fmuladd.f64(double %180, double %181, double 5.009400e-06)
  %183 = load double, double* %4, align 8
  %184 = call double @llvm.fmuladd.f64(double %182, double %183, double 0x3F4D755BCCAF709B)
  %185 = load double, double* %4, align 8
  %186 = call double @llvm.fmuladd.f64(double %184, double %185, double 1.831800e-02)
  store double %186, double* %2, align 8
  br label %968

187:                                              ; preds = %1
  %188 = load double, double* %3, align 8
  %189 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %188, double -2.500000e+01)
  store double %189, double* %4, align 8
  %190 = load double, double* %4, align 8
  %191 = call double @llvm.fmuladd.f64(double 3.225200e-15, double %190, double 7.011400e-13)
  %192 = load double, double* %4, align 8
  %193 = call double @llvm.fmuladd.f64(double %191, double %192, double 1.435700e-10)
  %194 = load double, double* %4, align 8
  %195 = call double @llvm.fmuladd.f64(double %193, double %194, double 2.790000e-08)
  %196 = load double, double* %4, align 8
  %197 = call double @llvm.fmuladd.f64(double %195, double %196, double 5.173400e-06)
  %198 = load double, double* %4, align 8
  %199 = call double @llvm.fmuladd.f64(double %197, double %198, double 9.193600e-04)
  %200 = load double, double* %4, align 8
  %201 = call double @llvm.fmuladd.f64(double %199, double %200, double 2.013600e-02)
  store double %201, double* %2, align 8
  br label %968

202:                                              ; preds = %1
  %203 = load double, double* %3, align 8
  %204 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %203, double -2.700000e+01)
  store double %204, double* %4, align 8
  %205 = load double, double* %4, align 8
  %206 = call double @llvm.fmuladd.f64(double 3.425100e-15, double %205, double 7.410300e-13)
  %207 = load double, double* %4, align 8
  %208 = call double @llvm.fmuladd.f64(double %206, double %207, double 1.507800e-10)
  %209 = load double, double* %4, align 8
  %210 = call double @llvm.fmuladd.f64(double %208, double %209, double 2.907800e-08)
  %211 = load double, double* %4, align 8
  %212 = call double @llvm.fmuladd.f64(double %210, double %211, double 0x3ED66A65FF82397D)
  %213 = load double, double* %4, align 8
  %214 = call double @llvm.fmuladd.f64(double %212, double %213, double 0x3F4ED0A59F6159B7)
  %215 = load double, double* %4, align 8
  %216 = call double @llvm.fmuladd.f64(double %214, double %215, double 2.199600e-02)
  store double %216, double* %2, align 8
  br label %968

217:                                              ; preds = %1
  %218 = load double, double* %3, align 8
  %219 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %218, double -2.900000e+01)
  store double %219, double* %4, align 8
  %220 = load double, double* %4, align 8
  %221 = call double @llvm.fmuladd.f64(double 3.638100e-15, double %220, double 7.834000e-13)
  %222 = load double, double* %4, align 8
  %223 = call double @llvm.fmuladd.f64(double %221, double %222, double 1.584000e-10)
  %224 = load double, double* %4, align 8
  %225 = call double @llvm.fmuladd.f64(double %223, double %224, double 3.031400e-08)
  %226 = load double, double* %4, align 8
  %227 = call double @llvm.fmuladd.f64(double %225, double %226, double 5.522500e-06)
  %228 = load double, double* %4, align 8
  %229 = call double @llvm.fmuladd.f64(double %227, double %228, double 0x3F4F86EE71374FCD)
  %230 = load double, double* %4, align 8
  %231 = call double @llvm.fmuladd.f64(double %229, double %230, double 2.389800e-02)
  store double %231, double* %2, align 8
  br label %968

232:                                              ; preds = %1
  %233 = load double, double* %3, align 8
  %234 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %233, double -3.100000e+01)
  store double %234, double* %4, align 8
  %235 = load double, double* %4, align 8
  %236 = call double @llvm.fmuladd.f64(double 3.864900e-15, double %235, double 8.284000e-13)
  %237 = load double, double* %4, align 8
  %238 = call double @llvm.fmuladd.f64(double %236, double %237, double 1.664600e-10)
  %239 = load double, double* %4, align 8
  %240 = call double @llvm.fmuladd.f64(double %238, double %239, double 3.161300e-08)
  %241 = load double, double* %4, align 8
  %242 = call double @llvm.fmuladd.f64(double %240, double %241, double 0x3ED7F1221183D337)
  %243 = load double, double* %4, align 8
  %244 = call double @llvm.fmuladd.f64(double %242, double %243, double 9.845900e-04)
  %245 = load double, double* %4, align 8
  %246 = call double @llvm.fmuladd.f64(double %244, double %245, double 2.584500e-02)
  store double %246, double* %2, align 8
  br label %968

247:                                              ; preds = %1
  %248 = load double, double* %3, align 8
  %249 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %248, double -3.300000e+01)
  store double %249, double* %4, align 8
  %250 = load double, double* %4, align 8
  %251 = call double @llvm.fmuladd.f64(double 4.106600e-15, double %250, double 8.762200e-13)
  %252 = load double, double* %4, align 8
  %253 = call double @llvm.fmuladd.f64(double %251, double %252, double 1.749800e-10)
  %254 = load double, double* %4, align 8
  %255 = call double @llvm.fmuladd.f64(double %253, double %254, double 3.297900e-08)
  %256 = load double, double* %4, align 8
  %257 = call double @llvm.fmuladd.f64(double %255, double %256, double 5.902000e-06)
  %258 = load double, double* %4, align 8
  %259 = call double @llvm.fmuladd.f64(double %257, double %258, double 1.007800e-03)
  %260 = load double, double* %4, align 8
  %261 = call double @llvm.fmuladd.f64(double %259, double %260, double 2.783700e-02)
  store double %261, double* %2, align 8
  br label %968

262:                                              ; preds = %1
  %263 = load double, double* %3, align 8
  %264 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %263, double -3.500000e+01)
  store double %264, double* %4, align 8
  %265 = load double, double* %4, align 8
  %266 = call double @llvm.fmuladd.f64(double 4.363900e-15, double %265, double 0x3D704EF8D289D598)
  %267 = load double, double* %4, align 8
  %268 = call double @llvm.fmuladd.f64(double %266, double %267, double 1.839900e-10)
  %269 = load double, double* %4, align 8
  %270 = call double @llvm.fmuladd.f64(double %268, double %269, double 3.441400e-08)
  %271 = load double, double* %4, align 8
  %272 = call double @llvm.fmuladd.f64(double %270, double %271, double 6.104100e-06)
  %273 = load double, double* %4, align 8
  %274 = call double @llvm.fmuladd.f64(double %272, double %273, double 1.031800e-03)
  %275 = load double, double* %4, align 8
  %276 = call double @llvm.fmuladd.f64(double %274, double %275, double 2.987700e-02)
  store double %276, double* %2, align 8
  br label %968

277:                                              ; preds = %1
  %278 = load double, double* %3, align 8
  %279 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %278, double -3.700000e+01)
  store double %279, double* %4, align 8
  %280 = load double, double* %4, align 8
  %281 = call double @llvm.fmuladd.f64(double 4.638100e-15, double %280, double 0x3D71421F0DF0657F)
  %282 = load double, double* %4, align 8
  %283 = call double @llvm.fmuladd.f64(double %281, double %282, double 1.935300e-10)
  %284 = load double, double* %4, align 8
  %285 = call double @llvm.fmuladd.f64(double %283, double %284, double 3.592400e-08)
  %286 = load double, double* %4, align 8
  %287 = call double @llvm.fmuladd.f64(double %285, double %286, double 6.315100e-06)
  %288 = load double, double* %4, align 8
  %289 = call double @llvm.fmuladd.f64(double %287, double %288, double 1.056600e-03)
  %290 = load double, double* %4, align 8
  %291 = call double @llvm.fmuladd.f64(double %289, double %290, double 3.196500e-02)
  store double %291, double* %2, align 8
  br label %968

292:                                              ; preds = %1
  %293 = load double, double* %3, align 8
  %294 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %293, double -3.900000e+01)
  store double %294, double* %4, align 8
  %295 = load double, double* %4, align 8
  %296 = call double @llvm.fmuladd.f64(double 4.930000e-15, double %295, double 1.038400e-12)
  %297 = load double, double* %4, align 8
  %298 = call double @llvm.fmuladd.f64(double %296, double %297, double 2.036200e-10)
  %299 = load double, double* %4, align 8
  %300 = call double @llvm.fmuladd.f64(double %298, double %299, double 3.751200e-08)
  %301 = load double, double* %4, align 8
  %302 = call double @llvm.fmuladd.f64(double %300, double %301, double 6.535400e-06)
  %303 = load double, double* %4, align 8
  %304 = call double @llvm.fmuladd.f64(double %302, double %303, double 1.082300e-03)
  %305 = load double, double* %4, align 8
  %306 = call double @llvm.fmuladd.f64(double %304, double %305, double 3.410400e-02)
  store double %306, double* %2, align 8
  br label %968

307:                                              ; preds = %1
  %308 = load double, double* %3, align 8
  %309 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %308, double -4.100000e+01)
  store double %309, double* %4, align 8
  %310 = load double, double* %4, align 8
  %311 = call double @llvm.fmuladd.f64(double 5.240900e-15, double %310, double 1.099400e-12)
  %312 = load double, double* %4, align 8
  %313 = call double @llvm.fmuladd.f64(double %311, double %312, double 2.143100e-10)
  %314 = load double, double* %4, align 8
  %315 = call double @llvm.fmuladd.f64(double %313, double %314, double 3.918400e-08)
  %316 = load double, double* %4, align 8
  %317 = call double @llvm.fmuladd.f64(double %315, double %316, double 0x3EDC604AFDDC0CA6)
  %318 = load double, double* %4, align 8
  %319 = call double @llvm.fmuladd.f64(double %317, double %318, double 1.108900e-03)
  %320 = load double, double* %4, align 8
  %321 = call double @llvm.fmuladd.f64(double %319, double %320, double 3.629500e-02)
  store double %321, double* %2, align 8
  br label %968

322:                                              ; preds = %1
  %323 = load double, double* %3, align 8
  %324 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %323, double -4.300000e+01)
  store double %324, double* %4, align 8
  %325 = load double, double* %4, align 8
  %326 = call double @llvm.fmuladd.f64(double 5.572100e-15, double %325, double 1.164200e-12)
  %327 = load double, double* %4, align 8
  %328 = call double @llvm.fmuladd.f64(double %326, double %327, double 2.256300e-10)
  %329 = load double, double* %4, align 8
  %330 = call double @llvm.fmuladd.f64(double %328, double %329, double 4.094300e-08)
  %331 = load double, double* %4, align 8
  %332 = call double @llvm.fmuladd.f64(double %330, double %331, double 7.005800e-06)
  %333 = load double, double* %4, align 8
  %334 = call double @llvm.fmuladd.f64(double %332, double %333, double 1.136400e-03)
  %335 = load double, double* %4, align 8
  %336 = call double @llvm.fmuladd.f64(double %334, double %335, double 3.854000e-02)
  store double %336, double* %2, align 8
  br label %968

337:                                              ; preds = %1
  %338 = load double, double* %3, align 8
  %339 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %338, double -4.500000e+01)
  store double %339, double* %4, align 8
  %340 = load double, double* %4, align 8
  %341 = call double @llvm.fmuladd.f64(double 5.924600e-15, double %340, double 1.233200e-12)
  %342 = load double, double* %4, align 8
  %343 = call double @llvm.fmuladd.f64(double %341, double %342, double 2.376100e-10)
  %344 = load double, double* %4, align 8
  %345 = call double @llvm.fmuladd.f64(double %343, double %344, double 4.279600e-08)
  %346 = load double, double* %4, align 8
  %347 = call double @llvm.fmuladd.f64(double %345, double %346, double 0x3EDE70097B9F75B6)
  %348 = load double, double* %4, align 8
  %349 = call double @llvm.fmuladd.f64(double %347, double %348, double 1.165000e-03)
  %350 = load double, double* %4, align 8
  %351 = call double @llvm.fmuladd.f64(double %349, double %350, double 4.084200e-02)
  store double %351, double* %2, align 8
  br label %968

352:                                              ; preds = %1
  %353 = load double, double* %3, align 8
  %354 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %353, double -4.700000e+01)
  store double %354, double* %4, align 8
  %355 = load double, double* %4, align 8
  %356 = call double @llvm.fmuladd.f64(double 0x3CFC5F67CD792795, double %355, double 1.306500e-12)
  %357 = load double, double* %4, align 8
  %358 = call double @llvm.fmuladd.f64(double %356, double %357, double 2.503000e-10)
  %359 = load double, double* %4, align 8
  %360 = call double @llvm.fmuladd.f64(double %358, double %359, double 4.474700e-08)
  %361 = load double, double* %4, align 8
  %362 = call double @llvm.fmuladd.f64(double %360, double %361, double 0x3EDF8A006BD80CBE)
  %363 = load double, double* %4, align 8
  %364 = call double @llvm.fmuladd.f64(double %362, double %363, double 1.194500e-03)
  %365 = load double, double* %4, align 8
  %366 = call double @llvm.fmuladd.f64(double %364, double %365, double 4.320100e-02)
  store double %366, double* %2, align 8
  br label %968

367:                                              ; preds = %1
  %368 = load double, double* %3, align 8
  %369 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %368, double -4.900000e+01)
  store double %369, double* %4, align 8
  %370 = load double, double* %4, align 8
  %371 = call double @llvm.fmuladd.f64(double 6.699600e-15, double %370, double 1.384500e-12)
  %372 = load double, double* %4, align 8
  %373 = call double @llvm.fmuladd.f64(double %371, double %372, double 2.637500e-10)
  %374 = load double, double* %4, align 8
  %375 = call double @llvm.fmuladd.f64(double %373, double %374, double 4.680300e-08)
  %376 = load double, double* %4, align 8
  %377 = call double @llvm.fmuladd.f64(double %375, double %376, double 7.794100e-06)
  %378 = load double, double* %4, align 8
  %379 = call double @llvm.fmuladd.f64(double %377, double %378, double 1.225100e-03)
  %380 = load double, double* %4, align 8
  %381 = call double @llvm.fmuladd.f64(double %379, double %380, double 4.562100e-02)
  store double %381, double* %2, align 8
  br label %968

382:                                              ; preds = %1
  %383 = load double, double* %3, align 8
  %384 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %383, double -5.100000e+01)
  store double %384, double* %4, align 8
  %385 = load double, double* %4, align 8
  %386 = call double @llvm.fmuladd.f64(double 7.124900e-15, double %385, double 1.467400e-12)
  %387 = load double, double* %4, align 8
  %388 = call double @llvm.fmuladd.f64(double %386, double %387, double 2.780100e-10)
  %389 = load double, double* %4, align 8
  %390 = call double @llvm.fmuladd.f64(double %388, double %389, double 4.896900e-08)
  %391 = load double, double* %4, align 8
  %392 = call double @llvm.fmuladd.f64(double %390, double %391, double 8.081400e-06)
  %393 = load double, double* %4, align 8
  %394 = call double @llvm.fmuladd.f64(double %392, double %393, double 1.256900e-03)
  %395 = load double, double* %4, align 8
  %396 = call double @llvm.fmuladd.f64(double %394, double %395, double 4.810300e-02)
  store double %396, double* %2, align 8
  br label %968

397:                                              ; preds = %1
  %398 = load double, double* %3, align 8
  %399 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %398, double -5.900000e+01)
  store double %399, double* %4, align 8
  %400 = load double, double* %4, align 8
  %401 = call double @llvm.fmuladd.f64(double 9.116000e-15, double %400, double 1.855200e-12)
  %402 = load double, double* %4, align 8
  %403 = call double @llvm.fmuladd.f64(double %401, double %402, double 3.441400e-10)
  %404 = load double, double* %4, align 8
  %405 = call double @llvm.fmuladd.f64(double %403, double %404, double 5.888200e-08)
  %406 = load double, double* %4, align 8
  %407 = call double @llvm.fmuladd.f64(double %405, double %406, double 0x3EE3A73B6897E136)
  %408 = load double, double* %4, align 8
  %409 = call double @llvm.fmuladd.f64(double %407, double %408, double 1.396200e-03)
  %410 = load double, double* %4, align 8
  %411 = call double @llvm.fmuladd.f64(double %409, double %410, double 5.870200e-02)
  store double %411, double* %2, align 8
  br label %968

412:                                              ; preds = %1
  %413 = load double, double* %3, align 8
  %414 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %413, double -7.900000e+01)
  store double %414, double* %4, align 8
  %415 = load double, double* %4, align 8
  %416 = call double @llvm.fmuladd.f64(double 1.681500e-14, double %415, double 3.365600e-12)
  %417 = load double, double* %4, align 8
  %418 = call double @llvm.fmuladd.f64(double %416, double %417, double 5.975200e-10)
  %419 = load double, double* %4, align 8
  %420 = call double @llvm.fmuladd.f64(double %418, double %419, double 9.554900e-08)
  %421 = load double, double* %4, align 8
  %422 = call double @llvm.fmuladd.f64(double %420, double %421, double 1.390300e-05)
  %423 = load double, double* %4, align 8
  %424 = call double @llvm.fmuladd.f64(double %422, double %423, double 1.854400e-03)
  %425 = load double, double* %4, align 8
  %426 = call double @llvm.fmuladd.f64(double %424, double %425, double 9.090800e-02)
  store double %426, double* %2, align 8
  br label %968

427:                                              ; preds = %1
  %428 = load double, double* %3, align 8
  %429 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %428, double -9.900000e+01)
  store double %429, double* %4, align 8
  %430 = load double, double* %4, align 8
  %431 = call double @llvm.fmuladd.f64(double 3.041200e-14, double %430, double 6.125800e-12)
  %432 = load double, double* %4, align 8
  %433 = call double @llvm.fmuladd.f64(double %431, double %432, double 1.058500e-09)
  %434 = load double, double* %4, align 8
  %435 = call double @llvm.fmuladd.f64(double %433, double %434, double 1.599600e-07)
  %436 = load double, double* %4, align 8
  %437 = call double @llvm.fmuladd.f64(double %435, double %436, double 2.138500e-05)
  %438 = load double, double* %4, align 8
  %439 = call double @llvm.fmuladd.f64(double %437, double %438, double 2.547400e-03)
  %440 = load double, double* %4, align 8
  %441 = call double @llvm.fmuladd.f64(double %439, double %440, double 1.344300e-01)
  store double %441, double* %2, align 8
  br label %968

442:                                              ; preds = %1
  %443 = load double, double* %3, align 8
  %444 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %443, double -1.190000e+02)
  store double %444, double* %4, align 8
  %445 = load double, double* %4, align 8
  %446 = call double @llvm.fmuladd.f64(double 5.293100e-14, double %445, double 1.102100e-11)
  %447 = load double, double* %4, align 8
  %448 = call double @llvm.fmuladd.f64(double %446, double %447, double 1.893400e-09)
  %449 = load double, double* %4, align 8
  %450 = call double @llvm.fmuladd.f64(double %448, double %449, double 2.747900e-07)
  %451 = load double, double* %4, align 8
  %452 = call double @llvm.fmuladd.f64(double %450, double %451, double 3.409600e-05)
  %453 = load double, double* %4, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %453, double 3.634200e-03)
  %455 = load double, double* %4, align 8
  %456 = call double @llvm.fmuladd.f64(double %454, double %455, double 1.954000e-01)
  store double %456, double* %2, align 8
  br label %968

457:                                              ; preds = %1
  %458 = load double, double* %3, align 8
  %459 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %458, double -1.210000e+02)
  store double %459, double* %4, align 8
  %460 = load double, double* %4, align 8
  %461 = call double @llvm.fmuladd.f64(double 5.579000e-14, double %460, double 1.167300e-11)
  %462 = load double, double* %4, align 8
  %463 = call double @llvm.fmuladd.f64(double %461, double %462, double 2.006800e-09)
  %464 = load double, double* %4, align 8
  %465 = call double @llvm.fmuladd.f64(double %463, double %464, double 2.903800e-07)
  %466 = load double, double* %4, align 8
  %467 = call double @llvm.fmuladd.f64(double %465, double %466, double 3.579100e-05)
  %468 = load double, double* %4, align 8
  %469 = call double @llvm.fmuladd.f64(double %467, double %468, double 3.773900e-03)
  %470 = load double, double* %4, align 8
  %471 = call double @llvm.fmuladd.f64(double %469, double %470, double 2.028100e-01)
  store double %471, double* %2, align 8
  br label %968

472:                                              ; preds = %1
  %473 = load double, double* %3, align 8
  %474 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %473, double -1.230000e+02)
  store double %474, double* %4, align 8
  %475 = load double, double* %4, align 8
  %476 = call double @llvm.fmuladd.f64(double 5.877000e-14, double %475, double 1.236100e-11)
  %477 = load double, double* %4, align 8
  %478 = call double @llvm.fmuladd.f64(double %476, double %477, double 2.127000e-09)
  %479 = load double, double* %4, align 8
  %480 = call double @llvm.fmuladd.f64(double %478, double %479, double 3.069100e-07)
  %481 = load double, double* %4, align 8
  %482 = call double @llvm.fmuladd.f64(double %480, double %481, double 3.758200e-05)
  %483 = load double, double* %4, align 8
  %484 = call double @llvm.fmuladd.f64(double %482, double %483, double 3.920600e-03)
  %485 = load double, double* %4, align 8
  %486 = call double @llvm.fmuladd.f64(double %484, double %485, double 2.105000e-01)
  store double %486, double* %2, align 8
  br label %968

487:                                              ; preds = %1
  %488 = load double, double* %3, align 8
  %489 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %488, double -1.250000e+02)
  store double %489, double* %4, align 8
  %490 = load double, double* %4, align 8
  %491 = call double @llvm.fmuladd.f64(double 0x3D316A6B65650415, double %490, double 1.308400e-11)
  %492 = load double, double* %4, align 8
  %493 = call double @llvm.fmuladd.f64(double %491, double %492, double 2.254200e-09)
  %494 = load double, double* %4, align 8
  %495 = call double @llvm.fmuladd.f64(double %493, double %494, double 3.244300e-07)
  %496 = load double, double* %4, align 8
  %497 = call double @llvm.fmuladd.f64(double %495, double %496, double 3.947600e-05)
  %498 = load double, double* %4, align 8
  %499 = call double @llvm.fmuladd.f64(double %497, double %498, double 4.074700e-03)
  %500 = load double, double* %4, align 8
  %501 = call double @llvm.fmuladd.f64(double %499, double %500, double 2.184900e-01)
  store double %501, double* %2, align 8
  br label %968

502:                                              ; preds = %1
  %503 = load double, double* %3, align 8
  %504 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %503, double -1.270000e+02)
  store double %504, double* %4, align 8
  %505 = load double, double* %4, align 8
  %506 = call double @llvm.fmuladd.f64(double 6.510000e-14, double %505, double 1.384600e-11)
  %507 = load double, double* %4, align 8
  %508 = call double @llvm.fmuladd.f64(double %506, double %507, double 2.388800e-09)
  %509 = load double, double* %4, align 8
  %510 = call double @llvm.fmuladd.f64(double %508, double %509, double 3.430000e-07)
  %511 = load double, double* %4, align 8
  %512 = call double @llvm.fmuladd.f64(double %510, double %511, double 4.147700e-05)
  %513 = load double, double* %4, align 8
  %514 = call double @llvm.fmuladd.f64(double %512, double %513, double 4.236600e-03)
  %515 = load double, double* %4, align 8
  %516 = call double @llvm.fmuladd.f64(double %514, double %515, double 2.268000e-01)
  store double %516, double* %2, align 8
  br label %968

517:                                              ; preds = %1
  %518 = load double, double* %3, align 8
  %519 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %518, double -1.290000e+02)
  store double %519, double* %4, align 8
  %520 = load double, double* %4, align 8
  %521 = call double @llvm.fmuladd.f64(double 6.845300e-14, double %520, double 1.464700e-11)
  %522 = load double, double* %4, align 8
  %523 = call double @llvm.fmuladd.f64(double %521, double %522, double 2.531200e-09)
  %524 = load double, double* %4, align 8
  %525 = call double @llvm.fmuladd.f64(double %523, double %524, double 3.626800e-07)
  %526 = load double, double* %4, align 8
  %527 = call double @llvm.fmuladd.f64(double %525, double %526, double 4.359400e-05)
  %528 = load double, double* %4, align 8
  %529 = call double @llvm.fmuladd.f64(double %527, double %528, double 4.406700e-03)
  %530 = load double, double* %4, align 8
  %531 = call double @llvm.fmuladd.f64(double %529, double %530, double 2.354500e-01)
  store double %531, double* %2, align 8
  br label %968

532:                                              ; preds = %1
  %533 = load double, double* %3, align 8
  %534 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %533, double -1.310000e+02)
  store double %534, double* %4, align 8
  %535 = load double, double* %4, align 8
  %536 = call double @llvm.fmuladd.f64(double 7.193300e-14, double %535, double 1.548900e-11)
  %537 = load double, double* %4, align 8
  %538 = call double @llvm.fmuladd.f64(double %536, double %537, double 2.681900e-09)
  %539 = load double, double* %4, align 8
  %540 = call double @llvm.fmuladd.f64(double %538, double %539, double 3.835200e-07)
  %541 = load double, double* %4, align 8
  %542 = call double @llvm.fmuladd.f64(double %540, double %541, double 4.583200e-05)
  %543 = load double, double* %4, align 8
  %544 = call double @llvm.fmuladd.f64(double %542, double %543, double 4.585500e-03)
  %545 = load double, double* %4, align 8
  %546 = call double @llvm.fmuladd.f64(double %544, double %545, double 2.444400e-01)
  store double %546, double* %2, align 8
  br label %968

547:                                              ; preds = %1
  %548 = load double, double* %3, align 8
  %549 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %548, double -1.330000e+02)
  store double %549, double* %4, align 8
  %550 = load double, double* %4, align 8
  %551 = call double @llvm.fmuladd.f64(double 7.554100e-14, double %550, double 1.637400e-11)
  %552 = load double, double* %4, align 8
  %553 = call double @llvm.fmuladd.f64(double %551, double %552, double 2.841100e-09)
  %554 = load double, double* %4, align 8
  %555 = call double @llvm.fmuladd.f64(double %553, double %554, double 4.056100e-07)
  %556 = load double, double* %4, align 8
  %557 = call double @llvm.fmuladd.f64(double %555, double %556, double 4.819900e-05)
  %558 = load double, double* %4, align 8
  %559 = call double @llvm.fmuladd.f64(double %557, double %558, double 4.773500e-03)
  %560 = load double, double* %4, align 8
  %561 = call double @llvm.fmuladd.f64(double %559, double %560, double 2.537900e-01)
  store double %561, double* %2, align 8
  br label %968

562:                                              ; preds = %1
  %563 = load double, double* %3, align 8
  %564 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %563, double -1.350000e+02)
  store double %564, double* %4, align 8
  %565 = load double, double* %4, align 8
  %566 = call double @llvm.fmuladd.f64(double 0x3D365094FA076898, double %565, double 1.730300e-11)
  %567 = load double, double* %4, align 8
  %568 = call double @llvm.fmuladd.f64(double %566, double %567, double 3.009500e-09)
  %569 = load double, double* %4, align 8
  %570 = call double @llvm.fmuladd.f64(double %568, double %569, double 4.290100e-07)
  %571 = load double, double* %4, align 8
  %572 = call double @llvm.fmuladd.f64(double %570, double %571, double 5.070200e-05)
  %573 = load double, double* %4, align 8
  %574 = call double @llvm.fmuladd.f64(double %572, double %573, double 4.971300e-03)
  %575 = load double, double* %4, align 8
  %576 = call double @llvm.fmuladd.f64(double %574, double %575, double 2.635400e-01)
  store double %576, double* %2, align 8
  br label %968

577:                                              ; preds = %1
  %578 = load double, double* %3, align 8
  %579 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %578, double -1.370000e+02)
  store double %579, double* %4, align 8
  %580 = load double, double* %4, align 8
  %581 = call double @llvm.fmuladd.f64(double 0x3D37672816DA09EA, double %580, double 1.827700e-11)
  %582 = load double, double* %4, align 8
  %583 = call double @llvm.fmuladd.f64(double %581, double %582, double 3.187400e-09)
  %584 = load double, double* %4, align 8
  %585 = call double @llvm.fmuladd.f64(double %583, double %584, double 4.537900e-07)
  %586 = load double, double* %4, align 8
  %587 = call double @llvm.fmuladd.f64(double %585, double %586, double 5.335000e-05)
  %588 = load double, double* %4, align 8
  %589 = call double @llvm.fmuladd.f64(double %587, double %588, double 5.179300e-03)
  %590 = load double, double* %4, align 8
  %591 = call double @llvm.fmuladd.f64(double %589, double %590, double 2.736900e-01)
  store double %591, double* %2, align 8
  br label %968

592:                                              ; preds = %1
  %593 = load double, double* %3, align 8
  %594 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %593, double -1.390000e+02)
  store double %594, double* %4, align 8
  %595 = load double, double* %4, align 8
  %596 = call double @llvm.fmuladd.f64(double 0x3D388706D4F36630, double %595, double 1.929900e-11)
  %597 = load double, double* %4, align 8
  %598 = call double @llvm.fmuladd.f64(double %596, double %597, double 3.375200e-09)
  %599 = load double, double* %4, align 8
  %600 = call double @llvm.fmuladd.f64(double %598, double %599, double 4.800300e-07)
  %601 = load double, double* %4, align 8
  %602 = call double @llvm.fmuladd.f64(double %600, double %601, double 5.615000e-05)
  %603 = load double, double* %4, align 8
  %604 = call double @llvm.fmuladd.f64(double %602, double %603, double 5.398300e-03)
  %605 = load double, double* %4, align 8
  %606 = call double @llvm.fmuladd.f64(double %604, double %605, double 2.842600e-01)
  store double %606, double* %2, align 8
  br label %968

607:                                              ; preds = %1
  %608 = load double, double* %3, align 8
  %609 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %608, double -1.410000e+02)
  store double %609, double* %4, align 8
  %610 = load double, double* %4, align 8
  %611 = call double @llvm.fmuladd.f64(double 9.126200e-14, double %610, double 2.036900e-11)
  %612 = load double, double* %4, align 8
  %613 = call double @llvm.fmuladd.f64(double %611, double %612, double 3.573500e-09)
  %614 = load double, double* %4, align 8
  %615 = call double @llvm.fmuladd.f64(double %613, double %614, double 5.078200e-07)
  %616 = load double, double* %4, align 8
  %617 = call double @llvm.fmuladd.f64(double %615, double %616, double 5.911300e-05)
  %618 = load double, double* %4, align 8
  %619 = call double @llvm.fmuladd.f64(double %617, double %618, double 5.628800e-03)
  %620 = load double, double* %4, align 8
  %621 = call double @llvm.fmuladd.f64(double %619, double %620, double 2.952900e-01)
  store double %621, double* %2, align 8
  br label %968

622:                                              ; preds = %1
  %623 = load double, double* %3, align 8
  %624 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %623, double -1.430000e+02)
  store double %624, double* %4, align 8
  %625 = load double, double* %4, align 8
  %626 = call double @llvm.fmuladd.f64(double 9.551300e-14, double %625, double 2.149000e-11)
  %627 = load double, double* %4, align 8
  %628 = call double @llvm.fmuladd.f64(double %626, double %627, double 3.782700e-09)
  %629 = load double, double* %4, align 8
  %630 = call double @llvm.fmuladd.f64(double %628, double %629, double 5.372400e-07)
  %631 = load double, double* %4, align 8
  %632 = call double @llvm.fmuladd.f64(double %630, double %631, double 6.224800e-05)
  %633 = load double, double* %4, align 8
  %634 = call double @llvm.fmuladd.f64(double %632, double %633, double 5.871400e-03)
  %635 = load double, double* %4, align 8
  %636 = call double @llvm.fmuladd.f64(double %634, double %635, double 3.067900e-01)
  store double %636, double* %2, align 8
  br label %968

637:                                              ; preds = %1
  %638 = load double, double* %3, align 8
  %639 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %638, double -1.450000e+02)
  store double %639, double* %4, align 8
  %640 = load double, double* %4, align 8
  %641 = call double @llvm.fmuladd.f64(double 9.989100e-14, double %640, double 2.266200e-11)
  %642 = load double, double* %4, align 8
  %643 = call double @llvm.fmuladd.f64(double %641, double %642, double 4.003500e-09)
  %644 = load double, double* %4, align 8
  %645 = call double @llvm.fmuladd.f64(double %643, double %644, double 5.683700e-07)
  %646 = load double, double* %4, align 8
  %647 = call double @llvm.fmuladd.f64(double %645, double %646, double 6.556400e-05)
  %648 = load double, double* %4, align 8
  %649 = call double @llvm.fmuladd.f64(double %647, double %648, double 6.127000e-03)
  %650 = load double, double* %4, align 8
  %651 = call double @llvm.fmuladd.f64(double %649, double %650, double 3.187800e-01)
  store double %651, double* %2, align 8
  br label %968

652:                                              ; preds = %1
  %653 = load double, double* %3, align 8
  %654 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %653, double -1.470000e+02)
  store double %654, double* %4, align 8
  %655 = load double, double* %4, align 8
  %656 = call double @llvm.fmuladd.f64(double 1.043900e-13, double %655, double 2.388800e-11)
  %657 = load double, double* %4, align 8
  %658 = call double @llvm.fmuladd.f64(double %656, double %657, double 4.236200e-09)
  %659 = load double, double* %4, align 8
  %660 = call double @llvm.fmuladd.f64(double %658, double %659, double 6.013300e-07)
  %661 = load double, double* %4, align 8
  %662 = call double @llvm.fmuladd.f64(double %660, double %661, double 6.907200e-05)
  %663 = load double, double* %4, align 8
  %664 = call double @llvm.fmuladd.f64(double %662, double %663, double 6.396200e-03)
  %665 = load double, double* %4, align 8
  %666 = call double @llvm.fmuladd.f64(double %664, double %665, double 3.313000e-01)
  store double %666, double* %2, align 8
  br label %968

667:                                              ; preds = %1
  %668 = load double, double* %3, align 8
  %669 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %668, double -1.490000e+02)
  store double %669, double* %4, align 8
  %670 = load double, double* %4, align 8
  %671 = call double @llvm.fmuladd.f64(double 1.090100e-13, double %670, double 2.516800e-11)
  %672 = load double, double* %4, align 8
  %673 = call double @llvm.fmuladd.f64(double %671, double %672, double 4.481400e-09)
  %674 = load double, double* %4, align 8
  %675 = call double @llvm.fmuladd.f64(double %673, double %674, double 6.361900e-07)
  %676 = load double, double* %4, align 8
  %677 = call double @llvm.fmuladd.f64(double %675, double %676, double 7.278300e-05)
  %678 = load double, double* %4, align 8
  %679 = call double @llvm.fmuladd.f64(double %677, double %678, double 6.679800e-03)
  %680 = load double, double* %4, align 8
  %681 = call double @llvm.fmuladd.f64(double %679, double %680, double 3.443800e-01)
  store double %681, double* %2, align 8
  br label %968

682:                                              ; preds = %1
  %683 = load double, double* %3, align 8
  %684 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %683, double -1.510000e+02)
  store double %684, double* %4, align 8
  %685 = load double, double* %4, align 8
  %686 = call double @llvm.fmuladd.f64(double 1.137600e-13, double %685, double 2.650500e-11)
  %687 = load double, double* %4, align 8
  %688 = call double @llvm.fmuladd.f64(double %686, double %687, double 4.739700e-09)
  %689 = load double, double* %4, align 8
  %690 = call double @llvm.fmuladd.f64(double %688, double %689, double 6.730600e-07)
  %691 = load double, double* %4, align 8
  %692 = call double @llvm.fmuladd.f64(double %690, double %691, double 7.671000e-05)
  %693 = load double, double* %4, align 8
  %694 = call double @llvm.fmuladd.f64(double %692, double %693, double 6.978700e-03)
  %695 = load double, double* %4, align 8
  %696 = call double @llvm.fmuladd.f64(double %694, double %695, double 3.580300e-01)
  store double %696, double* %2, align 8
  br label %968

697:                                              ; preds = %1
  %698 = load double, double* %3, align 8
  %699 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %698, double -1.530000e+02)
  store double %699, double* %4, align 8
  %700 = load double, double* %4, align 8
  %701 = call double @llvm.fmuladd.f64(double 1.186200e-13, double %700, double 2.789900e-11)
  %702 = load double, double* %4, align 8
  %703 = call double @llvm.fmuladd.f64(double %701, double %702, double 5.011700e-09)
  %704 = load double, double* %4, align 8
  %705 = call double @llvm.fmuladd.f64(double %703, double %704, double 0x3EA7E48C7FD54B3F)
  %706 = load double, double* %4, align 8
  %707 = call double @llvm.fmuladd.f64(double %705, double %706, double 8.086400e-05)
  %708 = load double, double* %4, align 8
  %709 = call double @llvm.fmuladd.f64(double %707, double %708, double 7.293800e-03)
  %710 = load double, double* %4, align 8
  %711 = call double @llvm.fmuladd.f64(double %709, double %710, double 3.723000e-01)
  store double %711, double* %2, align 8
  br label %968

712:                                              ; preds = %1
  %713 = load double, double* %3, align 8
  %714 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %713, double -1.550000e+02)
  store double %714, double* %4, align 8
  %715 = load double, double* %4, align 8
  %716 = call double @llvm.fmuladd.f64(double 1.236000e-13, double %715, double 2.935200e-11)
  %717 = load double, double* %4, align 8
  %718 = call double @llvm.fmuladd.f64(double %716, double %717, double 5.297900e-09)
  %719 = load double, double* %4, align 8
  %720 = call double @llvm.fmuladd.f64(double %718, double %719, double 7.532900e-07)
  %721 = load double, double* %4, align 8
  %722 = call double @llvm.fmuladd.f64(double %720, double %721, double 8.525900e-05)
  %723 = load double, double* %4, align 8
  %724 = call double @llvm.fmuladd.f64(double %722, double %723, double 0x3F7F3C70C996B767)
  %725 = load double, double* %4, align 8
  %726 = call double @llvm.fmuladd.f64(double %724, double %725, double 3.872200e-01)
  store double %726, double* %2, align 8
  br label %968

727:                                              ; preds = %1
  %728 = load double, double* %3, align 8
  %729 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %728, double -1.570000e+02)
  store double %729, double* %4, align 8
  %730 = load double, double* %4, align 8
  %731 = call double @llvm.fmuladd.f64(double 1.286800e-13, double %730, double 3.086600e-11)
  %732 = load double, double* %4, align 8
  %733 = call double @llvm.fmuladd.f64(double %731, double %732, double 5.598900e-09)
  %734 = load double, double* %4, align 8
  %735 = call double @llvm.fmuladd.f64(double %733, double %734, double 0x3EAABD0FA96201DC)
  %736 = load double, double* %4, align 8
  %737 = call double @llvm.fmuladd.f64(double %735, double %736, double 8.990900e-05)
  %738 = load double, double* %4, align 8
  %739 = call double @llvm.fmuladd.f64(double %737, double %738, double 7.976200e-03)
  %740 = load double, double* %4, align 8
  %741 = call double @llvm.fmuladd.f64(double %739, double %740, double 4.028200e-01)
  store double %741, double* %2, align 8
  br label %968

742:                                              ; preds = %1
  %743 = load double, double* %3, align 8
  %744 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %743, double -1.590000e+02)
  store double %744, double* %4, align 8
  %745 = load double, double* %4, align 8
  %746 = call double @llvm.fmuladd.f64(double 1.338700e-13, double %745, double 3.244100e-11)
  %747 = load double, double* %4, align 8
  %748 = call double @llvm.fmuladd.f64(double %746, double %747, double 5.915400e-09)
  %749 = load double, double* %4, align 8
  %750 = call double @llvm.fmuladd.f64(double %748, double %749, double 0x3EAC488AB13D0509)
  %751 = load double, double* %4, align 8
  %752 = call double @llvm.fmuladd.f64(double %750, double %751, double 9.482700e-05)
  %753 = load double, double* %4, align 8
  %754 = call double @llvm.fmuladd.f64(double %752, double %753, double 0x3F81177F7886239B)
  %755 = load double, double* %4, align 8
  %756 = call double @llvm.fmuladd.f64(double %754, double %755, double 4.191400e-01)
  store double %756, double* %2, align 8
  br label %968

757:                                              ; preds = %1
  %758 = load double, double* %3, align 8
  %759 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %758, double -1.610000e+02)
  store double %759, double* %4, align 8
  %760 = load double, double* %4, align 8
  %761 = call double @llvm.fmuladd.f64(double 1.391700e-13, double %760, double 3.407900e-11)
  %762 = load double, double* %4, align 8
  %763 = call double @llvm.fmuladd.f64(double %761, double %762, double 6.248000e-09)
  %764 = load double, double* %4, align 8
  %765 = call double @llvm.fmuladd.f64(double %763, double %764, double 8.915600e-07)
  %766 = load double, double* %4, align 8
  %767 = call double @llvm.fmuladd.f64(double %765, double %766, double 1.000200e-04)
  %768 = load double, double* %4, align 8
  %769 = call double @llvm.fmuladd.f64(double %767, double %768, double 8.735200e-03)
  %770 = load double, double* %4, align 8
  %771 = call double @llvm.fmuladd.f64(double %769, double %770, double 4.362100e-01)
  store double %771, double* %2, align 8
  br label %968

772:                                              ; preds = %1
  %773 = load double, double* %3, align 8
  %774 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %773, double -1.630000e+02)
  store double %774, double* %4, align 8
  %775 = load double, double* %4, align 8
  %776 = call double @llvm.fmuladd.f64(double 1.445500e-13, double %775, double 3.578200e-11)
  %777 = load double, double* %4, align 8
  %778 = call double @llvm.fmuladd.f64(double %776, double %777, double 6.597200e-09)
  %779 = load double, double* %4, align 8
  %780 = call double @llvm.fmuladd.f64(double %778, double %779, double 0x3EAFA3B4FF945DE5)
  %781 = load double, double* %4, align 8
  %782 = call double @llvm.fmuladd.f64(double %780, double %781, double 1.055300e-04)
  %783 = load double, double* %4, align 8
  %784 = call double @llvm.fmuladd.f64(double %782, double %783, double 9.146300e-03)
  %785 = load double, double* %4, align 8
  %786 = call double @llvm.fmuladd.f64(double %784, double %785, double 4.540900e-01)
  store double %786, double* %2, align 8
  br label %968

787:                                              ; preds = %1
  %788 = load double, double* %3, align 8
  %789 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %788, double -1.650000e+02)
  store double %789, double* %4, align 8
  %790 = load double, double* %4, align 8
  %791 = call double @llvm.fmuladd.f64(double 1.500300e-13, double %790, double 3.754900e-11)
  %792 = load double, double* %4, align 8
  %793 = call double @llvm.fmuladd.f64(double %791, double %792, double 6.963800e-09)
  %794 = load double, double* %4, align 8
  %795 = call double @llvm.fmuladd.f64(double %793, double %794, double 0x3EB0BAC503C6DC37)
  %796 = load double, double* %4, align 8
  %797 = call double @llvm.fmuladd.f64(double %795, double %796, double 1.113500e-04)
  %798 = load double, double* %4, align 8
  %799 = call double @llvm.fmuladd.f64(double %797, double %798, double 9.579900e-03)
  %800 = load double, double* %4, align 8
  %801 = call double @llvm.fmuladd.f64(double %799, double %800, double 4.728200e-01)
  store double %801, double* %2, align 8
  br label %968

802:                                              ; preds = %1
  %803 = load double, double* %3, align 8
  %804 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %803, double -1.670000e+02)
  store double %804, double* %4, align 8
  %805 = load double, double* %4, align 8
  %806 = call double @llvm.fmuladd.f64(double 1.555900e-13, double %805, double 3.938300e-11)
  %807 = load double, double* %4, align 8
  %808 = call double @llvm.fmuladd.f64(double %806, double %807, double 7.348400e-09)
  %809 = load double, double* %4, align 8
  %810 = call double @llvm.fmuladd.f64(double %808, double %809, double 1.054400e-06)
  %811 = load double, double* %4, align 8
  %812 = call double @llvm.fmuladd.f64(double %810, double %811, double 1.175000e-04)
  %813 = load double, double* %4, align 8
  %814 = call double @llvm.fmuladd.f64(double %812, double %813, double 1.003700e-02)
  %815 = load double, double* %4, align 8
  %816 = call double @llvm.fmuladd.f64(double %814, double %815, double 4.924300e-01)
  store double %816, double* %2, align 8
  br label %968

817:                                              ; preds = %1
  %818 = load double, double* %3, align 8
  %819 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %818, double -1.690000e+02)
  store double %819, double* %4, align 8
  %820 = load double, double* %4, align 8
  %821 = call double @llvm.fmuladd.f64(double 1.612200e-13, double %820, double 4.128300e-11)
  %822 = load double, double* %4, align 8
  %823 = call double @llvm.fmuladd.f64(double %821, double %822, double 0x3E40A58AC9DA1650)
  %824 = load double, double* %4, align 8
  %825 = call double @llvm.fmuladd.f64(double %823, double %824, double 1.114700e-06)
  %826 = load double, double* %4, align 8
  %827 = call double @llvm.fmuladd.f64(double %825, double %826, double 1.240000e-04)
  %828 = load double, double* %4, align 8
  %829 = call double @llvm.fmuladd.f64(double %827, double %828, double 1.052000e-02)
  %830 = load double, double* %4, align 8
  %831 = call double @llvm.fmuladd.f64(double %829, double %830, double 5.129800e-01)
  store double %831, double* %2, align 8
  br label %968

832:                                              ; preds = %1
  %833 = load double, double* %3, align 8
  %834 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %833, double -1.710000e+02)
  store double %834, double* %4, align 8
  %835 = load double, double* %4, align 8
  %836 = call double @llvm.fmuladd.f64(double 1.669200e-13, double %835, double 4.325200e-11)
  %837 = load double, double* %4, align 8
  %838 = call double @llvm.fmuladd.f64(double %836, double %837, double 8.174300e-09)
  %839 = load double, double* %4, align 8
  %840 = call double @llvm.fmuladd.f64(double %838, double %839, double 1.178400e-06)
  %841 = load double, double* %4, align 8
  %842 = call double @llvm.fmuladd.f64(double %840, double %841, double 1.308800e-04)
  %843 = load double, double* %4, align 8
  %844 = call double @llvm.fmuladd.f64(double %842, double %843, double 1.103000e-02)
  %845 = load double, double* %4, align 8
  %846 = call double @llvm.fmuladd.f64(double %844, double %845, double 5.345300e-01)
  store double %846, double* %2, align 8
  br label %968

847:                                              ; preds = %1
  %848 = load double, double* %3, align 8
  %849 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %848, double -1.730000e+02)
  store double %849, double* %4, align 8
  %850 = load double, double* %4, align 8
  %851 = call double @llvm.fmuladd.f64(double 1.726800e-13, double %850, double 4.529000e-11)
  %852 = load double, double* %4, align 8
  %853 = call double @llvm.fmuladd.f64(double %851, double %852, double 0x3E428130DD085FB9)
  %854 = load double, double* %4, align 8
  %855 = call double @llvm.fmuladd.f64(double %853, double %854, double 1.245600e-06)
  %856 = load double, double* %4, align 8
  %857 = call double @llvm.fmuladd.f64(double %855, double %856, double 1.381500e-04)
  %858 = load double, double* %4, align 8
  %859 = call double @llvm.fmuladd.f64(double %857, double %858, double 1.156800e-02)
  %860 = load double, double* %4, align 8
  %861 = call double @llvm.fmuladd.f64(double %859, double %860, double 5.571200e-01)
  store double %861, double* %2, align 8
  br label %968

862:                                              ; preds = %1
  %863 = load double, double* %3, align 8
  %864 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %863, double -1.750000e+02)
  store double %864, double* %4, align 8
  %865 = load double, double* %4, align 8
  %866 = call double @llvm.fmuladd.f64(double 1.785000e-13, double %865, double 4.739700e-11)
  %867 = load double, double* %4, align 8
  %868 = call double @llvm.fmuladd.f64(double %866, double %867, double 9.080300e-09)
  %869 = load double, double* %4, align 8
  %870 = call double @llvm.fmuladd.f64(double %868, double %869, double 1.316400e-06)
  %871 = load double, double* %4, align 8
  %872 = call double @llvm.fmuladd.f64(double %870, double %871, double 1.458400e-04)
  %873 = load double, double* %4, align 8
  %874 = call double @llvm.fmuladd.f64(double %872, double %873, double 1.213500e-02)
  %875 = load double, double* %4, align 8
  %876 = call double @llvm.fmuladd.f64(double %874, double %875, double 5.808200e-01)
  store double %876, double* %2, align 8
  br label %968

877:                                              ; preds = %1
  %878 = load double, double* %3, align 8
  %879 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %878, double -1.770000e+02)
  store double %879, double* %4, align 8
  %880 = load double, double* %4, align 8
  %881 = call double @llvm.fmuladd.f64(double 1.843500e-13, double %880, double 4.957400e-11)
  %882 = load double, double* %4, align 8
  %883 = call double @llvm.fmuladd.f64(double %881, double %882, double 9.565100e-09)
  %884 = load double, double* %4, align 8
  %885 = call double @llvm.fmuladd.f64(double %883, double %884, double 1.390900e-06)
  %886 = load double, double* %4, align 8
  %887 = call double @llvm.fmuladd.f64(double %885, double %886, double 1.539600e-04)
  %888 = load double, double* %4, align 8
  %889 = call double @llvm.fmuladd.f64(double %887, double %888, double 1.273500e-02)
  %890 = load double, double* %4, align 8
  %891 = call double @llvm.fmuladd.f64(double %889, double %890, double 6.056900e-01)
  store double %891, double* %2, align 8
  br label %968

892:                                              ; preds = %1
  %893 = load double, double* %3, align 8
  %894 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %893, double -1.790000e+02)
  store double %894, double* %4, align 8
  %895 = load double, double* %4, align 8
  %896 = call double @llvm.fmuladd.f64(double 1.902500e-13, double %895, double 5.182200e-11)
  %897 = load double, double* %4, align 8
  %898 = call double @llvm.fmuladd.f64(double %896, double %897, double 1.007200e-08)
  %899 = load double, double* %4, align 8
  %900 = call double @llvm.fmuladd.f64(double %898, double %899, double 1.469500e-06)
  %901 = load double, double* %4, align 8
  %902 = call double @llvm.fmuladd.f64(double %900, double %901, double 1.625400e-04)
  %903 = load double, double* %4, align 8
  %904 = call double @llvm.fmuladd.f64(double %902, double %903, double 1.336800e-02)
  %905 = load double, double* %4, align 8
  %906 = call double @llvm.fmuladd.f64(double %904, double %905, double 6.317800e-01)
  store double %906, double* %2, align 8
  br label %968

907:                                              ; preds = %1
  %908 = load double, double* %3, align 8
  %909 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %908, double -1.810000e+02)
  store double %909, double* %4, align 8
  %910 = load double, double* %4, align 8
  %911 = call double @llvm.fmuladd.f64(double 1.961600e-13, double %910, double 5.414000e-11)
  %912 = load double, double* %4, align 8
  %913 = call double @llvm.fmuladd.f64(double %911, double %912, double 1.060100e-08)
  %914 = load double, double* %4, align 8
  %915 = call double @llvm.fmuladd.f64(double %913, double %914, double 1.552100e-06)
  %916 = load double, double* %4, align 8
  %917 = call double @llvm.fmuladd.f64(double %915, double %916, double 1.716000e-04)
  %918 = load double, double* %4, align 8
  %919 = call double @llvm.fmuladd.f64(double %917, double %918, double 1.403600e-02)
  %920 = load double, double* %4, align 8
  %921 = call double @llvm.fmuladd.f64(double %919, double %920, double 6.591800e-01)
  store double %921, double* %2, align 8
  br label %968

922:                                              ; preds = %1
  %923 = load double, double* %3, align 8
  %924 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %923, double -1.830000e+02)
  store double %924, double* %4, align 8
  %925 = load double, double* %4, align 8
  %926 = call double @llvm.fmuladd.f64(double 2.020900e-13, double %925, double 5.653000e-11)
  %927 = load double, double* %4, align 8
  %928 = call double @llvm.fmuladd.f64(double %926, double %927, double 1.115500e-08)
  %929 = load double, double* %4, align 8
  %930 = call double @llvm.fmuladd.f64(double %928, double %929, double 1.639200e-06)
  %931 = load double, double* %4, align 8
  %932 = call double @llvm.fmuladd.f64(double %930, double %931, double 1.811700e-04)
  %933 = load double, double* %4, align 8
  %934 = call double @llvm.fmuladd.f64(double %932, double %933, double 1.474100e-02)
  %935 = load double, double* %4, align 8
  %936 = call double @llvm.fmuladd.f64(double %934, double %935, double 6.879500e-01)
  store double %936, double* %2, align 8
  br label %968

937:                                              ; preds = %1
  %938 = load double, double* %3, align 8
  %939 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %938, double -1.850000e+02)
  store double %939, double* %4, align 8
  %940 = load double, double* %4, align 8
  %941 = call double @llvm.fmuladd.f64(double 2.080300e-13, double %940, double 5.899100e-11)
  %942 = load double, double* %4, align 8
  %943 = call double @llvm.fmuladd.f64(double %941, double %942, double 1.173200e-08)
  %944 = load double, double* %4, align 8
  %945 = call double @llvm.fmuladd.f64(double %943, double %944, double 1.730700e-06)
  %946 = load double, double* %4, align 8
  %947 = call double @llvm.fmuladd.f64(double %945, double %946, double 1.912800e-04)
  %948 = load double, double* %4, align 8
  %949 = call double @llvm.fmuladd.f64(double %947, double %948, double 1.548600e-02)
  %950 = load double, double* %4, align 8
  %951 = call double @llvm.fmuladd.f64(double %949, double %950, double 7.181800e-01)
  store double %951, double* %2, align 8
  br label %968

952:                                              ; preds = %1
  %953 = load double, double* %3, align 8
  %954 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %953, double -1.870000e+02)
  store double %954, double* %4, align 8
  %955 = load double, double* %4, align 8
  %956 = call double @llvm.fmuladd.f64(double 2.139500e-13, double %955, double 6.152300e-11)
  %957 = load double, double* %4, align 8
  %958 = call double @llvm.fmuladd.f64(double %956, double %957, double 1.233500e-08)
  %959 = load double, double* %4, align 8
  %960 = call double @llvm.fmuladd.f64(double %958, double %959, double 1.826900e-06)
  %961 = load double, double* %4, align 8
  %962 = call double @llvm.fmuladd.f64(double %960, double %961, double 2.019500e-04)
  %963 = load double, double* %4, align 8
  %964 = call double @llvm.fmuladd.f64(double %962, double %963, double 1.627200e-02)
  %965 = load double, double* %4, align 8
  %966 = call double @llvm.fmuladd.f64(double %964, double %965, double 7.499300e-01)
  store double %966, double* %2, align 8
  br label %968

967:                                              ; preds = %1
  store double 1.000000e+00, double* %2, align 8
  br label %968

968:                                              ; preds = %967, %952, %937, %922, %907, %892, %877, %862, %847, %832, %817, %802, %787, %772, %757, %742, %727, %712, %697, %682, %667, %652, %637, %622, %607, %592, %577, %562, %547, %532, %517, %502, %487, %472, %457, %442, %427, %412, %397, %382, %367, %352, %337, %322, %307, %292, %277, %262, %247, %232, %217, %202, %187, %172, %157, %142, %127, %112, %97, %82, %67, %52, %37, %22, %7
  %969 = load double, double* %2, align 8
  ret double %969
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  store i32 0, i32* %1, align 4
  %3 = call double @foo(double noundef 7.840000e+01)
  store double %3, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = fcmp olt double %4, 3.800000e-01
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load double, double* %2, align 8
  %8 = fcmp ogt double %7, 4.200000e-01
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %0
  call void @abort() #3
  unreachable

10:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
