; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/ffbench.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/ffbench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@main.nsize = internal global [3 x i32] zeroinitializer, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [28 x i8] c"Can't allocate data array.\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%d passes.  No errors in results.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%d passes.  %d errors in results.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
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
  store i32 0, i32* %1, align 4
  store i32 63, i32* %7, align 4
  store i32 256, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = add nsw i64 %26, 1
  %28 = mul nsw i64 %27, 2
  %29 = mul i64 %28, 8
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i64 0, i64 2), align 4
  store i32 %30, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i64 0, i64 1), align 4
  %31 = load i64, i64* %11, align 8
  %32 = call noalias i8* @malloc(i64 noundef %31) #6
  %33 = bitcast i8* %32 to double*
  store double* %33, double** %9, align 8
  %34 = load double*, double** %9, align 8
  %35 = icmp eq double* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %0
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #7
  unreachable

39:                                               ; preds = %0
  %40 = load double*, double** %9, align 8
  %41 = bitcast double* %40 to i8*
  %42 = load i64, i64* %11, align 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 %42, i1 false)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %76, %39
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load i32, i32* %2, align 4
  %54 = and i32 %53, 15
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 15
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %71

60:                                               ; preds = %56, %52
  %61 = load double*, double** %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %2, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %64, %65
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 1, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %61, i64 %69
  store double 1.280000e+02, double* %70, align 8
  br label %71

71:                                               ; preds = %60, %56
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %48, !llvm.loop !4

75:                                               ; preds = %48
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %2, align 4
  br label %43, !llvm.loop !6

79:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %87, %79
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load double*, double** %9, align 8
  call void @fourn(double* noundef %85, i32* noundef getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i64 0, i64 0), i32 noundef 2, i32 noundef 1)
  %86 = load double*, double** %9, align 8
  call void @fourn(double* noundef %86, i32* noundef getelementptr inbounds ([3 x i32], [3 x i32]* @main.nsize, i64 0, i64 0), i32 noundef 2, i32 noundef -1)
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %80, !llvm.loop !7

90:                                               ; preds = %80
  store double 1.000000e+10, double* %14, align 8
  store double -1.000000e+10, double* %15, align 8
  store double 1.000000e+10, double* %16, align 8
  store double -1.000000e+10, double* %17, align 8
  store double 0.000000e+00, double* %20, align 8
  store double 0.000000e+00, double* %21, align 8
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %150, %90
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %10, align 8
  %95 = icmp sle i64 %93, %94
  br i1 %95, label %96, label %153

96:                                               ; preds = %91
  %97 = load double*, double** %9, align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %97, i64 %99
  %101 = load double, double* %100, align 8
  store double %101, double* %18, align 8
  %102 = load double*, double** %9, align 8
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %102, i64 %105
  %107 = load double, double* %106, align 8
  store double %107, double* %19, align 8
  %108 = load double, double* %18, align 8
  %109 = load double, double* %20, align 8
  %110 = fadd double %109, %108
  store double %110, double* %20, align 8
  %111 = load double, double* %19, align 8
  %112 = load double, double* %21, align 8
  %113 = fadd double %112, %111
  store double %113, double* %21, align 8
  %114 = load double, double* %18, align 8
  %115 = load double, double* %14, align 8
  %116 = fcmp ole double %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %96
  %118 = load double, double* %18, align 8
  br label %121

119:                                              ; preds = %96
  %120 = load double, double* %14, align 8
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi double [ %118, %117 ], [ %120, %119 ]
  store double %122, double* %14, align 8
  %123 = load double, double* %18, align 8
  %124 = load double, double* %15, align 8
  %125 = fcmp ogt double %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load double, double* %18, align 8
  br label %130

128:                                              ; preds = %121
  %129 = load double, double* %15, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi double [ %127, %126 ], [ %129, %128 ]
  store double %131, double* %15, align 8
  %132 = load double, double* %19, align 8
  %133 = load double, double* %16, align 8
  %134 = fcmp ole double %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load double, double* %19, align 8
  br label %139

137:                                              ; preds = %130
  %138 = load double, double* %16, align 8
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi double [ %136, %135 ], [ %138, %137 ]
  store double %140, double* %16, align 8
  %141 = load double, double* %19, align 8
  %142 = load double, double* %17, align 8
  %143 = fcmp ogt double %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load double, double* %19, align 8
  br label %148

146:                                              ; preds = %139
  %147 = load double, double* %17, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi double [ %145, %144 ], [ %147, %146 ]
  store double %149, double* %17, align 8
  br label %150

150:                                              ; preds = %148
  %151 = load i32, i32* %2, align 4
  %152 = add nsw i32 %151, 2
  store i32 %152, i32* %2, align 4
  br label %91, !llvm.loop !8

153:                                              ; preds = %91
  %154 = load double, double* %14, align 8
  store double %154, double* %12, align 8
  %155 = load double, double* %15, align 8
  %156 = load double, double* %14, align 8
  %157 = fsub double %155, %156
  %158 = fdiv double 2.550000e+02, %157
  store double %158, double* %13, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %213, %153
  %160 = load i32, i32* %2, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %216

163:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %209, %163
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %212

168:                                              ; preds = %164
  %169 = load double*, double** %9, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %2, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %3, align 4
  %174 = add nsw i32 %172, %173
  %175 = mul nsw i32 %174, 2
  %176 = add nsw i32 1, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds double, double* %169, i64 %177
  %179 = load double, double* %178, align 8
  %180 = load double, double* %12, align 8
  %181 = fsub double %179, %180
  %182 = load double, double* %13, align 8
  %183 = fmul double %181, %182
  %184 = fptosi double %183 to i32
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* %2, align 4
  %186 = and i32 %185, 15
  %187 = icmp eq i32 %186, 8
  br i1 %187, label %192, label %188

188:                                              ; preds = %168
  %189 = load i32, i32* %3, align 4
  %190 = and i32 %189, 15
  %191 = icmp eq i32 %190, 8
  br label %192

192:                                              ; preds = %188, %168
  %193 = phi i1 [ true, %168 ], [ %191, %188 ]
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 255, i32 0
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %192
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %203 = load i32, i32* %2, align 4
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* %4, align 4
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %202, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 noundef %203, i32 noundef %204, i32 noundef %205, i32 noundef %206)
  br label %208

208:                                              ; preds = %199, %192
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %3, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %3, align 4
  br label %164, !llvm.loop !9

212:                                              ; preds = %164
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %2, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %2, align 4
  br label %159, !llvm.loop !10

216:                                              ; preds = %159
  %217 = load i32, i32* %6, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %221 = load i32, i32* %7, align 4
  %222 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %220, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %221)
  br label %228

223:                                              ; preds = %216
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %6, align 4
  %227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %224, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 noundef %225, i32 noundef %226)
  br label %228

228:                                              ; preds = %223, %219
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal void @fourn(double* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  store double* %0, double** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %26, align 4
  store i32 1, i32* %20, align 4
  br label %35

35:                                               ; preds = %47, %4
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %26, align 4
  %46 = mul nsw i32 %45, %44
  store i32 %46, i32* %26, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %20, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %20, align 4
  br label %35, !llvm.loop !11

50:                                               ; preds = %35
  store i32 1, i32* %24, align 4
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %20, align 4
  br label %52

52:                                               ; preds = %337, %50
  %53 = load i32, i32* %20, align 4
  %54 = icmp sge i32 %53, 1
  br i1 %54, label %55, label %340

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %26, align 4
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %24, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sdiv i32 %61, %64
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %24, align 4
  %67 = shl i32 %66, 1
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %23, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %25, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %16, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %177, %55
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %181

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %154

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %150, %82
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  %89 = sub nsw i32 %88, 2
  %90 = icmp sle i32 %85, %89
  br i1 %90, label %91, label %153

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %145, %91
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %149

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %13, align 4
  %103 = load double*, double** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %103, i64 %105
  %107 = load double, double* %106, align 8
  store double %107, double* %28, align 8
  %108 = load double*, double** %5, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %108, i64 %110
  %112 = load double, double* %111, align 8
  %113 = load double*, double** %5, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  store double %112, double* %116, align 8
  %117 = load double, double* %28, align 8
  %118 = load double*, double** %5, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, double* %118, i64 %120
  store double %117, double* %121, align 8
  %122 = load double*, double** %5, align 8
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %122, i64 %125
  %127 = load double, double* %126, align 8
  store double %127, double* %28, align 8
  %128 = load double*, double** %5, align 8
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %128, i64 %131
  %133 = load double, double* %132, align 8
  %134 = load double*, double** %5, align 8
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %134, i64 %137
  store double %133, double* %138, align 8
  %139 = load double, double* %28, align 8
  %140 = load double*, double** %5, align 8
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %140, i64 %143
  store double %139, double* %144, align 8
  br label %145

145:                                              ; preds = %97
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %11, align 4
  br label %93, !llvm.loop !12

149:                                              ; preds = %93
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 2
  store i32 %152, i32* %9, align 4
  br label %84, !llvm.loop !13

153:                                              ; preds = %84
  br label %154

154:                                              ; preds = %153, %78
  %155 = load i32, i32* %15, align 4
  %156 = ashr i32 %155, 1
  store i32 %156, i32* %19, align 4
  br label %157

157:                                              ; preds = %167, %154
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp sge i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp sgt i32 %162, %163
  br label %165

165:                                              ; preds = %161, %157
  %166 = phi i1 [ false, %157 ], [ %164, %161 ]
  br i1 %166, label %167, label %173

167:                                              ; preds = %165
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %12, align 4
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %19, align 4
  %172 = ashr i32 %171, 1
  store i32 %172, i32* %19, align 4
  br label %157, !llvm.loop !14

173:                                              ; preds = %165
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %10, align 4
  br label %74, !llvm.loop !15

181:                                              ; preds = %74
  %182 = load i32, i32* %14, align 4
  store i32 %182, i32* %17, align 4
  br label %183

183:                                              ; preds = %331, %181
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %333

187:                                              ; preds = %183
  %188 = load i32, i32* %17, align 4
  %189 = shl i32 %188, 1
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %8, align 4
  %191 = sitofp i32 %190 to double
  %192 = fmul double %191, 0x401921FB54442D1C
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %14, align 4
  %195 = sdiv i32 %193, %194
  %196 = sitofp i32 %195 to double
  %197 = fdiv double %192, %196
  store double %197, double* %29, align 8
  %198 = load double, double* %29, align 8
  %199 = fmul double 5.000000e-01, %198
  %200 = call double @sin(double noundef %199) #6
  store double %200, double* %34, align 8
  %201 = load double, double* %34, align 8
  %202 = fmul double -2.000000e+00, %201
  %203 = load double, double* %34, align 8
  %204 = fmul double %202, %203
  store double %204, double* %32, align 8
  %205 = load double, double* %29, align 8
  %206 = call double @sin(double noundef %205) #6
  store double %206, double* %31, align 8
  store double 1.000000e+00, double* %33, align 8
  store double 0.000000e+00, double* %30, align 8
  store i32 1, i32* %11, align 4
  br label %207

207:                                              ; preds = %327, %187
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %17, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %331

211:                                              ; preds = %207
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %9, align 4
  br label %213

213:                                              ; preds = %306, %211
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %215, %216
  %218 = sub nsw i32 %217, 2
  %219 = icmp sle i32 %214, %218
  br i1 %219, label %220, label %309

220:                                              ; preds = %213
  %221 = load i32, i32* %9, align 4
  store i32 %221, i32* %10, align 4
  br label %222

222:                                              ; preds = %301, %220
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %16, align 4
  %225 = icmp sle i32 %223, %224
  br i1 %225, label %226, label %305

226:                                              ; preds = %222
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %21, align 4
  %228 = load i32, i32* %21, align 4
  %229 = load i32, i32* %17, align 4
  %230 = add nsw i32 %228, %229
  store i32 %230, i32* %22, align 4
  %231 = load double, double* %33, align 8
  %232 = load double*, double** %5, align 8
  %233 = load i32, i32* %22, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, double* %232, i64 %234
  %236 = load double, double* %235, align 8
  %237 = load double, double* %30, align 8
  %238 = load double*, double** %5, align 8
  %239 = load i32, i32* %22, align 4
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double, double* %238, i64 %241
  %243 = load double, double* %242, align 8
  %244 = fmul double %237, %243
  %245 = fneg double %244
  %246 = call double @llvm.fmuladd.f64(double %231, double %236, double %245)
  store double %246, double* %28, align 8
  %247 = load double, double* %33, align 8
  %248 = load double*, double** %5, align 8
  %249 = load i32, i32* %22, align 4
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds double, double* %248, i64 %251
  %253 = load double, double* %252, align 8
  %254 = load double, double* %30, align 8
  %255 = load double*, double** %5, align 8
  %256 = load i32, i32* %22, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds double, double* %255, i64 %257
  %259 = load double, double* %258, align 8
  %260 = fmul double %254, %259
  %261 = call double @llvm.fmuladd.f64(double %247, double %253, double %260)
  store double %261, double* %27, align 8
  %262 = load double*, double** %5, align 8
  %263 = load i32, i32* %21, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double, double* %262, i64 %264
  %266 = load double, double* %265, align 8
  %267 = load double, double* %28, align 8
  %268 = fsub double %266, %267
  %269 = load double*, double** %5, align 8
  %270 = load i32, i32* %22, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds double, double* %269, i64 %271
  store double %268, double* %272, align 8
  %273 = load double*, double** %5, align 8
  %274 = load i32, i32* %21, align 4
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds double, double* %273, i64 %276
  %278 = load double, double* %277, align 8
  %279 = load double, double* %27, align 8
  %280 = fsub double %278, %279
  %281 = load double*, double** %5, align 8
  %282 = load i32, i32* %22, align 4
  %283 = add nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds double, double* %281, i64 %284
  store double %280, double* %285, align 8
  %286 = load double, double* %28, align 8
  %287 = load double*, double** %5, align 8
  %288 = load i32, i32* %21, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds double, double* %287, i64 %289
  %291 = load double, double* %290, align 8
  %292 = fadd double %291, %286
  store double %292, double* %290, align 8
  %293 = load double, double* %27, align 8
  %294 = load double*, double** %5, align 8
  %295 = load i32, i32* %21, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds double, double* %294, i64 %297
  %299 = load double, double* %298, align 8
  %300 = fadd double %299, %293
  store double %300, double* %298, align 8
  br label %301

301:                                              ; preds = %226
  %302 = load i32, i32* %18, align 4
  %303 = load i32, i32* %10, align 4
  %304 = add nsw i32 %303, %302
  store i32 %304, i32* %10, align 4
  br label %222, !llvm.loop !16

305:                                              ; preds = %222
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 2
  store i32 %308, i32* %9, align 4
  br label %213, !llvm.loop !17

309:                                              ; preds = %213
  %310 = load double, double* %33, align 8
  store double %310, double* %34, align 8
  %311 = load double, double* %32, align 8
  %312 = load double, double* %30, align 8
  %313 = load double, double* %31, align 8
  %314 = fmul double %312, %313
  %315 = fneg double %314
  %316 = call double @llvm.fmuladd.f64(double %310, double %311, double %315)
  %317 = load double, double* %33, align 8
  %318 = fadd double %316, %317
  store double %318, double* %33, align 8
  %319 = load double, double* %30, align 8
  %320 = load double, double* %32, align 8
  %321 = load double, double* %34, align 8
  %322 = load double, double* %31, align 8
  %323 = fmul double %321, %322
  %324 = call double @llvm.fmuladd.f64(double %319, double %320, double %323)
  %325 = load double, double* %30, align 8
  %326 = fadd double %324, %325
  store double %326, double* %30, align 8
  br label %327

327:                                              ; preds = %309
  %328 = load i32, i32* %14, align 4
  %329 = load i32, i32* %11, align 4
  %330 = add nsw i32 %329, %328
  store i32 %330, i32* %11, align 4
  br label %207, !llvm.loop !18

331:                                              ; preds = %207
  %332 = load i32, i32* %18, align 4
  store i32 %332, i32* %17, align 4
  br label %183, !llvm.loop !19

333:                                              ; preds = %183
  %334 = load i32, i32* %23, align 4
  %335 = load i32, i32* %24, align 4
  %336 = mul nsw i32 %335, %334
  store i32 %336, i32* %24, align 4
  br label %337

337:                                              ; preds = %333
  %338 = load i32, i32* %20, align 4
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* %20, align 4
  br label %52, !llvm.loop !20

340:                                              ; preds = %52
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
