; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniGMG/box.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniGMG/box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.box_type = type { double, %struct.anon, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, [27 x i32], double**, i64*, [2 x double*], i8* }
%struct.anon = type { i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32 }
%struct.anon.1 = type { i32, i32, i32 }

@RandomPadding = dso_local global i32 -1, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_box(%struct.box_type* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca %struct.box_type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca double*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.box_type* %0, %struct.box_type** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.box_type*, %struct.box_type** %10, align 8
  %29 = getelementptr inbounds %struct.box_type, %struct.box_type* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.box_type*, %struct.box_type** %10, align 8
  %32 = getelementptr inbounds %struct.box_type, %struct.box_type* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.box_type*, %struct.box_type** %10, align 8
  %36 = getelementptr inbounds %struct.box_type, %struct.box_type* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.box_type*, %struct.box_type** %10, align 8
  %40 = getelementptr inbounds %struct.box_type, %struct.box_type* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.box_type*, %struct.box_type** %10, align 8
  %44 = getelementptr inbounds %struct.box_type, %struct.box_type* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.box_type*, %struct.box_type** %10, align 8
  %48 = getelementptr inbounds %struct.box_type, %struct.box_type* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load %struct.box_type*, %struct.box_type** %10, align 8
  %52 = getelementptr inbounds %struct.box_type, %struct.box_type* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %18, align 4
  %56 = mul nsw i32 2, %55
  %57 = add nsw i32 %54, %56
  %58 = load %struct.box_type*, %struct.box_type** %10, align 8
  %59 = getelementptr inbounds %struct.box_type, %struct.box_type* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %18, align 4
  %63 = mul nsw i32 2, %62
  %64 = add nsw i32 %61, %63
  %65 = load %struct.box_type*, %struct.box_type** %10, align 8
  %66 = getelementptr inbounds %struct.box_type, %struct.box_type* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %18, align 4
  %70 = mul nsw i32 2, %69
  %71 = add nsw i32 %68, %70
  %72 = load %struct.box_type*, %struct.box_type** %10, align 8
  %73 = getelementptr inbounds %struct.box_type, %struct.box_type* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.box_type*, %struct.box_type** %10, align 8
  %77 = getelementptr inbounds %struct.box_type, %struct.box_type* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %18, align 4
  %80 = mul nsw i32 2, %79
  %81 = add nsw i32 %78, %80
  %82 = load %struct.box_type*, %struct.box_type** %10, align 8
  %83 = getelementptr inbounds %struct.box_type, %struct.box_type* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %18, align 4
  %86 = mul nsw i32 2, %85
  %87 = add nsw i32 %84, %86
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %18, align 4
  %90 = mul nsw i32 2, %89
  %91 = add nsw i32 %88, %90
  %92 = mul nsw i32 %87, %91
  %93 = load %struct.box_type*, %struct.box_type** %10, align 8
  %94 = getelementptr inbounds %struct.box_type, %struct.box_type* %93, i32 0, i32 6
  store i32 %92, i32* %94, align 4
  store i32 16, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %95 = load %struct.box_type*, %struct.box_type** %10, align 8
  %96 = getelementptr inbounds %struct.box_type, %struct.box_type* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  %99 = load i32, i32* %20, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %9
  %103 = load i32, i32* %20, align 4
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.box_type*, %struct.box_type** %10, align 8
  %106 = getelementptr inbounds %struct.box_type, %struct.box_type* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  %109 = sub nsw i32 %104, %108
  store i32 %109, i32* %21, align 4
  br label %110

110:                                              ; preds = %102, %9
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %18, align 4
  %113 = mul nsw i32 2, %112
  %114 = add nsw i32 %111, %113
  %115 = load %struct.box_type*, %struct.box_type** %10, align 8
  %116 = getelementptr inbounds %struct.box_type, %struct.box_type* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %118, %119
  %121 = add nsw i32 %120, 7
  %122 = and i32 %121, -8
  %123 = load %struct.box_type*, %struct.box_type** %10, align 8
  %124 = getelementptr inbounds %struct.box_type, %struct.box_type* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = mul nsw i32 2, %126
  %128 = add nsw i32 %125, %127
  %129 = load %struct.box_type*, %struct.box_type** %10, align 8
  %130 = getelementptr inbounds %struct.box_type, %struct.box_type* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = load %struct.box_type*, %struct.box_type** %10, align 8
  %134 = getelementptr inbounds %struct.box_type, %struct.box_type* %133, i32 0, i32 7
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %15, align 4
  %136 = icmp sge i32 %135, 32
  br i1 %136, label %137, label %150

137:                                              ; preds = %110
  br label %138

138:                                              ; preds = %144, %137
  %139 = load %struct.box_type*, %struct.box_type** %10, align 8
  %140 = getelementptr inbounds %struct.box_type, %struct.box_type* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = srem i32 %141, 512
  %143 = icmp ne i32 %142, 64
  br i1 %143, label %144, label %149

144:                                              ; preds = %138
  %145 = load %struct.box_type*, %struct.box_type** %10, align 8
  %146 = getelementptr inbounds %struct.box_type, %struct.box_type* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 8
  store i32 %148, i32* %146, align 8
  br label %138, !llvm.loop !4

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149, %110
  %151 = load %struct.box_type*, %struct.box_type** %10, align 8
  %152 = getelementptr inbounds %struct.box_type, %struct.box_type* %151, i32 0, i32 10
  %153 = bitcast double*** %152 to i8**
  %154 = load %struct.box_type*, %struct.box_type** %10, align 8
  %155 = getelementptr inbounds %struct.box_type, %struct.box_type* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 8
  %159 = call i32 @posix_memalign(i8** noundef %153, i64 noundef 64, i64 noundef %158) #3
  %160 = load %struct.box_type*, %struct.box_type** %10, align 8
  %161 = getelementptr inbounds %struct.box_type, %struct.box_type* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 8
  %165 = load i64, i64* %19, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %19, align 8
  %167 = bitcast double** %22 to i8**
  %168 = load %struct.box_type*, %struct.box_type** %10, align 8
  %169 = getelementptr inbounds %struct.box_type, %struct.box_type* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.box_type*, %struct.box_type** %10, align 8
  %172 = getelementptr inbounds %struct.box_type, %struct.box_type* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %170, %173
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 8
  %177 = call i32 @posix_memalign(i8** noundef %167, i64 noundef 64, i64 noundef %176) #3
  %178 = load double*, double** %22, align 8
  %179 = bitcast double* %178 to i8*
  %180 = load %struct.box_type*, %struct.box_type** %10, align 8
  %181 = getelementptr inbounds %struct.box_type, %struct.box_type* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.box_type*, %struct.box_type** %10, align 8
  %184 = getelementptr inbounds %struct.box_type, %struct.box_type* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %182, %185
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %179, i8 0, i64 %188, i1 false)
  %189 = load %struct.box_type*, %struct.box_type** %10, align 8
  %190 = getelementptr inbounds %struct.box_type, %struct.box_type* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.box_type*, %struct.box_type** %10, align 8
  %193 = getelementptr inbounds %struct.box_type, %struct.box_type* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  %196 = sext i32 %195 to i64
  %197 = mul i64 %196, 8
  %198 = load i64, i64* %19, align 8
  %199 = add i64 %198, %197
  store i64 %199, i64* %19, align 8
  store i32 0, i32* %23, align 4
  br label %200

200:                                              ; preds = %221, %150
  %201 = load i32, i32* %23, align 4
  %202 = load %struct.box_type*, %struct.box_type** %10, align 8
  %203 = getelementptr inbounds %struct.box_type, %struct.box_type* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %224

206:                                              ; preds = %200
  %207 = load double*, double** %22, align 8
  %208 = load i32, i32* %23, align 4
  %209 = load %struct.box_type*, %struct.box_type** %10, align 8
  %210 = getelementptr inbounds %struct.box_type, %struct.box_type* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %208, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %207, i64 %213
  %215 = load %struct.box_type*, %struct.box_type** %10, align 8
  %216 = getelementptr inbounds %struct.box_type, %struct.box_type* %215, i32 0, i32 10
  %217 = load double**, double*** %216, align 8
  %218 = load i32, i32* %23, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds double*, double** %217, i64 %219
  store double* %214, double** %220, align 8
  br label %221

221:                                              ; preds = %206
  %222 = load i32, i32* %23, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %23, align 4
  br label %200, !llvm.loop !6

224:                                              ; preds = %200
  %225 = load %struct.box_type*, %struct.box_type** %10, align 8
  %226 = getelementptr inbounds %struct.box_type, %struct.box_type* %225, i32 0, i32 11
  %227 = bitcast i64** %226 to i8**
  %228 = load %struct.box_type*, %struct.box_type** %10, align 8
  %229 = getelementptr inbounds %struct.box_type, %struct.box_type* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = mul i64 %231, 8
  %233 = call i32 @posix_memalign(i8** noundef %227, i64 noundef 64, i64 noundef %232) #3
  %234 = load %struct.box_type*, %struct.box_type** %10, align 8
  %235 = getelementptr inbounds %struct.box_type, %struct.box_type* %234, i32 0, i32 11
  %236 = load i64*, i64** %235, align 8
  %237 = bitcast i64* %236 to i8*
  %238 = load %struct.box_type*, %struct.box_type** %10, align 8
  %239 = getelementptr inbounds %struct.box_type, %struct.box_type* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = mul i64 %241, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %237, i8 0, i64 %242, i1 false)
  %243 = load %struct.box_type*, %struct.box_type** %10, align 8
  %244 = getelementptr inbounds %struct.box_type, %struct.box_type* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = mul i64 %246, 8
  %248 = load i64, i64* %19, align 8
  %249 = add i64 %248, %247
  store i64 %249, i64* %19, align 8
  %250 = load %struct.box_type*, %struct.box_type** %10, align 8
  %251 = getelementptr inbounds %struct.box_type, %struct.box_type* %250, i32 0, i32 12
  %252 = getelementptr inbounds [2 x double*], [2 x double*]* %251, i64 0, i64 0
  %253 = bitcast double** %252 to i8**
  %254 = load %struct.box_type*, %struct.box_type** %10, align 8
  %255 = getelementptr inbounds %struct.box_type, %struct.box_type* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = mul i64 %257, 8
  %259 = call i32 @posix_memalign(i8** noundef %253, i64 noundef 64, i64 noundef %258) #3
  %260 = load %struct.box_type*, %struct.box_type** %10, align 8
  %261 = getelementptr inbounds %struct.box_type, %struct.box_type* %260, i32 0, i32 12
  %262 = getelementptr inbounds [2 x double*], [2 x double*]* %261, i64 0, i64 0
  %263 = load double*, double** %262, align 8
  %264 = bitcast double* %263 to i8*
  %265 = load %struct.box_type*, %struct.box_type** %10, align 8
  %266 = getelementptr inbounds %struct.box_type, %struct.box_type* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = mul i64 %268, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %264, i8 0, i64 %269, i1 false)
  %270 = load %struct.box_type*, %struct.box_type** %10, align 8
  %271 = getelementptr inbounds %struct.box_type, %struct.box_type* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = mul i64 %273, 8
  %275 = load i64, i64* %19, align 8
  %276 = add i64 %275, %274
  store i64 %276, i64* %19, align 8
  %277 = load %struct.box_type*, %struct.box_type** %10, align 8
  %278 = getelementptr inbounds %struct.box_type, %struct.box_type* %277, i32 0, i32 12
  %279 = getelementptr inbounds [2 x double*], [2 x double*]* %278, i64 0, i64 1
  %280 = bitcast double** %279 to i8**
  %281 = load %struct.box_type*, %struct.box_type** %10, align 8
  %282 = getelementptr inbounds %struct.box_type, %struct.box_type* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = mul i64 %284, 8
  %286 = call i32 @posix_memalign(i8** noundef %280, i64 noundef 64, i64 noundef %285) #3
  %287 = load %struct.box_type*, %struct.box_type** %10, align 8
  %288 = getelementptr inbounds %struct.box_type, %struct.box_type* %287, i32 0, i32 12
  %289 = getelementptr inbounds [2 x double*], [2 x double*]* %288, i64 0, i64 1
  %290 = load double*, double** %289, align 8
  %291 = bitcast double* %290 to i8*
  %292 = load %struct.box_type*, %struct.box_type** %10, align 8
  %293 = getelementptr inbounds %struct.box_type, %struct.box_type* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = mul i64 %295, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %291, i8 0, i64 %296, i1 false)
  %297 = load %struct.box_type*, %struct.box_type** %10, align 8
  %298 = getelementptr inbounds %struct.box_type, %struct.box_type* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = mul i64 %300, 8
  %302 = load i64, i64* %19, align 8
  %303 = add i64 %302, %301
  store i64 %303, i64* %19, align 8
  %304 = load i32, i32* %18, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %25, align 4
  br label %306

306:                                              ; preds = %407, %224
  %307 = load i32, i32* %25, align 4
  %308 = load %struct.box_type*, %struct.box_type** %10, align 8
  %309 = getelementptr inbounds %struct.box_type, %struct.box_type* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %18, align 4
  %313 = add nsw i32 %311, %312
  %314 = icmp slt i32 %307, %313
  br i1 %314, label %315, label %410

315:                                              ; preds = %306
  %316 = load i32, i32* %18, align 4
  %317 = sub nsw i32 0, %316
  store i32 %317, i32* %24, align 4
  br label %318

318:                                              ; preds = %403, %315
  %319 = load i32, i32* %24, align 4
  %320 = load %struct.box_type*, %struct.box_type** %10, align 8
  %321 = getelementptr inbounds %struct.box_type, %struct.box_type* %320, i32 0, i32 2
  %322 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %18, align 4
  %325 = add nsw i32 %323, %324
  %326 = icmp slt i32 %319, %325
  br i1 %326, label %327, label %406

327:                                              ; preds = %318
  %328 = load i32, i32* %24, align 4
  %329 = load i32, i32* %18, align 4
  %330 = add nsw i32 %328, %329
  %331 = load i32, i32* %25, align 4
  %332 = load i32, i32* %18, align 4
  %333 = add nsw i32 %331, %332
  %334 = load %struct.box_type*, %struct.box_type** %10, align 8
  %335 = getelementptr inbounds %struct.box_type, %struct.box_type* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 8
  %337 = mul nsw i32 %333, %336
  %338 = add nsw i32 %330, %337
  store i32 %338, i32* %26, align 4
  %339 = load i32, i32* %24, align 4
  %340 = load i32, i32* %25, align 4
  %341 = xor i32 %339, %340
  %342 = and i32 %341, 1
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %327
  %345 = load %struct.box_type*, %struct.box_type** %10, align 8
  %346 = getelementptr inbounds %struct.box_type, %struct.box_type* %345, i32 0, i32 11
  %347 = load i64*, i64** %346, align 8
  %348 = load i32, i32* %26, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %347, i64 %349
  store i64 -1, i64* %350, align 8
  br label %358

351:                                              ; preds = %327
  %352 = load %struct.box_type*, %struct.box_type** %10, align 8
  %353 = getelementptr inbounds %struct.box_type, %struct.box_type* %352, i32 0, i32 11
  %354 = load i64*, i64** %353, align 8
  %355 = load i32, i32* %26, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %354, i64 %356
  store i64 0, i64* %357, align 8
  br label %358

358:                                              ; preds = %351, %344
  %359 = load i32, i32* %24, align 4
  %360 = load i32, i32* %25, align 4
  %361 = xor i32 %359, %360
  %362 = and i32 %361, 1
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %372

364:                                              ; preds = %358
  %365 = load %struct.box_type*, %struct.box_type** %10, align 8
  %366 = getelementptr inbounds %struct.box_type, %struct.box_type* %365, i32 0, i32 12
  %367 = getelementptr inbounds [2 x double*], [2 x double*]* %366, i64 0, i64 0
  %368 = load double*, double** %367, align 8
  %369 = load i32, i32* %26, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds double, double* %368, i64 %370
  store double 1.000000e+00, double* %371, align 8
  br label %380

372:                                              ; preds = %358
  %373 = load %struct.box_type*, %struct.box_type** %10, align 8
  %374 = getelementptr inbounds %struct.box_type, %struct.box_type* %373, i32 0, i32 12
  %375 = getelementptr inbounds [2 x double*], [2 x double*]* %374, i64 0, i64 0
  %376 = load double*, double** %375, align 8
  %377 = load i32, i32* %26, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds double, double* %376, i64 %378
  store double 0.000000e+00, double* %379, align 8
  br label %380

380:                                              ; preds = %372, %364
  %381 = load i32, i32* %24, align 4
  %382 = load i32, i32* %25, align 4
  %383 = xor i32 %381, %382
  %384 = and i32 %383, 1
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %394

386:                                              ; preds = %380
  %387 = load %struct.box_type*, %struct.box_type** %10, align 8
  %388 = getelementptr inbounds %struct.box_type, %struct.box_type* %387, i32 0, i32 12
  %389 = getelementptr inbounds [2 x double*], [2 x double*]* %388, i64 0, i64 1
  %390 = load double*, double** %389, align 8
  %391 = load i32, i32* %26, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds double, double* %390, i64 %392
  store double 0.000000e+00, double* %393, align 8
  br label %402

394:                                              ; preds = %380
  %395 = load %struct.box_type*, %struct.box_type** %10, align 8
  %396 = getelementptr inbounds %struct.box_type, %struct.box_type* %395, i32 0, i32 12
  %397 = getelementptr inbounds [2 x double*], [2 x double*]* %396, i64 0, i64 1
  %398 = load double*, double** %397, align 8
  %399 = load i32, i32* %26, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds double, double* %398, i64 %400
  store double 1.000000e+00, double* %401, align 8
  br label %402

402:                                              ; preds = %394, %386
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %24, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %24, align 4
  br label %318, !llvm.loop !7

406:                                              ; preds = %318
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %25, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %25, align 4
  br label %306, !llvm.loop !8

410:                                              ; preds = %306
  %411 = load i64, i64* %19, align 8
  %412 = trunc i64 %411 to i32
  ret i32 %412
}

; Function Attrs: nounwind
declare dso_local i32 @posix_memalign(i8** noundef, i64 noundef, i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroy_box(%struct.box_type* noundef %0) #0 {
  %2 = alloca %struct.box_type*, align 8
  store %struct.box_type* %0, %struct.box_type** %2, align 8
  %3 = load %struct.box_type*, %struct.box_type** %2, align 8
  %4 = getelementptr inbounds %struct.box_type, %struct.box_type* %3, i32 0, i32 10
  %5 = load double**, double*** %4, align 8
  %6 = getelementptr inbounds double*, double** %5, i64 0
  %7 = load double*, double** %6, align 8
  %8 = bitcast double* %7 to i8*
  call void @free(i8* noundef %8) #3
  %9 = load %struct.box_type*, %struct.box_type** %2, align 8
  %10 = getelementptr inbounds %struct.box_type, %struct.box_type* %9, i32 0, i32 10
  %11 = load double**, double*** %10, align 8
  %12 = bitcast double** %11 to i8*
  call void @free(i8* noundef %12) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind }

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
