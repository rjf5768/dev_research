; ModuleID = './basicmath.ll'
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
@str = private unnamed_addr constant [38 x i8] c"********* CUBIC FUNCTIONS ***********\00", align 1
@str.1 = private unnamed_addr constant [40 x i8] c"********* INTEGER SQR ROOTS ***********\00", align 1
@str.2 = private unnamed_addr constant [39 x i8] c"********* ANGLE CONVERSION ***********\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [3 x double], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.int_sqrt, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @str, i64 0, i64 0))
  %4 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 0
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, i32* noundef nonnull %2, double* noundef nonnull %4) #6
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %6

6:                                                ; preds = %14, %0
  %.06 = phi i32 [ 0, %0 ], [ %15, %14 ]
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %.06, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = zext i32 %.06 to i64
  %11 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 %10
  %12 = load double, double* %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %12) #6
  br label %14

14:                                               ; preds = %9
  %15 = add nuw nsw i32 %.06, 1
  br label %6, !llvm.loop !4

16:                                               ; preds = %6
  %putchar = call i32 @putchar(i32 10)
  %17 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 0
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -4.500000e+00, double noundef 1.700000e+01, double noundef -3.000000e+01, i32* noundef nonnull %2, double* noundef nonnull %17) #6
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %19

19:                                               ; preds = %27, %16
  %.17 = phi i32 [ 0, %16 ], [ %28, %27 ]
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %.17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = zext i32 %.17 to i64
  %24 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 %23
  %25 = load double, double* %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %25) #6
  br label %27

27:                                               ; preds = %22
  %28 = add nuw nsw i32 %.17, 1
  br label %19, !llvm.loop !6

29:                                               ; preds = %19
  %putchar8 = call i32 @putchar(i32 10)
  %30 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 0
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -3.500000e+00, double noundef 2.200000e+01, double noundef -3.100000e+01, i32* noundef nonnull %2, double* noundef nonnull %30) #6
  %31 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %32

32:                                               ; preds = %40, %29
  %.2 = phi i32 [ 0, %29 ], [ %41, %40 ]
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %.2, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = zext i32 %.2 to i64
  %37 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 %36
  %38 = load double, double* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %38) #6
  br label %40

40:                                               ; preds = %35
  %41 = add nuw nsw i32 %.2, 1
  br label %32, !llvm.loop !7

42:                                               ; preds = %32
  %putchar9 = call i32 @putchar(i32 10)
  %43 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 0
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.370000e+01, double noundef 1.000000e+00, double noundef -3.500000e+01, i32* noundef nonnull %2, double* noundef nonnull %43) #6
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %45

45:                                               ; preds = %53, %42
  %.3 = phi i32 [ 0, %42 ], [ %54, %53 ]
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %.3, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = zext i32 %.3 to i64
  %50 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 %49
  %51 = load double, double* %50, align 8
  %52 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %51) #6
  br label %53

53:                                               ; preds = %48
  %54 = add nuw nsw i32 %.3, 1
  br label %45, !llvm.loop !8

55:                                               ; preds = %45
  %putchar10 = call i32 @putchar(i32 10)
  %56 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 0
  call void @SolveCubic(double noundef 3.000000e+00, double noundef 1.234000e+01, double noundef 5.000000e+00, double noundef 1.200000e+01, i32* noundef nonnull %2, double* noundef nonnull %56) #6
  %57 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %58

58:                                               ; preds = %66, %55
  %.4 = phi i32 [ 0, %55 ], [ %67, %66 ]
  %59 = load i32, i32* %2, align 4
  %60 = icmp slt i32 %.4, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = zext i32 %.4 to i64
  %63 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 %62
  %64 = load double, double* %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %64) #6
  br label %66

66:                                               ; preds = %61
  %67 = add nuw nsw i32 %.4, 1
  br label %58, !llvm.loop !9

68:                                               ; preds = %58
  %putchar11 = call i32 @putchar(i32 10)
  %69 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 0
  call void @SolveCubic(double noundef -8.000000e+00, double noundef -6.789000e+01, double noundef 6.000000e+00, double noundef -2.360000e+01, i32* noundef nonnull %2, double* noundef nonnull %69) #6
  %70 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %71

71:                                               ; preds = %79, %68
  %.5 = phi i32 [ 0, %68 ], [ %80, %79 ]
  %72 = load i32, i32* %2, align 4
  %73 = icmp slt i32 %.5, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = zext i32 %.5 to i64
  %76 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 %75
  %77 = load double, double* %76, align 8
  %78 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %77) #6
  br label %79

79:                                               ; preds = %74
  %80 = add nuw nsw i32 %.5, 1
  br label %71, !llvm.loop !10

81:                                               ; preds = %71
  %putchar12 = call i32 @putchar(i32 10)
  %82 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 0
  call void @SolveCubic(double noundef 4.500000e+01, double noundef 8.670000e+00, double noundef 7.500000e+00, double noundef 3.400000e+01, i32* noundef nonnull %2, double* noundef nonnull %82) #6
  %83 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %84

84:                                               ; preds = %92, %81
  %.6 = phi i32 [ 0, %81 ], [ %93, %92 ]
  %85 = load i32, i32* %2, align 4
  %86 = icmp slt i32 %.6, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = zext i32 %.6 to i64
  %89 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 %88
  %90 = load double, double* %89, align 8
  %91 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %90) #6
  br label %92

92:                                               ; preds = %87
  %93 = add nuw nsw i32 %.6, 1
  br label %84, !llvm.loop !11

94:                                               ; preds = %84
  %putchar13 = call i32 @putchar(i32 10)
  %95 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 0
  call void @SolveCubic(double noundef -1.200000e+01, double noundef -1.700000e+00, double noundef 5.300000e+00, double noundef 1.600000e+01, i32* noundef nonnull %2, double* noundef nonnull %95) #6
  %96 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %97

97:                                               ; preds = %105, %94
  %.7 = phi i32 [ 0, %94 ], [ %106, %105 ]
  %98 = load i32, i32* %2, align 4
  %99 = icmp slt i32 %.7, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = zext i32 %.7 to i64
  %102 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 %101
  %103 = load double, double* %102, align 8
  %104 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %103) #6
  br label %105

105:                                              ; preds = %100
  %106 = add nuw nsw i32 %.7, 1
  br label %97, !llvm.loop !12

107:                                              ; preds = %97
  %putchar14 = call i32 @putchar(i32 10)
  br label %108

108:                                              ; preds = %142, %107
  %.01 = phi double [ 1.000000e+00, %107 ], [ %143, %142 ]
  %109 = fcmp olt double %.01, 1.000000e+01
  br i1 %109, label %110, label %144

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %139, %110
  %.02 = phi double [ 1.000000e+01, %110 ], [ %140, %139 ]
  %112 = fcmp ogt double %.02, 0.000000e+00
  br i1 %112, label %113, label %141

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %136, %113
  %.03 = phi double [ 5.000000e+00, %113 ], [ %137, %136 ]
  %115 = fcmp olt double %.03, 1.500000e+01
  br i1 %115, label %116, label %138

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %133, %116
  %.04 = phi double [ -1.000000e+00, %116 ], [ %134, %133 ]
  %118 = fcmp ogt double %.04, -5.000000e+00
  br i1 %118, label %119, label %135

119:                                              ; preds = %117
  %120 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 0
  call void @SolveCubic(double noundef %.01, double noundef %.02, double noundef %.03, double noundef %.04, i32* noundef nonnull %2, double* noundef nonnull %120) #6
  %121 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #6
  br label %122

122:                                              ; preds = %130, %119
  %.8 = phi i32 [ 0, %119 ], [ %131, %130 ]
  %123 = load i32, i32* %2, align 4
  %124 = icmp slt i32 %.8, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = zext i32 %.8 to i64
  %127 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 0, i64 %126
  %128 = load double, double* %127, align 8
  %129 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double noundef %128) #6
  br label %130

130:                                              ; preds = %125
  %131 = add nuw nsw i32 %.8, 1
  br label %122, !llvm.loop !13

132:                                              ; preds = %122
  %putchar19 = call i32 @putchar(i32 10)
  br label %133

133:                                              ; preds = %132
  %134 = fadd double %.04, -4.510000e-01
  br label %117, !llvm.loop !14

135:                                              ; preds = %117
  br label %136

136:                                              ; preds = %135
  %137 = fadd double %.03, 6.100000e-01
  br label %114, !llvm.loop !15

138:                                              ; preds = %114
  br label %139

139:                                              ; preds = %138
  %140 = fadd double %.02, -2.500000e-01
  br label %111, !llvm.loop !16

141:                                              ; preds = %111
  br label %142

142:                                              ; preds = %141
  %143 = fadd double %.01, 1.000000e+00
  br label %108, !llvm.loop !17

144:                                              ; preds = %108
  %puts15 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @str.1, i64 0, i64 0))
  br label %145

145:                                              ; preds = %151, %144
  %.9 = phi i32 [ 0, %144 ], [ %152, %151 ]
  %146 = icmp ult i32 %.9, 100000
  br i1 %146, label %147, label %153

147:                                              ; preds = %145
  call void @usqrt(i32 noundef %.9, %struct.int_sqrt* noundef nonnull %3) #6
  %148 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %3, i64 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 noundef %.9, i32 noundef %149) #6
  br label %151

151:                                              ; preds = %147
  %152 = add nuw nsw i32 %.9, 2
  br label %145, !llvm.loop !18

153:                                              ; preds = %145
  %putchar16 = call i32 @putchar(i32 10)
  br label %154

154:                                              ; preds = %160, %153
  %.0 = phi i32 [ 1072497001, %153 ], [ %161, %160 ]
  %155 = icmp ult i32 %.0, 1072513385
  br i1 %155, label %156, label %162

156:                                              ; preds = %154
  call void @usqrt(i32 noundef %.0, %struct.int_sqrt* noundef nonnull %3) #6
  %157 = getelementptr inbounds %struct.int_sqrt, %struct.int_sqrt* %3, i64 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef %.0, i32 noundef %158) #6
  br label %160

160:                                              ; preds = %156
  %161 = add i32 %.0, 1
  br label %154, !llvm.loop !19

162:                                              ; preds = %154
  %puts17 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.2, i64 0, i64 0))
  br label %163

163:                                              ; preds = %170, %162
  %.05 = phi double [ 0.000000e+00, %162 ], [ %171, %170 ]
  %164 = fcmp ugt double %.05, 3.600000e+02
  br i1 %164, label %172, label %165

165:                                              ; preds = %163
  %166 = call double @atan(double noundef 1.000000e+00) #6
  %167 = fmul double %.05, 0x400921FB54442D18
  %168 = fdiv double %167, 1.800000e+02
  %169 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), double noundef %.05, double noundef %168) #6
  br label %170

170:                                              ; preds = %165
  %171 = fadd double %.05, 1.000000e-03
  br label %163, !llvm.loop !20

172:                                              ; preds = %163
  %putchar18 = call i32 @putchar(i32 10)
  br label %173

173:                                              ; preds = %181, %172
  %.1 = phi double [ 0.000000e+00, %172 ], [ %183, %181 ]
  %174 = call double @atan(double noundef 1.000000e+00) #6
  %175 = fcmp ugt double %.1, 0x401921FB97600B9B
  br i1 %175, label %184, label %176

176:                                              ; preds = %173
  %177 = fmul double %.1, 1.800000e+02
  %178 = call double @atan(double noundef 1.000000e+00) #6
  %179 = fdiv double %177, 0x400921FB54442D18
  %180 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), double noundef %.1, double noundef %179) #6
  br label %181

181:                                              ; preds = %176
  %182 = call double @atan(double noundef 1.000000e+00) #6
  %183 = fadd double %.1, 0x3F41DF46A2529D39
  br label %173, !llvm.loop !21

184:                                              ; preds = %173
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @SolveCubic(double noundef, double noundef, double noundef, double noundef, i32* noundef, double* noundef) #1

declare dso_local void @usqrt(i32 noundef, %struct.int_sqrt* noundef) #1

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #2

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @puts(i8* nocapture noundef readonly) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
