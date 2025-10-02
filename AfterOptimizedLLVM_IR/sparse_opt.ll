; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/sparse.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@force_irredundant = external dso_local global i32, align 4
@cube = external dso_local global %struct.cube_struct, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @make_sparse(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2) #0 {
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.cost_struct, align 4
  %8 = alloca %struct.cost_struct, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.set_family* %0, %struct.set_family** %4, align 8
  store %struct.set_family* %1, %struct.set_family** %5, align 8
  store %struct.set_family* %2, %struct.set_family** %6, align 8
  %11 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @cover_cost to void (%struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* noundef %11, %struct.cost_struct* noundef %8)
  br label %12

12:                                               ; preds = %39, %3
  %13 = call i64 (...) @util_cpu_time()
  store i64 %13, i64* %9, align 8
  %14 = load %struct.set_family*, %struct.set_family** %4, align 8
  %15 = load %struct.set_family*, %struct.set_family** %5, align 8
  %16 = call %struct.set_family* @mv_reduce(%struct.set_family* noundef %14, %struct.set_family* noundef %15)
  store %struct.set_family* %16, %struct.set_family** %4, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %17, i32 noundef 12, %struct.set_family* noundef %18, %struct.cost_struct* noundef %7)
  %19 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %7, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %8, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  br label %42

25:                                               ; preds = %12
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* noundef %7, %struct.cost_struct* noundef %8)
  %26 = call i64 (...) @util_cpu_time()
  store i64 %26, i64* %10, align 8
  %27 = load %struct.set_family*, %struct.set_family** %4, align 8
  %28 = load %struct.set_family*, %struct.set_family** %6, align 8
  %29 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* noundef %27, %struct.set_family* noundef %28, i32 noundef 1)
  store %struct.set_family* %29, %struct.set_family** %4, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %30, i32 noundef 13, %struct.set_family* noundef %31, %struct.cost_struct* noundef %7)
  %32 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %7, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %8, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %42

38:                                               ; preds = %25
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* noundef %7, %struct.cost_struct* noundef %8)
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* @force_irredundant, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %12, label %42, !llvm.loop !4

42:                                               ; preds = %39, %37, %24
  %43 = load %struct.set_family*, %struct.set_family** %4, align 8
  ret %struct.set_family* %43
}

declare dso_local void @cover_cost(...) #1

declare dso_local i64 @util_cpu_time(...) #1

declare dso_local void @totals(...) #1

declare dso_local void @copy_cost(...) #1

declare dso_local %struct.set_family* @expand(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @mv_reduce(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.set_family*, align 8
  %12 = alloca %struct.set_family*, align 8
  %13 = alloca i32**, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store %struct.set_family* %1, %struct.set_family** %4, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %294, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %297

18:                                               ; preds = %14
  %19 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %293

25:                                               ; preds = %18
  %26 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %289, %25
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %32, %37
  br i1 %38, label %39, label %292

39:                                               ; preds = %31
  %40 = load %struct.set_family*, %struct.set_family** %3, align 8
  %41 = getelementptr inbounds %struct.set_family, %struct.set_family* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = call i8* @malloc(i64 noundef %44)
  %46 = bitcast i8* %45 to i32**
  store i32** %46, i32*** %13, align 8
  %47 = load %struct.set_family*, %struct.set_family** %3, align 8
  %48 = getelementptr inbounds %struct.set_family, %struct.set_family* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %51 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %49, i32 noundef %50)
  store %struct.set_family* %51, %struct.set_family** %11, align 8
  %52 = load %struct.set_family*, %struct.set_family** %3, align 8
  %53 = getelementptr inbounds %struct.set_family, %struct.set_family* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.set_family*, %struct.set_family** %3, align 8
  %57 = getelementptr inbounds %struct.set_family, %struct.set_family* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.set_family*, %struct.set_family** %3, align 8
  %60 = getelementptr inbounds %struct.set_family, %struct.set_family* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %55, i64 %63
  store i32* %64, i32** %9, align 8
  br label %65

65:                                               ; preds = %123, %39
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ult i32* %66, %67
  br i1 %68, label %69, label %130

69:                                               ; preds = %65
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 5
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, 31
  %79 = shl i32 1, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %122

82:                                               ; preds = %69
  %83 = load i32*, i32** %7, align 8
  %84 = load i32**, i32*** %13, align 8
  %85 = load %struct.set_family*, %struct.set_family** %11, align 8
  %86 = getelementptr inbounds %struct.set_family, %struct.set_family* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %84, i64 %88
  store i32* %83, i32** %89, align 8
  %90 = load %struct.set_family*, %struct.set_family** %11, align 8
  %91 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.set_family*, %struct.set_family** %11, align 8
  %94 = getelementptr inbounds %struct.set_family, %struct.set_family* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.set_family*, %struct.set_family** %11, align 8
  %97 = getelementptr inbounds %struct.set_family, %struct.set_family* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = mul nsw i32 %95, %98
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %92, i64 %101
  store i32* %102, i32** %8, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %103, i32* noundef %104, i32* noundef %109)
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, 31
  %113 = shl i32 1, %112
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %5, align 4
  %116 = ashr i32 %115, 5
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %113
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %82, %69
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.set_family*, %struct.set_family** %3, align 8
  %125 = getelementptr inbounds %struct.set_family, %struct.set_family* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %7, align 8
  br label %65, !llvm.loop !6

130:                                              ; preds = %65
  %131 = load %struct.set_family*, %struct.set_family** %4, align 8
  %132 = getelementptr inbounds %struct.set_family, %struct.set_family* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %135 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %133, i32 noundef %134)
  store %struct.set_family* %135, %struct.set_family** %12, align 8
  %136 = load %struct.set_family*, %struct.set_family** %4, align 8
  %137 = getelementptr inbounds %struct.set_family, %struct.set_family* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %7, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.set_family*, %struct.set_family** %4, align 8
  %141 = getelementptr inbounds %struct.set_family, %struct.set_family* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.set_family*, %struct.set_family** %4, align 8
  %144 = getelementptr inbounds %struct.set_family, %struct.set_family* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 %142, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %139, i64 %147
  store i32* %148, i32** %9, align 8
  br label %149

149:                                              ; preds = %200, %130
  %150 = load i32*, i32** %7, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = icmp ult i32* %150, %151
  br i1 %152, label %153, label %207

153:                                              ; preds = %149
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %5, align 4
  %156 = ashr i32 %155, 5
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, 31
  %163 = shl i32 1, %162
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %199

166:                                              ; preds = %153
  %167 = load %struct.set_family*, %struct.set_family** %12, align 8
  %168 = getelementptr inbounds %struct.set_family, %struct.set_family* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.set_family*, %struct.set_family** %12, align 8
  %171 = getelementptr inbounds %struct.set_family, %struct.set_family* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.set_family*, %struct.set_family** %12, align 8
  %174 = getelementptr inbounds %struct.set_family, %struct.set_family* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = mul nsw i32 %172, %175
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %169, i64 %178
  store i32* %179, i32** %8, align 8
  %180 = load i32*, i32** %8, align 8
  %181 = load i32*, i32** %7, align 8
  %182 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %180, i32* noundef %181, i32* noundef %186)
  %188 = load i32, i32* %5, align 4
  %189 = and i32 %188, 31
  %190 = shl i32 1, %189
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %5, align 4
  %193 = ashr i32 %192, 5
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %190
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %166, %153
  br label %200

200:                                              ; preds = %199
  %201 = load %struct.set_family*, %struct.set_family** %4, align 8
  %202 = getelementptr inbounds %struct.set_family, %struct.set_family* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32* %206, i32** %7, align 8
  br label %149, !llvm.loop !7

207:                                              ; preds = %149
  %208 = load %struct.set_family*, %struct.set_family** %11, align 8
  %209 = load %struct.set_family*, %struct.set_family** %12, align 8
  call void (%struct.set_family*, %struct.set_family*, ...) bitcast (void (...)* @mark_irredundant to void (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %208, %struct.set_family* noundef %209)
  store i32 0, i32* %10, align 4
  %210 = load %struct.set_family*, %struct.set_family** %11, align 8
  %211 = getelementptr inbounds %struct.set_family, %struct.set_family* %210, i32 0, i32 5
  %212 = load i32*, i32** %211, align 8
  store i32* %212, i32** %8, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = load %struct.set_family*, %struct.set_family** %11, align 8
  %215 = getelementptr inbounds %struct.set_family, %struct.set_family* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.set_family*, %struct.set_family** %11, align 8
  %218 = getelementptr inbounds %struct.set_family, %struct.set_family* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = mul nsw i32 %216, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %213, i64 %221
  store i32* %222, i32** %9, align 8
  br label %223

223:                                              ; preds = %273, %207
  %224 = load i32*, i32** %8, align 8
  %225 = load i32*, i32** %9, align 8
  %226 = icmp ult i32* %224, %225
  br i1 %226, label %227, label %280

227:                                              ; preds = %223
  %228 = load i32*, i32** %8, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, 8192
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %270, label %233

233:                                              ; preds = %227
  %234 = load i32**, i32*** %13, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  %238 = load i32*, i32** %237, align 8
  store i32* %238, i32** %7, align 8
  %239 = load i32, i32* %6, align 4
  %240 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %241 = sub nsw i32 %240, 1
  %242 = icmp eq i32 %239, %241
  br i1 %242, label %252, label %243

243:                                              ; preds = %233
  %244 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = load i32*, i32** %7, align 8
  %250 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_implies to i32 (i32*, i32*, ...)*)(i32* noundef %248, i32* noundef %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %265, label %252

252:                                              ; preds = %243, %233
  %253 = load i32, i32* %5, align 4
  %254 = and i32 %253, 31
  %255 = shl i32 1, %254
  %256 = xor i32 %255, -1
  %257 = load i32*, i32** %7, align 8
  %258 = load i32, i32* %5, align 4
  %259 = ashr i32 %258, 5
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %257, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, %256
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %252, %243
  %266 = load i32*, i32** %7, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 0
  %268 = load i32, i32* %267, align 4
  %269 = and i32 %268, -32769
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %265, %227
  %271 = load i32, i32* %10, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %10, align 4
  br label %273

273:                                              ; preds = %270
  %274 = load %struct.set_family*, %struct.set_family** %11, align 8
  %275 = getelementptr inbounds %struct.set_family, %struct.set_family* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32*, i32** %8, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32* %279, i32** %8, align 8
  br label %223, !llvm.loop !8

280:                                              ; preds = %223
  %281 = load %struct.set_family*, %struct.set_family** %11, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %281)
  %282 = load %struct.set_family*, %struct.set_family** %12, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %282)
  %283 = load i32**, i32*** %13, align 8
  %284 = icmp ne i32** %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load i32**, i32*** %13, align 8
  %287 = bitcast i32** %286 to i8*
  call void @free(i8* noundef %287)
  store i32** null, i32*** %13, align 8
  br label %288

288:                                              ; preds = %285, %280
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %5, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %5, align 4
  br label %31, !llvm.loop !9

292:                                              ; preds = %31
  br label %293

293:                                              ; preds = %292, %18
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %6, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %6, align 4
  br label %14, !llvm.loop !10

297:                                              ; preds = %14
  %298 = load %struct.set_family*, %struct.set_family** %3, align 8
  %299 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_active to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %298)
  store i32 0, i32* %6, align 4
  br label %300

300:                                              ; preds = %364, %297
  %301 = load i32, i32* %6, align 4
  %302 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %367

304:                                              ; preds = %300
  %305 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %306 = load i32, i32* %6, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %363

311:                                              ; preds = %304
  %312 = load %struct.set_family*, %struct.set_family** %3, align 8
  %313 = getelementptr inbounds %struct.set_family, %struct.set_family* %312, i32 0, i32 5
  %314 = load i32*, i32** %313, align 8
  store i32* %314, i32** %7, align 8
  %315 = load i32*, i32** %7, align 8
  %316 = load %struct.set_family*, %struct.set_family** %3, align 8
  %317 = getelementptr inbounds %struct.set_family, %struct.set_family* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.set_family*, %struct.set_family** %3, align 8
  %320 = getelementptr inbounds %struct.set_family, %struct.set_family* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = mul nsw i32 %318, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %315, i64 %323
  store i32* %324, i32** %9, align 8
  br label %325

325:                                              ; preds = %355, %311
  %326 = load i32*, i32** %7, align 8
  %327 = load i32*, i32** %9, align 8
  %328 = icmp ult i32* %326, %327
  br i1 %328, label %329, label %362

329:                                              ; preds = %325
  %330 = load i32*, i32** %7, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, 8192
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %354

335:                                              ; preds = %329
  %336 = load i32*, i32** %7, align 8
  %337 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32*, i32** %337, i64 %339
  %341 = load i32*, i32** %340, align 8
  %342 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* noundef %336, i32* noundef %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %353

344:                                              ; preds = %335
  %345 = load i32*, i32** %7, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 0
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, -8193
  store i32 %348, i32* %346, align 4
  %349 = load %struct.set_family*, %struct.set_family** %3, align 8
  %350 = getelementptr inbounds %struct.set_family, %struct.set_family* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = add nsw i32 %351, -1
  store i32 %352, i32* %350, align 8
  br label %353

353:                                              ; preds = %344, %335
  br label %354

354:                                              ; preds = %353, %329
  br label %355

355:                                              ; preds = %354
  %356 = load %struct.set_family*, %struct.set_family** %3, align 8
  %357 = getelementptr inbounds %struct.set_family, %struct.set_family* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32*, i32** %7, align 8
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds i32, i32* %359, i64 %360
  store i32* %361, i32** %7, align 8
  br label %325, !llvm.loop !11

362:                                              ; preds = %325
  br label %363

363:                                              ; preds = %362, %304
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %6, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %6, align 4
  br label %300, !llvm.loop !12

367:                                              ; preds = %300
  %368 = load %struct.set_family*, %struct.set_family** %3, align 8
  %369 = getelementptr inbounds %struct.set_family, %struct.set_family* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.set_family*, %struct.set_family** %3, align 8
  %372 = getelementptr inbounds %struct.set_family, %struct.set_family* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %370, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %367
  %376 = load %struct.set_family*, %struct.set_family** %3, align 8
  %377 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_inactive to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %376)
  store %struct.set_family* %377, %struct.set_family** %3, align 8
  br label %378

378:                                              ; preds = %375, %367
  %379 = load %struct.set_family*, %struct.set_family** %3, align 8
  ret %struct.set_family* %379
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local i32* @set_diff(...) #1

declare dso_local void @mark_irredundant(...) #1

declare dso_local i32 @setp_implies(...) #1

declare dso_local void @sf_free(...) #1

declare dso_local void @free(i8* noundef) #1

declare dso_local %struct.set_family* @sf_active(...) #1

declare dso_local i32 @setp_disjoint(...) #1

declare dso_local %struct.set_family* @sf_inactive(...) #1

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
