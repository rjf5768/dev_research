; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsim2out.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsim2out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_descr = type { i16, i16, i16, i16 }
%struct.gs_state_s = type opaque
%struct.status = type { %struct.gs_matrix_s, i8*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_point_s = type { float, float }

@.str = private unnamed_addr constant [15 x i8] c"gsim2out cells\00", align 1
@trace_from.nesw = internal global [5 x %struct.dir_descr] [%struct.dir_descr { i16 -1, i16 1, i16 0, i16 1 }, %struct.dir_descr { i16 1, i16 1, i16 1, i16 0 }, %struct.dir_descr { i16 1, i16 -1, i16 0, i16 -1 }, %struct.dir_descr { i16 -1, i16 -1, i16 -1, i16 0 }, %struct.dir_descr { i16 -1, i16 1, i16 0, i16 1 }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_type1imagepath(%struct.gs_state_s* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, i8* noundef %8, i32 noundef %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.gs_state_s*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.status, align 8
  %25 = alloca %struct.status*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca float, align 4
  %33 = alloca %struct.gs_matrix_s, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.gs_point_s, align 4
  %36 = alloca %struct.gs_point_s, align 4
  %37 = alloca %struct.gs_point_s, align 4
  store %struct.gs_state_s* %0, %struct.gs_state_s** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store double %4, double* %16, align 8
  store double %5, double* %17, align 8
  store double %6, double* %18, align 8
  store double %7, double* %19, align 8
  store i8* %8, i8** %20, align 8
  store i32 %9, i32* %21, align 4
  store %struct.status* %24, %struct.status** %25, align 8
  %38 = load i32, i32* %15, align 4
  %39 = mul nsw i32 %38, 4
  %40 = sitofp i32 %39 to float
  store float %40, float* %32, align 4
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %12, align 8
  %42 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 0
  %43 = call i32 @gs_currentmatrix(%struct.gs_state_s* noundef %41, %struct.gs_matrix_s* noundef %42)
  %44 = load float, float* %32, align 4
  %45 = fpext float %44 to double
  %46 = load float, float* %32, align 4
  %47 = fpext float %46 to double
  %48 = call i32 @gs_make_scaling(double noundef %45, double noundef %47, %struct.gs_matrix_s* noundef %33)
  store i32 %48, i32* %31, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %10
  %51 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 0
  %52 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 0
  %53 = call i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef %33, %struct.gs_matrix_s* noundef %51, %struct.gs_matrix_s* noundef %52)
  store i32 %53, i32* %31, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 0
  %57 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 0
  %58 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef %56, %struct.gs_matrix_s* noundef %57)
  store i32 %58, i32* %31, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %50, %10
  %61 = load i32, i32* %31, align 4
  store i32 %61, i32* %11, align 4
  br label %281

62:                                               ; preds = %55
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 2
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 2
  %67 = mul nsw i32 %64, %66
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %22, align 4
  %69 = call i8* @gs_malloc(i32 noundef %68, i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %69, i8** %23, align 8
  %70 = load i8*, i8** %23, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 -25, i32* %11, align 4
  br label %281

73:                                               ; preds = %62
  %74 = load i8*, i8** %23, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  call void @fill_cells(i8* noundef %74, i8* noundef %75, i32 noundef %76, i32 noundef %77)
  %78 = load i8*, i8** %20, align 8
  %79 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 4
  store i8* %78, i8** %79, align 8
  %80 = load i8*, i8** %20, align 8
  %81 = load i32, i32* %21, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 1
  store i8* %83, i8** %84, align 8
  store i32 0, i32* %26, align 4
  br label %85

85:                                               ; preds = %113, %73
  %86 = load i32, i32* %26, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  store i32 1, i32* %34, align 4
  br label %90

90:                                               ; preds = %109, %89
  %91 = load i32, i32* %34, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load i8*, i8** %23, align 8
  %96 = load i32, i32* %34, align 4
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 2
  %99 = mul nsw i32 %96, %98
  %100 = load i32, i32* %26, align 4
  %101 = add nsw i32 %99, %100
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %95, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %94
  br label %117

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %34, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %34, align 4
  br label %90, !llvm.loop !4

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %26, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %26, align 4
  br label %85, !llvm.loop !6

116:                                              ; preds = %85
  br label %117

117:                                              ; preds = %116, %107
  %118 = load double, double* %18, align 8
  %119 = fmul double %118, 4.000000e+00
  %120 = load double, double* %19, align 8
  %121 = fmul double %120, 4.000000e+00
  %122 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 0
  %123 = call i32 @gs_distance_transform(double noundef %119, double noundef %121, %struct.gs_matrix_s* noundef %122, %struct.gs_point_s* noundef %35)
  store i32 %123, i32* %31, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %117
  %126 = load double, double* %16, align 8
  %127 = fmul double %126, 4.000000e+00
  %128 = load double, double* %17, align 8
  %129 = fmul double %128, 4.000000e+00
  %130 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 0
  %131 = call i32 @gs_distance_transform(double noundef %127, double noundef %129, %struct.gs_matrix_s* noundef %130, %struct.gs_point_s* noundef %36)
  store i32 %131, i32* %31, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %125
  %134 = load i32, i32* %26, align 4
  %135 = sitofp i32 %134 to double
  %136 = load double, double* %18, align 8
  %137 = fsub double %135, %136
  %138 = fmul double %137, 4.000000e+00
  %139 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 0
  %140 = call i32 @gs_distance_transform(double noundef %138, double noundef 0.000000e+00, %struct.gs_matrix_s* noundef %139, %struct.gs_point_s* noundef %37)
  store i32 %140, i32* %31, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %133, %125, %117
  %143 = load i32, i32* %31, align 4
  store i32 %143, i32* %11, align 4
  br label %281

144:                                              ; preds = %133
  %145 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %35, i32 0, i32 0
  %146 = load float, float* %145, align 4
  %147 = fpext float %146 to double
  %148 = call i32 @round_coord(double noundef %147)
  %149 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 2
  store i32 %148, i32* %149, align 8
  %150 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %35, i32 0, i32 1
  %151 = load float, float* %150, align 4
  %152 = fpext float %151 to double
  %153 = call i32 @round_coord(double noundef %152)
  %154 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 3
  store i32 %153, i32* %154, align 4
  %155 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %36, i32 0, i32 0
  %156 = load float, float* %155, align 4
  %157 = fpext float %156 to double
  %158 = call i32 @round_coord(double noundef %157)
  store i32 %158, i32* %27, align 4
  %159 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %36, i32 0, i32 1
  %160 = load float, float* %159, align 4
  %161 = fpext float %160 to double
  %162 = call i32 @round_coord(double noundef %161)
  store i32 %162, i32* %28, align 4
  %163 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %37, i32 0, i32 0
  %164 = load float, float* %163, align 4
  %165 = fpext float %164 to double
  %166 = call i32 @round_coord(double noundef %165)
  store i32 %166, i32* %29, align 4
  %167 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %37, i32 0, i32 1
  %168 = load float, float* %167, align 4
  %169 = fpext float %168 to double
  %170 = call i32 @round_coord(double noundef %169)
  store i32 %170, i32* %30, align 4
  %171 = load %struct.status*, %struct.status** %25, align 8
  %172 = load i32, i32* %29, align 4
  %173 = call i32 @put_int(%struct.status* noundef %171, i32 noundef %172)
  store i32 %173, i32* %31, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %144
  %176 = load i32, i32* %31, align 4
  store i32 %176, i32* %11, align 4
  br label %281

177:                                              ; preds = %144
  %178 = load i32, i32* %28, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %30, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %215

183:                                              ; preds = %180, %177
  %184 = load %struct.status*, %struct.status** %25, align 8
  %185 = load i32, i32* %30, align 4
  %186 = call i32 @put_int(%struct.status* noundef %184, i32 noundef %185)
  store i32 %186, i32* %31, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %198, label %188

188:                                              ; preds = %183
  %189 = load %struct.status*, %struct.status** %25, align 8
  %190 = load i32, i32* %27, align 4
  %191 = call i32 @put_int(%struct.status* noundef %189, i32 noundef %190)
  store i32 %191, i32* %31, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load %struct.status*, %struct.status** %25, align 8
  %195 = load i32, i32* %28, align 4
  %196 = call i32 @put_int(%struct.status* noundef %194, i32 noundef %195)
  store i32 %196, i32* %31, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193, %188, %183
  %199 = load i32, i32* %31, align 4
  store i32 %199, i32* %11, align 4
  br label %281

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 4
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 2
  %204 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = icmp ugt i8* %203, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  store i32 -13, i32* %11, align 4
  br label %281

208:                                              ; preds = %200
  %209 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %209, align 8
  store i8 12, i8* %210, align 1
  %212 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 4
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %212, align 8
  store i8 7, i8* %213, align 1
  br label %234

215:                                              ; preds = %180
  %216 = load %struct.status*, %struct.status** %25, align 8
  %217 = load i32, i32* %27, align 4
  %218 = call i32 @put_int(%struct.status* noundef %216, i32 noundef %217)
  store i32 %218, i32* %31, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i32, i32* %31, align 4
  store i32 %221, i32* %11, align 4
  br label %281

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 4
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = icmp ugt i8* %225, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  store i32 -13, i32* %11, align 4
  br label %281

230:                                              ; preds = %222
  %231 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 4
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %231, align 8
  store i8 13, i8* %232, align 1
  br label %234

234:                                              ; preds = %230, %208
  %235 = load i32, i32* %26, align 4
  %236 = mul nsw i32 %235, 4
  %237 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 5
  store i32 %236, i32* %237, align 8
  %238 = load double, double* %19, align 8
  %239 = fmul double %238, 4.000000e+00
  %240 = fptosi double %239 to i32
  %241 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 6
  store i32 %240, i32* %241, align 4
  %242 = load i32, i32* %29, align 4
  %243 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %242, %244
  %246 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 7
  store i32 %245, i32* %246, align 8
  %247 = load i32, i32* %30, align 4
  %248 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %247, %249
  %251 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 8
  store i32 %250, i32* %251, align 4
  %252 = load i8*, i8** %23, align 8
  %253 = load i32, i32* %14, align 4
  %254 = load i32, i32* %15, align 4
  %255 = load %struct.status*, %struct.status** %25, align 8
  %256 = call i32 @trace_cells(i8* noundef %252, i32 noundef %253, i32 noundef %254, %struct.status* noundef %255)
  store i32 %256, i32* %31, align 4
  %257 = load i8*, i8** %23, align 8
  %258 = load i32, i32* %22, align 4
  call void @gs_free(i8* noundef %257, i32 noundef %258, i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %259 = load i32, i32* %31, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %234
  %262 = load i32, i32* %31, align 4
  store i32 %262, i32* %11, align 4
  br label %281

263:                                              ; preds = %234
  %264 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 4
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 1
  %267 = load i8*, i8** %266, align 8
  %268 = icmp uge i8* %265, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  store i32 -13, i32* %11, align 4
  br label %281

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 4
  %272 = load i8*, i8** %271, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %271, align 8
  store i8 14, i8* %272, align 1
  %274 = getelementptr inbounds %struct.status, %struct.status* %24, i32 0, i32 4
  %275 = load i8*, i8** %274, align 8
  %276 = load i8*, i8** %20, align 8
  %277 = ptrtoint i8* %275 to i64
  %278 = ptrtoint i8* %276 to i64
  %279 = sub i64 %277, %278
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %11, align 4
  br label %281

281:                                              ; preds = %270, %269, %261, %229, %220, %207, %198, %175, %142, %72, %60
  %282 = load i32, i32* %11, align 4
  ret i32 %282
}

declare dso_local i32 @gs_currentmatrix(%struct.gs_state_s* noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gs_make_scaling(double noundef, double noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @fill_cells(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 2
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %17, i64 %22
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 2
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 2
  %30 = mul nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %25, i8 0, i64 %31, i1 false)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %72, %4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  store i32 128, i32* %12, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i8*, i8** %11, align 8
  store i8 1, i8* %55, align 1
  br label %56

56:                                               ; preds = %54, %49
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %12, align 4
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %12, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %11, align 8
  br label %37, !llvm.loop !7

64:                                               ; preds = %37
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 %66, 2
  %68 = load i8*, i8** %11, align 8
  %69 = sext i32 %67 to i64
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8* %71, i8** %11, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %32, !llvm.loop !8

75:                                               ; preds = %32
  ret void
}

declare dso_local i32 @gs_distance_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @round_coord(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i64, align 8
  store double %0, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = fadd double %4, 5.000000e-01
  %6 = fptosi double %5 to i64
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp sgt i64 %7, 32767
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = icmp slt i64 %11, -32767
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %17

14:                                               ; preds = %10
  %15 = load i64, i64* %3, align 8
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %14, %13
  %18 = phi i32 [ -32767, %13 ], [ %16, %14 ]
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i32 [ 32767, %9 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @put_int(%struct.status* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.status* %0, %struct.status** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.status*, %struct.status** %4, align 8
  %8 = getelementptr inbounds %struct.status, %struct.status* %7, i32 0, i32 4
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 5
  %12 = load %struct.status*, %struct.status** %4, align 8
  %13 = getelementptr inbounds %struct.status, %struct.status* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ugt i8* %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -13, i32* %3, align 4
  br label %107

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, -107
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 107
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, -107
  %26 = add nsw i32 %25, 32
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  store i8 %27, i8* %28, align 1
  br label %103

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 108
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp sle i32 %34, 1131
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 108
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 8
  %41 = add nsw i32 %40, 246
  %42 = add nsw i32 %41, 1
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  store i8 %43, i8* %44, align 1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 %48, i8* %49, align 1
  br label %102

51:                                               ; preds = %33, %30
  %52 = load i32, i32* %5, align 4
  %53 = icmp sge i32 %52, -1131
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp sle i32 %55, -108
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, -108
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %61, 8
  %63 = add nsw i32 %62, 250
  %64 = add nsw i32 %63, 1
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 255
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  store i8 %70, i8* %71, align 1
  br label %101

73:                                               ; preds = %54, %51
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  store i8 -1, i8* %74, align 1
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = ashr i64 %77, 24
  %79 = and i64 %78, 255
  %80 = trunc i64 %79 to i8
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  store i8 %80, i8* %81, align 1
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = ashr i64 %84, 16
  %86 = and i64 %85, 255
  %87 = trunc i64 %86 to i8
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  store i8 %87, i8* %88, align 1
  %90 = load i32, i32* %5, align 4
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 255
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %6, align 8
  store i8 %93, i8* %94, align 1
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  store i8 %98, i8* %99, align 1
  br label %101

101:                                              ; preds = %73, %57
  br label %102

102:                                              ; preds = %101, %36
  br label %103

103:                                              ; preds = %102, %23
  %104 = load i8*, i8** %6, align 8
  %105 = load %struct.status*, %struct.status** %4, align 8
  %106 = getelementptr inbounds %struct.status, %struct.status* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %16
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @trace_cells(i8* noundef %0, i32 noundef %1, i32 noundef %2, %struct.status* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.status*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.status* %3, %struct.status** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 2
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  %19 = mul nsw i32 %16, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %14, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -2
  store i8* %22, i8** %10, align 8
  br label %23

23:                                               ; preds = %108, %4
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp uge i8* %24, %25
  br i1 %26, label %27, label %111

27:                                               ; preds = %23
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %107

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 2
  %36 = sub nsw i32 0, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %107

42:                                               ; preds = %32
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = srem i64 %47, %50
  %52 = sub nsw i64 %51, 1
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = sdiv i64 %58, %61
  %63 = sub nsw i64 %62, 1
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %13, align 4
  %65 = load %struct.status*, %struct.status** %9, align 8
  %66 = load i32, i32* %12, align 4
  %67 = mul nsw i32 %66, 4
  %68 = add nsw i32 %67, 1
  %69 = load %struct.status*, %struct.status** %9, align 8
  %70 = getelementptr inbounds %struct.status, %struct.status* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  %73 = load i32, i32* %13, align 4
  %74 = mul nsw i32 %73, 4
  %75 = load %struct.status*, %struct.status** %9, align 8
  %76 = getelementptr inbounds %struct.status, %struct.status* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  %79 = call i32 @put_dxdy(%struct.status* noundef %65, i32 noundef %72, i32 noundef %78, i32 noundef 1)
  store i32 %79, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %42
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %112

83:                                               ; preds = %42
  %84 = load %struct.status*, %struct.status** %9, align 8
  %85 = getelementptr inbounds %struct.status, %struct.status* %84, i32 0, i32 11
  store i32 0, i32* %85, align 8
  %86 = load %struct.status*, %struct.status** %9, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @trace_from(%struct.status* noundef %86, i8* noundef %87, i32 noundef %88)
  store i32 %89, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %5, align 4
  br label %112

93:                                               ; preds = %83
  %94 = load %struct.status*, %struct.status** %9, align 8
  %95 = getelementptr inbounds %struct.status, %struct.status* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.status*, %struct.status** %9, align 8
  %98 = getelementptr inbounds %struct.status, %struct.status* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp uge i8* %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 -13, i32* %5, align 4
  br label %112

102:                                              ; preds = %93
  %103 = load %struct.status*, %struct.status** %9, align 8
  %104 = getelementptr inbounds %struct.status, %struct.status* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %104, align 8
  store i8 9, i8* %105, align 1
  br label %107

107:                                              ; preds = %102, %32, %27
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 -1
  store i8* %110, i8** %10, align 8
  br label %23, !llvm.loop !9

111:                                              ; preds = %23
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %111, %101, %91, %81
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local void @gs_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @put_dxdy(%struct.status* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gs_point_s, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.status* %0, %struct.status** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.status*, %struct.status** %6, align 8
  %19 = getelementptr inbounds %struct.status, %struct.status* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.status*, %struct.status** %6, align 8
  %24 = getelementptr inbounds %struct.status, %struct.status* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sitofp i32 %28 to double
  %30 = load i32, i32* %12, align 4
  %31 = sitofp i32 %30 to double
  %32 = load %struct.status*, %struct.status** %6, align 8
  %33 = getelementptr inbounds %struct.status, %struct.status* %32, i32 0, i32 0
  %34 = call i32 @gs_distance_transform(double noundef %29, double noundef %31, %struct.gs_matrix_s* noundef %33, %struct.gs_point_s* noundef %13)
  %35 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %13, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = fpext float %36 to double
  %38 = call i32 @round_coord(double noundef %37)
  store i32 %38, i32* %14, align 4
  %39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %13, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = call i32 @round_coord(double noundef %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.status*, %struct.status** %6, align 8
  %45 = getelementptr inbounds %struct.status, %struct.status* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %43, %46
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.status*, %struct.status** %6, align 8
  %50 = getelementptr inbounds %struct.status, %struct.status* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %4
  %56 = load i32, i32* %17, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55, %4
  %59 = load %struct.status*, %struct.status** %6, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @put_int(%struct.status* noundef %59, i32 noundef %60)
  store i32 %61, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %5, align 4
  br label %128

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.status*, %struct.status** %6, align 8
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @put_int(%struct.status* noundef %70, i32 noundef %71)
  store i32 %72, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %128

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %66
  %78 = load %struct.status*, %struct.status** %6, align 8
  %79 = getelementptr inbounds %struct.status, %struct.status* %78, i32 0, i32 4
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.status*, %struct.status** %6, align 8
  %82 = getelementptr inbounds %struct.status, %struct.status* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp eq i8* %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 -13, i32* %5, align 4
  br label %128

86:                                               ; preds = %77
  %87 = load i32, i32* %17, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 22, i32 6
  br label %109

94:                                               ; preds = %86
  %95 = load i32, i32* %16, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 4, i32 7
  br label %107

102:                                              ; preds = %94
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 21, i32 5
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i32 [ %101, %97 ], [ %106, %102 ]
  br label %109

109:                                              ; preds = %107, %89
  %110 = phi i32 [ %93, %89 ], [ %108, %107 ]
  %111 = trunc i32 %110 to i8
  %112 = load %struct.status*, %struct.status** %6, align 8
  %113 = getelementptr inbounds %struct.status, %struct.status* %112, i32 0, i32 4
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %113, align 8
  store i8 %111, i8* %114, align 1
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.status*, %struct.status** %6, align 8
  %118 = getelementptr inbounds %struct.status, %struct.status* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.status*, %struct.status** %6, align 8
  %121 = getelementptr inbounds %struct.status, %struct.status* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.status*, %struct.status** %6, align 8
  %124 = getelementptr inbounds %struct.status, %struct.status* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.status*, %struct.status** %6, align 8
  %127 = getelementptr inbounds %struct.status, %struct.status* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 4
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %109, %85, %74, %63
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @trace_from(%struct.status* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.status*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dir_descr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.status* %0, %struct.status** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %9, align 4
  store i32 3, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %18

18:                                               ; preds = %148, %132, %86, %3
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x %struct.dir_descr], [5 x %struct.dir_descr]* @trace_from.nesw, i64 0, i64 %20
  store %struct.dir_descr* %21, %struct.dir_descr** %12, align 8
  %22 = load %struct.dir_descr*, %struct.dir_descr** %12, align 8
  %23 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %22, i32 0, i32 2
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load %struct.dir_descr*, %struct.dir_descr** %12, align 8
  %27 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %26, i32 0, i32 3
  %28 = load i16, i16* %27, align 2
  %29 = sext i16 %28 to i32
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %40

32:                                               ; preds = %18
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %149

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  store i8 2, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %18
  %41 = load %struct.dir_descr*, %struct.dir_descr** %12, align 8
  %42 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %41, i32 0, i32 1
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load %struct.dir_descr*, %struct.dir_descr** %12, align 8
  %48 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %47, i32 0, i32 0
  %49 = load i16, i16* %48, align 2
  %50 = sext i16 %49 to i32
  %51 = add nsw i32 %46, %50
  store i32 %51, i32* %15, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %40
  %59 = load i32, i32* %15, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %6, align 8
  %63 = load %struct.status*, %struct.status** %5, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 1, %66
  %68 = call i32 @add_dxdy(%struct.status* noundef %63, i32 noundef %64, i32 noundef %65, i32 noundef %67)
  store i32 %68, i32* %11, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %149

72:                                               ; preds = %58
  %73 = load %struct.status*, %struct.status** %5, align 8
  %74 = load %struct.dir_descr*, %struct.dir_descr** %12, align 8
  %75 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %74, i32 0, i32 0
  %76 = load i16, i16* %75, align 2
  %77 = sext i16 %76 to i32
  %78 = load %struct.dir_descr*, %struct.dir_descr** %12, align 8
  %79 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %78, i32 0, i32 1
  %80 = load i16, i16* %79, align 2
  %81 = sext i16 %80 to i32
  %82 = call i32 @add_dxdy(%struct.status* noundef %73, i32 noundef %77, i32 noundef %81, i32 noundef 3)
  store i32 %82, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %4, align 4
  br label %149

86:                                               ; preds = %72
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, 1
  %89 = and i32 %88, 3
  store i32 %89, i32* %8, align 4
  store i32 3, i32* %10, align 4
  br label %18

90:                                               ; preds = %40
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %9, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %15, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %136, label %102

102:                                              ; preds = %90
  %103 = load %struct.status*, %struct.status** %5, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 3, %106
  %108 = call i32 @add_dxdy(%struct.status* noundef %103, i32 noundef %104, i32 noundef %105, i32 noundef %107)
  store i32 %108, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %4, align 4
  br label %149

112:                                              ; preds = %102
  %113 = load %struct.status*, %struct.status** %5, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.dir_descr*, %struct.dir_descr** %12, align 8
  %116 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %115, i64 1
  %117 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %116, i32 0, i32 2
  %118 = load i16, i16* %117, align 2
  %119 = sext i16 %118 to i32
  %120 = add nsw i32 %114, %119
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.dir_descr*, %struct.dir_descr** %12, align 8
  %123 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %122, i64 1
  %124 = getelementptr inbounds %struct.dir_descr, %struct.dir_descr* %123, i32 0, i32 3
  %125 = load i16, i16* %124, align 2
  %126 = sext i16 %125 to i32
  %127 = add nsw i32 %121, %126
  %128 = call i32 @add_dxdy(%struct.status* noundef %113, i32 noundef %120, i32 noundef %127, i32 noundef 1)
  store i32 %128, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %112
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %4, align 4
  br label %149

132:                                              ; preds = %112
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  %135 = and i32 %134, 3
  store i32 %135, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %18

136:                                              ; preds = %90
  %137 = load i32, i32* %15, align 4
  %138 = load i8*, i8** %6, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %6, align 8
  %141 = load %struct.status*, %struct.status** %5, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @add_dxdy(%struct.status* noundef %141, i32 noundef %142, i32 noundef %143, i32 noundef 4)
  store i32 %144, i32* %11, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %136
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %4, align 4
  br label %149

148:                                              ; preds = %136
  br label %18

149:                                              ; preds = %146, %130, %110, %84, %70, %37
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @add_dxdy(%struct.status* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.status* %0, %struct.status** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.status*, %struct.status** %6, align 8
  %16 = getelementptr inbounds %struct.status, %struct.status* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.status*, %struct.status** %6, align 8
  %22 = getelementptr inbounds %struct.status, %struct.status* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.status*, %struct.status** %6, align 8
  %28 = getelementptr inbounds %struct.status, %struct.status* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 8
  br label %67

31:                                               ; preds = %19, %13
  %32 = load %struct.status*, %struct.status** %6, align 8
  %33 = getelementptr inbounds %struct.status, %struct.status* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct.status*, %struct.status** %6, align 8
  %38 = load %struct.status*, %struct.status** %6, align 8
  %39 = getelementptr inbounds %struct.status, %struct.status* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.status*, %struct.status** %6, align 8
  %42 = getelementptr inbounds %struct.status, %struct.status* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %40, %43
  %45 = load %struct.status*, %struct.status** %6, align 8
  %46 = getelementptr inbounds %struct.status, %struct.status* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.status*, %struct.status** %6, align 8
  %49 = getelementptr inbounds %struct.status, %struct.status* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %47, %50
  %52 = call i32 @put_dxdy(%struct.status* noundef %37, i32 noundef %44, i32 noundef %51, i32 noundef 0)
  store i32 %52, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %36
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %69

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.status*, %struct.status** %6, align 8
  %60 = getelementptr inbounds %struct.status, %struct.status* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.status*, %struct.status** %6, align 8
  %63 = getelementptr inbounds %struct.status, %struct.status* %62, i32 0, i32 10
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.status*, %struct.status** %6, align 8
  %66 = getelementptr inbounds %struct.status, %struct.status* %65, i32 0, i32 11
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %57, %25
  br label %68

68:                                               ; preds = %67, %4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %54
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
