; ModuleID = './whetstone.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/whetstone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"usage: whetdc [-c] [loops]\0A\00", align 1
@T = dso_local global double 0.000000e+00, align 8
@T1 = dso_local global double 0.000000e+00, align 8
@T2 = dso_local global double 0.000000e+00, align 8
@E1 = dso_local global [5 x double] zeroinitializer, align 16
@J = dso_local global i32 0, align 4
@K = dso_local global i32 0, align 4
@L = dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%7ld %7ld %7ld %12.4e %12.4e %12.4e %12.4e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca double, align 8
  br label %4

4:                                                ; preds = %34, %2
  %.07 = phi i32 [ 1, %2 ], [ %35, %34 ]
  %.02 = phi i64 [ 100000, %2 ], [ %.13, %34 ]
  %.01 = phi i32 [ 0, %2 ], [ %.1, %34 ]
  %5 = icmp slt i32 %.07, %0
  br i1 %5, label %6, label %36

6:                                                ; preds = %4
  %7 = zext i32 %.07 to i64
  %8 = getelementptr inbounds i8*, i8** %1, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 noundef 2) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = zext i32 %.07 to i64
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp eq i8 %16, 99
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %6
  br label %34

19:                                               ; preds = %12
  %20 = zext i32 %.07 to i64
  %21 = getelementptr inbounds i8*, i8** %1, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @atol(i8* noundef %22) #7
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %29

26:                                               ; preds = %19
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %27) #8
  br label %274

29:                                               ; preds = %25
  %30 = zext i32 %.07 to i64
  %31 = getelementptr inbounds i8*, i8** %1, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @atol(i8* noundef %32) #7
  br label %34

34:                                               ; preds = %29, %18
  %.13 = phi i64 [ %.02, %18 ], [ %33, %29 ]
  %.1 = phi i32 [ 1, %18 ], [ %.01, %29 ]
  %35 = add nuw nsw i32 %.07, 1
  br label %4, !llvm.loop !4

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %272, %36
  %38 = call i64 @time(i64* noundef null) #9
  store double 4.999750e-01, double* @T, align 8
  store double 5.002500e-01, double* @T1, align 8
  store double 2.000000e+00, double* @T2, align 8
  br label %39

39:                                               ; preds = %269, %37
  %40 = mul nsw i64 %.02, 12
  %41 = mul nsw i64 %.02, 14
  %42 = mul nsw i64 %.02, 345
  %43 = mul nsw i64 %.02, 210
  %44 = shl nsw i64 %.02, 5
  %45 = mul nsw i64 %.02, 899
  %46 = mul nsw i64 %.02, 616
  %47 = mul nsw i64 %.02, 93
  br label %48

48:                                               ; preds = %50, %39
  br i1 false, label %49, label %51

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  br label %48, !llvm.loop !6

51:                                               ; preds = %48
  br i1 true, label %52, label %53

52:                                               ; preds = %51
  call void @POUT(i64 noundef 0, i64 noundef 0, i64 noundef 0, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00)
  br label %53

53:                                               ; preds = %52, %51
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  br label %54

54:                                               ; preds = %89, %53
  %.15 = phi i64 [ 1, %53 ], [ %90, %89 ]
  %.not = icmp sgt i64 %.15, %40
  br i1 %.not, label %91, label %55

55:                                               ; preds = %54
  %56 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %57 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %58 = fadd double %56, %57
  %59 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %60 = fadd double %58, %59
  %61 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %62 = fsub double %60, %61
  %63 = load double, double* @T, align 8
  %64 = fmul double %62, %63
  store double %64, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %65 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %66 = fadd double %64, %65
  %67 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %68 = fsub double %66, %67
  %69 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %70 = fadd double %68, %69
  %71 = load double, double* @T, align 8
  %72 = fmul double %70, %71
  store double %72, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %73 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %74 = fsub double %73, %72
  %75 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %76 = fadd double %74, %75
  %77 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %78 = fadd double %76, %77
  %79 = load double, double* @T, align 8
  %80 = fmul double %78, %79
  store double %80, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %81 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %82 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %83 = fsub double %82, %81
  %84 = fadd double %83, %80
  %85 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %86 = fadd double %84, %85
  %87 = load double, double* @T, align 8
  %88 = fmul double %86, %87
  store double %88, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  br label %89

89:                                               ; preds = %55
  %90 = add nuw nsw i64 %.15, 1
  br label %54, !llvm.loop !7

91:                                               ; preds = %54
  br i1 true, label %92, label %97

92:                                               ; preds = %91
  %93 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %94 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %95 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %96 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  call void @POUT(i64 noundef %40, i64 noundef %41, i64 noundef %40, double noundef %93, double noundef %94, double noundef %95, double noundef %96)
  br label %97

97:                                               ; preds = %92, %91
  br label %98

98:                                               ; preds = %100, %97
  %.2 = phi i64 [ 1, %97 ], [ %101, %100 ]
  %.not17 = icmp sgt i64 %.2, %41
  br i1 %.not17, label %102, label %99

99:                                               ; preds = %98
  call void @PA(double* noundef getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %99
  %101 = add nuw nsw i64 %.2, 1
  br label %98, !llvm.loop !8

102:                                              ; preds = %98
  br i1 true, label %103, label %108

103:                                              ; preds = %102
  %104 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %105 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %106 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %107 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  call void @POUT(i64 noundef %41, i64 noundef %40, i64 noundef %40, double noundef %104, double noundef %105, double noundef %106, double noundef %107)
  br label %108

108:                                              ; preds = %103, %102
  store i32 1, i32* @J, align 4
  br label %109

109:                                              ; preds = %122, %108
  %.3 = phi i64 [ 1, %108 ], [ %123, %122 ]
  %.not18 = icmp sgt i64 %.3, %42
  br i1 %.not18, label %124, label %110

110:                                              ; preds = %109
  %111 = load i32, i32* @J, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %115

114:                                              ; preds = %110
  br label %115

115:                                              ; preds = %114, %113
  %storemerge = phi i32 [ 3, %114 ], [ 2, %113 ]
  store i32 %storemerge, i32* @J, align 4
  br i1 %112, label %117, label %116

116:                                              ; preds = %115
  br label %118

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117, %116
  %storemerge26 = phi i32 [ 1, %117 ], [ 0, %116 ]
  store i32 %storemerge26, i32* @J, align 4
  br i1 %112, label %120, label %119

119:                                              ; preds = %118
  br label %121

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120, %119
  %storemerge27 = phi i32 [ 0, %120 ], [ 1, %119 ]
  store i32 %storemerge27, i32* @J, align 4
  br label %122

122:                                              ; preds = %121
  %123 = add nuw nsw i64 %.3, 1
  br label %109, !llvm.loop !9

124:                                              ; preds = %109
  br i1 true, label %125, label %129

125:                                              ; preds = %124
  %126 = load i32, i32* @J, align 4
  %127 = sext i32 %126 to i64
  %128 = sext i32 %126 to i64
  call void @POUT(i64 noundef %42, i64 noundef %127, i64 noundef %128, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00)
  br label %129

129:                                              ; preds = %125, %124
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  br label %130

130:                                              ; preds = %162, %129
  %.4 = phi i64 [ 1, %129 ], [ %163, %162 ]
  %.not19 = icmp sgt i64 %.4, %43
  br i1 %.not19, label %164, label %131

131:                                              ; preds = %130
  %132 = load i32, i32* @J, align 4
  %133 = load i32, i32* @K, align 4
  %134 = sub nsw i32 %133, %132
  %135 = mul nsw i32 %132, %134
  %136 = load i32, i32* @L, align 4
  %137 = sub nsw i32 %136, %133
  %138 = mul nsw i32 %135, %137
  store i32 %138, i32* @J, align 4
  %139 = load i32, i32* @K, align 4
  %140 = mul i32 %138, %139
  store i32 %140, i32* @K, align 4
  %141 = load i32, i32* @L, align 4
  %142 = sub nsw i32 %141, %140
  %143 = add nsw i32 %140, %138
  %144 = mul nsw i32 %142, %143
  store i32 %144, i32* @L, align 4
  %145 = load i32, i32* @J, align 4
  %146 = load i32, i32* @K, align 4
  %147 = add nsw i32 %145, %146
  %148 = add nsw i32 %147, %144
  %149 = sitofp i32 %148 to double
  %150 = add nsw i32 %144, -1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %151
  store double %149, double* %152, align 8
  %153 = load i32, i32* @J, align 4
  %154 = load i32, i32* @K, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* @L, align 4
  %157 = mul nsw i32 %155, %156
  %158 = sitofp i32 %157 to double
  %159 = add nsw i32 %154, -1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %160
  store double %158, double* %161, align 8
  br label %162

162:                                              ; preds = %131
  %163 = add nuw nsw i64 %.4, 1
  br label %130, !llvm.loop !10

164:                                              ; preds = %130
  br i1 true, label %165, label %174

165:                                              ; preds = %164
  %166 = load i32, i32* @J, align 4
  %167 = sext i32 %166 to i64
  %168 = load i32, i32* @K, align 4
  %169 = sext i32 %168 to i64
  %170 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %171 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %172 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %173 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  call void @POUT(i64 noundef %43, i64 noundef %167, i64 noundef %169, double noundef %170, double noundef %171, double noundef %172, double noundef %173)
  br label %174

174:                                              ; preds = %165, %164
  br label %175

175:                                              ; preds = %206, %174
  %.09 = phi double [ 5.000000e-01, %174 ], [ %191, %206 ]
  %.08 = phi double [ 5.000000e-01, %174 ], [ %207, %206 ]
  %.5 = phi i64 [ 1, %174 ], [ %208, %206 ]
  %.not20 = icmp sgt i64 %.5, %44
  br i1 %.not20, label %209, label %176

176:                                              ; preds = %175
  %177 = load double, double* @T, align 8
  %178 = load double, double* @T2, align 8
  %179 = call double @sin(double noundef %.09) #9
  %180 = fmul double %178, %179
  %181 = call double @cos(double noundef %.09) #9
  %182 = fmul double %180, %181
  %183 = fadd double %.09, %.08
  %184 = call double @cos(double noundef %183) #9
  %185 = fsub double %.09, %.08
  %186 = call double @cos(double noundef %185) #9
  %187 = fadd double %184, %186
  %188 = fadd double %187, -1.000000e+00
  %189 = fdiv double %182, %188
  %190 = call double @atan(double noundef %189) #9
  %191 = fmul double %177, %190
  %192 = load double, double* @T, align 8
  %193 = load double, double* @T2, align 8
  %194 = call double @sin(double noundef %.08) #9
  %195 = fmul double %193, %194
  %196 = call double @cos(double noundef %.08) #9
  %197 = fmul double %195, %196
  %198 = fadd double %191, %.08
  %199 = call double @cos(double noundef %198) #9
  %200 = fsub double %191, %.08
  %201 = call double @cos(double noundef %200) #9
  %202 = fadd double %199, %201
  %203 = fadd double %202, -1.000000e+00
  %204 = fdiv double %197, %203
  %205 = call double @atan(double noundef %204) #9
  br label %206

206:                                              ; preds = %176
  %207 = fmul double %192, %205
  %208 = add nuw nsw i64 %.5, 1
  br label %175, !llvm.loop !11

209:                                              ; preds = %175
  br i1 true, label %210, label %215

210:                                              ; preds = %209
  %211 = load i32, i32* @J, align 4
  %212 = sext i32 %211 to i64
  %213 = load i32, i32* @K, align 4
  %214 = sext i32 %213 to i64
  call void @POUT(i64 noundef %44, i64 noundef %212, i64 noundef %214, double noundef %.09, double noundef %.09, double noundef %.08, double noundef %.08)
  br label %215

215:                                              ; preds = %210, %209
  store double 1.000000e+00, double* %3, align 8
  br label %216

216:                                              ; preds = %218, %215
  %.6 = phi i64 [ 1, %215 ], [ %219, %218 ]
  %.not21 = icmp sgt i64 %.6, %45
  br i1 %.not21, label %220, label %217

217:                                              ; preds = %216
  call void @P3(double noundef 1.000000e+00, double noundef 1.000000e+00, double* noundef nonnull %3)
  br label %218

218:                                              ; preds = %217
  %219 = add nuw nsw i64 %.6, 1
  br label %216, !llvm.loop !12

220:                                              ; preds = %216
  br i1 true, label %221, label %227

221:                                              ; preds = %220
  %222 = load i32, i32* @J, align 4
  %223 = sext i32 %222 to i64
  %224 = load i32, i32* @K, align 4
  %225 = sext i32 %224 to i64
  %226 = load double, double* %3, align 8
  call void @POUT(i64 noundef %45, i64 noundef %223, i64 noundef %225, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef %226, double noundef %226)
  br label %227

227:                                              ; preds = %221, %220
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  store double 2.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  store double 3.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  br label %228

228:                                              ; preds = %230, %227
  %.7 = phi i64 [ 1, %227 ], [ %231, %230 ]
  %.not22 = icmp sgt i64 %.7, %46
  br i1 %.not22, label %232, label %229

229:                                              ; preds = %228
  call void @P0()
  br label %230

230:                                              ; preds = %229
  %231 = add nuw nsw i64 %.7, 1
  br label %228, !llvm.loop !13

232:                                              ; preds = %228
  br i1 true, label %233, label %242

233:                                              ; preds = %232
  %234 = load i32, i32* @J, align 4
  %235 = sext i32 %234 to i64
  %236 = load i32, i32* @K, align 4
  %237 = sext i32 %236 to i64
  %238 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %239 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %240 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %241 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  call void @POUT(i64 noundef %46, i64 noundef %235, i64 noundef %237, double noundef %238, double noundef %239, double noundef %240, double noundef %241)
  br label %242

242:                                              ; preds = %233, %232
  store i32 2, i32* @J, align 4
  store i32 3, i32* @K, align 4
  br label %243

243:                                              ; preds = %245, %242
  br i1 false, label %244, label %246

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244
  br label %243, !llvm.loop !14

246:                                              ; preds = %243
  br i1 true, label %247, label %252

247:                                              ; preds = %246
  %248 = load i32, i32* @J, align 4
  %249 = sext i32 %248 to i64
  %250 = load i32, i32* @K, align 4
  %251 = sext i32 %250 to i64
  call void @POUT(i64 noundef 0, i64 noundef %249, i64 noundef %251, double noundef 1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00)
  br label %252

252:                                              ; preds = %247, %246
  br label %253

253:                                              ; preds = %260, %252
  %.110 = phi double [ 7.500000e-01, %252 ], [ %259, %260 ]
  %.9 = phi i64 [ 1, %252 ], [ %261, %260 ]
  %.not23 = icmp sgt i64 %.9, %47
  br i1 %.not23, label %262, label %254

254:                                              ; preds = %253
  %255 = call double @log(double noundef %.110) #9
  %256 = load double, double* @T1, align 8
  %257 = fdiv double %255, %256
  %258 = call double @exp(double noundef %257) #9
  %259 = call double @sqrt(double noundef %258) #9
  br label %260

260:                                              ; preds = %254
  %261 = add nuw nsw i64 %.9, 1
  br label %253, !llvm.loop !15

262:                                              ; preds = %253
  br i1 true, label %263, label %268

263:                                              ; preds = %262
  %264 = load i32, i32* @J, align 4
  %265 = sext i32 %264 to i64
  %266 = load i32, i32* @K, align 4
  %267 = sext i32 %266 to i64
  call void @POUT(i64 noundef %47, i64 noundef %265, i64 noundef %267, double noundef %.110, double noundef %.110, double noundef %.110, double noundef %.110)
  br label %268

268:                                              ; preds = %263, %262
  br i1 false, label %269, label %270

269:                                              ; preds = %268
  br label %39

270:                                              ; preds = %268
  %271 = call i64 @time(i64* noundef null) #9
  %putchar = call i32 @putchar(i32 10)
  %.not24 = icmp eq i32 %.01, 0
  br i1 %.not24, label %273, label %272

272:                                              ; preds = %270
  br label %37

273:                                              ; preds = %270
  br label %274

274:                                              ; preds = %273, %26
  %.0 = phi i32 [ 1, %26 ], [ 0, %273 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @atol(i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @POUT(i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #0 {
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 noundef %0, i64 noundef %1, i64 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @PA(double* nocapture noundef %0) #4 {
  store i32 0, i32* @J, align 4
  br label %2

2:                                                ; preds = %58, %1
  %3 = getelementptr inbounds double, double* %0, i64 1
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds double, double* %0, i64 2
  %6 = load double, double* %5, align 8
  %7 = fadd double %4, %6
  %8 = getelementptr inbounds double, double* %0, i64 3
  %9 = load double, double* %8, align 8
  %10 = fadd double %7, %9
  %11 = getelementptr inbounds double, double* %0, i64 4
  %12 = load double, double* %11, align 8
  %13 = fsub double %10, %12
  %14 = load double, double* @T, align 8
  %15 = fmul double %13, %14
  %16 = getelementptr inbounds double, double* %0, i64 1
  store double %15, double* %16, align 8
  %17 = getelementptr inbounds double, double* %0, i64 2
  %18 = load double, double* %17, align 8
  %19 = fadd double %15, %18
  %20 = getelementptr inbounds double, double* %0, i64 3
  %21 = load double, double* %20, align 8
  %22 = fsub double %19, %21
  %23 = getelementptr inbounds double, double* %0, i64 4
  %24 = load double, double* %23, align 8
  %25 = fadd double %22, %24
  %26 = load double, double* @T, align 8
  %27 = fmul double %25, %26
  %28 = getelementptr inbounds double, double* %0, i64 2
  store double %27, double* %28, align 8
  %29 = getelementptr inbounds double, double* %0, i64 1
  %30 = load double, double* %29, align 8
  %31 = fsub double %30, %27
  %32 = getelementptr inbounds double, double* %0, i64 3
  %33 = load double, double* %32, align 8
  %34 = fadd double %31, %33
  %35 = getelementptr inbounds double, double* %0, i64 4
  %36 = load double, double* %35, align 8
  %37 = fadd double %34, %36
  %38 = load double, double* @T, align 8
  %39 = fmul double %37, %38
  %40 = getelementptr inbounds double, double* %0, i64 3
  store double %39, double* %40, align 8
  %41 = getelementptr inbounds double, double* %0, i64 1
  %42 = load double, double* %41, align 8
  %43 = getelementptr inbounds double, double* %0, i64 2
  %44 = load double, double* %43, align 8
  %45 = fsub double %44, %42
  %46 = getelementptr inbounds double, double* %0, i64 3
  %47 = load double, double* %46, align 8
  %48 = fadd double %45, %47
  %49 = getelementptr inbounds double, double* %0, i64 4
  %50 = load double, double* %49, align 8
  %51 = fadd double %48, %50
  %52 = load double, double* @T2, align 8
  %53 = fdiv double %51, %52
  %54 = getelementptr inbounds double, double* %0, i64 4
  store double %53, double* %54, align 8
  %55 = load i32, i32* @J, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @J, align 4
  %57 = icmp slt i32 %55, 5
  br i1 %57, label %58, label %59

58:                                               ; preds = %2
  br label %2

59:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare dso_local double @atan(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @P3(double noundef %0, double noundef %1, double* nocapture noundef writeonly %2) #5 {
  %4 = load double, double* @T, align 8
  %5 = fadd double %0, %1
  %6 = fmul double %4, %5
  %7 = fadd double %6, %1
  %8 = fmul double %4, %7
  %9 = fadd double %6, %8
  %10 = load double, double* @T2, align 8
  %11 = fdiv double %9, %10
  store double %11, double* %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @P0() #5 {
  %1 = load i32, i32* @K, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %2
  %4 = load double, double* %3, align 8
  %5 = load i32, i32* @J, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %6
  store double %4, double* %7, align 8
  %8 = load i32, i32* @L, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %9
  %11 = load double, double* %10, align 8
  %12 = load i32, i32* @K, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %13
  store double %11, double* %14, align 8
  %15 = load i32, i32* @J, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load i32, i32* @L, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %20
  store double %18, double* %21, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { cold }
attributes #9 = { nounwind }

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
