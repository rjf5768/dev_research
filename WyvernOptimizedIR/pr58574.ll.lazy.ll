; ModuleID = './pr58574.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr58574.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline nosync nounwind readnone uwtable willreturn
define dso_local double @foo(double noundef %0) #0 {
  %2 = fptosi double %0 to i32
  switch i32 %2, label %515 [
    i32 0, label %3
    i32 1, label %11
    i32 2, label %19
    i32 3, label %27
    i32 4, label %35
    i32 5, label %43
    i32 6, label %51
    i32 7, label %59
    i32 8, label %67
    i32 9, label %75
    i32 10, label %83
    i32 11, label %91
    i32 12, label %99
    i32 13, label %107
    i32 14, label %115
    i32 15, label %123
    i32 16, label %131
    i32 17, label %139
    i32 18, label %147
    i32 19, label %155
    i32 20, label %163
    i32 21, label %171
    i32 22, label %179
    i32 23, label %187
    i32 24, label %195
    i32 25, label %203
    i32 26, label %211
    i32 30, label %219
    i32 40, label %227
    i32 50, label %235
    i32 60, label %243
    i32 61, label %251
    i32 62, label %259
    i32 63, label %267
    i32 64, label %275
    i32 65, label %283
    i32 66, label %291
    i32 67, label %299
    i32 68, label %307
    i32 69, label %315
    i32 70, label %323
    i32 71, label %331
    i32 72, label %339
    i32 73, label %347
    i32 74, label %355
    i32 75, label %363
    i32 76, label %371
    i32 77, label %379
    i32 78, label %387
    i32 79, label %395
    i32 80, label %403
    i32 81, label %411
    i32 82, label %419
    i32 83, label %427
    i32 84, label %435
    i32 85, label %443
    i32 86, label %451
    i32 87, label %459
    i32 88, label %467
    i32 89, label %475
    i32 90, label %483
    i32 91, label %491
    i32 92, label %499
    i32 93, label %507
  ]

3:                                                ; preds = %1
  %4 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.000000e+00)
  %5 = call double @llvm.fmuladd.f64(double %4, double 1.591700e-15, double 3.688500e-13)
  %6 = call double @llvm.fmuladd.f64(double %5, double %4, double 8.171000e-11)
  %7 = call double @llvm.fmuladd.f64(double %6, double %4, double 1.740300e-08)
  %8 = call double @llvm.fmuladd.f64(double %7, double %4, double 3.577900e-06)
  %9 = call double @llvm.fmuladd.f64(double %8, double %4, double 7.123400e-04)
  %10 = call double @llvm.fmuladd.f64(double %9, double %4, double 7.087800e-04)
  br label %516

11:                                               ; preds = %1
  %12 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -3.000000e+00)
  %13 = call double @llvm.fmuladd.f64(double %12, double 1.686800e-15, double 3.885200e-13)
  %14 = call double @llvm.fmuladd.f64(double %13, double %12, double 0x3DD7803F03D4DB15)
  %15 = call double @llvm.fmuladd.f64(double %14, double %12, double 1.807100e-08)
  %16 = call double @llvm.fmuladd.f64(double %15, double %12, double 3.684300e-06)
  %17 = call double @llvm.fmuladd.f64(double %16, double %12, double 7.268600e-04)
  %18 = call double @llvm.fmuladd.f64(double %17, double %12, double 2.147900e-03)
  br label %516

19:                                               ; preds = %1
  %20 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -5.000000e+00)
  %21 = call double @llvm.fmuladd.f64(double %20, double 1.787200e-15, double 4.093500e-13)
  %22 = call double @llvm.fmuladd.f64(double %21, double %20, double 8.948400e-11)
  %23 = call double @llvm.fmuladd.f64(double %22, double %20, double 1.877100e-08)
  %24 = call double @llvm.fmuladd.f64(double %23, double %20, double 3.794800e-06)
  %25 = call double @llvm.fmuladd.f64(double %24, double %20, double 7.418200e-04)
  %26 = call double @llvm.fmuladd.f64(double %25, double %20, double 3.616500e-03)
  br label %516

27:                                               ; preds = %1
  %28 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -7.000000e+00)
  %29 = call double @llvm.fmuladd.f64(double %28, double 1.893900e-15, double 4.314300e-13)
  %30 = call double @llvm.fmuladd.f64(double %29, double %28, double 9.368700e-11)
  %31 = call double @llvm.fmuladd.f64(double %30, double %28, double 1.950400e-08)
  %32 = call double @llvm.fmuladd.f64(double %31, double %28, double 3.909600e-06)
  %33 = call double @llvm.fmuladd.f64(double %32, double %28, double 7.572200e-04)
  %34 = call double @llvm.fmuladd.f64(double %33, double %28, double 5.115400e-03)
  br label %516

35:                                               ; preds = %1
  %36 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -9.000000e+00)
  %37 = call double @llvm.fmuladd.f64(double %36, double 2.007600e-15, double 4.548400e-13)
  %38 = call double @llvm.fmuladd.f64(double %37, double %36, double 9.811700e-11)
  %39 = call double @llvm.fmuladd.f64(double %38, double %36, double 2.027100e-08)
  %40 = call double @llvm.fmuladd.f64(double %39, double %36, double 4.028900e-06)
  %41 = call double @llvm.fmuladd.f64(double %40, double %36, double 7.731000e-04)
  %42 = call double @llvm.fmuladd.f64(double %41, double %36, double 6.645700e-03)
  br label %516

43:                                               ; preds = %1
  %44 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.100000e+01)
  %45 = call double @llvm.fmuladd.f64(double %44, double 2.128500e-15, double 4.796500e-13)
  %46 = call double @llvm.fmuladd.f64(double %45, double %44, double 1.027800e-10)
  %47 = call double @llvm.fmuladd.f64(double %46, double %44, double 2.107400e-08)
  %48 = call double @llvm.fmuladd.f64(double %47, double %44, double 4.152900e-06)
  %49 = call double @llvm.fmuladd.f64(double %48, double %44, double 7.894600e-04)
  %50 = call double @llvm.fmuladd.f64(double %49, double %44, double 8.208200e-03)
  br label %516

51:                                               ; preds = %1
  %52 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.300000e+01)
  %53 = call double @llvm.fmuladd.f64(double %52, double 2.257300e-15, double 5.059500e-13)
  %54 = call double @llvm.fmuladd.f64(double %53, double %52, double 1.077100e-10)
  %55 = call double @llvm.fmuladd.f64(double %54, double %52, double 2.191600e-08)
  %56 = call double @llvm.fmuladd.f64(double %55, double %52, double 4.281900e-06)
  %57 = call double @llvm.fmuladd.f64(double %56, double %52, double 0x3F4A6BFC7D698D37)
  %58 = call double @llvm.fmuladd.f64(double %57, double %52, double 9.803900e-03)
  br label %516

59:                                               ; preds = %1
  %60 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.500000e+01)
  %61 = call double @llvm.fmuladd.f64(double %60, double 2.394400e-15, double 5.338600e-13)
  %62 = call double @llvm.fmuladd.f64(double %61, double %60, double 1.129100e-10)
  %63 = call double @llvm.fmuladd.f64(double %62, double %60, double 2.279800e-08)
  %64 = call double @llvm.fmuladd.f64(double %63, double %60, double 4.416000e-06)
  %65 = call double @llvm.fmuladd.f64(double %64, double %60, double 8.237200e-04)
  %66 = call double @llvm.fmuladd.f64(double %65, double %60, double 1.143300e-02)
  br label %516

67:                                               ; preds = %1
  %68 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.700000e+01)
  %69 = call double @llvm.fmuladd.f64(double %68, double 2.540300e-15, double 5.634600e-13)
  %70 = call double @llvm.fmuladd.f64(double %69, double %68, double 1.183900e-10)
  %71 = call double @llvm.fmuladd.f64(double %70, double %68, double 2.372300e-08)
  %72 = call double @llvm.fmuladd.f64(double %71, double %68, double 4.555500e-06)
  %73 = call double @llvm.fmuladd.f64(double %72, double %68, double 0x3F4B94708FE00767)
  %74 = call double @llvm.fmuladd.f64(double %73, double %68, double 1.309900e-02)
  br label %516

75:                                               ; preds = %1
  %76 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.900000e+01)
  %77 = call double @llvm.fmuladd.f64(double %76, double 2.695700e-15, double 0x3D64EE05C5BFFEAA)
  %78 = call double @llvm.fmuladd.f64(double %77, double %76, double 1.241800e-10)
  %79 = call double @llvm.fmuladd.f64(double %78, double %76, double 2.469400e-08)
  %80 = call double @llvm.fmuladd.f64(double %79, double %76, double 4.700800e-06)
  %81 = call double @llvm.fmuladd.f64(double %80, double %76, double 0x3F4C2FB67BFD7C6D)
  %82 = call double @llvm.fmuladd.f64(double %81, double %76, double 1.480000e-02)
  br label %516

83:                                               ; preds = %1
  %84 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -2.100000e+01)
  %85 = call double @llvm.fmuladd.f64(double %84, double 2.861200e-15, double 6.282000e-13)
  %86 = call double @llvm.fmuladd.f64(double %85, double %84, double 1.303000e-10)
  %87 = call double @llvm.fmuladd.f64(double %86, double %84, double 2.571100e-08)
  %88 = call double @llvm.fmuladd.f64(double %87, double %84, double 4.852000e-06)
  %89 = call double @llvm.fmuladd.f64(double %88, double %84, double 0x3F4CCFEF6C0912A3)
  %90 = call double @llvm.fmuladd.f64(double %89, double %84, double 1.654000e-02)
  br label %516

91:                                               ; preds = %1
  %92 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -2.300000e+01)
  %93 = call double @llvm.fmuladd.f64(double %92, double 3.037500e-15, double 6.635800e-13)
  %94 = call double @llvm.fmuladd.f64(double %93, double %92, double 1.367500e-10)
  %95 = call double @llvm.fmuladd.f64(double %94, double %92, double 2.677900e-08)
  %96 = call double @llvm.fmuladd.f64(double %95, double %92, double 5.009400e-06)
  %97 = call double @llvm.fmuladd.f64(double %96, double %92, double 0x3F4D755BCCAF709B)
  %98 = call double @llvm.fmuladd.f64(double %97, double %92, double 1.831800e-02)
  br label %516

99:                                               ; preds = %1
  %100 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -2.500000e+01)
  %101 = call double @llvm.fmuladd.f64(double %100, double 3.225200e-15, double 7.011400e-13)
  %102 = call double @llvm.fmuladd.f64(double %101, double %100, double 1.435700e-10)
  %103 = call double @llvm.fmuladd.f64(double %102, double %100, double 2.790000e-08)
  %104 = call double @llvm.fmuladd.f64(double %103, double %100, double 5.173400e-06)
  %105 = call double @llvm.fmuladd.f64(double %104, double %100, double 9.193600e-04)
  %106 = call double @llvm.fmuladd.f64(double %105, double %100, double 2.013600e-02)
  br label %516

107:                                              ; preds = %1
  %108 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -2.700000e+01)
  %109 = call double @llvm.fmuladd.f64(double %108, double 3.425100e-15, double 7.410300e-13)
  %110 = call double @llvm.fmuladd.f64(double %109, double %108, double 1.507800e-10)
  %111 = call double @llvm.fmuladd.f64(double %110, double %108, double 2.907800e-08)
  %112 = call double @llvm.fmuladd.f64(double %111, double %108, double 0x3ED66A65FF82397D)
  %113 = call double @llvm.fmuladd.f64(double %112, double %108, double 0x3F4ED0A59F6159B7)
  %114 = call double @llvm.fmuladd.f64(double %113, double %108, double 2.199600e-02)
  br label %516

115:                                              ; preds = %1
  %116 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -2.900000e+01)
  %117 = call double @llvm.fmuladd.f64(double %116, double 3.638100e-15, double 7.834000e-13)
  %118 = call double @llvm.fmuladd.f64(double %117, double %116, double 1.584000e-10)
  %119 = call double @llvm.fmuladd.f64(double %118, double %116, double 3.031400e-08)
  %120 = call double @llvm.fmuladd.f64(double %119, double %116, double 5.522500e-06)
  %121 = call double @llvm.fmuladd.f64(double %120, double %116, double 0x3F4F86EE71374FCD)
  %122 = call double @llvm.fmuladd.f64(double %121, double %116, double 2.389800e-02)
  br label %516

123:                                              ; preds = %1
  %124 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -3.100000e+01)
  %125 = call double @llvm.fmuladd.f64(double %124, double 3.864900e-15, double 8.284000e-13)
  %126 = call double @llvm.fmuladd.f64(double %125, double %124, double 1.664600e-10)
  %127 = call double @llvm.fmuladd.f64(double %126, double %124, double 3.161300e-08)
  %128 = call double @llvm.fmuladd.f64(double %127, double %124, double 0x3ED7F1221183D337)
  %129 = call double @llvm.fmuladd.f64(double %128, double %124, double 9.845900e-04)
  %130 = call double @llvm.fmuladd.f64(double %129, double %124, double 2.584500e-02)
  br label %516

131:                                              ; preds = %1
  %132 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -3.300000e+01)
  %133 = call double @llvm.fmuladd.f64(double %132, double 4.106600e-15, double 8.762200e-13)
  %134 = call double @llvm.fmuladd.f64(double %133, double %132, double 1.749800e-10)
  %135 = call double @llvm.fmuladd.f64(double %134, double %132, double 3.297900e-08)
  %136 = call double @llvm.fmuladd.f64(double %135, double %132, double 5.902000e-06)
  %137 = call double @llvm.fmuladd.f64(double %136, double %132, double 1.007800e-03)
  %138 = call double @llvm.fmuladd.f64(double %137, double %132, double 2.783700e-02)
  br label %516

139:                                              ; preds = %1
  %140 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -3.500000e+01)
  %141 = call double @llvm.fmuladd.f64(double %140, double 4.363900e-15, double 0x3D704EF8D289D598)
  %142 = call double @llvm.fmuladd.f64(double %141, double %140, double 1.839900e-10)
  %143 = call double @llvm.fmuladd.f64(double %142, double %140, double 3.441400e-08)
  %144 = call double @llvm.fmuladd.f64(double %143, double %140, double 6.104100e-06)
  %145 = call double @llvm.fmuladd.f64(double %144, double %140, double 1.031800e-03)
  %146 = call double @llvm.fmuladd.f64(double %145, double %140, double 2.987700e-02)
  br label %516

147:                                              ; preds = %1
  %148 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -3.700000e+01)
  %149 = call double @llvm.fmuladd.f64(double %148, double 4.638100e-15, double 0x3D71421F0DF0657F)
  %150 = call double @llvm.fmuladd.f64(double %149, double %148, double 1.935300e-10)
  %151 = call double @llvm.fmuladd.f64(double %150, double %148, double 3.592400e-08)
  %152 = call double @llvm.fmuladd.f64(double %151, double %148, double 6.315100e-06)
  %153 = call double @llvm.fmuladd.f64(double %152, double %148, double 1.056600e-03)
  %154 = call double @llvm.fmuladd.f64(double %153, double %148, double 3.196500e-02)
  br label %516

155:                                              ; preds = %1
  %156 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -3.900000e+01)
  %157 = call double @llvm.fmuladd.f64(double %156, double 4.930000e-15, double 1.038400e-12)
  %158 = call double @llvm.fmuladd.f64(double %157, double %156, double 2.036200e-10)
  %159 = call double @llvm.fmuladd.f64(double %158, double %156, double 3.751200e-08)
  %160 = call double @llvm.fmuladd.f64(double %159, double %156, double 6.535400e-06)
  %161 = call double @llvm.fmuladd.f64(double %160, double %156, double 1.082300e-03)
  %162 = call double @llvm.fmuladd.f64(double %161, double %156, double 3.410400e-02)
  br label %516

163:                                              ; preds = %1
  %164 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -4.100000e+01)
  %165 = call double @llvm.fmuladd.f64(double %164, double 5.240900e-15, double 1.099400e-12)
  %166 = call double @llvm.fmuladd.f64(double %165, double %164, double 2.143100e-10)
  %167 = call double @llvm.fmuladd.f64(double %166, double %164, double 3.918400e-08)
  %168 = call double @llvm.fmuladd.f64(double %167, double %164, double 0x3EDC604AFDDC0CA6)
  %169 = call double @llvm.fmuladd.f64(double %168, double %164, double 1.108900e-03)
  %170 = call double @llvm.fmuladd.f64(double %169, double %164, double 3.629500e-02)
  br label %516

171:                                              ; preds = %1
  %172 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -4.300000e+01)
  %173 = call double @llvm.fmuladd.f64(double %172, double 5.572100e-15, double 1.164200e-12)
  %174 = call double @llvm.fmuladd.f64(double %173, double %172, double 2.256300e-10)
  %175 = call double @llvm.fmuladd.f64(double %174, double %172, double 4.094300e-08)
  %176 = call double @llvm.fmuladd.f64(double %175, double %172, double 7.005800e-06)
  %177 = call double @llvm.fmuladd.f64(double %176, double %172, double 1.136400e-03)
  %178 = call double @llvm.fmuladd.f64(double %177, double %172, double 3.854000e-02)
  br label %516

179:                                              ; preds = %1
  %180 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -4.500000e+01)
  %181 = call double @llvm.fmuladd.f64(double %180, double 5.924600e-15, double 1.233200e-12)
  %182 = call double @llvm.fmuladd.f64(double %181, double %180, double 2.376100e-10)
  %183 = call double @llvm.fmuladd.f64(double %182, double %180, double 4.279600e-08)
  %184 = call double @llvm.fmuladd.f64(double %183, double %180, double 0x3EDE70097B9F75B6)
  %185 = call double @llvm.fmuladd.f64(double %184, double %180, double 1.165000e-03)
  %186 = call double @llvm.fmuladd.f64(double %185, double %180, double 4.084200e-02)
  br label %516

187:                                              ; preds = %1
  %188 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -4.700000e+01)
  %189 = call double @llvm.fmuladd.f64(double %188, double 0x3CFC5F67CD792795, double 1.306500e-12)
  %190 = call double @llvm.fmuladd.f64(double %189, double %188, double 2.503000e-10)
  %191 = call double @llvm.fmuladd.f64(double %190, double %188, double 4.474700e-08)
  %192 = call double @llvm.fmuladd.f64(double %191, double %188, double 0x3EDF8A006BD80CBE)
  %193 = call double @llvm.fmuladd.f64(double %192, double %188, double 1.194500e-03)
  %194 = call double @llvm.fmuladd.f64(double %193, double %188, double 4.320100e-02)
  br label %516

195:                                              ; preds = %1
  %196 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -4.900000e+01)
  %197 = call double @llvm.fmuladd.f64(double %196, double 6.699600e-15, double 1.384500e-12)
  %198 = call double @llvm.fmuladd.f64(double %197, double %196, double 2.637500e-10)
  %199 = call double @llvm.fmuladd.f64(double %198, double %196, double 4.680300e-08)
  %200 = call double @llvm.fmuladd.f64(double %199, double %196, double 7.794100e-06)
  %201 = call double @llvm.fmuladd.f64(double %200, double %196, double 1.225100e-03)
  %202 = call double @llvm.fmuladd.f64(double %201, double %196, double 4.562100e-02)
  br label %516

203:                                              ; preds = %1
  %204 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -5.100000e+01)
  %205 = call double @llvm.fmuladd.f64(double %204, double 7.124900e-15, double 1.467400e-12)
  %206 = call double @llvm.fmuladd.f64(double %205, double %204, double 2.780100e-10)
  %207 = call double @llvm.fmuladd.f64(double %206, double %204, double 4.896900e-08)
  %208 = call double @llvm.fmuladd.f64(double %207, double %204, double 8.081400e-06)
  %209 = call double @llvm.fmuladd.f64(double %208, double %204, double 1.256900e-03)
  %210 = call double @llvm.fmuladd.f64(double %209, double %204, double 4.810300e-02)
  br label %516

211:                                              ; preds = %1
  %212 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -5.900000e+01)
  %213 = call double @llvm.fmuladd.f64(double %212, double 9.116000e-15, double 1.855200e-12)
  %214 = call double @llvm.fmuladd.f64(double %213, double %212, double 3.441400e-10)
  %215 = call double @llvm.fmuladd.f64(double %214, double %212, double 5.888200e-08)
  %216 = call double @llvm.fmuladd.f64(double %215, double %212, double 0x3EE3A73B6897E136)
  %217 = call double @llvm.fmuladd.f64(double %216, double %212, double 1.396200e-03)
  %218 = call double @llvm.fmuladd.f64(double %217, double %212, double 5.870200e-02)
  br label %516

219:                                              ; preds = %1
  %220 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -7.900000e+01)
  %221 = call double @llvm.fmuladd.f64(double %220, double 1.681500e-14, double 3.365600e-12)
  %222 = call double @llvm.fmuladd.f64(double %221, double %220, double 5.975200e-10)
  %223 = call double @llvm.fmuladd.f64(double %222, double %220, double 9.554900e-08)
  %224 = call double @llvm.fmuladd.f64(double %223, double %220, double 1.390300e-05)
  %225 = call double @llvm.fmuladd.f64(double %224, double %220, double 1.854400e-03)
  %226 = call double @llvm.fmuladd.f64(double %225, double %220, double 9.090800e-02)
  br label %516

227:                                              ; preds = %1
  %228 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -9.900000e+01)
  %229 = call double @llvm.fmuladd.f64(double %228, double 3.041200e-14, double 6.125800e-12)
  %230 = call double @llvm.fmuladd.f64(double %229, double %228, double 1.058500e-09)
  %231 = call double @llvm.fmuladd.f64(double %230, double %228, double 1.599600e-07)
  %232 = call double @llvm.fmuladd.f64(double %231, double %228, double 2.138500e-05)
  %233 = call double @llvm.fmuladd.f64(double %232, double %228, double 2.547400e-03)
  %234 = call double @llvm.fmuladd.f64(double %233, double %228, double 1.344300e-01)
  br label %516

235:                                              ; preds = %1
  %236 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.190000e+02)
  %237 = call double @llvm.fmuladd.f64(double %236, double 5.293100e-14, double 1.102100e-11)
  %238 = call double @llvm.fmuladd.f64(double %237, double %236, double 1.893400e-09)
  %239 = call double @llvm.fmuladd.f64(double %238, double %236, double 2.747900e-07)
  %240 = call double @llvm.fmuladd.f64(double %239, double %236, double 3.409600e-05)
  %241 = call double @llvm.fmuladd.f64(double %240, double %236, double 3.634200e-03)
  %242 = call double @llvm.fmuladd.f64(double %241, double %236, double 1.954000e-01)
  br label %516

243:                                              ; preds = %1
  %244 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.210000e+02)
  %245 = call double @llvm.fmuladd.f64(double %244, double 5.579000e-14, double 1.167300e-11)
  %246 = call double @llvm.fmuladd.f64(double %245, double %244, double 2.006800e-09)
  %247 = call double @llvm.fmuladd.f64(double %246, double %244, double 2.903800e-07)
  %248 = call double @llvm.fmuladd.f64(double %247, double %244, double 3.579100e-05)
  %249 = call double @llvm.fmuladd.f64(double %248, double %244, double 3.773900e-03)
  %250 = call double @llvm.fmuladd.f64(double %249, double %244, double 2.028100e-01)
  br label %516

251:                                              ; preds = %1
  %252 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.230000e+02)
  %253 = call double @llvm.fmuladd.f64(double %252, double 5.877000e-14, double 1.236100e-11)
  %254 = call double @llvm.fmuladd.f64(double %253, double %252, double 2.127000e-09)
  %255 = call double @llvm.fmuladd.f64(double %254, double %252, double 3.069100e-07)
  %256 = call double @llvm.fmuladd.f64(double %255, double %252, double 3.758200e-05)
  %257 = call double @llvm.fmuladd.f64(double %256, double %252, double 3.920600e-03)
  %258 = call double @llvm.fmuladd.f64(double %257, double %252, double 2.105000e-01)
  br label %516

259:                                              ; preds = %1
  %260 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.250000e+02)
  %261 = call double @llvm.fmuladd.f64(double %260, double 0x3D316A6B65650415, double 1.308400e-11)
  %262 = call double @llvm.fmuladd.f64(double %261, double %260, double 2.254200e-09)
  %263 = call double @llvm.fmuladd.f64(double %262, double %260, double 3.244300e-07)
  %264 = call double @llvm.fmuladd.f64(double %263, double %260, double 3.947600e-05)
  %265 = call double @llvm.fmuladd.f64(double %264, double %260, double 4.074700e-03)
  %266 = call double @llvm.fmuladd.f64(double %265, double %260, double 2.184900e-01)
  br label %516

267:                                              ; preds = %1
  %268 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.270000e+02)
  %269 = call double @llvm.fmuladd.f64(double %268, double 6.510000e-14, double 1.384600e-11)
  %270 = call double @llvm.fmuladd.f64(double %269, double %268, double 2.388800e-09)
  %271 = call double @llvm.fmuladd.f64(double %270, double %268, double 3.430000e-07)
  %272 = call double @llvm.fmuladd.f64(double %271, double %268, double 4.147700e-05)
  %273 = call double @llvm.fmuladd.f64(double %272, double %268, double 4.236600e-03)
  %274 = call double @llvm.fmuladd.f64(double %273, double %268, double 2.268000e-01)
  br label %516

275:                                              ; preds = %1
  %276 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.290000e+02)
  %277 = call double @llvm.fmuladd.f64(double %276, double 6.845300e-14, double 1.464700e-11)
  %278 = call double @llvm.fmuladd.f64(double %277, double %276, double 2.531200e-09)
  %279 = call double @llvm.fmuladd.f64(double %278, double %276, double 3.626800e-07)
  %280 = call double @llvm.fmuladd.f64(double %279, double %276, double 4.359400e-05)
  %281 = call double @llvm.fmuladd.f64(double %280, double %276, double 4.406700e-03)
  %282 = call double @llvm.fmuladd.f64(double %281, double %276, double 2.354500e-01)
  br label %516

283:                                              ; preds = %1
  %284 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.310000e+02)
  %285 = call double @llvm.fmuladd.f64(double %284, double 7.193300e-14, double 1.548900e-11)
  %286 = call double @llvm.fmuladd.f64(double %285, double %284, double 2.681900e-09)
  %287 = call double @llvm.fmuladd.f64(double %286, double %284, double 3.835200e-07)
  %288 = call double @llvm.fmuladd.f64(double %287, double %284, double 4.583200e-05)
  %289 = call double @llvm.fmuladd.f64(double %288, double %284, double 4.585500e-03)
  %290 = call double @llvm.fmuladd.f64(double %289, double %284, double 2.444400e-01)
  br label %516

291:                                              ; preds = %1
  %292 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.330000e+02)
  %293 = call double @llvm.fmuladd.f64(double %292, double 7.554100e-14, double 1.637400e-11)
  %294 = call double @llvm.fmuladd.f64(double %293, double %292, double 2.841100e-09)
  %295 = call double @llvm.fmuladd.f64(double %294, double %292, double 4.056100e-07)
  %296 = call double @llvm.fmuladd.f64(double %295, double %292, double 4.819900e-05)
  %297 = call double @llvm.fmuladd.f64(double %296, double %292, double 4.773500e-03)
  %298 = call double @llvm.fmuladd.f64(double %297, double %292, double 2.537900e-01)
  br label %516

299:                                              ; preds = %1
  %300 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.350000e+02)
  %301 = call double @llvm.fmuladd.f64(double %300, double 0x3D365094FA076898, double 1.730300e-11)
  %302 = call double @llvm.fmuladd.f64(double %301, double %300, double 3.009500e-09)
  %303 = call double @llvm.fmuladd.f64(double %302, double %300, double 4.290100e-07)
  %304 = call double @llvm.fmuladd.f64(double %303, double %300, double 5.070200e-05)
  %305 = call double @llvm.fmuladd.f64(double %304, double %300, double 4.971300e-03)
  %306 = call double @llvm.fmuladd.f64(double %305, double %300, double 2.635400e-01)
  br label %516

307:                                              ; preds = %1
  %308 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.370000e+02)
  %309 = call double @llvm.fmuladd.f64(double %308, double 0x3D37672816DA09EA, double 1.827700e-11)
  %310 = call double @llvm.fmuladd.f64(double %309, double %308, double 3.187400e-09)
  %311 = call double @llvm.fmuladd.f64(double %310, double %308, double 4.537900e-07)
  %312 = call double @llvm.fmuladd.f64(double %311, double %308, double 5.335000e-05)
  %313 = call double @llvm.fmuladd.f64(double %312, double %308, double 5.179300e-03)
  %314 = call double @llvm.fmuladd.f64(double %313, double %308, double 2.736900e-01)
  br label %516

315:                                              ; preds = %1
  %316 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.390000e+02)
  %317 = call double @llvm.fmuladd.f64(double %316, double 0x3D388706D4F36630, double 1.929900e-11)
  %318 = call double @llvm.fmuladd.f64(double %317, double %316, double 3.375200e-09)
  %319 = call double @llvm.fmuladd.f64(double %318, double %316, double 4.800300e-07)
  %320 = call double @llvm.fmuladd.f64(double %319, double %316, double 5.615000e-05)
  %321 = call double @llvm.fmuladd.f64(double %320, double %316, double 5.398300e-03)
  %322 = call double @llvm.fmuladd.f64(double %321, double %316, double 2.842600e-01)
  br label %516

323:                                              ; preds = %1
  %324 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.410000e+02)
  %325 = call double @llvm.fmuladd.f64(double %324, double 9.126200e-14, double 2.036900e-11)
  %326 = call double @llvm.fmuladd.f64(double %325, double %324, double 3.573500e-09)
  %327 = call double @llvm.fmuladd.f64(double %326, double %324, double 5.078200e-07)
  %328 = call double @llvm.fmuladd.f64(double %327, double %324, double 5.911300e-05)
  %329 = call double @llvm.fmuladd.f64(double %328, double %324, double 5.628800e-03)
  %330 = call double @llvm.fmuladd.f64(double %329, double %324, double 2.952900e-01)
  br label %516

331:                                              ; preds = %1
  %332 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.430000e+02)
  %333 = call double @llvm.fmuladd.f64(double %332, double 9.551300e-14, double 2.149000e-11)
  %334 = call double @llvm.fmuladd.f64(double %333, double %332, double 3.782700e-09)
  %335 = call double @llvm.fmuladd.f64(double %334, double %332, double 5.372400e-07)
  %336 = call double @llvm.fmuladd.f64(double %335, double %332, double 6.224800e-05)
  %337 = call double @llvm.fmuladd.f64(double %336, double %332, double 5.871400e-03)
  %338 = call double @llvm.fmuladd.f64(double %337, double %332, double 3.067900e-01)
  br label %516

339:                                              ; preds = %1
  %340 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.450000e+02)
  %341 = call double @llvm.fmuladd.f64(double %340, double 9.989100e-14, double 2.266200e-11)
  %342 = call double @llvm.fmuladd.f64(double %341, double %340, double 4.003500e-09)
  %343 = call double @llvm.fmuladd.f64(double %342, double %340, double 5.683700e-07)
  %344 = call double @llvm.fmuladd.f64(double %343, double %340, double 6.556400e-05)
  %345 = call double @llvm.fmuladd.f64(double %344, double %340, double 6.127000e-03)
  %346 = call double @llvm.fmuladd.f64(double %345, double %340, double 3.187800e-01)
  br label %516

347:                                              ; preds = %1
  %348 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.470000e+02)
  %349 = call double @llvm.fmuladd.f64(double %348, double 1.043900e-13, double 2.388800e-11)
  %350 = call double @llvm.fmuladd.f64(double %349, double %348, double 4.236200e-09)
  %351 = call double @llvm.fmuladd.f64(double %350, double %348, double 6.013300e-07)
  %352 = call double @llvm.fmuladd.f64(double %351, double %348, double 6.907200e-05)
  %353 = call double @llvm.fmuladd.f64(double %352, double %348, double 6.396200e-03)
  %354 = call double @llvm.fmuladd.f64(double %353, double %348, double 3.313000e-01)
  br label %516

355:                                              ; preds = %1
  %356 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.490000e+02)
  %357 = call double @llvm.fmuladd.f64(double %356, double 1.090100e-13, double 2.516800e-11)
  %358 = call double @llvm.fmuladd.f64(double %357, double %356, double 4.481400e-09)
  %359 = call double @llvm.fmuladd.f64(double %358, double %356, double 6.361900e-07)
  %360 = call double @llvm.fmuladd.f64(double %359, double %356, double 7.278300e-05)
  %361 = call double @llvm.fmuladd.f64(double %360, double %356, double 6.679800e-03)
  %362 = call double @llvm.fmuladd.f64(double %361, double %356, double 3.443800e-01)
  br label %516

363:                                              ; preds = %1
  %364 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.510000e+02)
  %365 = call double @llvm.fmuladd.f64(double %364, double 1.137600e-13, double 2.650500e-11)
  %366 = call double @llvm.fmuladd.f64(double %365, double %364, double 4.739700e-09)
  %367 = call double @llvm.fmuladd.f64(double %366, double %364, double 6.730600e-07)
  %368 = call double @llvm.fmuladd.f64(double %367, double %364, double 7.671000e-05)
  %369 = call double @llvm.fmuladd.f64(double %368, double %364, double 6.978700e-03)
  %370 = call double @llvm.fmuladd.f64(double %369, double %364, double 3.580300e-01)
  br label %516

371:                                              ; preds = %1
  %372 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.530000e+02)
  %373 = call double @llvm.fmuladd.f64(double %372, double 1.186200e-13, double 2.789900e-11)
  %374 = call double @llvm.fmuladd.f64(double %373, double %372, double 5.011700e-09)
  %375 = call double @llvm.fmuladd.f64(double %374, double %372, double 0x3EA7E48C7FD54B3F)
  %376 = call double @llvm.fmuladd.f64(double %375, double %372, double 8.086400e-05)
  %377 = call double @llvm.fmuladd.f64(double %376, double %372, double 7.293800e-03)
  %378 = call double @llvm.fmuladd.f64(double %377, double %372, double 3.723000e-01)
  br label %516

379:                                              ; preds = %1
  %380 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.550000e+02)
  %381 = call double @llvm.fmuladd.f64(double %380, double 1.236000e-13, double 2.935200e-11)
  %382 = call double @llvm.fmuladd.f64(double %381, double %380, double 5.297900e-09)
  %383 = call double @llvm.fmuladd.f64(double %382, double %380, double 7.532900e-07)
  %384 = call double @llvm.fmuladd.f64(double %383, double %380, double 8.525900e-05)
  %385 = call double @llvm.fmuladd.f64(double %384, double %380, double 0x3F7F3C70C996B767)
  %386 = call double @llvm.fmuladd.f64(double %385, double %380, double 3.872200e-01)
  br label %516

387:                                              ; preds = %1
  %388 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.570000e+02)
  %389 = call double @llvm.fmuladd.f64(double %388, double 1.286800e-13, double 3.086600e-11)
  %390 = call double @llvm.fmuladd.f64(double %389, double %388, double 5.598900e-09)
  %391 = call double @llvm.fmuladd.f64(double %390, double %388, double 0x3EAABD0FA96201DC)
  %392 = call double @llvm.fmuladd.f64(double %391, double %388, double 8.990900e-05)
  %393 = call double @llvm.fmuladd.f64(double %392, double %388, double 7.976200e-03)
  %394 = call double @llvm.fmuladd.f64(double %393, double %388, double 4.028200e-01)
  br label %516

395:                                              ; preds = %1
  %396 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.590000e+02)
  %397 = call double @llvm.fmuladd.f64(double %396, double 1.338700e-13, double 3.244100e-11)
  %398 = call double @llvm.fmuladd.f64(double %397, double %396, double 5.915400e-09)
  %399 = call double @llvm.fmuladd.f64(double %398, double %396, double 0x3EAC488AB13D0509)
  %400 = call double @llvm.fmuladd.f64(double %399, double %396, double 9.482700e-05)
  %401 = call double @llvm.fmuladd.f64(double %400, double %396, double 0x3F81177F7886239B)
  %402 = call double @llvm.fmuladd.f64(double %401, double %396, double 4.191400e-01)
  br label %516

403:                                              ; preds = %1
  %404 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.610000e+02)
  %405 = call double @llvm.fmuladd.f64(double %404, double 1.391700e-13, double 3.407900e-11)
  %406 = call double @llvm.fmuladd.f64(double %405, double %404, double 6.248000e-09)
  %407 = call double @llvm.fmuladd.f64(double %406, double %404, double 8.915600e-07)
  %408 = call double @llvm.fmuladd.f64(double %407, double %404, double 1.000200e-04)
  %409 = call double @llvm.fmuladd.f64(double %408, double %404, double 8.735200e-03)
  %410 = call double @llvm.fmuladd.f64(double %409, double %404, double 4.362100e-01)
  br label %516

411:                                              ; preds = %1
  %412 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.630000e+02)
  %413 = call double @llvm.fmuladd.f64(double %412, double 1.445500e-13, double 3.578200e-11)
  %414 = call double @llvm.fmuladd.f64(double %413, double %412, double 6.597200e-09)
  %415 = call double @llvm.fmuladd.f64(double %414, double %412, double 0x3EAFA3B4FF945DE5)
  %416 = call double @llvm.fmuladd.f64(double %415, double %412, double 1.055300e-04)
  %417 = call double @llvm.fmuladd.f64(double %416, double %412, double 9.146300e-03)
  %418 = call double @llvm.fmuladd.f64(double %417, double %412, double 4.540900e-01)
  br label %516

419:                                              ; preds = %1
  %420 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.650000e+02)
  %421 = call double @llvm.fmuladd.f64(double %420, double 1.500300e-13, double 3.754900e-11)
  %422 = call double @llvm.fmuladd.f64(double %421, double %420, double 6.963800e-09)
  %423 = call double @llvm.fmuladd.f64(double %422, double %420, double 0x3EB0BAC503C6DC37)
  %424 = call double @llvm.fmuladd.f64(double %423, double %420, double 1.113500e-04)
  %425 = call double @llvm.fmuladd.f64(double %424, double %420, double 9.579900e-03)
  %426 = call double @llvm.fmuladd.f64(double %425, double %420, double 4.728200e-01)
  br label %516

427:                                              ; preds = %1
  %428 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.670000e+02)
  %429 = call double @llvm.fmuladd.f64(double %428, double 1.555900e-13, double 3.938300e-11)
  %430 = call double @llvm.fmuladd.f64(double %429, double %428, double 7.348400e-09)
  %431 = call double @llvm.fmuladd.f64(double %430, double %428, double 1.054400e-06)
  %432 = call double @llvm.fmuladd.f64(double %431, double %428, double 1.175000e-04)
  %433 = call double @llvm.fmuladd.f64(double %432, double %428, double 1.003700e-02)
  %434 = call double @llvm.fmuladd.f64(double %433, double %428, double 4.924300e-01)
  br label %516

435:                                              ; preds = %1
  %436 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.690000e+02)
  %437 = call double @llvm.fmuladd.f64(double %436, double 1.612200e-13, double 4.128300e-11)
  %438 = call double @llvm.fmuladd.f64(double %437, double %436, double 0x3E40A58AC9DA1650)
  %439 = call double @llvm.fmuladd.f64(double %438, double %436, double 1.114700e-06)
  %440 = call double @llvm.fmuladd.f64(double %439, double %436, double 1.240000e-04)
  %441 = call double @llvm.fmuladd.f64(double %440, double %436, double 1.052000e-02)
  %442 = call double @llvm.fmuladd.f64(double %441, double %436, double 5.129800e-01)
  br label %516

443:                                              ; preds = %1
  %444 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.710000e+02)
  %445 = call double @llvm.fmuladd.f64(double %444, double 1.669200e-13, double 4.325200e-11)
  %446 = call double @llvm.fmuladd.f64(double %445, double %444, double 8.174300e-09)
  %447 = call double @llvm.fmuladd.f64(double %446, double %444, double 1.178400e-06)
  %448 = call double @llvm.fmuladd.f64(double %447, double %444, double 1.308800e-04)
  %449 = call double @llvm.fmuladd.f64(double %448, double %444, double 1.103000e-02)
  %450 = call double @llvm.fmuladd.f64(double %449, double %444, double 5.345300e-01)
  br label %516

451:                                              ; preds = %1
  %452 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.730000e+02)
  %453 = call double @llvm.fmuladd.f64(double %452, double 1.726800e-13, double 4.529000e-11)
  %454 = call double @llvm.fmuladd.f64(double %453, double %452, double 0x3E428130DD085FB9)
  %455 = call double @llvm.fmuladd.f64(double %454, double %452, double 1.245600e-06)
  %456 = call double @llvm.fmuladd.f64(double %455, double %452, double 1.381500e-04)
  %457 = call double @llvm.fmuladd.f64(double %456, double %452, double 1.156800e-02)
  %458 = call double @llvm.fmuladd.f64(double %457, double %452, double 5.571200e-01)
  br label %516

459:                                              ; preds = %1
  %460 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.750000e+02)
  %461 = call double @llvm.fmuladd.f64(double %460, double 1.785000e-13, double 4.739700e-11)
  %462 = call double @llvm.fmuladd.f64(double %461, double %460, double 9.080300e-09)
  %463 = call double @llvm.fmuladd.f64(double %462, double %460, double 1.316400e-06)
  %464 = call double @llvm.fmuladd.f64(double %463, double %460, double 1.458400e-04)
  %465 = call double @llvm.fmuladd.f64(double %464, double %460, double 1.213500e-02)
  %466 = call double @llvm.fmuladd.f64(double %465, double %460, double 5.808200e-01)
  br label %516

467:                                              ; preds = %1
  %468 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.770000e+02)
  %469 = call double @llvm.fmuladd.f64(double %468, double 1.843500e-13, double 4.957400e-11)
  %470 = call double @llvm.fmuladd.f64(double %469, double %468, double 9.565100e-09)
  %471 = call double @llvm.fmuladd.f64(double %470, double %468, double 1.390900e-06)
  %472 = call double @llvm.fmuladd.f64(double %471, double %468, double 1.539600e-04)
  %473 = call double @llvm.fmuladd.f64(double %472, double %468, double 1.273500e-02)
  %474 = call double @llvm.fmuladd.f64(double %473, double %468, double 6.056900e-01)
  br label %516

475:                                              ; preds = %1
  %476 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.790000e+02)
  %477 = call double @llvm.fmuladd.f64(double %476, double 1.902500e-13, double 5.182200e-11)
  %478 = call double @llvm.fmuladd.f64(double %477, double %476, double 1.007200e-08)
  %479 = call double @llvm.fmuladd.f64(double %478, double %476, double 1.469500e-06)
  %480 = call double @llvm.fmuladd.f64(double %479, double %476, double 1.625400e-04)
  %481 = call double @llvm.fmuladd.f64(double %480, double %476, double 1.336800e-02)
  %482 = call double @llvm.fmuladd.f64(double %481, double %476, double 6.317800e-01)
  br label %516

483:                                              ; preds = %1
  %484 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.810000e+02)
  %485 = call double @llvm.fmuladd.f64(double %484, double 1.961600e-13, double 5.414000e-11)
  %486 = call double @llvm.fmuladd.f64(double %485, double %484, double 1.060100e-08)
  %487 = call double @llvm.fmuladd.f64(double %486, double %484, double 1.552100e-06)
  %488 = call double @llvm.fmuladd.f64(double %487, double %484, double 1.716000e-04)
  %489 = call double @llvm.fmuladd.f64(double %488, double %484, double 1.403600e-02)
  %490 = call double @llvm.fmuladd.f64(double %489, double %484, double 6.591800e-01)
  br label %516

491:                                              ; preds = %1
  %492 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.830000e+02)
  %493 = call double @llvm.fmuladd.f64(double %492, double 2.020900e-13, double 5.653000e-11)
  %494 = call double @llvm.fmuladd.f64(double %493, double %492, double 1.115500e-08)
  %495 = call double @llvm.fmuladd.f64(double %494, double %492, double 1.639200e-06)
  %496 = call double @llvm.fmuladd.f64(double %495, double %492, double 1.811700e-04)
  %497 = call double @llvm.fmuladd.f64(double %496, double %492, double 1.474100e-02)
  %498 = call double @llvm.fmuladd.f64(double %497, double %492, double 6.879500e-01)
  br label %516

499:                                              ; preds = %1
  %500 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.850000e+02)
  %501 = call double @llvm.fmuladd.f64(double %500, double 2.080300e-13, double 5.899100e-11)
  %502 = call double @llvm.fmuladd.f64(double %501, double %500, double 1.173200e-08)
  %503 = call double @llvm.fmuladd.f64(double %502, double %500, double 1.730700e-06)
  %504 = call double @llvm.fmuladd.f64(double %503, double %500, double 1.912800e-04)
  %505 = call double @llvm.fmuladd.f64(double %504, double %500, double 1.548600e-02)
  %506 = call double @llvm.fmuladd.f64(double %505, double %500, double 7.181800e-01)
  br label %516

507:                                              ; preds = %1
  %508 = call double @llvm.fmuladd.f64(double %0, double 2.000000e+00, double -1.870000e+02)
  %509 = call double @llvm.fmuladd.f64(double %508, double 2.139500e-13, double 6.152300e-11)
  %510 = call double @llvm.fmuladd.f64(double %509, double %508, double 1.233500e-08)
  %511 = call double @llvm.fmuladd.f64(double %510, double %508, double 1.826900e-06)
  %512 = call double @llvm.fmuladd.f64(double %511, double %508, double 2.019500e-04)
  %513 = call double @llvm.fmuladd.f64(double %512, double %508, double 1.627200e-02)
  %514 = call double @llvm.fmuladd.f64(double %513, double %508, double 7.499300e-01)
  br label %516

515:                                              ; preds = %1
  br label %516

516:                                              ; preds = %515, %507, %499, %491, %483, %475, %467, %459, %451, %443, %435, %427, %419, %411, %403, %395, %387, %379, %371, %363, %355, %347, %339, %331, %323, %315, %307, %299, %291, %283, %275, %267, %259, %251, %243, %235, %227, %219, %211, %203, %195, %187, %179, %171, %163, %155, %147, %139, %131, %123, %115, %107, %99, %91, %83, %75, %67, %59, %51, %43, %35, %27, %19, %11, %3
  %.0 = phi double [ 1.000000e+00, %515 ], [ %514, %507 ], [ %506, %499 ], [ %498, %491 ], [ %490, %483 ], [ %482, %475 ], [ %474, %467 ], [ %466, %459 ], [ %458, %451 ], [ %450, %443 ], [ %442, %435 ], [ %434, %427 ], [ %426, %419 ], [ %418, %411 ], [ %410, %403 ], [ %402, %395 ], [ %394, %387 ], [ %386, %379 ], [ %378, %371 ], [ %370, %363 ], [ %362, %355 ], [ %354, %347 ], [ %346, %339 ], [ %338, %331 ], [ %330, %323 ], [ %322, %315 ], [ %314, %307 ], [ %306, %299 ], [ %298, %291 ], [ %290, %283 ], [ %282, %275 ], [ %274, %267 ], [ %266, %259 ], [ %258, %251 ], [ %250, %243 ], [ %242, %235 ], [ %234, %227 ], [ %226, %219 ], [ %218, %211 ], [ %210, %203 ], [ %202, %195 ], [ %194, %187 ], [ %186, %179 ], [ %178, %171 ], [ %170, %163 ], [ %162, %155 ], [ %154, %147 ], [ %146, %139 ], [ %138, %131 ], [ %130, %123 ], [ %122, %115 ], [ %114, %107 ], [ %106, %99 ], [ %98, %91 ], [ %90, %83 ], [ %82, %75 ], [ %74, %67 ], [ %66, %59 ], [ %58, %51 ], [ %50, %43 ], [ %42, %35 ], [ %34, %27 ], [ %26, %19 ], [ %18, %11 ], [ %10, %3 ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = call double @foo(double noundef 7.840000e+01)
  %2 = fcmp olt double %1, 3.800000e-01
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = fcmp ogt double %1, 4.200000e-01
  br i1 %4, label %5, label %6

5:                                                ; preds = %3, %0
  call void @abort() #4
  unreachable

6:                                                ; preds = %3
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { mustprogress nofree noinline nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
