; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/almabench.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/CoyoteBench/almabench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@a = internal constant [8 x [3 x double]] [[3 x double] [double 0x3FD8C637FD3B6253, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0x3FE725849423E3E0, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0x3FF000011136AEF5, double 0.000000e+00, double 0.000000e+00], [3 x double] [double 0x3FF860FD96F0D223, double 3.000000e-10, double 0.000000e+00], [3 x double] [double 0x4014CF7737365089, double 1.913200e-06, double -3.900000e-09], [3 x double] [double 0x40231C1D0EBB7C0F, double -2.138960e-05, double 4.440000e-08], [3 x double] [double 0x403337EC14C35EFA, double -3.716000e-07, double 0x3E7A47A3038502A4], [3 x double] [double 0x403E1C425059FB17, double -1.663500e-06, double 6.860000e-08]], align 16
@dlm = internal constant [8 x [3 x double]] [[3 x double] [double 0x406F88076B035926, double 0x41F40BBCADEE3CB4, double -1.927890e+00], [3 x double] [double 0x4066BF5A874FEAFA, double 0x41DF6432F5157881, double 5.938100e-01], [3 x double] [double 0x40591DDA6DBF7622, double 0x41D34FC2F3B56502, double -2.044110e+00], [3 x double] [double 0x407636ED90F7B482, double 0x41C4890A4B784DFD, double 9.426400e-01], [3 x double] [double 0x40412CFE90EA1D96, double 0x419A0C7E6F1EA0BA, double 0xC03E9A915379FA98], [3 x double] [double 0x404909E9B1DFE17D, double 0x4184FA9E14756430, double 0x4052E76ED677707A], [3 x double] [double 0x4073A0E14D09C902, double 0x416D6BA57E0EFDCA, double -1.750830e+00], [3 x double] [double 0x4073059422411D82, double 0x415E0127CD46B26C, double 2.110300e-01]], align 16
@e = internal constant [8 x [3 x double]] [[3 x double] [double 0x3FCA52242A37D430, double 0x3F2ABF4B9459E7F4, double -2.834900e-06], [3 x double] [double 0x3F7BBCDE77820827, double 0xBF3F4DAC25FB4BC2, double 9.812700e-06], [3 x double] [double 0x3F911C1175CC9F7B, double 0xBF3B8C8FA536F731, double -1.267340e-05], [3 x double] [double 0x3FB7E91AD74BF5B0, double 0x3F4DA66143B5E407, double -8.064100e-06], [3 x double] [double 0x3FA8D4B857E48742, double 0x3F5ABE2B9A18B7B5, double -4.713660e-05], [3 x double] [double 0x3FAC70CE5FA41E66, double 0xBF6C6594A86FD58E, double -6.436390e-05], [3 x double] [double 0x3FA7BF479022D287, double 0xBF31E2FE6AE927D8, double 7.891300e-06], [3 x double] [double 0x3F835D88E0FE76D8, double 6.032630e-05, double 0.000000e+00]], align 16
@pi = internal constant [8 x [3 x double]] [[3 x double] [double 0x40535D310DE9F882, double 0x40B6571DAB9F559B, double -4.830160e+00], [3 x double] [double 0x40607209DADFB507, double 0x4065EF9096BB98C8, double 0xC07F27B59DDC1E79], [3 x double] [double 0x4059BBFD82CD2461, double 0x40C6AE2D2BD3C361, double 0x404AA34C6E6D9BE5], [3 x double] [double 0x407500F6B7DFD5BE, double 0x40CF363AC3222920, double -6.232800e+01], [3 x double] [double 0x402CA993F265B897, double 0x40BE4EC06AD2DCB1, double 0x40703F599ED7C6FC], [3 x double] [double 0x405743A9C7642D26, double 0x40D3EADFA415F45E, double 0x4067C84DFCE3150E], [3 x double] [double 0x4065A02B58283528, double 0x40A91F1FF04577D9, double 0xC0410BE37DE939EB], [3 x double] [double 0x40480F65305B6785, double 0x40906AE060FE4799, double 0x403B65ACEEE0F3CB]], align 16
@dinc = internal constant [8 x [3 x double]] [[3 x double] [double 0x401C051B1D92B7FE, double 0xC06AC83387160957, double 2.897700e-01], [3 x double] [double 0x400B28447E34386C, double 0xC03ED828A1DFB939, double 0xC0275B52007DD441], [3 x double] [double 0.000000e+00, double 0x407D5F90F51AC9B0, double -3.350530e+00], [3 x double] [double 0x3FFD987ACB2252BB, double 0xC072551355475A32, double -8.118300e+00], [3 x double] [double 0x3FF4DA2E7A10E830, double 0xC051E3C504816F00, double 0x4027E7EBAF102364], [3 x double] [double 0x4003E939471E778F, double 0x4056F686594AF4F1, double 0xC031A989374BC6A8], [3 x double] [double 0x3FE8BE07677D67B5, double 0xC04E5D15DF6555C5, double 1.257590e+00], [3 x double] [double 0x3FFC51B9CE9853F4, double 0x40203F251C193B3A, double 8.135000e-02]], align 16
@omega = internal constant [8 x [3 x double]] [[3 x double] [double 0x40482A5AB400A313, double 0xC0B1A3379F01B867, double 0xC03FCC8605681ECD], [3 x double] [double 0x40532B83CFF8FC2B, double 0xC0C38C3DA31A4BDC, double 0xC049A9BEF49CF56F], [3 x double] [double 0x4065DBF10E4FF9E8, double 0xC0C0F3A29A804966, double 0x402EAF0ED3D859C9], [3 x double] [double 0x4048C76F992A88EB, double 0xC0C4BE7350092CCF, double 0xC06CD25F84CAD57C], [3 x double] [double 0x40591DB8D838BBB3, double 0x40B8DA091DBCA969, double 0x4074685935FC3B4F], [3 x double] [double 0x405C6A9797E1B38F, double 0xC0C20C1986983516, double 0xC0508F320D9945B7], [3 x double] [double 0x405280619982C872, double 0x40A4DA4CF80DC337, double 0x40623E1187E7C06E], [3 x double] [double 0x40607916FEBF632D, double 0xC06BBE2EDBB59DDC, double -7.872800e-01]], align 16
@kp = internal constant [8 x [9 x double]] [[9 x double] [double 6.961300e+04, double 7.564500e+04, double 8.830600e+04, double 5.989900e+04, double 1.574600e+04, double 7.108700e+04, double 1.421730e+05, double 3.086000e+03, double 0.000000e+00], [9 x double] [double 2.186300e+04, double 3.279400e+04, double 2.693400e+04, double 1.093100e+04, double 2.625000e+04, double 4.372500e+04, double 5.386700e+04, double 2.893900e+04, double 0.000000e+00], [9 x double] [double 1.600200e+04, double 2.186300e+04, double 3.200400e+04, double 1.093100e+04, double 1.452900e+04, double 1.636800e+04, double 1.531800e+04, double 3.279400e+04, double 0.000000e+00], [9 x double] [double 6.345000e+03, double 7.818000e+03, double 1.563600e+04, double 7.077000e+03, double 8.184000e+03, double 1.416300e+04, double 1.107000e+03, double 4.872000e+03, double 0.000000e+00], [9 x double] [double 1.760000e+03, double 1.454000e+03, double 1.167000e+03, double 8.800000e+02, double 2.870000e+02, double 2.640000e+03, double 1.900000e+01, double 2.047000e+03, double 1.454000e+03], [9 x double] [double 5.740000e+02, double 0.000000e+00, double 8.800000e+02, double 2.870000e+02, double 1.900000e+01, double 1.760000e+03, double 1.167000e+03, double 3.060000e+02, double 5.740000e+02], [9 x double] [double 2.040000e+02, double 0.000000e+00, double 1.770000e+02, double 1.265000e+03, double 4.000000e+00, double 3.850000e+02, double 2.000000e+02, double 2.080000e+02, double 2.040000e+02], [9 x double] [double 0.000000e+00, double 1.020000e+02, double 1.060000e+02, double 4.000000e+00, double 9.800000e+01, double 1.367000e+03, double 4.870000e+02, double 2.040000e+02, double 0.000000e+00]], align 16
@kq = internal constant [8 x [10 x double]] [[10 x double] [double 3.086000e+03, double 1.574600e+04, double 6.961300e+04, double 5.989900e+04, double 7.564500e+04, double 8.830600e+04, double 1.266100e+04, double 2.658000e+03, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 2.186300e+04, double 3.279400e+04, double 1.093100e+04, double 7.300000e+01, double 4.387000e+03, double 2.693400e+04, double 1.473000e+03, double 2.157000e+03, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 1.000000e+01, double 1.600200e+04, double 2.186300e+04, double 1.093100e+04, double 1.473000e+03, double 3.200400e+04, double 4.387000e+03, double 7.300000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 1.000000e+01, double 6.345000e+03, double 7.818000e+03, double 1.107000e+03, double 1.563600e+04, double 7.077000e+03, double 8.184000e+03, double 5.320000e+02, double 1.000000e+01, double 0.000000e+00], [10 x double] [double 1.900000e+01, double 1.760000e+03, double 1.454000e+03, double 2.870000e+02, double 1.167000e+03, double 8.800000e+02, double 5.740000e+02, double 2.640000e+03, double 1.900000e+01, double 1.454000e+03], [10 x double] [double 1.900000e+01, double 5.740000e+02, double 2.870000e+02, double 3.060000e+02, double 1.760000e+03, double 1.200000e+01, double 3.100000e+01, double 3.800000e+01, double 1.900000e+01, double 5.740000e+02], [10 x double] [double 4.000000e+00, double 2.040000e+02, double 1.770000e+02, double 8.000000e+00, double 3.100000e+01, double 2.000000e+02, double 1.265000e+03, double 1.020000e+02, double 4.000000e+00, double 2.040000e+02], [10 x double] [double 4.000000e+00, double 1.020000e+02, double 1.060000e+02, double 8.000000e+00, double 9.800000e+01, double 1.367000e+03, double 4.870000e+02, double 2.040000e+02, double 4.000000e+00, double 1.020000e+02]], align 16
@ca = internal constant [8 x [9 x double]] [[9 x double] [double 4.000000e+00, double -1.300000e+01, double 1.100000e+01, double -9.000000e+00, double -9.000000e+00, double -3.000000e+00, double -1.000000e+00, double 4.000000e+00, double 0.000000e+00], [9 x double] [double -1.560000e+02, double 5.900000e+01, double -4.200000e+01, double 6.000000e+00, double 1.900000e+01, double -2.000000e+01, double -1.000000e+01, double -1.200000e+01, double 0.000000e+00], [9 x double] [double 6.400000e+01, double -1.520000e+02, double 6.200000e+01, double -8.000000e+00, double 3.200000e+01, double -4.100000e+01, double 1.900000e+01, double -1.100000e+01, double 0.000000e+00], [9 x double] [double 1.240000e+02, double 6.210000e+02, double -1.450000e+02, double 2.080000e+02, double 5.400000e+01, double -5.700000e+01, double 3.000000e+01, double 1.500000e+01, double 0.000000e+00], [9 x double] [double -2.343700e+04, double -2.634000e+03, double 6.601000e+03, double 6.259000e+03, double -1.507000e+03, double -1.821000e+03, double 2.620000e+03, double -2.115000e+03, double -1.489000e+03], [9 x double] [double 6.291100e+04, double -1.199190e+05, double 7.933600e+04, double 1.781400e+04, double -2.424100e+04, double 1.206800e+04, double 8.306000e+03, double -4.893000e+03, double 8.902000e+03], [9 x double] [double 3.890610e+05, double -2.621250e+05, double -4.408800e+04, double 8.387000e+03, double -2.297600e+04, double -2.093000e+03, double -6.150000e+02, double -9.720000e+03, double 6.633000e+03], [9 x double] [double -4.122350e+05, double -1.570460e+05, double -3.143000e+04, double 3.781700e+04, double -9.740000e+03, double -1.300000e+01, double -7.449000e+03, double 9.644000e+03, double 0.000000e+00]], align 16
@sa = internal constant [8 x [9 x double]] [[9 x double] [double -2.900000e+01, double -1.000000e+00, double 9.000000e+00, double 6.000000e+00, double -6.000000e+00, double 5.000000e+00, double 4.000000e+00, double 0.000000e+00, double 0.000000e+00], [9 x double] [double -4.800000e+01, double -1.250000e+02, double -2.600000e+01, double -3.700000e+01, double 1.800000e+01, double -1.300000e+01, double -2.000000e+01, double -2.000000e+00, double 0.000000e+00], [9 x double] [double -1.500000e+02, double -4.600000e+01, double 6.800000e+01, double 5.400000e+01, double 1.400000e+01, double 2.400000e+01, double -2.800000e+01, double 2.200000e+01, double 0.000000e+00], [9 x double] [double -6.210000e+02, double 5.320000e+02, double -6.940000e+02, double -2.000000e+01, double 1.920000e+02, double -9.400000e+01, double 7.100000e+01, double -7.300000e+01, double 0.000000e+00], [9 x double] [double -1.461400e+04, double -1.982800e+04, double -5.869000e+03, double 1.881000e+03, double -4.372000e+03, double -2.255000e+03, double 7.820000e+02, double 9.300000e+02, double 9.130000e+02], [9 x double] [double 1.397370e+05, double 0.000000e+00, double 2.466700e+04, double 5.112300e+04, double -5.102000e+03, double 7.429000e+03, double -4.095000e+03, double -1.976000e+03, double -9.566000e+03], [9 x double] [double -1.380810e+05, double 0.000000e+00, double 3.720500e+04, double -4.903900e+04, double -4.190100e+04, double -3.387200e+04, double -2.703700e+04, double -1.247400e+04, double 1.879700e+04], [9 x double] [double 0.000000e+00, double 2.849200e+04, double 1.332360e+05, double 6.965400e+04, double 5.232200e+04, double -4.957700e+04, double -2.643000e+04, double -3.593000e+03, double 0.000000e+00]], align 16
@cl = internal constant [8 x [10 x double]] [[10 x double] [double 2.100000e+01, double -9.500000e+01, double -1.570000e+02, double 4.100000e+01, double -5.000000e+00, double 4.200000e+01, double 2.300000e+01, double 3.000000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -1.600000e+02, double -3.130000e+02, double -2.350000e+02, double 6.000000e+01, double -7.400000e+01, double -7.600000e+01, double -2.700000e+01, double 3.400000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -3.250000e+02, double -3.220000e+02, double -7.900000e+01, double 2.320000e+02, double -5.200000e+01, double 9.700000e+01, double 5.500000e+01, double -4.100000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 2.268000e+03, double -9.790000e+02, double 8.020000e+02, double 6.020000e+02, double -6.680000e+02, double -3.300000e+01, double 3.450000e+02, double 2.010000e+02, double -5.500000e+01, double 0.000000e+00], [10 x double] [double 7.610000e+03, double -4.997000e+03, double -7.689000e+03, double -5.841000e+03, double -2.617000e+03, double 1.115000e+03, double -7.480000e+02, double -6.070000e+02, double 6.074000e+03, double 3.540000e+02], [10 x double] [double -1.854900e+04, double 3.012500e+04, double 2.001200e+04, double -7.300000e+02, double 8.240000e+02, double 2.300000e+01, double 1.289000e+03, double -3.520000e+02, double -1.476700e+04, double -2.062000e+03], [10 x double] [double -1.352450e+05, double -1.459400e+04, double 4.197000e+03, double -4.030000e+03, double -5.630000e+03, double -2.898000e+03, double 2.540000e+03, double -3.060000e+02, double 2.939000e+03, double 1.986000e+03], [10 x double] [double 8.994800e+04, double 2.103000e+03, double 8.963000e+03, double 2.695000e+03, double 3.682000e+03, double 1.648000e+03, double 8.660000e+02, double -1.540000e+02, double -1.963000e+03, double -2.830000e+02]], align 16
@sl = internal constant [8 x [10 x double]] [[10 x double] [double -3.420000e+02, double 1.360000e+02, double -2.300000e+01, double 6.200000e+01, double 6.600000e+01, double -5.200000e+01, double -3.300000e+01, double 1.700000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 5.240000e+02, double -1.490000e+02, double -3.500000e+01, double 1.170000e+02, double 1.510000e+02, double 1.220000e+02, double -7.100000e+01, double -6.200000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double -1.050000e+02, double -1.370000e+02, double 2.580000e+02, double 3.500000e+01, double -1.160000e+02, double -8.800000e+01, double -1.120000e+02, double -8.000000e+01, double 0.000000e+00, double 0.000000e+00], [10 x double] [double 8.540000e+02, double -2.050000e+02, double -9.360000e+02, double -2.400000e+02, double 1.400000e+02, double -3.410000e+02, double -9.700000e+01, double -2.320000e+02, double 5.360000e+02, double 0.000000e+00], [10 x double] [double -5.698000e+04, double 8.016000e+03, double 1.012000e+03, double 1.448000e+03, double -3.024000e+03, double -3.710000e+03, double 3.180000e+02, double 5.030000e+02, double 3.767000e+03, double 5.770000e+02], [10 x double] [double 1.386060e+05, double -1.347800e+04, double -4.964000e+03, double 1.441000e+03, double -1.319000e+03, double -1.482000e+03, double 4.270000e+02, double 1.236000e+03, double -9.167000e+03, double -1.918000e+03], [10 x double] [double 7.123400e+04, double -4.111600e+04, double 5.334000e+03, double -4.935000e+03, double -1.848000e+03, double 6.600000e+01, double 4.340000e+02, double -1.748000e+03, double 3.780000e+03, double -7.010000e+02], [10 x double] [double -4.764500e+04, double 1.164700e+04, double 2.166000e+03, double 3.194000e+03, double 6.790000e+02, double 0.000000e+00, double -2.440000e+02, double -4.190000e+02, double -2.531000e+03, double 4.800000e+01]], align 16
@amas = internal constant [8 x double] [double 6.023600e+06, double 0x4118EF2E00000000, double 0x4114131200000000, double 3.098710e+06, double 0x40905D6B851EB852, double 3.498500e+03, double 2.286900e+04, double 1.931400e+04], align 16
@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local double @anpm(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = call double @fmod(double noundef %4, double noundef 0x401921FB54442D18) #5
  store double %5, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = call double @llvm.fabs.f64(double %6)
  %8 = fcmp oge double %7, 0x400921FB54442D18
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load double, double* %3, align 8
  %11 = load double, double* %2, align 8
  %12 = fcmp olt double %11, 0.000000e+00
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, double 0xC01921FB54442D18, double 0x401921FB54442D18
  %15 = fsub double %10, %14
  store double %15, double* %3, align 8
  br label %16

16:                                               ; preds = %9, %1
  %17 = load double, double* %3, align 8
  ret double %17
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @planetpv(double* noundef %0, i32 noundef %1, [3 x double]* noundef %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca double, align 8
  %39 = alloca double, align 8
  %40 = alloca double, align 8
  %41 = alloca double, align 8
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store [3 x double]* %2, [3 x double]** %6, align 8
  %42 = load double*, double** %4, align 8
  %43 = getelementptr inbounds double, double* %42, i64 0
  %44 = load double, double* %43, align 8
  %45 = fsub double %44, 0x4142B42C80000000
  %46 = load double*, double** %4, align 8
  %47 = getelementptr inbounds double, double* %46, i64 1
  %48 = load double, double* %47, align 8
  %49 = fadd double %45, %48
  %50 = fdiv double %49, 3.652500e+05
  store double %50, double* %10, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @a, i64 0, i64 %52
  %54 = getelementptr inbounds [3 x double], [3 x double]* %53, i64 0, i64 0
  %55 = load double, double* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @a, i64 0, i64 %57
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 1
  %60 = load double, double* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @a, i64 0, i64 %62
  %64 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 0, i64 2
  %65 = load double, double* %64, align 8
  %66 = load double, double* %10, align 8
  %67 = call double @llvm.fmuladd.f64(double %65, double %66, double %60)
  %68 = load double, double* %10, align 8
  %69 = call double @llvm.fmuladd.f64(double %67, double %68, double %55)
  store double %69, double* %11, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dlm, i64 0, i64 %71
  %73 = getelementptr inbounds [3 x double], [3 x double]* %72, i64 0, i64 0
  %74 = load double, double* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dlm, i64 0, i64 %76
  %78 = getelementptr inbounds [3 x double], [3 x double]* %77, i64 0, i64 1
  %79 = load double, double* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dlm, i64 0, i64 %81
  %83 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0, i64 2
  %84 = load double, double* %83, align 8
  %85 = load double, double* %10, align 8
  %86 = call double @llvm.fmuladd.f64(double %84, double %85, double %79)
  %87 = load double, double* %10, align 8
  %88 = fmul double %86, %87
  %89 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %74, double %88)
  %90 = fmul double %89, 0x3ED455A5B2FF8F9D
  store double %90, double* %12, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @e, i64 0, i64 %92
  %94 = getelementptr inbounds [3 x double], [3 x double]* %93, i64 0, i64 0
  %95 = load double, double* %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @e, i64 0, i64 %97
  %99 = getelementptr inbounds [3 x double], [3 x double]* %98, i64 0, i64 1
  %100 = load double, double* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @e, i64 0, i64 %102
  %104 = getelementptr inbounds [3 x double], [3 x double]* %103, i64 0, i64 2
  %105 = load double, double* %104, align 8
  %106 = load double, double* %10, align 8
  %107 = call double @llvm.fmuladd.f64(double %105, double %106, double %100)
  %108 = load double, double* %10, align 8
  %109 = call double @llvm.fmuladd.f64(double %107, double %108, double %95)
  store double %109, double* %13, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @pi, i64 0, i64 %111
  %113 = getelementptr inbounds [3 x double], [3 x double]* %112, i64 0, i64 0
  %114 = load double, double* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @pi, i64 0, i64 %116
  %118 = getelementptr inbounds [3 x double], [3 x double]* %117, i64 0, i64 1
  %119 = load double, double* %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @pi, i64 0, i64 %121
  %123 = getelementptr inbounds [3 x double], [3 x double]* %122, i64 0, i64 2
  %124 = load double, double* %123, align 8
  %125 = load double, double* %10, align 8
  %126 = call double @llvm.fmuladd.f64(double %124, double %125, double %119)
  %127 = load double, double* %10, align 8
  %128 = fmul double %126, %127
  %129 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %114, double %128)
  %130 = fmul double %129, 0x3ED455A5B2FF8F9D
  %131 = call double @anpm(double noundef %130)
  store double %131, double* %14, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dinc, i64 0, i64 %133
  %135 = getelementptr inbounds [3 x double], [3 x double]* %134, i64 0, i64 0
  %136 = load double, double* %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dinc, i64 0, i64 %138
  %140 = getelementptr inbounds [3 x double], [3 x double]* %139, i64 0, i64 1
  %141 = load double, double* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @dinc, i64 0, i64 %143
  %145 = getelementptr inbounds [3 x double], [3 x double]* %144, i64 0, i64 2
  %146 = load double, double* %145, align 8
  %147 = load double, double* %10, align 8
  %148 = call double @llvm.fmuladd.f64(double %146, double %147, double %141)
  %149 = load double, double* %10, align 8
  %150 = fmul double %148, %149
  %151 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %136, double %150)
  %152 = fmul double %151, 0x3ED455A5B2FF8F9D
  store double %152, double* %15, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @omega, i64 0, i64 %154
  %156 = getelementptr inbounds [3 x double], [3 x double]* %155, i64 0, i64 0
  %157 = load double, double* %156, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @omega, i64 0, i64 %159
  %161 = getelementptr inbounds [3 x double], [3 x double]* %160, i64 0, i64 1
  %162 = load double, double* %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* @omega, i64 0, i64 %164
  %166 = getelementptr inbounds [3 x double], [3 x double]* %165, i64 0, i64 2
  %167 = load double, double* %166, align 8
  %168 = load double, double* %10, align 8
  %169 = call double @llvm.fmuladd.f64(double %167, double %168, double %162)
  %170 = load double, double* %10, align 8
  %171 = fmul double %169, %170
  %172 = call double @llvm.fmuladd.f64(double 3.600000e+03, double %157, double %171)
  %173 = fmul double %172, 0x3ED455A5B2FF8F9D
  %174 = call double @anpm(double noundef %173)
  store double %174, double* %16, align 8
  %175 = load double, double* %10, align 8
  %176 = fmul double 0x3FD702A41F2E9970, %175
  store double %176, double* %17, align 8
  store i32 0, i32* %9, align 4
  br label %177

177:                                              ; preds = %243, %3
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %178, 8
  br i1 %179, label %180, label %246

180:                                              ; preds = %177
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @kp, i64 0, i64 %182
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [9 x double], [9 x double]* %183, i64 0, i64 %185
  %187 = load double, double* %186, align 8
  %188 = load double, double* %17, align 8
  %189 = fmul double %187, %188
  store double %189, double* %18, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @kq, i64 0, i64 %191
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [10 x double], [10 x double]* %192, i64 0, i64 %194
  %196 = load double, double* %195, align 8
  %197 = load double, double* %17, align 8
  %198 = fmul double %196, %197
  store double %198, double* %19, align 8
  %199 = load double, double* %11, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @ca, i64 0, i64 %201
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [9 x double], [9 x double]* %202, i64 0, i64 %204
  %206 = load double, double* %205, align 8
  %207 = load double, double* %18, align 8
  %208 = call double @cos(double noundef %207) #5
  %209 = load i32, i32* %5, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @sa, i64 0, i64 %210
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [9 x double], [9 x double]* %211, i64 0, i64 %213
  %215 = load double, double* %214, align 8
  %216 = load double, double* %18, align 8
  %217 = call double @sin(double noundef %216) #5
  %218 = fmul double %215, %217
  %219 = call double @llvm.fmuladd.f64(double %206, double %208, double %218)
  %220 = call double @llvm.fmuladd.f64(double %219, double 0x3E7AD7F29ABCAF48, double %199)
  store double %220, double* %11, align 8
  %221 = load double, double* %12, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @cl, i64 0, i64 %223
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [10 x double], [10 x double]* %224, i64 0, i64 %226
  %228 = load double, double* %227, align 8
  %229 = load double, double* %19, align 8
  %230 = call double @cos(double noundef %229) #5
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @sl, i64 0, i64 %232
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [10 x double], [10 x double]* %233, i64 0, i64 %235
  %237 = load double, double* %236, align 8
  %238 = load double, double* %19, align 8
  %239 = call double @sin(double noundef %238) #5
  %240 = fmul double %237, %239
  %241 = call double @llvm.fmuladd.f64(double %228, double %230, double %240)
  %242 = call double @llvm.fmuladd.f64(double %241, double 0x3E7AD7F29ABCAF48, double %221)
  store double %242, double* %12, align 8
  br label %243

243:                                              ; preds = %180
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %9, align 4
  br label %177, !llvm.loop !4

246:                                              ; preds = %177
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @kp, i64 0, i64 %248
  %250 = getelementptr inbounds [9 x double], [9 x double]* %249, i64 0, i64 8
  %251 = load double, double* %250, align 8
  %252 = load double, double* %17, align 8
  %253 = fmul double %251, %252
  store double %253, double* %18, align 8
  %254 = load double, double* %11, align 8
  %255 = load double, double* %10, align 8
  %256 = load i32, i32* %5, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @ca, i64 0, i64 %257
  %259 = getelementptr inbounds [9 x double], [9 x double]* %258, i64 0, i64 8
  %260 = load double, double* %259, align 8
  %261 = load double, double* %18, align 8
  %262 = call double @cos(double noundef %261) #5
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [8 x [9 x double]], [8 x [9 x double]]* @sa, i64 0, i64 %264
  %266 = getelementptr inbounds [9 x double], [9 x double]* %265, i64 0, i64 8
  %267 = load double, double* %266, align 8
  %268 = load double, double* %18, align 8
  %269 = call double @sin(double noundef %268) #5
  %270 = fmul double %267, %269
  %271 = call double @llvm.fmuladd.f64(double %260, double %262, double %270)
  %272 = fmul double %255, %271
  %273 = call double @llvm.fmuladd.f64(double %272, double 0x3E7AD7F29ABCAF48, double %254)
  store double %273, double* %11, align 8
  store i32 8, i32* %9, align 4
  br label %274

274:                                              ; preds = %311, %246
  %275 = load i32, i32* %9, align 4
  %276 = icmp sle i32 %275, 9
  br i1 %276, label %277, label %314

277:                                              ; preds = %274
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @kq, i64 0, i64 %279
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [10 x double], [10 x double]* %280, i64 0, i64 %282
  %284 = load double, double* %283, align 8
  %285 = load double, double* %17, align 8
  %286 = fmul double %284, %285
  store double %286, double* %19, align 8
  %287 = load double, double* %12, align 8
  %288 = load double, double* %10, align 8
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @cl, i64 0, i64 %290
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [10 x double], [10 x double]* %291, i64 0, i64 %293
  %295 = load double, double* %294, align 8
  %296 = load double, double* %19, align 8
  %297 = call double @cos(double noundef %296) #5
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [8 x [10 x double]], [8 x [10 x double]]* @sl, i64 0, i64 %299
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [10 x double], [10 x double]* %300, i64 0, i64 %302
  %304 = load double, double* %303, align 8
  %305 = load double, double* %19, align 8
  %306 = call double @sin(double noundef %305) #5
  %307 = fmul double %304, %306
  %308 = call double @llvm.fmuladd.f64(double %295, double %297, double %307)
  %309 = fmul double %288, %308
  %310 = call double @llvm.fmuladd.f64(double %309, double 0x3E7AD7F29ABCAF48, double %287)
  store double %310, double* %12, align 8
  br label %311

311:                                              ; preds = %277
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %9, align 4
  br label %274, !llvm.loop !6

314:                                              ; preds = %274
  %315 = load double, double* %12, align 8
  %316 = call double @fmod(double noundef %315, double noundef 0x401921FB54442D18) #5
  store double %316, double* %12, align 8
  %317 = load double, double* %12, align 8
  %318 = load double, double* %14, align 8
  %319 = fsub double %317, %318
  store double %319, double* %20, align 8
  %320 = load double, double* %20, align 8
  %321 = load double, double* %13, align 8
  %322 = load double, double* %20, align 8
  %323 = call double @sin(double noundef %322) #5
  %324 = call double @llvm.fmuladd.f64(double %321, double %323, double %320)
  store double %324, double* %21, align 8
  store i32 0, i32* %9, align 4
  br label %325

325:                                              ; preds = %314, %351
  %326 = load double, double* %20, align 8
  %327 = load double, double* %21, align 8
  %328 = fsub double %326, %327
  %329 = load double, double* %13, align 8
  %330 = load double, double* %21, align 8
  %331 = call double @sin(double noundef %330) #5
  %332 = call double @llvm.fmuladd.f64(double %329, double %331, double %328)
  %333 = load double, double* %13, align 8
  %334 = load double, double* %21, align 8
  %335 = call double @cos(double noundef %334) #5
  %336 = fneg double %333
  %337 = call double @llvm.fmuladd.f64(double %336, double %335, double 1.000000e+00)
  %338 = fdiv double %332, %337
  store double %338, double* %22, align 8
  %339 = load double, double* %21, align 8
  %340 = load double, double* %22, align 8
  %341 = fadd double %339, %340
  store double %341, double* %21, align 8
  %342 = load i32, i32* %9, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %9, align 4
  %344 = load i32, i32* %9, align 4
  %345 = icmp sge i32 %344, 10
  br i1 %345, label %350, label %346

346:                                              ; preds = %325
  %347 = load double, double* %22, align 8
  %348 = call double @llvm.fabs.f64(double %347)
  %349 = fcmp olt double %348, 0x3D719799812DEA11
  br i1 %349, label %350, label %351

350:                                              ; preds = %346, %325
  br label %352

351:                                              ; preds = %346
  br label %325

352:                                              ; preds = %350
  %353 = load double, double* %21, align 8
  %354 = fdiv double %353, 2.000000e+00
  store double %354, double* %23, align 8
  %355 = load double, double* %13, align 8
  %356 = fadd double 1.000000e+00, %355
  %357 = load double, double* %13, align 8
  %358 = fsub double 1.000000e+00, %357
  %359 = fdiv double %356, %358
  %360 = call double @sqrt(double noundef %359) #5
  %361 = load double, double* %23, align 8
  %362 = call double @sin(double noundef %361) #5
  %363 = fmul double %360, %362
  %364 = load double, double* %23, align 8
  %365 = call double @cos(double noundef %364) #5
  %366 = call double @atan2(double noundef %363, double noundef %365) #5
  %367 = fmul double 2.000000e+00, %366
  store double %367, double* %24, align 8
  %368 = load double, double* %11, align 8
  %369 = load double, double* %13, align 8
  %370 = load double, double* %21, align 8
  %371 = call double @cos(double noundef %370) #5
  %372 = fneg double %369
  %373 = call double @llvm.fmuladd.f64(double %372, double %371, double 1.000000e+00)
  %374 = fmul double %368, %373
  store double %374, double* %25, align 8
  %375 = load i32, i32* %5, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [8 x double], [8 x double]* @amas, i64 0, i64 %376
  %378 = load double, double* %377, align 8
  %379 = fdiv double 1.000000e+00, %378
  %380 = fadd double 1.000000e+00, %379
  %381 = load double, double* %11, align 8
  %382 = load double, double* %11, align 8
  %383 = fmul double %381, %382
  %384 = load double, double* %11, align 8
  %385 = fmul double %383, %384
  %386 = fdiv double %380, %385
  %387 = call double @sqrt(double noundef %386) #5
  %388 = fmul double 0x3F919D6D51A6B69A, %387
  store double %388, double* %26, align 8
  %389 = load double, double* %15, align 8
  %390 = fdiv double %389, 2.000000e+00
  %391 = call double @sin(double noundef %390) #5
  store double %391, double* %27, align 8
  %392 = load double, double* %27, align 8
  %393 = load double, double* %16, align 8
  %394 = call double @cos(double noundef %393) #5
  %395 = fmul double %392, %394
  store double %395, double* %28, align 8
  %396 = load double, double* %27, align 8
  %397 = load double, double* %16, align 8
  %398 = call double @sin(double noundef %397) #5
  %399 = fmul double %396, %398
  store double %399, double* %29, align 8
  %400 = load double, double* %24, align 8
  %401 = load double, double* %14, align 8
  %402 = fadd double %400, %401
  store double %402, double* %30, align 8
  %403 = load double, double* %30, align 8
  %404 = call double @sin(double noundef %403) #5
  store double %404, double* %31, align 8
  %405 = load double, double* %30, align 8
  %406 = call double @cos(double noundef %405) #5
  store double %406, double* %32, align 8
  %407 = load double, double* %29, align 8
  %408 = load double, double* %32, align 8
  %409 = load double, double* %28, align 8
  %410 = load double, double* %31, align 8
  %411 = fmul double %409, %410
  %412 = fneg double %411
  %413 = call double @llvm.fmuladd.f64(double %407, double %408, double %412)
  %414 = fmul double 2.000000e+00, %413
  store double %414, double* %33, align 8
  %415 = load double, double* %11, align 8
  %416 = load double, double* %13, align 8
  %417 = load double, double* %13, align 8
  %418 = fneg double %416
  %419 = call double @llvm.fmuladd.f64(double %418, double %417, double 1.000000e+00)
  %420 = call double @sqrt(double noundef %419) #5
  %421 = fdiv double %415, %420
  store double %421, double* %34, align 8
  %422 = load double, double* %15, align 8
  %423 = fdiv double %422, 2.000000e+00
  %424 = call double @cos(double noundef %423) #5
  store double %424, double* %35, align 8
  %425 = load double, double* %13, align 8
  %426 = load double, double* %14, align 8
  %427 = call double @sin(double noundef %426) #5
  %428 = load double, double* %31, align 8
  %429 = call double @llvm.fmuladd.f64(double %425, double %427, double %428)
  %430 = load double, double* %34, align 8
  %431 = fmul double %429, %430
  store double %431, double* %36, align 8
  %432 = load double, double* %13, align 8
  %433 = load double, double* %14, align 8
  %434 = call double @cos(double noundef %433) #5
  %435 = load double, double* %32, align 8
  %436 = call double @llvm.fmuladd.f64(double %432, double %434, double %435)
  %437 = load double, double* %34, align 8
  %438 = fmul double %436, %437
  store double %438, double* %37, align 8
  %439 = load double, double* %29, align 8
  %440 = fmul double 2.000000e+00, %439
  %441 = load double, double* %28, align 8
  %442 = fmul double %440, %441
  store double %442, double* %38, align 8
  %443 = load double, double* %25, align 8
  %444 = load double, double* %32, align 8
  %445 = load double, double* %33, align 8
  %446 = load double, double* %29, align 8
  %447 = fneg double %445
  %448 = call double @llvm.fmuladd.f64(double %447, double %446, double %444)
  %449 = fmul double %443, %448
  store double %449, double* %39, align 8
  %450 = load double, double* %25, align 8
  %451 = load double, double* %31, align 8
  %452 = load double, double* %33, align 8
  %453 = load double, double* %28, align 8
  %454 = call double @llvm.fmuladd.f64(double %452, double %453, double %451)
  %455 = fmul double %450, %454
  store double %455, double* %40, align 8
  %456 = load double, double* %25, align 8
  %457 = load double, double* %33, align 8
  %458 = fneg double %457
  %459 = load double, double* %35, align 8
  %460 = fmul double %458, %459
  %461 = fmul double %456, %460
  store double %461, double* %41, align 8
  %462 = load double, double* %39, align 8
  %463 = load [3 x double]*, [3 x double]** %6, align 8
  %464 = getelementptr inbounds [3 x double], [3 x double]* %463, i64 0
  %465 = getelementptr inbounds [3 x double], [3 x double]* %464, i64 0, i64 0
  store double %462, double* %465, align 8
  %466 = load double, double* %40, align 8
  %467 = load double, double* %41, align 8
  %468 = fmul double %467, 0x3FD9752E50F4B399
  %469 = fneg double %468
  %470 = call double @llvm.fmuladd.f64(double %466, double 0x3FED5C0357681EF3, double %469)
  %471 = load [3 x double]*, [3 x double]** %6, align 8
  %472 = getelementptr inbounds [3 x double], [3 x double]* %471, i64 0
  %473 = getelementptr inbounds [3 x double], [3 x double]* %472, i64 0, i64 1
  store double %470, double* %473, align 8
  %474 = load double, double* %40, align 8
  %475 = load double, double* %41, align 8
  %476 = fmul double %475, 0x3FED5C0357681EF3
  %477 = call double @llvm.fmuladd.f64(double %474, double 0x3FD9752E50F4B399, double %476)
  %478 = load [3 x double]*, [3 x double]** %6, align 8
  %479 = getelementptr inbounds [3 x double], [3 x double]* %478, i64 0
  %480 = getelementptr inbounds [3 x double], [3 x double]* %479, i64 0, i64 2
  store double %477, double* %480, align 8
  %481 = load double, double* %26, align 8
  %482 = load double, double* %29, align 8
  %483 = fmul double 2.000000e+00, %482
  %484 = load double, double* %29, align 8
  %485 = call double @llvm.fmuladd.f64(double %483, double %484, double -1.000000e+00)
  %486 = load double, double* %36, align 8
  %487 = load double, double* %38, align 8
  %488 = load double, double* %37, align 8
  %489 = fmul double %487, %488
  %490 = call double @llvm.fmuladd.f64(double %485, double %486, double %489)
  %491 = fmul double %481, %490
  store double %491, double* %39, align 8
  %492 = load double, double* %26, align 8
  %493 = load double, double* %28, align 8
  %494 = fmul double 2.000000e+00, %493
  %495 = load double, double* %28, align 8
  %496 = fneg double %494
  %497 = call double @llvm.fmuladd.f64(double %496, double %495, double 1.000000e+00)
  %498 = load double, double* %37, align 8
  %499 = load double, double* %38, align 8
  %500 = load double, double* %36, align 8
  %501 = fmul double %499, %500
  %502 = fneg double %501
  %503 = call double @llvm.fmuladd.f64(double %497, double %498, double %502)
  %504 = fmul double %492, %503
  store double %504, double* %40, align 8
  %505 = load double, double* %26, align 8
  %506 = load double, double* %35, align 8
  %507 = fmul double 2.000000e+00, %506
  %508 = load double, double* %29, align 8
  %509 = load double, double* %36, align 8
  %510 = load double, double* %28, align 8
  %511 = load double, double* %37, align 8
  %512 = fmul double %510, %511
  %513 = call double @llvm.fmuladd.f64(double %508, double %509, double %512)
  %514 = fmul double %507, %513
  %515 = fmul double %505, %514
  store double %515, double* %41, align 8
  %516 = load double, double* %39, align 8
  %517 = load [3 x double]*, [3 x double]** %6, align 8
  %518 = getelementptr inbounds [3 x double], [3 x double]* %517, i64 1
  %519 = getelementptr inbounds [3 x double], [3 x double]* %518, i64 0, i64 0
  store double %516, double* %519, align 8
  %520 = load double, double* %40, align 8
  %521 = load double, double* %41, align 8
  %522 = fmul double %521, 0x3FD9752E50F4B399
  %523 = fneg double %522
  %524 = call double @llvm.fmuladd.f64(double %520, double 0x3FED5C0357681EF3, double %523)
  %525 = load [3 x double]*, [3 x double]** %6, align 8
  %526 = getelementptr inbounds [3 x double], [3 x double]* %525, i64 1
  %527 = getelementptr inbounds [3 x double], [3 x double]* %526, i64 0, i64 1
  store double %524, double* %527, align 8
  %528 = load double, double* %40, align 8
  %529 = load double, double* %41, align 8
  %530 = fmul double %529, 0x3FED5C0357681EF3
  %531 = call double @llvm.fmuladd.f64(double %528, double 0x3FD9752E50F4B399, double %530)
  %532 = load [3 x double]*, [3 x double]** %6, align 8
  %533 = getelementptr inbounds [3 x double], [3 x double]* %532, i64 1
  %534 = getelementptr inbounds [3 x double], [3 x double]* %533, i64 0, i64 2
  store double %531, double* %534, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @atan2(double noundef, double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @radecdist([3 x double]* noundef %0, double* noundef %1) #0 {
  %3 = alloca [3 x double]*, align 8
  %4 = alloca double*, align 8
  store [3 x double]* %0, [3 x double]** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load [3 x double]*, [3 x double]** %3, align 8
  %6 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 0
  %7 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %8 = load double, double* %7, align 8
  %9 = load [3 x double]*, [3 x double]** %3, align 8
  %10 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0
  %11 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0
  %12 = load double, double* %11, align 8
  %13 = load [3 x double]*, [3 x double]** %3, align 8
  %14 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0
  %15 = getelementptr inbounds [3 x double], [3 x double]* %14, i64 0, i64 1
  %16 = load double, double* %15, align 8
  %17 = load [3 x double]*, [3 x double]** %3, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0
  %19 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0, i64 1
  %20 = load double, double* %19, align 8
  %21 = fmul double %16, %20
  %22 = call double @llvm.fmuladd.f64(double %8, double %12, double %21)
  %23 = load [3 x double]*, [3 x double]** %3, align 8
  %24 = getelementptr inbounds [3 x double], [3 x double]* %23, i64 0
  %25 = getelementptr inbounds [3 x double], [3 x double]* %24, i64 0, i64 2
  %26 = load double, double* %25, align 8
  %27 = load [3 x double]*, [3 x double]** %3, align 8
  %28 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0
  %29 = getelementptr inbounds [3 x double], [3 x double]* %28, i64 0, i64 2
  %30 = load double, double* %29, align 8
  %31 = call double @llvm.fmuladd.f64(double %26, double %30, double %22)
  %32 = call double @sqrt(double noundef %31) #5
  %33 = load double*, double** %4, align 8
  %34 = getelementptr inbounds double, double* %33, i64 2
  store double %32, double* %34, align 8
  %35 = load [3 x double]*, [3 x double]** %3, align 8
  %36 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 0
  %37 = getelementptr inbounds [3 x double], [3 x double]* %36, i64 0, i64 1
  %38 = load double, double* %37, align 8
  %39 = load [3 x double]*, [3 x double]** %3, align 8
  %40 = getelementptr inbounds [3 x double], [3 x double]* %39, i64 0
  %41 = getelementptr inbounds [3 x double], [3 x double]* %40, i64 0, i64 0
  %42 = load double, double* %41, align 8
  %43 = call double @atan2(double noundef %38, double noundef %42) #5
  %44 = fmul double %43, 0x400E8EC8A4AEACC4
  %45 = load double*, double** %4, align 8
  %46 = getelementptr inbounds double, double* %45, i64 0
  store double %44, double* %46, align 8
  %47 = load double*, double** %4, align 8
  %48 = getelementptr inbounds double, double* %47, i64 0
  %49 = load double, double* %48, align 8
  %50 = fcmp olt double %49, 0.000000e+00
  br i1 %50, label %51, label %56

51:                                               ; preds = %2
  %52 = load double*, double** %4, align 8
  %53 = getelementptr inbounds double, double* %52, i64 0
  %54 = load double, double* %53, align 8
  %55 = fadd double %54, 2.400000e+01
  store double %55, double* %53, align 8
  br label %56

56:                                               ; preds = %51, %2
  %57 = load [3 x double]*, [3 x double]** %3, align 8
  %58 = getelementptr inbounds [3 x double], [3 x double]* %57, i64 0
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 2
  %60 = load double, double* %59, align 8
  %61 = load double*, double** %4, align 8
  %62 = getelementptr inbounds double, double* %61, i64 2
  %63 = load double, double* %62, align 8
  %64 = fdiv double %60, %63
  %65 = call double @asin(double noundef %64) #5
  %66 = fmul double %65, 0x404CA5DC1A63C1F8
  %67 = load double*, double** %4, align 8
  %68 = getelementptr inbounds double, double* %67, i64 1
  store double %66, double* %68, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @asin(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x double], align 16
  %10 = alloca [2 x [3 x double]], align 16
  %11 = alloca [8 x [3 x double]], align 16
  %12 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 0, i8* %12, align 1
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i8 1, i8* %12, align 1
  br label %31

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %16, !llvm.loop !7

31:                                               ; preds = %26, %16
  br label %32

32:                                               ; preds = %31, %2
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %66, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 20
  br i1 %35, label %36, label %69

36:                                               ; preds = %33
  %37 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  store double 0x4142B42C80000000, double* %37, align 16
  %38 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 1
  store double 0.000000e+00, double* %38, align 8
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %62, %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 36525
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %44 = load double, double* %43, align 16
  %45 = fadd double %44, 1.000000e+00
  store double %45, double* %43, align 16
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %58, %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = getelementptr inbounds [2 x double], [2 x double]* %9, i64 0, i64 0
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds [2 x [3 x double]], [2 x [3 x double]]* %10, i64 0, i64 0
  call void @planetpv(double* noundef %50, i32 noundef %51, [3 x double]* noundef %52)
  %53 = getelementptr inbounds [2 x [3 x double]], [2 x [3 x double]]* %10, i64 0, i64 0
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* %11, i64 0, i64 %55
  %57 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 0, i64 0
  call void @radecdist([3 x double]* noundef %53, double* noundef %57)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %46, !llvm.loop !8

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %39, !llvm.loop !9

65:                                               ; preds = %39
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %33, !llvm.loop !10

69:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %90, %69
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* %11, i64 0, i64 %75
  %77 = getelementptr inbounds [3 x double], [3 x double]* %76, i64 0, i64 0
  %78 = load double, double* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* %11, i64 0, i64 %80
  %82 = getelementptr inbounds [3 x double], [3 x double]* %81, i64 0, i64 1
  %83 = load double, double* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8 x [3 x double]], [8 x [3 x double]]* %11, i64 0, i64 %85
  %87 = getelementptr inbounds [3 x double], [3 x double]* %86, i64 0, i64 2
  %88 = load double, double* %87, align 8
  %89 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double noundef %78, double noundef %83, double noundef %88)
  br label %90

90:                                               ; preds = %73
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %70, !llvm.loop !11

93:                                               ; preds = %70
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %95 = call i32 @fflush(%struct._IO_FILE* noundef %94)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
