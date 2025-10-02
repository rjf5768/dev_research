; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/espresso.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/espresso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.cost_struct = type { i32, i32, i32, i32, i32, i32 }

@recompute_onset = external dso_local global i32, align 4
@trace = external dso_local global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"SIMPLIFY   \00", align 1
@unwrap_onset = external dso_local global i32, align 4
@cube = external dso_local global %struct.cube_struct, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"SETUP      \00", align 1
@single_expand = external dso_local global i32, align 4
@remove_essential = external dso_local global i32, align 4
@use_super_gasp = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ADJUST     \00", align 1
@skip_make_sparse = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @espresso(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2) #0 {
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.set_family*, align 8
  %9 = alloca %struct.set_family*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cost_struct, align 4
  %13 = alloca %struct.cost_struct, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.set_family* %0, %struct.set_family** %4, align 8
  store %struct.set_family* %1, %struct.set_family** %5, align 8
  store %struct.set_family* %2, %struct.set_family** %6, align 8
  br label %22

22:                                               ; preds = %241, %3
  %23 = load %struct.set_family*, %struct.set_family** %4, align 8
  %24 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %23)
  store %struct.set_family* %24, %struct.set_family** %9, align 8
  %25 = load %struct.set_family*, %struct.set_family** %5, align 8
  %26 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_save to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %25)
  store %struct.set_family* %26, %struct.set_family** %8, align 8
  %27 = load i32, i32* @recompute_onset, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = call i64 (...) @util_cpu_time()
  store i64 %30, i64* %14, align 8
  %31 = load %struct.set_family*, %struct.set_family** %4, align 8
  %32 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* noundef %31)
  %33 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @simplify to %struct.set_family* (i32**, ...)*)(i32** noundef %32)
  store %struct.set_family* %33, %struct.set_family** %7, align 8
  %34 = load i32, i32* @trace, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.set_family*, %struct.set_family** %7, align 8
  %38 = call i64 (...) @util_cpu_time()
  %39 = load i64, i64* %14, align 8
  %40 = sub nsw i64 %38, %39
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %37, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 noundef %40)
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %42)
  %43 = load %struct.set_family*, %struct.set_family** %7, align 8
  store %struct.set_family* %43, %struct.set_family** %4, align 8
  br label %44

44:                                               ; preds = %41, %22
  %45 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @cover_cost to void (%struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* noundef %45, %struct.cost_struct* noundef %12)
  %46 = load i32, i32* @unwrap_onset, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %44
  %49 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %88

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %60, %66
  %68 = icmp ne i32 %58, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 5000
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = call i64 (...) @util_cpu_time()
  store i64 %74, i64* %15, align 8
  %75 = load %struct.set_family*, %struct.set_family** %4, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %77 = sub nsw i32 %76, 1
  %78 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @unravel to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* noundef %75, i32 noundef %77)
  %79 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %78)
  store %struct.set_family* %79, %struct.set_family** %4, align 8
  %80 = load i32, i32* @trace, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.set_family*, %struct.set_family** %4, align 8
  %84 = call i64 (...) @util_cpu_time()
  %85 = load i64, i64* %15, align 8
  %86 = sub nsw i64 %84, %85
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %83, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 noundef %86)
  br label %87

87:                                               ; preds = %82, %73
  br label %88

88:                                               ; preds = %87, %69, %56, %48, %44
  %89 = load %struct.set_family*, %struct.set_family** %4, align 8
  %90 = getelementptr inbounds %struct.set_family, %struct.set_family* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %11, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load %struct.set_family*, %struct.set_family** %4, align 8
  %94 = getelementptr inbounds %struct.set_family, %struct.set_family* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.set_family*, %struct.set_family** %4, align 8
  %97 = getelementptr inbounds %struct.set_family, %struct.set_family* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %92, i64 %100
  store i32* %101, i32** %10, align 8
  br label %102

102:                                              ; preds = %111, %88
  %103 = load i32*, i32** %11, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = icmp ult i32* %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, -32769
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106
  %112 = load %struct.set_family*, %struct.set_family** %4, align 8
  %113 = getelementptr inbounds %struct.set_family, %struct.set_family* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %11, align 8
  br label %102, !llvm.loop !4

118:                                              ; preds = %102
  %119 = call i64 (...) @util_cpu_time()
  store i64 %119, i64* %16, align 8
  %120 = load %struct.set_family*, %struct.set_family** %4, align 8
  %121 = load %struct.set_family*, %struct.set_family** %6, align 8
  %122 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* noundef %120, %struct.set_family* noundef %121, i32 noundef 0)
  store %struct.set_family* %122, %struct.set_family** %4, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %123, i32 noundef 4, %struct.set_family* noundef %124, %struct.cost_struct* noundef %12)
  %125 = call i64 (...) @util_cpu_time()
  store i64 %125, i64* %17, align 8
  %126 = load %struct.set_family*, %struct.set_family** %4, align 8
  %127 = load %struct.set_family*, %struct.set_family** %8, align 8
  %128 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %126, %struct.set_family* noundef %127)
  store %struct.set_family* %128, %struct.set_family** %4, align 8
  %129 = load i64, i64* %17, align 8
  %130 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %129, i32 noundef 5, %struct.set_family* noundef %130, %struct.cost_struct* noundef %12)
  %131 = load i32, i32* @single_expand, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %224, label %133

133:                                              ; preds = %118
  %134 = load i32, i32* @remove_essential, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = call i64 (...) @util_cpu_time()
  store i64 %137, i64* %18, align 8
  %138 = call %struct.set_family* (%struct.set_family**, %struct.set_family**, ...) bitcast (%struct.set_family* (...)* @essential to %struct.set_family* (%struct.set_family**, %struct.set_family**, ...)*)(%struct.set_family** noundef %4, %struct.set_family** noundef %8)
  store %struct.set_family* %138, %struct.set_family** %7, align 8
  %139 = load i64, i64* %18, align 8
  %140 = load %struct.set_family*, %struct.set_family** %7, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %139, i32 noundef 3, %struct.set_family* noundef %140, %struct.cost_struct* noundef %12)
  br label %144

141:                                              ; preds = %133
  %142 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %143 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 0, i32 noundef %142)
  store %struct.set_family* %143, %struct.set_family** %7, align 8
  br label %144

144:                                              ; preds = %141, %136
  %145 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @cover_cost to void (%struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* noundef %145, %struct.cost_struct* noundef %12)
  br label %146

146:                                              ; preds = %213, %144
  br label %147

147:                                              ; preds = %166, %146
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* noundef %12, %struct.cost_struct* noundef %13)
  %148 = call i64 (...) @util_cpu_time()
  store i64 %148, i64* %19, align 8
  %149 = load %struct.set_family*, %struct.set_family** %4, align 8
  %150 = load %struct.set_family*, %struct.set_family** %8, align 8
  %151 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @reduce to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %149, %struct.set_family* noundef %150)
  store %struct.set_family* %151, %struct.set_family** %4, align 8
  %152 = load i64, i64* %19, align 8
  %153 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %152, i32 noundef 6, %struct.set_family* noundef %153, %struct.cost_struct* noundef %12)
  %154 = call i64 (...) @util_cpu_time()
  store i64 %154, i64* %20, align 8
  %155 = load %struct.set_family*, %struct.set_family** %4, align 8
  %156 = load %struct.set_family*, %struct.set_family** %6, align 8
  %157 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @expand to %struct.set_family* (%struct.set_family*, %struct.set_family*, i32, ...)*)(%struct.set_family* noundef %155, %struct.set_family* noundef %156, i32 noundef 0)
  store %struct.set_family* %157, %struct.set_family** %4, align 8
  %158 = load i64, i64* %20, align 8
  %159 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %158, i32 noundef 4, %struct.set_family* noundef %159, %struct.cost_struct* noundef %12)
  %160 = call i64 (...) @util_cpu_time()
  store i64 %160, i64* %21, align 8
  %161 = load %struct.set_family*, %struct.set_family** %4, align 8
  %162 = load %struct.set_family*, %struct.set_family** %8, align 8
  %163 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @irredundant to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %161, %struct.set_family* noundef %162)
  store %struct.set_family* %163, %struct.set_family** %4, align 8
  %164 = load i64, i64* %21, align 8
  %165 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...) bitcast (void (...)* @totals to void (i64, i32, %struct.set_family*, %struct.cost_struct*, ...)*)(i64 noundef %164, i32 noundef 5, %struct.set_family* noundef %165, %struct.cost_struct* noundef %12)
  br label %166

166:                                              ; preds = %147
  %167 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %13, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %168, %170
  br i1 %171, label %147, label %172, !llvm.loop !6

172:                                              ; preds = %166
  call void (%struct.cost_struct*, %struct.cost_struct*, ...) bitcast (void (...)* @copy_cost to void (%struct.cost_struct*, %struct.cost_struct*, ...)*)(%struct.cost_struct* noundef %12, %struct.cost_struct* noundef %13)
  %173 = load i32, i32* @use_super_gasp, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load %struct.set_family*, %struct.set_family** %4, align 8
  %177 = load %struct.set_family*, %struct.set_family** %8, align 8
  %178 = load %struct.set_family*, %struct.set_family** %6, align 8
  %179 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...) bitcast (%struct.set_family* (...)* @super_gasp to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* noundef %176, %struct.set_family* noundef %177, %struct.set_family* noundef %178, %struct.cost_struct* noundef %12)
  store %struct.set_family* %179, %struct.set_family** %4, align 8
  %180 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %13, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp sge i32 %181, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %175
  br label %215

186:                                              ; preds = %175
  br label %192

187:                                              ; preds = %172
  %188 = load %struct.set_family*, %struct.set_family** %4, align 8
  %189 = load %struct.set_family*, %struct.set_family** %8, align 8
  %190 = load %struct.set_family*, %struct.set_family** %6, align 8
  %191 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...) bitcast (%struct.set_family* (...)* @last_gasp to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, %struct.cost_struct*, ...)*)(%struct.set_family* noundef %188, %struct.set_family* noundef %189, %struct.set_family* noundef %190, %struct.cost_struct* noundef %12)
  store %struct.set_family* %191, %struct.set_family** %4, align 8
  br label %192

192:                                              ; preds = %187, %186
  br label %193

193:                                              ; preds = %192
  %194 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %13, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %213, label %199

199:                                              ; preds = %193
  %200 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %13, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %12, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds %struct.cost_struct, %struct.cost_struct* %13, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %207, %209
  br label %211

211:                                              ; preds = %205, %199
  %212 = phi i1 [ false, %199 ], [ %210, %205 ]
  br label %213

213:                                              ; preds = %211, %193
  %214 = phi i1 [ true, %193 ], [ %212, %211 ]
  br i1 %214, label %146, label %215, !llvm.loop !7

215:                                              ; preds = %213, %185
  %216 = load %struct.set_family*, %struct.set_family** %4, align 8
  %217 = load %struct.set_family*, %struct.set_family** %7, align 8
  %218 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %216, %struct.set_family* noundef %217)
  store %struct.set_family* %218, %struct.set_family** %4, align 8
  %219 = load i32, i32* @trace, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %215
  %222 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, i8*, ...) bitcast (void (...)* @size_stamp to void (%struct.set_family*, i8*, ...)*)(%struct.set_family* noundef %222, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %223

223:                                              ; preds = %221, %215
  br label %224

224:                                              ; preds = %223, %118
  %225 = load %struct.set_family*, %struct.set_family** %8, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %225)
  %226 = load i32, i32* @skip_make_sparse, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %224
  %229 = load %struct.set_family*, %struct.set_family** %4, align 8
  %230 = load %struct.set_family*, %struct.set_family** %5, align 8
  %231 = load %struct.set_family*, %struct.set_family** %6, align 8
  %232 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @make_sparse to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %229, %struct.set_family* noundef %230, %struct.set_family* noundef %231)
  store %struct.set_family* %232, %struct.set_family** %4, align 8
  br label %233

233:                                              ; preds = %228, %224
  %234 = load %struct.set_family*, %struct.set_family** %9, align 8
  %235 = getelementptr inbounds %struct.set_family, %struct.set_family* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.set_family*, %struct.set_family** %4, align 8
  %238 = getelementptr inbounds %struct.set_family, %struct.set_family* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %233
  %242 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %242)
  %243 = load %struct.set_family*, %struct.set_family** %9, align 8
  store %struct.set_family* %243, %struct.set_family** %4, align 8
  store i32 0, i32* @unwrap_onset, align 4
  br label %22

244:                                              ; preds = %233
  %245 = load %struct.set_family*, %struct.set_family** %9, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %245)
  br label %246

246:                                              ; preds = %244
  %247 = load %struct.set_family*, %struct.set_family** %4, align 8
  ret %struct.set_family* %247
}

declare dso_local %struct.set_family* @sf_save(...) #1

declare dso_local i64 @util_cpu_time(...) #1

declare dso_local %struct.set_family* @simplify(...) #1

declare dso_local i32** @cube1list(...) #1

declare dso_local void @print_trace(...) #1

declare dso_local void @sf_free(...) #1

declare dso_local void @cover_cost(...) #1

declare dso_local %struct.set_family* @sf_contain(...) #1

declare dso_local %struct.set_family* @unravel(...) #1

declare dso_local %struct.set_family* @expand(...) #1

declare dso_local void @totals(...) #1

declare dso_local %struct.set_family* @irredundant(...) #1

declare dso_local %struct.set_family* @essential(...) #1

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local void @copy_cost(...) #1

declare dso_local %struct.set_family* @reduce(...) #1

declare dso_local %struct.set_family* @super_gasp(...) #1

declare dso_local %struct.set_family* @last_gasp(...) #1

declare dso_local %struct.set_family* @sf_append(...) #1

declare dso_local void @size_stamp(...) #1

declare dso_local %struct.set_family* @make_sparse(...) #1

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
