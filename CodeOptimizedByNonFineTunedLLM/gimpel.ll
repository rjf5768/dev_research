; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/gimpel.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/gimpel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }
%struct.solution_struct = type { %struct.sm_row_struct*, i32 }
%struct.stats_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gimpel_reduce(%struct.sm_matrix_struct* noundef %0, %struct.solution_struct* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, %struct.stats_struct* noundef %6, %struct.solution_struct** noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sm_matrix_struct*, align 8
  %11 = alloca %struct.solution_struct*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.stats_struct*, align 8
  %17 = alloca %struct.solution_struct**, align 8
  %18 = alloca %struct.sm_row_struct*, align 8
  %19 = alloca %struct.sm_row_struct*, align 8
  %20 = alloca %struct.sm_col_struct*, align 8
  %21 = alloca %struct.sm_col_struct*, align 8
  %22 = alloca %struct.sm_element_struct*, align 8
  %23 = alloca %struct.sm_element_struct*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %10, align 8
  store %struct.solution_struct* %1, %struct.solution_struct** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.stats_struct* %6, %struct.stats_struct** %16, align 8
  store %struct.solution_struct** %7, %struct.solution_struct*** %17, align 8
  store i32 0, i32* %28, align 4
  %29 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %30 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %29, i32 0, i32 4
  %31 = load %struct.sm_row_struct*, %struct.sm_row_struct** %30, align 8
  store %struct.sm_row_struct* %31, %struct.sm_row_struct** %18, align 8
  br label %32

32:                                               ; preds = %201, %8
  %33 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %34 = icmp ne %struct.sm_row_struct* %33, null
  br i1 %34, label %35, label %205

35:                                               ; preds = %32
  %36 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %37 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %200

40:                                               ; preds = %35
  %41 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %42 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %41, i32 0, i32 3
  %43 = load %struct.sm_element_struct*, %struct.sm_element_struct** %42, align 8
  %44 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %40
  %48 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %49 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %48, i32 0, i32 3
  %50 = load %struct.sm_element_struct*, %struct.sm_element_struct** %49, align 8
  %51 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %54 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %47
  %58 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %59 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %58, i32 0, i32 2
  %60 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %59, align 8
  %61 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %62 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %61, i32 0, i32 3
  %63 = load %struct.sm_element_struct*, %struct.sm_element_struct** %62, align 8
  %64 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %60, i64 %66
  %68 = load %struct.sm_col_struct*, %struct.sm_col_struct** %67, align 8
  br label %70

69:                                               ; preds = %47, %40
  br label %70

70:                                               ; preds = %69, %57
  %71 = phi %struct.sm_col_struct* [ %68, %57 ], [ null, %69 ]
  store %struct.sm_col_struct* %71, %struct.sm_col_struct** %20, align 8
  %72 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %73 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %72, i32 0, i32 4
  %74 = load %struct.sm_element_struct*, %struct.sm_element_struct** %73, align 8
  %75 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %70
  %79 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %80 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %79, i32 0, i32 4
  %81 = load %struct.sm_element_struct*, %struct.sm_element_struct** %80, align 8
  %82 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %85 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %78
  %89 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %90 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %89, i32 0, i32 2
  %91 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %90, align 8
  %92 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %93 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %92, i32 0, i32 4
  %94 = load %struct.sm_element_struct*, %struct.sm_element_struct** %93, align 8
  %95 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %91, i64 %97
  %99 = load %struct.sm_col_struct*, %struct.sm_col_struct** %98, align 8
  br label %101

100:                                              ; preds = %78, %70
  br label %101

101:                                              ; preds = %100, %88
  %102 = phi %struct.sm_col_struct* [ %99, %88 ], [ null, %100 ]
  store %struct.sm_col_struct* %102, %struct.sm_col_struct** %21, align 8
  %103 = load %struct.sm_col_struct*, %struct.sm_col_struct** %20, align 8
  %104 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 1, i32* %28, align 4
  br label %177

108:                                              ; preds = %101
  %109 = load %struct.sm_col_struct*, %struct.sm_col_struct** %21, align 8
  %110 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %113, label %176

113:                                              ; preds = %108
  %114 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %115 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %114, i32 0, i32 4
  %116 = load %struct.sm_element_struct*, %struct.sm_element_struct** %115, align 8
  %117 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %113
  %121 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %122 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %121, i32 0, i32 4
  %123 = load %struct.sm_element_struct*, %struct.sm_element_struct** %122, align 8
  %124 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %127 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %120
  %131 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %132 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %131, i32 0, i32 2
  %133 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %132, align 8
  %134 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %135 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %134, i32 0, i32 4
  %136 = load %struct.sm_element_struct*, %struct.sm_element_struct** %135, align 8
  %137 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %133, i64 %139
  %141 = load %struct.sm_col_struct*, %struct.sm_col_struct** %140, align 8
  br label %143

142:                                              ; preds = %120, %113
  br label %143

143:                                              ; preds = %142, %130
  %144 = phi %struct.sm_col_struct* [ %141, %130 ], [ null, %142 ]
  store %struct.sm_col_struct* %144, %struct.sm_col_struct** %20, align 8
  %145 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %146 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %145, i32 0, i32 3
  %147 = load %struct.sm_element_struct*, %struct.sm_element_struct** %146, align 8
  %148 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %143
  %152 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %153 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %152, i32 0, i32 3
  %154 = load %struct.sm_element_struct*, %struct.sm_element_struct** %153, align 8
  %155 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %158 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %151
  %162 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %163 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %162, i32 0, i32 2
  %164 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %163, align 8
  %165 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %166 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %165, i32 0, i32 3
  %167 = load %struct.sm_element_struct*, %struct.sm_element_struct** %166, align 8
  %168 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %164, i64 %170
  %172 = load %struct.sm_col_struct*, %struct.sm_col_struct** %171, align 8
  br label %174

173:                                              ; preds = %151, %143
  br label %174

174:                                              ; preds = %173, %161
  %175 = phi %struct.sm_col_struct* [ %172, %161 ], [ null, %173 ]
  store %struct.sm_col_struct* %175, %struct.sm_col_struct** %21, align 8
  store i32 1, i32* %28, align 4
  br label %176

176:                                              ; preds = %174, %108
  br label %177

177:                                              ; preds = %176, %107
  %178 = load i32, i32* %28, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %199

180:                                              ; preds = %177
  %181 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %182 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  store i32 %183, i32* %26, align 4
  %184 = load %struct.sm_col_struct*, %struct.sm_col_struct** %20, align 8
  %185 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %184, i32 0, i32 3
  %186 = load %struct.sm_element_struct*, %struct.sm_element_struct** %185, align 8
  %187 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %27, align 4
  %189 = load i32, i32* %27, align 4
  %190 = load i32, i32* %26, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %180
  %193 = load %struct.sm_col_struct*, %struct.sm_col_struct** %20, align 8
  %194 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %193, i32 0, i32 4
  %195 = load %struct.sm_element_struct*, %struct.sm_element_struct** %194, align 8
  %196 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  store i32 %197, i32* %27, align 4
  br label %198

198:                                              ; preds = %192, %180
  br label %205

199:                                              ; preds = %177
  br label %200

200:                                              ; preds = %199, %35
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.sm_row_struct*, %struct.sm_row_struct** %18, align 8
  %203 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %202, i32 0, i32 5
  %204 = load %struct.sm_row_struct*, %struct.sm_row_struct** %203, align 8
  store %struct.sm_row_struct* %204, %struct.sm_row_struct** %18, align 8
  br label %32, !llvm.loop !4

205:                                              ; preds = %198, %32
  %206 = load i32, i32* %28, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %331

208:                                              ; preds = %205
  %209 = load %struct.sm_col_struct*, %struct.sm_col_struct** %20, align 8
  %210 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %24, align 4
  %212 = load %struct.sm_col_struct*, %struct.sm_col_struct** %21, align 8
  %213 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  store i32 %214, i32* %25, align 4
  %215 = load i32, i32* %27, align 4
  %216 = icmp sge i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %208
  %218 = load i32, i32* %27, align 4
  %219 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %220 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %231

223:                                              ; preds = %217
  %224 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %225 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %224, i32 0, i32 0
  %226 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %225, align 8
  %227 = load i32, i32* %27, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %226, i64 %228
  %230 = load %struct.sm_row_struct*, %struct.sm_row_struct** %229, align 8
  br label %232

231:                                              ; preds = %217, %208
  br label %232

232:                                              ; preds = %231, %223
  %233 = phi %struct.sm_row_struct* [ %230, %223 ], [ null, %231 ]
  %234 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %233)
  store %struct.sm_row_struct* %234, %struct.sm_row_struct** %19, align 8
  %235 = load %struct.sm_row_struct*, %struct.sm_row_struct** %19, align 8
  %236 = load i32, i32* %24, align 4
  call void (%struct.sm_row_struct*, i32, ...) bitcast (void (...)* @sm_row_remove to void (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %235, i32 noundef %236)
  %237 = load %struct.sm_col_struct*, %struct.sm_col_struct** %21, align 8
  %238 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %237, i32 0, i32 3
  %239 = load %struct.sm_element_struct*, %struct.sm_element_struct** %238, align 8
  store %struct.sm_element_struct* %239, %struct.sm_element_struct** %22, align 8
  br label %240

240:                                              ; preds = %271, %232
  %241 = load %struct.sm_element_struct*, %struct.sm_element_struct** %22, align 8
  %242 = icmp ne %struct.sm_element_struct* %241, null
  br i1 %242, label %243, label %275

243:                                              ; preds = %240
  %244 = load %struct.sm_element_struct*, %struct.sm_element_struct** %22, align 8
  %245 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %26, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %270

249:                                              ; preds = %243
  %250 = load %struct.sm_row_struct*, %struct.sm_row_struct** %19, align 8
  %251 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %250, i32 0, i32 3
  %252 = load %struct.sm_element_struct*, %struct.sm_element_struct** %251, align 8
  store %struct.sm_element_struct* %252, %struct.sm_element_struct** %23, align 8
  br label %253

253:                                              ; preds = %265, %249
  %254 = load %struct.sm_element_struct*, %struct.sm_element_struct** %23, align 8
  %255 = icmp ne %struct.sm_element_struct* %254, null
  br i1 %255, label %256, label %269

256:                                              ; preds = %253
  %257 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %258 = load %struct.sm_element_struct*, %struct.sm_element_struct** %22, align 8
  %259 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.sm_element_struct*, %struct.sm_element_struct** %23, align 8
  %262 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %257, i32 noundef %260, i32 noundef %263)
  br label %265

265:                                              ; preds = %256
  %266 = load %struct.sm_element_struct*, %struct.sm_element_struct** %23, align 8
  %267 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %266, i32 0, i32 4
  %268 = load %struct.sm_element_struct*, %struct.sm_element_struct** %267, align 8
  store %struct.sm_element_struct* %268, %struct.sm_element_struct** %23, align 8
  br label %253, !llvm.loop !6

269:                                              ; preds = %253
  br label %270

270:                                              ; preds = %269, %243
  br label %271

271:                                              ; preds = %270
  %272 = load %struct.sm_element_struct*, %struct.sm_element_struct** %22, align 8
  %273 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %272, i32 0, i32 2
  %274 = load %struct.sm_element_struct*, %struct.sm_element_struct** %273, align 8
  store %struct.sm_element_struct* %274, %struct.sm_element_struct** %22, align 8
  br label %240, !llvm.loop !7

275:                                              ; preds = %240
  %276 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %277 = load i32, i32* %24, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %276, i32 noundef %277)
  %278 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %279 = load i32, i32* %25, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %278, i32 noundef %279)
  %280 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %281 = load i32, i32* %26, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %280, i32 noundef %281)
  %282 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %283 = load i32, i32* %27, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %282, i32 noundef %283)
  %284 = load %struct.stats_struct*, %struct.stats_struct** %16, align 8
  %285 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 8
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 8
  %288 = load %struct.stats_struct*, %struct.stats_struct** %16, align 8
  %289 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %288, i32 0, i32 7
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %289, align 4
  %292 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %293 = load %struct.solution_struct*, %struct.solution_struct** %11, align 8
  %294 = load i32*, i32** %12, align 8
  %295 = load i32, i32* %13, align 4
  %296 = sub nsw i32 %295, 1
  %297 = load i32, i32* %14, align 4
  %298 = sub nsw i32 %297, 1
  %299 = load i32, i32* %15, align 4
  %300 = load %struct.stats_struct*, %struct.stats_struct** %16, align 8
  %301 = call %struct.solution_struct* (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, ...) bitcast (%struct.solution_struct* (...)* @sm_mincov to %struct.solution_struct* (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, ...)*)(%struct.sm_matrix_struct* noundef %292, %struct.solution_struct* noundef %293, i32* noundef %294, i32 noundef %296, i32 noundef %298, i32 noundef %299, %struct.stats_struct* noundef %300)
  %302 = load %struct.solution_struct**, %struct.solution_struct*** %17, align 8
  store %struct.solution_struct* %301, %struct.solution_struct** %302, align 8
  %303 = load %struct.stats_struct*, %struct.stats_struct** %16, align 8
  %304 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %303, i32 0, i32 7
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %304, align 4
  %307 = load %struct.solution_struct**, %struct.solution_struct*** %17, align 8
  %308 = load %struct.solution_struct*, %struct.solution_struct** %307, align 8
  %309 = icmp ne %struct.solution_struct* %308, null
  br i1 %309, label %310, label %329

310:                                              ; preds = %275
  %311 = load %struct.sm_row_struct*, %struct.sm_row_struct** %19, align 8
  %312 = load %struct.solution_struct**, %struct.solution_struct*** %17, align 8
  %313 = load %struct.solution_struct*, %struct.solution_struct** %312, align 8
  %314 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %313, i32 0, i32 0
  %315 = load %struct.sm_row_struct*, %struct.sm_row_struct** %314, align 8
  %316 = call i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...) bitcast (i32 (...)* @sm_row_intersects to i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %311, %struct.sm_row_struct* noundef %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %310
  %319 = load %struct.solution_struct**, %struct.solution_struct*** %17, align 8
  %320 = load %struct.solution_struct*, %struct.solution_struct** %319, align 8
  %321 = load i32*, i32** %12, align 8
  %322 = load i32, i32* %25, align 4
  call void (%struct.solution_struct*, i32*, i32, ...) bitcast (void (...)* @solution_add to void (%struct.solution_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %320, i32* noundef %321, i32 noundef %322)
  br label %328

323:                                              ; preds = %310
  %324 = load %struct.solution_struct**, %struct.solution_struct*** %17, align 8
  %325 = load %struct.solution_struct*, %struct.solution_struct** %324, align 8
  %326 = load i32*, i32** %12, align 8
  %327 = load i32, i32* %24, align 4
  call void (%struct.solution_struct*, i32*, i32, ...) bitcast (void (...)* @solution_add to void (%struct.solution_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %325, i32* noundef %326, i32 noundef %327)
  br label %328

328:                                              ; preds = %323, %318
  br label %329

329:                                              ; preds = %328, %275
  %330 = load %struct.sm_row_struct*, %struct.sm_row_struct** %19, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %330)
  store i32 1, i32* %9, align 4
  br label %332

331:                                              ; preds = %205
  store i32 0, i32* %9, align 4
  br label %332

332:                                              ; preds = %331, %329
  %333 = load i32, i32* %9, align 4
  ret i32 %333
}

declare dso_local %struct.sm_row_struct* @sm_row_dup(...) #1

declare dso_local void @sm_row_remove(...) #1

declare dso_local %struct.sm_element_struct* @sm_insert(...) #1

declare dso_local void @sm_delcol(...) #1

declare dso_local void @sm_delrow(...) #1

declare dso_local %struct.solution_struct* @sm_mincov(...) #1

declare dso_local i32 @sm_row_intersects(...) #1

declare dso_local void @solution_add(...) #1

declare dso_local void @sm_row_free(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
