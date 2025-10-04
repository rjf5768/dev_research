; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniGMG/miniGMG.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniGMG/miniGMG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.domain_type = type { %struct.anon, i32, i32, i32, i32, [27 x i32], [10 x %struct.bufferCopy_type*], i32, i32, i32, i32, i32, i32, %struct.anon.2, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, i32, i32, i32, i32, i32, [10 x double], [10 x double], %struct.subdomain_type* }
%struct.anon = type { [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], i64, i64, i64 }
%struct.bufferCopy_type = type { i32, i32, i32, %struct.anon.0, %struct.anon.1, %struct.anon.1 }
%struct.anon.0 = type { i32, i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, double* }
%struct.anon.2 = type { i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32 }
%struct.anon.5 = type { i32, i32, i32 }
%struct.anon.6 = type { i32, i32, i32 }
%struct.subdomain_type = type { %struct.anon.7, %struct.anon.8, i32, i32, [27 x %struct.neighbor_type], %struct.box_type* }
%struct.anon.7 = type { i32, i32, i32 }
%struct.anon.8 = type { i32, i32, i32 }
%struct.neighbor_type = type { i32, i32 }
%struct.box_type = type { double, %struct.anon.9, %struct.anon.10, %struct.anon.11, i32, i32, i32, i32, i32, [27 x i32], double**, i64*, [2 x double*], i8* }
%struct.anon.9 = type { i32, i32, i32 }
%struct.anon.10 = type { i32, i32, i32 }
%struct.anon.11 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [88 x i8] c"usage: ./a.out [log2_subdomain_dim]   [subdomains per rank in i,j,k]  [ranks in i,j,k]\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"error, ranks_in_i*ranks_in_j*ranks_in_k(%d*%d*%d=%d) != MPI_Tasks(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%d MPI Tasks of %d threads\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"truncating the v-cycle at %d^3 subdomains\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"initializing alpha, beta, RHS for the ``hard problem''...\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Error test: h = %e, max = %e\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Error test: h = %e, L2  = %e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
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
  %22 = alloca %struct.domain_type, align 8
  %23 = alloca [3 x i32], align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 6, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 1, %32
  %34 = sdiv i32 256, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = shl i32 1, %35
  %37 = sdiv i32 256, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 1, %38
  %40 = sdiv i32 256, %39
  store i32 %40, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %57

43:                                               ; preds = %2
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @atoi(i8* noundef %46) #6
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 1, %48
  %50 = sdiv i32 256, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 1, %51
  %53 = sdiv i32 256, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %9, align 4
  %55 = shl i32 1, %54
  %56 = sdiv i32 256, %55
  store i32 %56, i32* %12, align 4
  br label %121

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 5
  br i1 %59, label %60, label %77

60:                                               ; preds = %57
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @atoi(i8* noundef %63) #6
  store i32 %64, i32* %9, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @atoi(i8* noundef %67) #6
  store i32 %68, i32* %10, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 3
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @atoi(i8* noundef %71) #6
  store i32 %72, i32* %11, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 4
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @atoi(i8* noundef %75) #6
  store i32 %76, i32* %12, align 4
  br label %120

77:                                               ; preds = %57
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 8
  br i1 %79, label %80, label %109

80:                                               ; preds = %77
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @atoi(i8* noundef %83) #6
  store i32 %84, i32* %9, align 4
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @atoi(i8* noundef %87) #6
  store i32 %88, i32* %10, align 4
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 3
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @atoi(i8* noundef %91) #6
  store i32 %92, i32* %11, align 4
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @atoi(i8* noundef %95) #6
  store i32 %96, i32* %12, align 4
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 5
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @atoi(i8* noundef %99) #6
  store i32 %100, i32* %13, align 4
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 6
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @atoi(i8* noundef %103) #6
  store i32 %104, i32* %14, align 4
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 7
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @atoi(i8* noundef %107) #6
  store i32 %108, i32* %15, align 4
  br label %119

109:                                              ; preds = %77
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 1
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %112
  call void @exit(i32 noundef 0) #7
  unreachable

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %80
  br label %120

120:                                              ; preds = %119, %60
  br label %121

121:                                              ; preds = %120, %43
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %14, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %15, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %121
  %130 = load i32, i32* %6, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %14, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, i32* %15, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load i32, i32* %7, align 4
  %142 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef %133, i32 noundef %134, i32 noundef %135, i32 noundef %140, i32 noundef %141)
  br label %143

143:                                              ; preds = %132, %129
  call void @exit(i32 noundef 0) #7
  unreachable

144:                                              ; preds = %121
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 noundef %148, i32 noundef %149)
  br label %151

151:                                              ; preds = %147, %144
  %152 = load i32, i32* %9, align 4
  %153 = shl i32 1, %152
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %9, align 4
  %155 = shl i32 1, %154
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %9, align 4
  %157 = shl i32 1, %156
  store i32 %157, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 1, %158
  %160 = load i32, i32* %19, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %151
  %165 = load i32, i32* %19, align 4
  %166 = shl i32 1, %165
  %167 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 noundef %166)
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %169 = call i32 @fflush(%struct._IO_FILE* noundef %168)
  br label %170

170:                                              ; preds = %164, %151
  %171 = bitcast [3 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %171, i8 0, i64 12, i1 false)
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %6, align 4
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %183 = load i32, i32* %20, align 4
  %184 = call i32 @create_domain(%struct.domain_type* noundef %22, i32 noundef %172, i32 noundef %173, i32 noundef %174, i32 noundef %175, i32 noundef %176, i32 noundef %177, i32 noundef %178, i32 noundef %179, i32 noundef %180, i32 noundef %181, i32* noundef %182, i32 noundef 12, i32 noundef 1, i32 noundef %183)
  %185 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %22, i32 0, i32 13
  %186 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sitofp i32 %187 to double
  %189 = fdiv double 1.000000e+00, %188
  store double %189, double* %24, align 8
  %190 = load i32, i32* %6, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %170
  %193 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %195 = call i32 @fflush(%struct._IO_FILE* noundef %194)
  br label %196

196:                                              ; preds = %192, %170
  store double 9.000000e-01, double* %25, align 8
  store double 9.000000e-01, double* %26, align 8
  %197 = load double, double* %24, align 8
  %198 = load double, double* %25, align 8
  %199 = load double, double* %26, align 8
  call void @initialize_problem(%struct.domain_type* noundef %22, i32 noundef 0, double noundef %197, double noundef %198, double noundef %199)
  %200 = load i32, i32* %6, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %205 = call i32 @fflush(%struct._IO_FILE* noundef %204)
  br label %206

206:                                              ; preds = %202, %196
  %207 = load double, double* %25, align 8
  %208 = load double, double* %26, align 8
  %209 = load double, double* %24, align 8
  call void @MGBuild(%struct.domain_type* noundef %22, double noundef %207, double noundef %208, double noundef %209)
  store i32 2, i32* %28, align 4
  call void @MGResetTimers(%struct.domain_type* noundef %22)
  store i32 0, i32* %27, align 4
  br label %210

210:                                              ; preds = %217, %206
  %211 = load i32, i32* %27, align 4
  %212 = load i32, i32* %28, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %210
  call void @zero_grid(%struct.domain_type* noundef %22, i32 noundef 0, i32 noundef 0)
  %215 = load double, double* %25, align 8
  %216 = load double, double* %26, align 8
  call void @MGSolve(%struct.domain_type* noundef %22, i32 noundef 0, i32 noundef 1, double noundef %215, double noundef %216, double noundef 1.000000e-15)
  br label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %27, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %27, align 4
  br label %210, !llvm.loop !4

220:                                              ; preds = %210
  call void @print_timing(%struct.domain_type* noundef %22)
  %221 = load double, double* %24, align 8
  %222 = load double, double* %24, align 8
  %223 = fmul double %221, %222
  %224 = load double, double* %24, align 8
  %225 = fmul double %223, %224
  store double %225, double* %29, align 8
  call void @add_grids(%struct.domain_type* noundef %22, i32 noundef 0, i32 noundef 10, double noundef 1.000000e+00, i32 noundef 11, double noundef -1.000000e+00, i32 noundef 0)
  %226 = call double @norm(%struct.domain_type* noundef %22, i32 noundef 0, i32 noundef 10)
  store double %226, double* %30, align 8
  %227 = call double @dot(%struct.domain_type* noundef %22, i32 noundef 0, i32 noundef 10, i32 noundef 10)
  %228 = load double, double* %29, align 8
  %229 = fmul double %227, %228
  %230 = call double @sqrt(double noundef %229) #8
  store double %230, double* %31, align 8
  %231 = load i32, i32* %6, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %220
  %234 = load double, double* %24, align 8
  %235 = load double, double* %30, align 8
  %236 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), double noundef %234, double noundef %235)
  br label %237

237:                                              ; preds = %233, %220
  %238 = load i32, i32* %6, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %237
  %241 = load double, double* %24, align 8
  %242 = load double, double* %31, align 8
  %243 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), double noundef %241, double noundef %242)
  br label %244

244:                                              ; preds = %240, %237
  call void @destroy_domain(%struct.domain_type* noundef %22)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @create_domain(%struct.domain_type* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32* noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @initialize_problem(%struct.domain_type* noundef, i32 noundef, double noundef, double noundef, double noundef) #2

declare dso_local void @MGBuild(%struct.domain_type* noundef, double noundef, double noundef, double noundef) #2

declare dso_local void @MGResetTimers(%struct.domain_type* noundef) #2

declare dso_local void @zero_grid(%struct.domain_type* noundef, i32 noundef, i32 noundef) #2

declare dso_local void @MGSolve(%struct.domain_type* noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef) #2

declare dso_local void @print_timing(%struct.domain_type* noundef) #2

declare dso_local void @add_grids(%struct.domain_type* noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, double noundef, i32 noundef) #2

declare dso_local double @norm(%struct.domain_type* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #5

declare dso_local double @dot(%struct.domain_type* noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @destroy_domain(%struct.domain_type* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
