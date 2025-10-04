; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/exact.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }

@debug = external dso_local global i32, align 4
@trace = external dso_local global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"PRIMES     \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ESSENTIALS \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"PI-TABLE   \00", align 1
@cube = external dso_local global %struct.cube_struct, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"MINCOV     \00", align 1
@skip_make_sparse = external dso_local global i32, align 4
@filename = external dso_local global i8*, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"%s.primes\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"espresso: Unable to open %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s.pi\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"# Essential primes are\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"# Totally redundant primes are\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"# Partially redundant primes are\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @minimize_exact(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca i32, align 4
  store %struct.set_family* %0, %struct.set_family** %5, align 8
  store %struct.set_family* %1, %struct.set_family** %6, align 8
  store %struct.set_family* %2, %struct.set_family** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.set_family*, %struct.set_family** %5, align 8
  %10 = load %struct.set_family*, %struct.set_family** %6, align 8
  %11 = load %struct.set_family*, %struct.set_family** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.set_family* @do_minimize(%struct.set_family* noundef %9, %struct.set_family* noundef %10, %struct.set_family* noundef %11, i32 noundef %12, i32 noundef 0)
  ret %struct.set_family* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @minimize_exact_literals(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca i32, align 4
  store %struct.set_family* %0, %struct.set_family** %5, align 8
  store %struct.set_family* %1, %struct.set_family** %6, align 8
  store %struct.set_family* %2, %struct.set_family** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.set_family*, %struct.set_family** %5, align 8
  %10 = load %struct.set_family*, %struct.set_family** %6, align 8
  %11 = load %struct.set_family*, %struct.set_family** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call %struct.set_family* @do_minimize(%struct.set_family* noundef %9, %struct.set_family* noundef %10, %struct.set_family* noundef %11, i32 noundef %12, i32 noundef 1)
  ret %struct.set_family* %13
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.set_family* @do_minimize(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.set_family*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.set_family*, align 8
  %12 = alloca %struct.set_family*, align 8
  %13 = alloca %struct.set_family*, align 8
  %14 = alloca %struct.set_family*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.sm_matrix_struct*, align 8
  %21 = alloca %struct.sm_row_struct*, align 8
  %22 = alloca %struct.sm_element_struct*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.set_family* %0, %struct.set_family** %6, align 8
  store %struct.set_family* %1, %struct.set_family** %7, align 8
  store %struct.set_family* %2, %struct.set_family** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %28 = load i32, i32* @debug, align 4
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* @debug, align 4
  %30 = and i32 %29, 1024
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @debug, align 4
  %34 = or i32 %33, 2080
  store i32 %34, i32* @debug, align 4
  br label %35

35:                                               ; preds = %32, %5
  %36 = load i32, i32* @debug, align 4
  %37 = and i32 %36, 2048
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 4, i32 0
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %17, align 4
  %45 = call i64 (...) @util_cpu_time()
  store i64 %45, i64* %24, align 8
  %46 = load %struct.set_family*, %struct.set_family** %6, align 8
  %47 = load %struct.set_family*, %struct.set_family** %7, align 8
  %48 = call i32** (%struct.set_family*, %struct.set_family*, ...) bitcast (i32** (...)* @cube2list to i32** (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %46, %struct.set_family* noundef %47)
  %49 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @primes_consensus to %struct.set_family* (i32**, ...)*)(i32** noundef %48)
  store %struct.set_family* %49, %struct.set_family** %6, align 8
  %50 = load i32, i32* @trace, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %35
  %53 = load %struct.set_family*, %struct.set_family** %6, align 8
  %54 = call i64 (...) @util_cpu_time()
  %55 = load i64, i64* %24, align 8
  %56 = sub nsw i64 %54, %55
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %53, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 noundef %56)
  br label %57

57:                                               ; preds = %52, %35
  %58 = call i64 (...) @util_cpu_time()
  store i64 %58, i64* %25, align 8
  %59 = load %struct.set_family*, %struct.set_family** %6, align 8
  %60 = load %struct.set_family*, %struct.set_family** %7, align 8
  call void (%struct.set_family*, %struct.set_family*, %struct.set_family**, %struct.set_family**, %struct.set_family**, ...) bitcast (void (...)* @irred_split_cover to void (%struct.set_family*, %struct.set_family*, %struct.set_family**, %struct.set_family**, %struct.set_family**, ...)*)(%struct.set_family* noundef %59, %struct.set_family* noundef %60, %struct.set_family** noundef %12, %struct.set_family** noundef %13, %struct.set_family** noundef %14)
  %61 = load i32, i32* @trace, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.set_family*, %struct.set_family** %12, align 8
  %65 = call i64 (...) @util_cpu_time()
  %66 = load i64, i64* %25, align 8
  %67 = sub nsw i64 %65, %66
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %64, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 noundef %67)
  br label %68

68:                                               ; preds = %63, %57
  %69 = call i64 (...) @util_cpu_time()
  store i64 %69, i64* %26, align 8
  %70 = load %struct.set_family*, %struct.set_family** %7, align 8
  %71 = load %struct.set_family*, %struct.set_family** %12, align 8
  %72 = load %struct.set_family*, %struct.set_family** %14, align 8
  %73 = call %struct.sm_matrix_struct* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.sm_matrix_struct* (...)* @irred_derive_table to %struct.sm_matrix_struct* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %70, %struct.set_family* noundef %71, %struct.set_family* noundef %72)
  store %struct.sm_matrix_struct* %73, %struct.sm_matrix_struct** %20, align 8
  %74 = load i32, i32* @trace, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load %struct.set_family*, %struct.set_family** %14, align 8
  %78 = call i64 (...) @util_cpu_time()
  %79 = load i64, i64* %26, align 8
  %80 = sub nsw i64 %78, %79
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %77, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 noundef %80)
  br label %81

81:                                               ; preds = %76, %68
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %129

84:                                               ; preds = %81
  %85 = load %struct.set_family*, %struct.set_family** %6, align 8
  %86 = getelementptr inbounds %struct.set_family, %struct.set_family* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = call i8* @malloc(i64 noundef %89)
  %91 = bitcast i8* %90 to i32*
  store i32* %91, i32** %19, align 8
  %92 = load %struct.set_family*, %struct.set_family** %14, align 8
  %93 = getelementptr inbounds %struct.set_family, %struct.set_family* %92, i32 0, i32 5
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %15, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load %struct.set_family*, %struct.set_family** %14, align 8
  %97 = getelementptr inbounds %struct.set_family, %struct.set_family* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.set_family*, %struct.set_family** %14, align 8
  %100 = getelementptr inbounds %struct.set_family, %struct.set_family* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %95, i64 %103
  store i32* %104, i32** %16, align 8
  br label %105

105:                                              ; preds = %121, %84
  %106 = load i32*, i32** %15, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = icmp ult i32* %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %111 = load i32*, i32** %15, align 8
  %112 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* noundef %111)
  %113 = sub nsw i32 %110, %112
  %114 = load i32*, i32** %19, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = lshr i32 %117, 16
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  store i32 %113, i32* %120, align 4
  br label %121

121:                                              ; preds = %109
  %122 = load %struct.set_family*, %struct.set_family** %14, align 8
  %123 = getelementptr inbounds %struct.set_family, %struct.set_family* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %15, align 8
  br label %105, !llvm.loop !4

128:                                              ; preds = %105
  br label %130

129:                                              ; preds = %81
  store i32* null, i32** %19, align 8
  br label %130

130:                                              ; preds = %129, %128
  %131 = call i64 (...) @util_cpu_time()
  store i64 %131, i64* %27, align 8
  %132 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %20, align 8
  %133 = load i32*, i32** %19, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %18, align 4
  %136 = call %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...) bitcast (%struct.sm_row_struct* (...)* @sm_minimum_cover to %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %132, i32* noundef %133, i32 noundef %134, i32 noundef %135)
  store %struct.sm_row_struct* %136, %struct.sm_row_struct** %21, align 8
  %137 = load i32, i32* @trace, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load %struct.set_family*, %struct.set_family** %6, align 8
  %141 = call i64 (...) @util_cpu_time()
  %142 = load i64, i64* %27, align 8
  %143 = sub nsw i64 %141, %142
  call void (%struct.set_family*, i8*, i64, ...) bitcast (void (...)* @print_trace to void (%struct.set_family*, i8*, i64, ...)*)(%struct.set_family* noundef %140, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 noundef %143)
  br label %144

144:                                              ; preds = %139, %130
  %145 = load i32*, i32** %19, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load i32*, i32** %19, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32*, i32** %19, align 8
  %152 = bitcast i32* %151 to i8*
  call void @free(i8* noundef %152)
  store i32* null, i32** %19, align 8
  br label %153

153:                                              ; preds = %150, %147
  br label %154

154:                                              ; preds = %153, %144
  %155 = load i32, i32* @debug, align 4
  %156 = and i32 %155, 1024
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load %struct.set_family*, %struct.set_family** %12, align 8
  %160 = load %struct.set_family*, %struct.set_family** %13, align 8
  %161 = load %struct.set_family*, %struct.set_family** %14, align 8
  %162 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %20, align 8
  call void @dump_irredundant(%struct.set_family* noundef %159, %struct.set_family* noundef %160, %struct.set_family* noundef %161, %struct.sm_matrix_struct* noundef %162)
  br label %163

163:                                              ; preds = %158, %154
  %164 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %165 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 100, i32 noundef %164)
  store %struct.set_family* %165, %struct.set_family** %11, align 8
  %166 = load %struct.set_family*, %struct.set_family** %12, align 8
  %167 = getelementptr inbounds %struct.set_family, %struct.set_family* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %15, align 8
  %169 = load i32*, i32** %15, align 8
  %170 = load %struct.set_family*, %struct.set_family** %12, align 8
  %171 = getelementptr inbounds %struct.set_family, %struct.set_family* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.set_family*, %struct.set_family** %12, align 8
  %174 = getelementptr inbounds %struct.set_family, %struct.set_family* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %172, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %169, i64 %177
  store i32* %178, i32** %16, align 8
  br label %179

179:                                              ; preds = %187, %163
  %180 = load i32*, i32** %15, align 8
  %181 = load i32*, i32** %16, align 8
  %182 = icmp ult i32* %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %179
  %184 = load %struct.set_family*, %struct.set_family** %11, align 8
  %185 = load i32*, i32** %15, align 8
  %186 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %184, i32* noundef %185)
  store %struct.set_family* %186, %struct.set_family** %11, align 8
  br label %187

187:                                              ; preds = %183
  %188 = load %struct.set_family*, %struct.set_family** %12, align 8
  %189 = getelementptr inbounds %struct.set_family, %struct.set_family* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32*, i32** %15, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32* %193, i32** %15, align 8
  br label %179, !llvm.loop !6

194:                                              ; preds = %179
  %195 = load %struct.sm_row_struct*, %struct.sm_row_struct** %21, align 8
  %196 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %195, i32 0, i32 3
  %197 = load %struct.sm_element_struct*, %struct.sm_element_struct** %196, align 8
  store %struct.sm_element_struct* %197, %struct.sm_element_struct** %22, align 8
  br label %198

198:                                              ; preds = %216, %194
  %199 = load %struct.sm_element_struct*, %struct.sm_element_struct** %22, align 8
  %200 = icmp ne %struct.sm_element_struct* %199, null
  br i1 %200, label %201, label %220

201:                                              ; preds = %198
  %202 = load %struct.set_family*, %struct.set_family** %11, align 8
  %203 = load %struct.set_family*, %struct.set_family** %6, align 8
  %204 = getelementptr inbounds %struct.set_family, %struct.set_family* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.set_family*, %struct.set_family** %6, align 8
  %207 = getelementptr inbounds %struct.set_family, %struct.set_family* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.sm_element_struct*, %struct.sm_element_struct** %22, align 8
  %210 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %208, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %205, i64 %213
  %215 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %202, i32* noundef %214)
  store %struct.set_family* %215, %struct.set_family** %11, align 8
  br label %216

216:                                              ; preds = %201
  %217 = load %struct.sm_element_struct*, %struct.sm_element_struct** %22, align 8
  %218 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %217, i32 0, i32 4
  %219 = load %struct.sm_element_struct*, %struct.sm_element_struct** %218, align 8
  store %struct.sm_element_struct* %219, %struct.sm_element_struct** %22, align 8
  br label %198, !llvm.loop !7

220:                                              ; preds = %198
  %221 = load %struct.set_family*, %struct.set_family** %12, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %221)
  %222 = load %struct.set_family*, %struct.set_family** %13, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %222)
  %223 = load %struct.set_family*, %struct.set_family** %14, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %223)
  %224 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %20, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %224)
  %225 = load %struct.sm_row_struct*, %struct.sm_row_struct** %21, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %225)
  %226 = load %struct.set_family*, %struct.set_family** %6, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %226)
  %227 = load i32, i32* @debug, align 4
  %228 = and i32 %227, -10273
  store i32 %228, i32* @debug, align 4
  %229 = load i32, i32* @skip_make_sparse, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %220
  %232 = load %struct.set_family*, %struct.set_family** %8, align 8
  %233 = icmp ne %struct.set_family* %232, null
  br i1 %233, label %234, label %239

234:                                              ; preds = %231
  %235 = load %struct.set_family*, %struct.set_family** %11, align 8
  %236 = load %struct.set_family*, %struct.set_family** %7, align 8
  %237 = load %struct.set_family*, %struct.set_family** %8, align 8
  %238 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @make_sparse to %struct.set_family* (%struct.set_family*, %struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %235, %struct.set_family* noundef %236, %struct.set_family* noundef %237)
  store %struct.set_family* %238, %struct.set_family** %11, align 8
  br label %239

239:                                              ; preds = %234, %231, %220
  %240 = load i32, i32* %23, align 4
  store i32 %240, i32* @debug, align 4
  %241 = load %struct.set_family*, %struct.set_family** %11, align 8
  ret %struct.set_family* %241
}

declare dso_local i64 @util_cpu_time(...) #1

declare dso_local %struct.set_family* @primes_consensus(...) #1

declare dso_local i32** @cube2list(...) #1

declare dso_local void @print_trace(...) #1

declare dso_local void @irred_split_cover(...) #1

declare dso_local %struct.sm_matrix_struct* @irred_derive_table(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32 @set_ord(...) #1

declare dso_local %struct.sm_row_struct* @sm_minimum_cover(...) #1

declare dso_local void @free(i8* noundef) #1

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local %struct.set_family* @sf_addset(...) #1

declare dso_local void @sf_free(...) #1

declare dso_local void @sm_free(...) #1

declare dso_local void @sm_row_free(...) #1

declare dso_local %struct.set_family* @make_sparse(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dump_irredundant(%struct.set_family* noundef %0, %struct.set_family* noundef %1, %struct.set_family* noundef %2, %struct.sm_matrix_struct* noundef %3) #0 {
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.sm_matrix_struct*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct.PLA_t*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.set_family* %0, %struct.set_family** %5, align 8
  store %struct.set_family* %1, %struct.set_family** %6, align 8
  store %struct.set_family* %2, %struct.set_family** %7, align 8
  store %struct.sm_matrix_struct* %3, %struct.sm_matrix_struct** %8, align 8
  %15 = load i8*, i8** @filename, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i8*, i8** @filename, align 8
  %19 = call i32 @strcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %4
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %22, %struct._IO_FILE** %10, align 8
  store %struct._IO_FILE* %22, %struct._IO_FILE** %9, align 8
  br label %58

23:                                               ; preds = %17
  %24 = load i8*, i8** @filename, align 8
  %25 = call i64 @strlen(i8* noundef %24) #4
  %26 = add i64 %25, 20
  %27 = mul i64 1, %26
  %28 = call i8* @malloc(i64 noundef %27)
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i8*, i8** @filename, align 8
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %29, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef %30) #5
  %32 = load i8*, i8** %14, align 8
  %33 = call noalias %struct._IO_FILE* @fopen(i8* noundef %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %33, %struct._IO_FILE** %10, align 8
  %34 = icmp eq %struct._IO_FILE* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* noundef %37)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %39, %struct._IO_FILE** %10, align 8
  br label %40

40:                                               ; preds = %35, %23
  %41 = load i8*, i8** %14, align 8
  %42 = load i8*, i8** @filename, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %41, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* noundef %42) #5
  %44 = load i8*, i8** %14, align 8
  %45 = call noalias %struct._IO_FILE* @fopen(i8* noundef %44, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %45, %struct._IO_FILE** %9, align 8
  %46 = icmp eq %struct._IO_FILE* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* noundef %49)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %51, %struct._IO_FILE** %9, align 8
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i8*, i8** %14, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %56)
  store i8* null, i8** %14, align 8
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %57, %21
  %59 = call %struct.PLA_t* (...) @new_PLA()
  store %struct.PLA_t* %59, %struct.PLA_t** %11, align 8
  %60 = load %struct.PLA_t*, %struct.PLA_t** %11, align 8
  %61 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @PLA_labels to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* noundef %60)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %63 = load %struct.PLA_t*, %struct.PLA_t** %11, align 8
  call void (%struct._IO_FILE*, %struct.PLA_t*, i32, ...) bitcast (void (...)* @fpr_header to void (%struct._IO_FILE*, %struct.PLA_t*, i32, ...)*)(%struct._IO_FILE* noundef %62, %struct.PLA_t* noundef %63, i32 noundef 1)
  %64 = load %struct.PLA_t*, %struct.PLA_t** %11, align 8
  call void (%struct.PLA_t*, ...) bitcast (void (...)* @free_PLA to void (%struct.PLA_t*, ...)*)(%struct.PLA_t* noundef %64)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %67 = load %struct.set_family*, %struct.set_family** %5, align 8
  %68 = getelementptr inbounds %struct.set_family, %struct.set_family* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %13, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load %struct.set_family*, %struct.set_family** %5, align 8
  %72 = getelementptr inbounds %struct.set_family, %struct.set_family* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.set_family*, %struct.set_family** %5, align 8
  %75 = getelementptr inbounds %struct.set_family, %struct.set_family* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %70, i64 %78
  store i32* %79, i32** %12, align 8
  br label %80

80:                                               ; preds = %89, %58
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = icmp ult i32* %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %86)
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %87)
  br label %89

89:                                               ; preds = %84
  %90 = load %struct.set_family*, %struct.set_family** %5, align 8
  %91 = getelementptr inbounds %struct.set_family, %struct.set_family* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %13, align 8
  br label %80, !llvm.loop !8

96:                                               ; preds = %80
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %97, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %99 = load %struct.set_family*, %struct.set_family** %6, align 8
  %100 = getelementptr inbounds %struct.set_family, %struct.set_family* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %13, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = load %struct.set_family*, %struct.set_family** %6, align 8
  %104 = getelementptr inbounds %struct.set_family, %struct.set_family* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.set_family*, %struct.set_family** %6, align 8
  %107 = getelementptr inbounds %struct.set_family, %struct.set_family* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %105, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %102, i64 %110
  store i32* %111, i32** %12, align 8
  br label %112

112:                                              ; preds = %121, %96
  %113 = load i32*, i32** %13, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = icmp ult i32* %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %118)
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %117, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %119)
  br label %121

121:                                              ; preds = %116
  %122 = load %struct.set_family*, %struct.set_family** %6, align 8
  %123 = getelementptr inbounds %struct.set_family, %struct.set_family* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %13, align 8
  br label %112, !llvm.loop !9

128:                                              ; preds = %112
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %129, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %131 = load %struct.set_family*, %struct.set_family** %7, align 8
  %132 = getelementptr inbounds %struct.set_family, %struct.set_family* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %13, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = load %struct.set_family*, %struct.set_family** %7, align 8
  %136 = getelementptr inbounds %struct.set_family, %struct.set_family* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.set_family*, %struct.set_family** %7, align 8
  %139 = getelementptr inbounds %struct.set_family, %struct.set_family* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %134, i64 %142
  store i32* %143, i32** %12, align 8
  br label %144

144:                                              ; preds = %153, %128
  %145 = load i32*, i32** %13, align 8
  %146 = load i32*, i32** %12, align 8
  %147 = icmp ult i32* %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = call i8* (i32*, ...) bitcast (i8* (...)* @pc1 to i8* (i32*, ...)*)(i32* noundef %150)
  %152 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %149, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* noundef %151)
  br label %153

153:                                              ; preds = %148
  %154 = load %struct.set_family*, %struct.set_family** %7, align 8
  %155 = getelementptr inbounds %struct.set_family, %struct.set_family* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %13, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %13, align 8
  br label %144, !llvm.loop !10

160:                                              ; preds = %144
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %163 = icmp ne %struct._IO_FILE* %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %166 = call i32 @fclose(%struct._IO_FILE* noundef %165)
  br label %167

167:                                              ; preds = %164, %160
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %169 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %8, align 8
  call void (%struct._IO_FILE*, %struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_write to void (%struct._IO_FILE*, %struct.sm_matrix_struct*, ...)*)(%struct._IO_FILE* noundef %168, %struct.sm_matrix_struct* noundef %169)
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %172 = icmp ne %struct._IO_FILE* %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %167
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %175 = call i32 @fclose(%struct._IO_FILE* noundef %174)
  br label %176

176:                                              ; preds = %173, %167
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #3

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local %struct.PLA_t* @new_PLA(...) #1

declare dso_local i32 @PLA_labels(...) #1

declare dso_local void @fpr_header(...) #1

declare dso_local void @free_PLA(...) #1

declare dso_local i8* @pc1(...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @sm_write(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
