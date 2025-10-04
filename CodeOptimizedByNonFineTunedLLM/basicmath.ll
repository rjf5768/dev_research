; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-basicmath/basicmath.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/automotive-basicmath/basicmath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"********* CUBIC FUNCTIONS ***********\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"********* INTEGER SQR ROOTS ***********\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"sqrt(%X) = %X\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"********* ANGLE CONVERSION ***********\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca [3 x double], align 16
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.int_sqrt, align 4
  %12 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store double 1.000000e+00, double* %2, align 8
  store double -1.050000e+01, double* %3, align 8
  store double 3.200000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  store i32 1072497001, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %14 = load double, double* %2, align 8
  %15 = load double, double* %3, align 8
  %16 = load double, double* %4, align 8
  %17 = load double, double* %5, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  call void @SolveCubic(double noundef %14, double noundef %15, double noundef %16, double noundef %17, i32* noundef %8, double* noundef %18)
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %30, %0
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %26
  %28 = load double, double* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %20, !llvm.loop !4

33:                                               ; preds = %20
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store double 1.000000e+00, double* %2, align 8
  store double -4.500000e+00, double* %3, align 8
  store double 1.700000e+01, double* %4, align 8
  store double -3.000000e+01, double* %5, align 8
  %35 = load double, double* %2, align 8
  %36 = load double, double* %3, align 8
  %37 = load double, double* %4, align 8
  %38 = load double, double* %5, align 8
  %39 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  call void @SolveCubic(double noundef %35, double noundef %36, double noundef %37, double noundef %38, i32* noundef %8, double* noundef %39)
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %51, %33
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %47
  %49 = load double, double* %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %41, !llvm.loop !6

54:                                               ; preds = %41
  %55 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store double 1.000000e+00, double* %2, align 8
  store double -3.500000e+00, double* %3, align 8
  store double 2.200000e+01, double* %4, align 8
  store double -3.100000e+01, double* %5, align 8
  %56 = load double, double* %2, align 8
  %57 = load double, double* %3, align 8
  %58 = load double, double* %4, align 8
  %59 = load double, double* %5, align 8
  %60 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  call void @SolveCubic(double noundef %56, double noundef %57, double noundef %58, double noundef %59, i32* noundef %8, double* noundef %60)
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %72, %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %68
  %70 = load double, double* %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %70)
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %62, !llvm.loop !7

75:                                               ; preds = %62
  %76 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store double 1.000000e+00, double* %2, align 8
  store double -1.370000e+01, double* %3, align 8
  store double 1.000000e+00, double* %4, align 8
  store double -3.500000e+01, double* %5, align 8
  %77 = load double, double* %2, align 8
  %78 = load double, double* %3, align 8
  %79 = load double, double* %4, align 8
  %80 = load double, double* %5, align 8
  %81 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  call void @SolveCubic(double noundef %77, double noundef %78, double noundef %79, double noundef %80, i32* noundef %8, double* noundef %81)
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %93, %75
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %89
  %91 = load double, double* %90, align 8
  %92 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %91)
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %83, !llvm.loop !8

96:                                               ; preds = %83
  %97 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store double 3.000000e+00, double* %2, align 8
  store double 1.234000e+01, double* %3, align 8
  store double 5.000000e+00, double* %4, align 8
  store double 1.200000e+01, double* %5, align 8
  %98 = load double, double* %2, align 8
  %99 = load double, double* %3, align 8
  %100 = load double, double* %4, align 8
  %101 = load double, double* %5, align 8
  %102 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  call void @SolveCubic(double noundef %98, double noundef %99, double noundef %100, double noundef %101, i32* noundef %8, double* noundef %102)
  %103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %114, %96
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %110
  %112 = load double, double* %111, align 8
  %113 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %112)
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %104, !llvm.loop !9

117:                                              ; preds = %104
  %118 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store double -8.000000e+00, double* %2, align 8
  store double -6.789000e+01, double* %3, align 8
  store double 6.000000e+00, double* %4, align 8
  store double -2.360000e+01, double* %5, align 8
  %119 = load double, double* %2, align 8
  %120 = load double, double* %3, align 8
  %121 = load double, double* %4, align 8
  %122 = load double, double* %5, align 8
  %123 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  call void @SolveCubic(double noundef %119, double noundef %120, double noundef %121, double noundef %122, i32* noundef %8, double* noundef %123)
  %124 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %135, %117
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %131
  %133 = load double, double* %132, align 8
  %134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %133)
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %125, !llvm.loop !10

138:                                              ; preds = %125
  %139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store double 4.500000e+01, double* %2, align 8
  store double 8.670000e+00, double* %3, align 8
  store double 7.500000e+00, double* %4, align 8
  store double 3.400000e+01, double* %5, align 8
  %140 = load double, double* %2, align 8
  %141 = load double, double* %3, align 8
  %142 = load double, double* %4, align 8
  %143 = load double, double* %5, align 8
  %144 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  call void @SolveCubic(double noundef %140, double noundef %141, double noundef %142, double noundef %143, i32* noundef %8, double* noundef %144)
  %145 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %146

146:                                              ; preds = %156, %138
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %152
  %154 = load double, double* %153, align 8
  %155 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %154)
  br label %156

156:                                              ; preds = %150
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %146, !llvm.loop !11

159:                                              ; preds = %146
  %160 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store double -1.200000e+01, double* %2, align 8
  store double -1.700000e+00, double* %3, align 8
  store double 5.300000e+00, double* %4, align 8
  store double 1.600000e+01, double* %5, align 8
  %161 = load double, double* %2, align 8
  %162 = load double, double* %3, align 8
  %163 = load double, double* %4, align 8
  %164 = load double, double* %5, align 8
  %165 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  call void @SolveCubic(double noundef %161, double noundef %162, double noundef %163, double noundef %164, i32* noundef %8, double* noundef %165)
  %166 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %177, %159
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %173
  %175 = load double, double* %174, align 8
  %176 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %175)
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %9, align 4
  br label %167, !llvm.loop !12

180:                                              ; preds = %167
  %181 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store double 1.000000e+00, double* %2, align 8
  br label %182

182:                                              ; preds = %231, %180
  %183 = load double, double* %2, align 8
  %184 = fcmp olt double %183, 1.000000e+01
  br i1 %184, label %185, label %234

185:                                              ; preds = %182
  store double 1.000000e+01, double* %3, align 8
  br label %186

186:                                              ; preds = %227, %185
  %187 = load double, double* %3, align 8
  %188 = fcmp ogt double %187, 0.000000e+00
  br i1 %188, label %189, label %230

189:                                              ; preds = %186
  store double 5.000000e+00, double* %4, align 8
  br label %190

190:                                              ; preds = %223, %189
  %191 = load double, double* %4, align 8
  %192 = fcmp olt double %191, 1.500000e+01
  br i1 %192, label %193, label %226

193:                                              ; preds = %190
  store double -1.000000e+00, double* %5, align 8
  br label %194

194:                                              ; preds = %219, %193
  %195 = load double, double* %5, align 8
  %196 = fcmp ogt double %195, -5.000000e+00
  br i1 %196, label %197, label %222

197:                                              ; preds = %194
  %198 = load double, double* %2, align 8
  %199 = load double, double* %3, align 8
  %200 = load double, double* %4, align 8
  %201 = load double, double* %5, align 8
  %202 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  call void @SolveCubic(double noundef %198, double noundef %199, double noundef %200, double noundef %201, i32* noundef %8, double* noundef %202)
  %203 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %204

204:                                              ; preds = %214, %197
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %210
  %212 = load double, double* %211, align 8
  %213 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %212)
  br label %214

214:                                              ; preds = %208
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  br label %204, !llvm.loop !13

217:                                              ; preds = %204
  %218 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217
  %220 = load double, double* %5, align 8
  %221 = fsub double %220, 4.510000e-01
  store double %221, double* %5, align 8
  br label %194, !llvm.loop !14

222:                                              ; preds = %194
  br label %223

223:                                              ; preds = %222
  %224 = load double, double* %4, align 8
  %225 = fadd double %224, 6.100000e-01
  store double %225, double* %4, align 8
  br label %190, !llvm.loop !15

226:                                              ; preds = %190
  br label %227

227:                                              ; preds = %226
  %228 = load double, double* %3, align 8
  %229 = fsub double %228, 2.500000e-01
  store double %229, double* %3, align 8
  br label %186, !llvm.loop !16

230:                                              ; preds = %186
  br label %231

231:                                              ; preds = %230
  %232 = load double, double* %2, align 8
  %233 = fadd double %232, 1.000000e+00
  store double %233, double* %2, align 8
  br label %182, !llvm.loop !17

234:                                              ; preds = %182
  %235 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %236

236:                                              ; preds = %245, %234
  %237 = load i32, i32* %9, align 4
  %238 = icmp slt i32 %237, 100000
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load i32, i32* %9, align 4
  call void @usqrt(i32 noundef %240, %struct.int_sqrt* noundef %11)
  %241 = load i32, i32* %9, align 4
  %242 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %11, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 noundef %241, i32 noundef %243)
  br label %245

245:                                              ; preds = %239
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 %246, 2
  store i32 %247, i32* %9, align 4
  br label %236, !llvm.loop !18

248:                                              ; preds = %236
  %249 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 1072497001, i32* %10, align 4
  br label %250

250:                                              ; preds = %259, %248
  %251 = load i32, i32* %10, align 4
  %252 = icmp ult i32 %251, 1072513385
  br i1 %252, label %253, label %262

253:                                              ; preds = %250
  %254 = load i32, i32* %10, align 4
  call void @usqrt(i32 noundef %254, %struct.int_sqrt* noundef %11)
  %255 = load i32, i32* %10, align 4
  %256 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %11, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef %255, i32 noundef %257)
  br label %259

259:                                              ; preds = %253
  %260 = load i32, i32* %10, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %10, align 4
  br label %250, !llvm.loop !19

262:                                              ; preds = %250
  %263 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  store double 0.000000e+00, double* %7, align 8
  br label %264

264:                                              ; preds = %275, %262
  %265 = load double, double* %7, align 8
  %266 = fcmp ole double %265, 3.600000e+02
  br i1 %266, label %267, label %278

267:                                              ; preds = %264
  %268 = load double, double* %7, align 8
  %269 = load double, double* %7, align 8
  %270 = call double @atan(double noundef 1.000000e+00) #4
  %271 = fmul double 4.000000e+00, %270
  %272 = fmul double %269, %271
  %273 = fdiv double %272, 1.800000e+02
  %274 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), double noundef %268, double noundef %273)
  br label %275

275:                                              ; preds = %267
  %276 = load double, double* %7, align 8
  %277 = fadd double %276, 1.000000e-03
  store double %277, double* %7, align 8
  br label %264, !llvm.loop !20

278:                                              ; preds = %264
  %279 = call i32 @puts(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  store double 0.000000e+00, double* %7, align 8
  br label %280

280:                                              ; preds = %294, %278
  %281 = load double, double* %7, align 8
  %282 = call double @atan(double noundef 1.000000e+00) #4
  %283 = fmul double 4.000000e+00, %282
  %284 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %283, double 0x3EB0C6F7A0B5ED8D)
  %285 = fcmp ole double %281, %284
  br i1 %285, label %286, label %300

286:                                              ; preds = %280
  %287 = load double, double* %7, align 8
  %288 = load double, double* %7, align 8
  %289 = fmul double %288, 1.800000e+02
  %290 = call double @atan(double noundef 1.000000e+00) #4
  %291 = fmul double 4.000000e+00, %290
  %292 = fdiv double %289, %291
  %293 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), double noundef %287, double noundef %292)
  br label %294

294:                                              ; preds = %286
  %295 = call double @atan(double noundef 1.000000e+00) #4
  %296 = fmul double 4.000000e+00, %295
  %297 = fdiv double %296, 5.760000e+03
  %298 = load double, double* %7, align 8
  %299 = fadd double %298, %297
  store double %299, double* %7, align 8
  br label %280, !llvm.loop !21

300:                                              ; preds = %280
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @SolveCubic(double noundef, double noundef, double noundef, double noundef, i32* noundef, double* noundef) #1

declare dso_local void @usqrt(i32 noundef, %struct.int_sqrt* noundef) #1

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #2

declare dso_local i32 @puts(i8* noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
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
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
