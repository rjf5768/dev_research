; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-8.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@buf = dso_local global [50 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [48 x i8] c"%d,%f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"1,1.000000,2,3,4,5,6,7,8,9,10,11,12,13,14,15\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @va(i32 noundef %0, double noundef %1, i32 noundef %2, ...) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.__va_list_tag], align 16
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
  store i32 %0, i32* %5, align 4
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %23 = bitcast %struct.__va_list_tag* %22 to i8*
  call void @llvm.va_start(i8* %23)
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 16
  %27 = icmp ule i32 %26, 40
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %24, i32 0, i32 3
  %30 = load i8*, i8** %29, align 16
  %31 = getelementptr i8, i8* %30, i32 %26
  %32 = bitcast i8* %31 to i32*
  %33 = add i32 %26, 8
  store i32 %33, i32* %25, align 16
  br label %39

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %24, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr i8, i8* %36, i32 8
  store i8* %38, i8** %35, align 8
  br label %39

39:                                               ; preds = %34, %28
  %40 = phi i32* [ %32, %28 ], [ %37, %34 ]
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 16
  %45 = icmp ule i32 %44, 40
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 3
  %48 = load i8*, i8** %47, align 16
  %49 = getelementptr i8, i8* %48, i32 %44
  %50 = bitcast i8* %49 to i32*
  %51 = add i32 %44, 8
  store i32 %51, i32* %43, align 16
  br label %57

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = getelementptr i8, i8* %54, i32 8
  store i8* %56, i8** %53, align 8
  br label %57

57:                                               ; preds = %52, %46
  %58 = phi i32* [ %50, %46 ], [ %55, %52 ]
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 16
  %63 = icmp ule i32 %62, 40
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %60, i32 0, i32 3
  %66 = load i8*, i8** %65, align 16
  %67 = getelementptr i8, i8* %66, i32 %62
  %68 = bitcast i8* %67 to i32*
  %69 = add i32 %62, 8
  store i32 %69, i32* %61, align 16
  br label %75

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %60, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = getelementptr i8, i8* %72, i32 8
  store i8* %74, i8** %71, align 8
  br label %75

75:                                               ; preds = %70, %64
  %76 = phi i32* [ %68, %64 ], [ %73, %70 ]
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %79 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 16
  %81 = icmp ule i32 %80, 40
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %78, i32 0, i32 3
  %84 = load i8*, i8** %83, align 16
  %85 = getelementptr i8, i8* %84, i32 %80
  %86 = bitcast i8* %85 to i32*
  %87 = add i32 %80, 8
  store i32 %87, i32* %79, align 16
  br label %93

88:                                               ; preds = %75
  %89 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %78, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = getelementptr i8, i8* %90, i32 8
  store i8* %92, i8** %89, align 8
  br label %93

93:                                               ; preds = %88, %82
  %94 = phi i32* [ %86, %82 ], [ %91, %88 ]
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %12, align 4
  %96 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 16
  %99 = icmp ule i32 %98, 40
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %96, i32 0, i32 3
  %102 = load i8*, i8** %101, align 16
  %103 = getelementptr i8, i8* %102, i32 %98
  %104 = bitcast i8* %103 to i32*
  %105 = add i32 %98, 8
  store i32 %105, i32* %97, align 16
  br label %111

106:                                              ; preds = %93
  %107 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %96, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = getelementptr i8, i8* %108, i32 8
  store i8* %110, i8** %107, align 8
  br label %111

111:                                              ; preds = %106, %100
  %112 = phi i32* [ %104, %100 ], [ %109, %106 ]
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %13, align 4
  %114 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 16
  %117 = icmp ule i32 %116, 40
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 3
  %120 = load i8*, i8** %119, align 16
  %121 = getelementptr i8, i8* %120, i32 %116
  %122 = bitcast i8* %121 to i32*
  %123 = add i32 %116, 8
  store i32 %123, i32* %115, align 16
  br label %129

124:                                              ; preds = %111
  %125 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %114, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = getelementptr i8, i8* %126, i32 8
  store i8* %128, i8** %125, align 8
  br label %129

129:                                              ; preds = %124, %118
  %130 = phi i32* [ %122, %118 ], [ %127, %124 ]
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %14, align 4
  %132 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %133 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 16
  %135 = icmp ule i32 %134, 40
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %132, i32 0, i32 3
  %138 = load i8*, i8** %137, align 16
  %139 = getelementptr i8, i8* %138, i32 %134
  %140 = bitcast i8* %139 to i32*
  %141 = add i32 %134, 8
  store i32 %141, i32* %133, align 16
  br label %147

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %132, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = getelementptr i8, i8* %144, i32 8
  store i8* %146, i8** %143, align 8
  br label %147

147:                                              ; preds = %142, %136
  %148 = phi i32* [ %140, %136 ], [ %145, %142 ]
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %15, align 4
  %150 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %151 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 16
  %153 = icmp ule i32 %152, 40
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %150, i32 0, i32 3
  %156 = load i8*, i8** %155, align 16
  %157 = getelementptr i8, i8* %156, i32 %152
  %158 = bitcast i8* %157 to i32*
  %159 = add i32 %152, 8
  store i32 %159, i32* %151, align 16
  br label %165

160:                                              ; preds = %147
  %161 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %150, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = bitcast i8* %162 to i32*
  %164 = getelementptr i8, i8* %162, i32 8
  store i8* %164, i8** %161, align 8
  br label %165

165:                                              ; preds = %160, %154
  %166 = phi i32* [ %158, %154 ], [ %163, %160 ]
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %16, align 4
  %168 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %169 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 16
  %171 = icmp ule i32 %170, 40
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %168, i32 0, i32 3
  %174 = load i8*, i8** %173, align 16
  %175 = getelementptr i8, i8* %174, i32 %170
  %176 = bitcast i8* %175 to i32*
  %177 = add i32 %170, 8
  store i32 %177, i32* %169, align 16
  br label %183

178:                                              ; preds = %165
  %179 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %168, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = bitcast i8* %180 to i32*
  %182 = getelementptr i8, i8* %180, i32 8
  store i8* %182, i8** %179, align 8
  br label %183

183:                                              ; preds = %178, %172
  %184 = phi i32* [ %176, %172 ], [ %181, %178 ]
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %17, align 4
  %186 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %187 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 16
  %189 = icmp ule i32 %188, 40
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 3
  %192 = load i8*, i8** %191, align 16
  %193 = getelementptr i8, i8* %192, i32 %188
  %194 = bitcast i8* %193 to i32*
  %195 = add i32 %188, 8
  store i32 %195, i32* %187, align 16
  br label %201

196:                                              ; preds = %183
  %197 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %186, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  %199 = bitcast i8* %198 to i32*
  %200 = getelementptr i8, i8* %198, i32 8
  store i8* %200, i8** %197, align 8
  br label %201

201:                                              ; preds = %196, %190
  %202 = phi i32* [ %194, %190 ], [ %199, %196 ]
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %18, align 4
  %204 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %205 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 16
  %207 = icmp ule i32 %206, 40
  br i1 %207, label %208, label %214

208:                                              ; preds = %201
  %209 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %204, i32 0, i32 3
  %210 = load i8*, i8** %209, align 16
  %211 = getelementptr i8, i8* %210, i32 %206
  %212 = bitcast i8* %211 to i32*
  %213 = add i32 %206, 8
  store i32 %213, i32* %205, align 16
  br label %219

214:                                              ; preds = %201
  %215 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %204, i32 0, i32 2
  %216 = load i8*, i8** %215, align 8
  %217 = bitcast i8* %216 to i32*
  %218 = getelementptr i8, i8* %216, i32 8
  store i8* %218, i8** %215, align 8
  br label %219

219:                                              ; preds = %214, %208
  %220 = phi i32* [ %212, %208 ], [ %217, %214 ]
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %19, align 4
  %222 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %223 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 16
  %225 = icmp ule i32 %224, 40
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %222, i32 0, i32 3
  %228 = load i8*, i8** %227, align 16
  %229 = getelementptr i8, i8* %228, i32 %224
  %230 = bitcast i8* %229 to i32*
  %231 = add i32 %224, 8
  store i32 %231, i32* %223, align 16
  br label %237

232:                                              ; preds = %219
  %233 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %222, i32 0, i32 2
  %234 = load i8*, i8** %233, align 8
  %235 = bitcast i8* %234 to i32*
  %236 = getelementptr i8, i8* %234, i32 8
  store i8* %236, i8** %233, align 8
  br label %237

237:                                              ; preds = %232, %226
  %238 = phi i32* [ %230, %226 ], [ %235, %232 ]
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %20, align 4
  %240 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %241 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 16
  %243 = icmp ule i32 %242, 40
  br i1 %243, label %244, label %250

244:                                              ; preds = %237
  %245 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %240, i32 0, i32 3
  %246 = load i8*, i8** %245, align 16
  %247 = getelementptr i8, i8* %246, i32 %242
  %248 = bitcast i8* %247 to i32*
  %249 = add i32 %242, 8
  store i32 %249, i32* %241, align 16
  br label %255

250:                                              ; preds = %237
  %251 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %240, i32 0, i32 2
  %252 = load i8*, i8** %251, align 8
  %253 = bitcast i8* %252 to i32*
  %254 = getelementptr i8, i8* %252, i32 8
  store i8* %254, i8** %251, align 8
  br label %255

255:                                              ; preds = %250, %244
  %256 = phi i32* [ %248, %244 ], [ %253, %250 ]
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %21, align 4
  %258 = load i32, i32* %5, align 4
  %259 = load double, double* %6, align 8
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* %14, align 4
  %267 = load i32, i32* %15, align 4
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* %18, align 4
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %20, align 4
  %273 = load i32, i32* %21, align 4
  %274 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 noundef %258, double noundef %259, i32 noundef %260, i32 noundef %261, i32 noundef %262, i32 noundef %263, i32 noundef %264, i32 noundef %265, i32 noundef %266, i32 noundef %267, i32 noundef %268, i32 noundef %269, i32 noundef %270, i32 noundef %271, i32 noundef %272, i32 noundef %273) #5
  %275 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %276 = bitcast %struct.__va_list_tag* %275 to i8*
  call void @llvm.va_end(i8* %276)
  %277 = load i32, i32* %4, align 4
  ret i32 %277
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i32, double, i32, ...) @va(i32 noundef 1, double noundef 1.000000e+00, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %3 = call i32 @strcmp(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @buf, i64 0, i64 0))
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #6
  unreachable

6:                                                ; preds = %0
  call void @exit(i32 noundef 0) #6
  unreachable
}

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
