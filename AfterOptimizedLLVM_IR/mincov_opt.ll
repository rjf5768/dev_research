; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/mincov.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/mincov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }
%struct.stats_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.solution_struct = type { %struct.sm_row_struct*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"**** heuristic covering ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"lower bound = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"matrix     = %d by %d with %d elements (%4.3f%%)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"cover size = %d elements\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"cover cost = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"time       = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"components = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"gimpel     = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"nodes      = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"max_depth  = %d\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"Fatal error: file %s, line %d\0A%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [83 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/mincov.c\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"mincov: internal error -- cover verification failed\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"ABSMIN[%2d]%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c" %3dx%3d sel=%3d bnd=%3d lb=%3d %12s \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"bounded\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"BEST\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"new 'best' solution %d at level %d (time is %s)\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"comp %d %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"pick=%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_row_struct* @sm_minimum_cover(%struct.sm_matrix_struct* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.sm_row_struct*, align 8
  %6 = alloca %struct.sm_matrix_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stats_struct, align 8
  %11 = alloca %struct.solution_struct*, align 8
  %12 = alloca %struct.solution_struct*, align 8
  %13 = alloca %struct.sm_row_struct*, align 8
  %14 = alloca %struct.sm_row_struct*, align 8
  %15 = alloca %struct.sm_col_struct*, align 8
  %16 = alloca %struct.sm_matrix_struct*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %21 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call %struct.sm_row_struct* (...) @sm_row_alloc()
  store %struct.sm_row_struct* %25, %struct.sm_row_struct** %5, align 8
  br label %179

26:                                               ; preds = %4
  %27 = call i64 (...) @util_cpu_time()
  %28 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 8
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 2
  store i32 -1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 3
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 5
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 4
  store i32 0, i32* %38, align 8
  %39 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 6
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 7
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 9
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 10
  store i32 -1, i32* %45, align 4
  store i32 0, i32* %17, align 4
  %46 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %47 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %46, i32 0, i32 4
  %48 = load %struct.sm_row_struct*, %struct.sm_row_struct** %47, align 8
  store %struct.sm_row_struct* %48, %struct.sm_row_struct** %13, align 8
  br label %49

49:                                               ; preds = %58, %26
  %50 = load %struct.sm_row_struct*, %struct.sm_row_struct** %13, align 8
  %51 = icmp ne %struct.sm_row_struct* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.sm_row_struct*, %struct.sm_row_struct** %13, align 8
  %54 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %52
  %59 = load %struct.sm_row_struct*, %struct.sm_row_struct** %13, align 8
  %60 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %59, i32 0, i32 5
  %61 = load %struct.sm_row_struct*, %struct.sm_row_struct** %60, align 8
  store %struct.sm_row_struct* %61, %struct.sm_row_struct** %13, align 8
  br label %49, !llvm.loop !4

62:                                               ; preds = %49
  %63 = load i32, i32* %17, align 4
  %64 = sitofp i32 %63 to double
  %65 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %66 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %69 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %67, %70
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %64, %72
  store double %73, double* %19, align 8
  store i32 1, i32* %18, align 4
  %74 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %75 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %74, i32 0, i32 7
  %76 = load %struct.sm_col_struct*, %struct.sm_col_struct** %75, align 8
  store %struct.sm_col_struct* %76, %struct.sm_col_struct** %15, align 8
  br label %77

77:                                               ; preds = %96, %62
  %78 = load %struct.sm_col_struct*, %struct.sm_col_struct** %15, align 8
  %79 = icmp ne %struct.sm_col_struct* %78, null
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load i32*, i32** %7, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %92

84:                                               ; preds = %80
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.sm_col_struct*, %struct.sm_col_struct** %15, align 8
  %87 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  br label %92

92:                                               ; preds = %84, %83
  %93 = phi i32 [ 1, %83 ], [ %91, %84 ]
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %92
  %97 = load %struct.sm_col_struct*, %struct.sm_col_struct** %15, align 8
  %98 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %97, i32 0, i32 5
  %99 = load %struct.sm_col_struct*, %struct.sm_col_struct** %98, align 8
  store %struct.sm_col_struct* %99, %struct.sm_col_struct** %15, align 8
  br label %77, !llvm.loop !6

100:                                              ; preds = %77
  %101 = call %struct.solution_struct* (...) @solution_alloc()
  store %struct.solution_struct* %101, %struct.solution_struct** %12, align 8
  %102 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %103 = call %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...) bitcast (%struct.sm_matrix_struct* (...)* @sm_dup to %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %102)
  store %struct.sm_matrix_struct* %103, %struct.sm_matrix_struct** %16, align 8
  %104 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %16, align 8
  %105 = load %struct.solution_struct*, %struct.solution_struct** %12, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %18, align 4
  %108 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %104, %struct.solution_struct* noundef %105, i32* noundef %106, i32 noundef 0, i32 noundef %107, i32 noundef 0, %struct.stats_struct* noundef %10)
  store %struct.solution_struct* %108, %struct.solution_struct** %11, align 8
  %109 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %16, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %109)
  %110 = load %struct.solution_struct*, %struct.solution_struct** %12, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %110)
  %111 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %162

114:                                              ; preds = %100
  %115 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %120 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef %121)
  br label %123

123:                                              ; preds = %118, %114
  %124 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %125 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %128 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = load double, double* %19, align 8
  %132 = fmul double %131, 1.000000e+02
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 noundef %126, i32 noundef %129, i32 noundef %130, double noundef %132)
  %134 = load %struct.solution_struct*, %struct.solution_struct** %11, align 8
  %135 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %134, i32 0, i32 0
  %136 = load %struct.sm_row_struct*, %struct.sm_row_struct** %135, align 8
  %137 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef %138)
  %140 = load %struct.solution_struct*, %struct.solution_struct** %11, align 8
  %141 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %142)
  %144 = call i64 (...) @util_cpu_time()
  %145 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %144, %146
  %148 = call i8* @util_print_time(i64 noundef %147)
  %149 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %148)
  %150 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 noundef %151)
  %153 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 noundef %154)
  %156 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 noundef %157)
  %159 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %10, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 noundef %160)
  br label %162

162:                                              ; preds = %123, %100
  %163 = load %struct.solution_struct*, %struct.solution_struct** %11, align 8
  %164 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %163, i32 0, i32 0
  %165 = load %struct.sm_row_struct*, %struct.sm_row_struct** %164, align 8
  %166 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %165)
  store %struct.sm_row_struct* %166, %struct.sm_row_struct** %14, align 8
  %167 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %168 = load %struct.sm_row_struct*, %struct.sm_row_struct** %14, align 8
  %169 = call i32 @verify_cover(%struct.sm_matrix_struct* noundef %167, %struct.sm_row_struct* noundef %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %162
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %172, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.11, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0))
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %175 = call i32 @fflush(%struct._IO_FILE* noundef %174)
  call void @abort() #3
  unreachable

176:                                              ; preds = %162
  %177 = load %struct.solution_struct*, %struct.solution_struct** %11, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %177)
  %178 = load %struct.sm_row_struct*, %struct.sm_row_struct** %14, align 8
  store %struct.sm_row_struct* %178, %struct.sm_row_struct** %5, align 8
  br label %179

179:                                              ; preds = %176, %24
  %180 = load %struct.sm_row_struct*, %struct.sm_row_struct** %5, align 8
  ret %struct.sm_row_struct* %180
}

declare dso_local %struct.sm_row_struct* @sm_row_alloc(...) #1

declare dso_local i64 @util_cpu_time(...) #1

declare dso_local %struct.solution_struct* @solution_alloc(...) #1

declare dso_local %struct.sm_matrix_struct* @sm_dup(...) #1

declare dso_local void @sm_free(...) #1

declare dso_local void @solution_free(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @util_print_time(i64 noundef) #1

declare dso_local %struct.sm_row_struct* @sm_row_dup(...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %0, %struct.solution_struct* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, %struct.stats_struct* noundef %6) #0 {
  %8 = alloca %struct.solution_struct*, align 8
  %9 = alloca %struct.sm_matrix_struct*, align 8
  %10 = alloca %struct.solution_struct*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.stats_struct*, align 8
  %16 = alloca %struct.sm_matrix_struct*, align 8
  %17 = alloca %struct.sm_matrix_struct*, align 8
  %18 = alloca %struct.sm_matrix_struct*, align 8
  %19 = alloca %struct.sm_matrix_struct*, align 8
  %20 = alloca %struct.sm_element_struct*, align 8
  %21 = alloca %struct.solution_struct*, align 8
  %22 = alloca %struct.solution_struct*, align 8
  %23 = alloca %struct.solution_struct*, align 8
  %24 = alloca %struct.solution_struct*, align 8
  %25 = alloca %struct.solution_struct*, align 8
  %26 = alloca %struct.solution_struct*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %9, align 8
  store %struct.solution_struct* %1, %struct.solution_struct** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.stats_struct* %6, %struct.stats_struct** %15, align 8
  %30 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %31 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %36 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %7
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %42 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %7
  %44 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %45 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %51 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %49, %52
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi i1 [ false, %43 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %29, align 4
  %57 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %58 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %13, align 4
  call void @select_essential(%struct.sm_matrix_struct* noundef %57, %struct.solution_struct* noundef %58, i32* noundef %59, i32 noundef %60)
  %61 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %62 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  store %struct.solution_struct* null, %struct.solution_struct** %8, align 8
  br label %387

67:                                               ; preds = %54
  %68 = load i32*, i32** %11, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %72 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %78 = call i32 (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, %struct.solution_struct**, ...) bitcast (i32 (...)* @gimpel_reduce to i32 (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, %struct.solution_struct**, ...)*)(%struct.sm_matrix_struct* noundef %71, %struct.solution_struct* noundef %72, i32* noundef %73, i32 noundef %74, i32 noundef %75, i32 noundef %76, %struct.stats_struct* noundef %77, %struct.solution_struct** noundef %23)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load %struct.solution_struct*, %struct.solution_struct** %23, align 8
  store %struct.solution_struct* %81, %struct.solution_struct** %8, align 8
  br label %387

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %67
  %84 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call %struct.solution_struct* (%struct.sm_matrix_struct*, i32*, ...) bitcast (%struct.solution_struct* (...)* @sm_maximal_independent_set to %struct.solution_struct* (%struct.sm_matrix_struct*, i32*, ...)*)(%struct.sm_matrix_struct* noundef %84, i32* noundef %85)
  store %struct.solution_struct* %86, %struct.solution_struct** %26, align 8
  %87 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %88 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.solution_struct*, %struct.solution_struct** %26, align 8
  %91 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %89, %92
  %94 = load i32, i32* %12, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %83
  %97 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %98 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.solution_struct*, %struct.solution_struct** %26, align 8
  %101 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %99, %102
  br label %106

104:                                              ; preds = %83
  %105 = load i32, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %96
  %107 = phi i32 [ %103, %96 ], [ %105, %104 ]
  store i32 %107, i32* %28, align 4
  %108 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.solution_struct*, %struct.solution_struct** %26, align 8
  %111 = call i32 @select_column(%struct.sm_matrix_struct* noundef %108, i32* noundef %109, %struct.solution_struct* noundef %110)
  store i32 %111, i32* %27, align 4
  %112 = load %struct.solution_struct*, %struct.solution_struct** %26, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %112)
  %113 = load i32, i32* %14, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %106
  %116 = load i32, i32* %28, align 4
  %117 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %118 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %116, %119
  %121 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %122 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %121, i32 0, i32 10
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %115, %106
  %124 = load i32, i32* %29, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %165

126:                                              ; preds = %123
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %129 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)
  %134 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 noundef %127, i8* noundef %133)
  %135 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %136 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %139 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %138, i32 0, i32 9
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %142 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %145 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = load i32, i32* %13, align 4
  %149 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %150 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %148, %151
  %153 = load i32, i32* %28, align 4
  %154 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %155 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %153, %156
  %158 = call i64 (...) @util_cpu_time()
  %159 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %160 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %159, i32 0, i32 8
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %158, %161
  %163 = call i8* @util_print_time(i64 noundef %162)
  %164 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 noundef %137, i32 noundef %140, i32 noundef %147, i32 noundef %152, i32 noundef %157, i8* noundef %163)
  br label %165

165:                                              ; preds = %126, %123
  %166 = load i32, i32* %28, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp sge i32 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load i32, i32* %29, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %169
  store %struct.solution_struct* null, %struct.solution_struct** %23, align 8
  br label %385

175:                                              ; preds = %165
  %176 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %177 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %214

180:                                              ; preds = %175
  %181 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %182 = call %struct.solution_struct* (%struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_dup to %struct.solution_struct* (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %181)
  store %struct.solution_struct* %182, %struct.solution_struct** %23, align 8
  %183 = load i32, i32* %29, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %180
  %188 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %189 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %187
  %193 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %194 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %213

197:                                              ; preds = %192
  %198 = load %struct.solution_struct*, %struct.solution_struct** %23, align 8
  %199 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %202 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %200, %203
  %205 = load i32, i32* %14, align 4
  %206 = call i64 (...) @util_cpu_time()
  %207 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %208 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %207, i32 0, i32 8
  %209 = load i64, i64* %208, align 8
  %210 = sub nsw i64 %206, %209
  %211 = call i8* @util_print_time(i64 noundef %210)
  %212 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i32 noundef %204, i32 noundef %205, i8* noundef %211)
  br label %213

213:                                              ; preds = %197, %192, %187
  br label %384

214:                                              ; preds = %175
  %215 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %216 = call i32 (%struct.sm_matrix_struct*, %struct.sm_matrix_struct**, %struct.sm_matrix_struct**, ...) bitcast (i32 (...)* @sm_block_partition to i32 (%struct.sm_matrix_struct*, %struct.sm_matrix_struct**, %struct.sm_matrix_struct**, ...)*)(%struct.sm_matrix_struct* noundef %215, %struct.sm_matrix_struct** noundef %18, %struct.sm_matrix_struct** noundef %19)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %304

218:                                              ; preds = %214
  %219 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %18, align 8
  %220 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %19, align 8
  %223 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 8
  %225 = icmp sgt i32 %221, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %218
  %227 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %18, align 8
  store %struct.sm_matrix_struct* %227, %struct.sm_matrix_struct** %16, align 8
  %228 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %19, align 8
  store %struct.sm_matrix_struct* %228, %struct.sm_matrix_struct** %18, align 8
  %229 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %16, align 8
  store %struct.sm_matrix_struct* %229, %struct.sm_matrix_struct** %19, align 8
  br label %230

230:                                              ; preds = %226, %218
  %231 = load i32, i32* %29, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %230
  %234 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %18, align 8
  %235 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %19, align 8
  %238 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 8
  %240 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 noundef %236, i32 noundef %239)
  br label %241

241:                                              ; preds = %233, %230
  %242 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %243 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  %246 = call %struct.solution_struct* (...) @solution_alloc()
  store %struct.solution_struct* %246, %struct.solution_struct** %21, align 8
  %247 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %248 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  %251 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %18, align 8
  %252 = load %struct.solution_struct*, %struct.solution_struct** %21, align 8
  %253 = load i32*, i32** %11, align 8
  %254 = load i32, i32* %13, align 4
  %255 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %256 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = sub nsw i32 %254, %257
  %259 = load i32, i32* %14, align 4
  %260 = add nsw i32 %259, 1
  %261 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %262 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %251, %struct.solution_struct* noundef %252, i32* noundef %253, i32 noundef 0, i32 noundef %258, i32 noundef %260, %struct.stats_struct* noundef %261)
  store %struct.solution_struct* %262, %struct.solution_struct** %24, align 8
  %263 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %264 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %264, align 8
  %267 = load %struct.solution_struct*, %struct.solution_struct** %21, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %267)
  %268 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %18, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %268)
  %269 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  %270 = icmp eq %struct.solution_struct* %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %241
  store %struct.solution_struct* null, %struct.solution_struct** %23, align 8
  br label %302

272:                                              ; preds = %241
  %273 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  %274 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %273, i32 0, i32 0
  %275 = load %struct.sm_row_struct*, %struct.sm_row_struct** %274, align 8
  %276 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %275, i32 0, i32 3
  %277 = load %struct.sm_element_struct*, %struct.sm_element_struct** %276, align 8
  store %struct.sm_element_struct* %277, %struct.sm_element_struct** %20, align 8
  br label %278

278:                                              ; preds = %287, %272
  %279 = load %struct.sm_element_struct*, %struct.sm_element_struct** %20, align 8
  %280 = icmp ne %struct.sm_element_struct* %279, null
  br i1 %280, label %281, label %291

281:                                              ; preds = %278
  %282 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %283 = load i32*, i32** %11, align 8
  %284 = load %struct.sm_element_struct*, %struct.sm_element_struct** %20, align 8
  %285 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  call void (%struct.solution_struct*, i32*, i32, ...) bitcast (void (...)* @solution_add to void (%struct.solution_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %282, i32* noundef %283, i32 noundef %286)
  br label %287

287:                                              ; preds = %281
  %288 = load %struct.sm_element_struct*, %struct.sm_element_struct** %20, align 8
  %289 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %288, i32 0, i32 4
  %290 = load %struct.sm_element_struct*, %struct.sm_element_struct** %289, align 8
  store %struct.sm_element_struct* %290, %struct.sm_element_struct** %20, align 8
  br label %278, !llvm.loop !7

291:                                              ; preds = %278
  %292 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %292)
  %293 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %19, align 8
  %294 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %295 = load i32*, i32** %11, align 8
  %296 = load i32, i32* %28, align 4
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, 1
  %300 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %301 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %293, %struct.solution_struct* noundef %294, i32* noundef %295, i32 noundef %296, i32 noundef %297, i32 noundef %299, %struct.stats_struct* noundef %300)
  store %struct.solution_struct* %301, %struct.solution_struct** %23, align 8
  br label %302

302:                                              ; preds = %291, %271
  %303 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %19, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %303)
  br label %383

304:                                              ; preds = %214
  %305 = load i32, i32* %29, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load i32, i32* %27, align 4
  %309 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 noundef %308)
  br label %310

310:                                              ; preds = %307, %304
  %311 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %312 = call %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...) bitcast (%struct.sm_matrix_struct* (...)* @sm_dup to %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %311)
  store %struct.sm_matrix_struct* %312, %struct.sm_matrix_struct** %16, align 8
  %313 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %314 = call %struct.solution_struct* (%struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_dup to %struct.solution_struct* (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %313)
  store %struct.solution_struct* %314, %struct.solution_struct** %21, align 8
  %315 = load %struct.solution_struct*, %struct.solution_struct** %21, align 8
  %316 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %16, align 8
  %317 = load i32*, i32** %11, align 8
  %318 = load i32, i32* %27, align 4
  call void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...) bitcast (void (...)* @solution_accept to void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %315, %struct.sm_matrix_struct* noundef %316, i32* noundef %317, i32 noundef %318)
  %319 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %16, align 8
  %320 = load %struct.solution_struct*, %struct.solution_struct** %21, align 8
  %321 = load i32*, i32** %11, align 8
  %322 = load i32, i32* %28, align 4
  %323 = load i32, i32* %13, align 4
  %324 = load i32, i32* %14, align 4
  %325 = add nsw i32 %324, 1
  %326 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %327 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %319, %struct.solution_struct* noundef %320, i32* noundef %321, i32 noundef %322, i32 noundef %323, i32 noundef %325, %struct.stats_struct* noundef %326)
  store %struct.solution_struct* %327, %struct.solution_struct** %24, align 8
  %328 = load %struct.solution_struct*, %struct.solution_struct** %21, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %328)
  %329 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %16, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %329)
  %330 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  %331 = icmp ne %struct.solution_struct* %330, null
  br i1 %331, label %332, label %342

332:                                              ; preds = %310
  %333 = load i32, i32* %13, align 4
  %334 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  %335 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = icmp sgt i32 %333, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %332
  %339 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  %340 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  store i32 %341, i32* %13, align 4
  br label %342

342:                                              ; preds = %338, %332, %310
  %343 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %344 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %343, i32 0, i32 9
  %345 = load i32, i32* %344, align 8
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %342
  %348 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  store %struct.solution_struct* %348, %struct.solution_struct** %8, align 8
  br label %387

349:                                              ; preds = %342
  %350 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  %351 = icmp ne %struct.solution_struct* %350, null
  br i1 %351, label %352, label %360

352:                                              ; preds = %349
  %353 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  %354 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %28, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %358, label %360

358:                                              ; preds = %352
  %359 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  store %struct.solution_struct* %359, %struct.solution_struct** %8, align 8
  br label %387

360:                                              ; preds = %352, %349
  %361 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %362 = call %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...) bitcast (%struct.sm_matrix_struct* (...)* @sm_dup to %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %361)
  store %struct.sm_matrix_struct* %362, %struct.sm_matrix_struct** %17, align 8
  %363 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %364 = call %struct.solution_struct* (%struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_dup to %struct.solution_struct* (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %363)
  store %struct.solution_struct* %364, %struct.solution_struct** %22, align 8
  %365 = load %struct.solution_struct*, %struct.solution_struct** %22, align 8
  %366 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %17, align 8
  %367 = load i32*, i32** %11, align 8
  %368 = load i32, i32* %27, align 4
  call void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...) bitcast (void (...)* @solution_reject to void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %365, %struct.sm_matrix_struct* noundef %366, i32* noundef %367, i32 noundef %368)
  %369 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %17, align 8
  %370 = load %struct.solution_struct*, %struct.solution_struct** %22, align 8
  %371 = load i32*, i32** %11, align 8
  %372 = load i32, i32* %28, align 4
  %373 = load i32, i32* %13, align 4
  %374 = load i32, i32* %14, align 4
  %375 = add nsw i32 %374, 1
  %376 = load %struct.stats_struct*, %struct.stats_struct** %15, align 8
  %377 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %369, %struct.solution_struct* noundef %370, i32* noundef %371, i32 noundef %372, i32 noundef %373, i32 noundef %375, %struct.stats_struct* noundef %376)
  store %struct.solution_struct* %377, %struct.solution_struct** %25, align 8
  %378 = load %struct.solution_struct*, %struct.solution_struct** %22, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %378)
  %379 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %17, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %379)
  %380 = load %struct.solution_struct*, %struct.solution_struct** %24, align 8
  %381 = load %struct.solution_struct*, %struct.solution_struct** %25, align 8
  %382 = call %struct.solution_struct* (%struct.solution_struct*, %struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_choose_best to %struct.solution_struct* (%struct.solution_struct*, %struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %380, %struct.solution_struct* noundef %381)
  store %struct.solution_struct* %382, %struct.solution_struct** %23, align 8
  br label %383

383:                                              ; preds = %360, %302
  br label %384

384:                                              ; preds = %383, %213
  br label %385

385:                                              ; preds = %384, %174
  %386 = load %struct.solution_struct*, %struct.solution_struct** %23, align 8
  store %struct.solution_struct* %386, %struct.solution_struct** %8, align 8
  br label %387

387:                                              ; preds = %385, %358, %347, %80, %66
  %388 = load %struct.solution_struct*, %struct.solution_struct** %8, align 8
  ret %struct.solution_struct* %388
}

declare dso_local i32 @gimpel_reduce(...) #1

declare dso_local %struct.solution_struct* @sm_maximal_independent_set(...) #1

declare dso_local %struct.solution_struct* @solution_dup(...) #1

declare dso_local i32 @sm_block_partition(...) #1

declare dso_local void @solution_add(...) #1

declare dso_local void @solution_accept(...) #1

declare dso_local void @solution_reject(...) #1

declare dso_local %struct.solution_struct* @solution_choose_best(...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @select_column(%struct.sm_matrix_struct* noundef %0, i32* noundef %1, %struct.solution_struct* noundef %2) #0 {
  %4 = alloca %struct.sm_matrix_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.solution_struct*, align 8
  %7 = alloca %struct.sm_col_struct*, align 8
  %8 = alloca %struct.sm_row_struct*, align 8
  %9 = alloca %struct.sm_row_struct*, align 8
  %10 = alloca %struct.sm_element_struct*, align 8
  %11 = alloca %struct.sm_element_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.solution_struct* %2, %struct.solution_struct** %6, align 8
  %15 = call %struct.sm_row_struct* (...) @sm_row_alloc()
  store %struct.sm_row_struct* %15, %struct.sm_row_struct** %9, align 8
  %16 = load %struct.solution_struct*, %struct.solution_struct** %6, align 8
  %17 = icmp ne %struct.solution_struct* %16, null
  br i1 %17, label %18, label %75

18:                                               ; preds = %3
  %19 = load %struct.solution_struct*, %struct.solution_struct** %6, align 8
  %20 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %19, i32 0, i32 0
  %21 = load %struct.sm_row_struct*, %struct.sm_row_struct** %20, align 8
  %22 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %21, i32 0, i32 3
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %22, align 8
  store %struct.sm_element_struct* %23, %struct.sm_element_struct** %10, align 8
  br label %24

24:                                               ; preds = %70, %18
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %26 = icmp ne %struct.sm_element_struct* %25, null
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %29 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %4, align 8
  %37 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %4, align 8
  %42 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %41, i32 0, i32 0
  %43 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %42, align 8
  %44 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %45 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %43, i64 %47
  %49 = load %struct.sm_row_struct*, %struct.sm_row_struct** %48, align 8
  br label %51

50:                                               ; preds = %32, %27
  br label %51

51:                                               ; preds = %50, %40
  %52 = phi %struct.sm_row_struct* [ %49, %40 ], [ null, %50 ]
  store %struct.sm_row_struct* %52, %struct.sm_row_struct** %8, align 8
  %53 = load %struct.sm_row_struct*, %struct.sm_row_struct** %8, align 8
  %54 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %53, i32 0, i32 3
  %55 = load %struct.sm_element_struct*, %struct.sm_element_struct** %54, align 8
  store %struct.sm_element_struct* %55, %struct.sm_element_struct** %11, align 8
  br label %56

56:                                               ; preds = %65, %51
  %57 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %58 = icmp ne %struct.sm_element_struct* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.sm_row_struct*, %struct.sm_row_struct** %9, align 8
  %61 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %62 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %60, i32 noundef %63)
  br label %65

65:                                               ; preds = %59
  %66 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %67 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %66, i32 0, i32 4
  %68 = load %struct.sm_element_struct*, %struct.sm_element_struct** %67, align 8
  store %struct.sm_element_struct* %68, %struct.sm_element_struct** %11, align 8
  br label %56, !llvm.loop !8

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %72 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %71, i32 0, i32 4
  %73 = load %struct.sm_element_struct*, %struct.sm_element_struct** %72, align 8
  store %struct.sm_element_struct* %73, %struct.sm_element_struct** %10, align 8
  br label %24, !llvm.loop !9

74:                                               ; preds = %24
  br label %93

75:                                               ; preds = %3
  %76 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %4, align 8
  %77 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %76, i32 0, i32 7
  %78 = load %struct.sm_col_struct*, %struct.sm_col_struct** %77, align 8
  store %struct.sm_col_struct* %78, %struct.sm_col_struct** %7, align 8
  br label %79

79:                                               ; preds = %88, %75
  %80 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %81 = icmp ne %struct.sm_col_struct* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load %struct.sm_row_struct*, %struct.sm_row_struct** %9, align 8
  %84 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %85 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %83, i32 noundef %86)
  br label %88

88:                                               ; preds = %82
  %89 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %90 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %89, i32 0, i32 5
  %91 = load %struct.sm_col_struct*, %struct.sm_col_struct** %90, align 8
  store %struct.sm_col_struct* %91, %struct.sm_col_struct** %7, align 8
  br label %79, !llvm.loop !10

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %74
  store i32 -1, i32* %14, align 4
  store double -1.000000e+00, double* %13, align 8
  %94 = load %struct.sm_row_struct*, %struct.sm_row_struct** %9, align 8
  %95 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %94, i32 0, i32 3
  %96 = load %struct.sm_element_struct*, %struct.sm_element_struct** %95, align 8
  store %struct.sm_element_struct* %96, %struct.sm_element_struct** %11, align 8
  br label %97

97:                                               ; preds = %196, %93
  %98 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %99 = icmp ne %struct.sm_element_struct* %98, null
  br i1 %99, label %100, label %200

100:                                              ; preds = %97
  %101 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %102 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %100
  %106 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %107 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %4, align 8
  %110 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %105
  %114 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %4, align 8
  %115 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %114, i32 0, i32 2
  %116 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %115, align 8
  %117 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %118 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %116, i64 %120
  %122 = load %struct.sm_col_struct*, %struct.sm_col_struct** %121, align 8
  br label %124

123:                                              ; preds = %105, %100
  br label %124

124:                                              ; preds = %123, %113
  %125 = phi %struct.sm_col_struct* [ %122, %113 ], [ null, %123 ]
  store %struct.sm_col_struct* %125, %struct.sm_col_struct** %7, align 8
  store double 0.000000e+00, double* %12, align 8
  %126 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %127 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %126, i32 0, i32 3
  %128 = load %struct.sm_element_struct*, %struct.sm_element_struct** %127, align 8
  store %struct.sm_element_struct* %128, %struct.sm_element_struct** %10, align 8
  br label %129

129:                                              ; preds = %166, %124
  %130 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %131 = icmp ne %struct.sm_element_struct* %130, null
  br i1 %131, label %132, label %170

132:                                              ; preds = %129
  %133 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %134 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %132
  %138 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %139 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %4, align 8
  %142 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %137
  %146 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %4, align 8
  %147 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %146, i32 0, i32 0
  %148 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %147, align 8
  %149 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %150 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %148, i64 %152
  %154 = load %struct.sm_row_struct*, %struct.sm_row_struct** %153, align 8
  br label %156

155:                                              ; preds = %137, %132
  br label %156

156:                                              ; preds = %155, %145
  %157 = phi %struct.sm_row_struct* [ %154, %145 ], [ null, %155 ]
  store %struct.sm_row_struct* %157, %struct.sm_row_struct** %8, align 8
  %158 = load %struct.sm_row_struct*, %struct.sm_row_struct** %8, align 8
  %159 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sitofp i32 %160 to double
  %162 = fsub double %161, 1.000000e+00
  %163 = fdiv double 1.000000e+00, %162
  %164 = load double, double* %12, align 8
  %165 = fadd double %164, %163
  store double %165, double* %12, align 8
  br label %166

166:                                              ; preds = %156
  %167 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %168 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %167, i32 0, i32 2
  %169 = load %struct.sm_element_struct*, %struct.sm_element_struct** %168, align 8
  store %struct.sm_element_struct* %169, %struct.sm_element_struct** %10, align 8
  br label %129, !llvm.loop !11

170:                                              ; preds = %129
  %171 = load double, double* %12, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %183

175:                                              ; preds = %170
  %176 = load i32*, i32** %5, align 8
  %177 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %178 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %176, i64 %180
  %182 = load i32, i32* %181, align 4
  br label %183

183:                                              ; preds = %175, %174
  %184 = phi i32 [ 1, %174 ], [ %182, %175 ]
  %185 = sitofp i32 %184 to double
  %186 = fdiv double %171, %185
  store double %186, double* %12, align 8
  %187 = load double, double* %12, align 8
  %188 = load double, double* %13, align 8
  %189 = fcmp ogt double %187, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %183
  %191 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %192 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %14, align 4
  %194 = load double, double* %12, align 8
  store double %194, double* %13, align 8
  br label %195

195:                                              ; preds = %190, %183
  br label %196

196:                                              ; preds = %195
  %197 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %198 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %197, i32 0, i32 4
  %199 = load %struct.sm_element_struct*, %struct.sm_element_struct** %198, align 8
  store %struct.sm_element_struct* %199, %struct.sm_element_struct** %11, align 8
  br label %97, !llvm.loop !12

200:                                              ; preds = %97
  %201 = load %struct.sm_row_struct*, %struct.sm_row_struct** %9, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %201)
  %202 = load i32, i32* %14, align 4
  ret i32 %202
}

declare dso_local %struct.sm_element_struct* @sm_row_insert(...) #1

declare dso_local void @sm_row_free(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @select_essential(%struct.sm_matrix_struct* noundef %0, %struct.solution_struct* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.sm_matrix_struct*, align 8
  %6 = alloca %struct.solution_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sm_element_struct*, align 8
  %10 = alloca %struct.sm_row_struct*, align 8
  %11 = alloca %struct.sm_row_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %5, align 8
  store %struct.solution_struct* %1, %struct.solution_struct** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %15

15:                                               ; preds = %86, %4
  %16 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 (%struct.sm_matrix_struct*, i32*, ...) bitcast (i32 (...)* @sm_col_dominance to i32 (%struct.sm_matrix_struct*, i32*, ...)*)(%struct.sm_matrix_struct* noundef %16, i32* noundef %17)
  store i32 %18, i32* %12, align 4
  %19 = call %struct.sm_row_struct* (...) @sm_row_alloc()
  store %struct.sm_row_struct* %19, %struct.sm_row_struct** %11, align 8
  %20 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %21 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %20, i32 0, i32 4
  %22 = load %struct.sm_row_struct*, %struct.sm_row_struct** %21, align 8
  store %struct.sm_row_struct* %22, %struct.sm_row_struct** %10, align 8
  br label %23

23:                                               ; preds = %40, %15
  %24 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  %25 = icmp ne %struct.sm_row_struct* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  %28 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.sm_row_struct*, %struct.sm_row_struct** %11, align 8
  %33 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  %34 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %33, i32 0, i32 3
  %35 = load %struct.sm_element_struct*, %struct.sm_element_struct** %34, align 8
  %36 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %32, i32 noundef %37)
  br label %39

39:                                               ; preds = %31, %26
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  %42 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %41, i32 0, i32 5
  %43 = load %struct.sm_row_struct*, %struct.sm_row_struct** %42, align 8
  store %struct.sm_row_struct* %43, %struct.sm_row_struct** %10, align 8
  br label %23, !llvm.loop !13

44:                                               ; preds = %23
  %45 = load %struct.sm_row_struct*, %struct.sm_row_struct** %11, align 8
  %46 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %45, i32 0, i32 3
  %47 = load %struct.sm_element_struct*, %struct.sm_element_struct** %46, align 8
  store %struct.sm_element_struct* %47, %struct.sm_element_struct** %9, align 8
  br label %48

48:                                               ; preds = %66, %44
  %49 = load %struct.sm_element_struct*, %struct.sm_element_struct** %9, align 8
  %50 = icmp ne %struct.sm_element_struct* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load %struct.solution_struct*, %struct.solution_struct** %6, align 8
  %53 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.sm_element_struct*, %struct.sm_element_struct** %9, align 8
  %56 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  call void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...) bitcast (void (...)* @solution_accept to void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %52, %struct.sm_matrix_struct* noundef %53, i32* noundef %54, i32 noundef %57)
  %58 = load %struct.solution_struct*, %struct.solution_struct** %6, align 8
  %59 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load %struct.sm_row_struct*, %struct.sm_row_struct** %11, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %64)
  br label %88

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.sm_element_struct*, %struct.sm_element_struct** %9, align 8
  %68 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %67, i32 0, i32 4
  %69 = load %struct.sm_element_struct*, %struct.sm_element_struct** %68, align 8
  store %struct.sm_element_struct* %69, %struct.sm_element_struct** %9, align 8
  br label %48, !llvm.loop !14

70:                                               ; preds = %48
  %71 = load %struct.sm_row_struct*, %struct.sm_row_struct** %11, align 8
  %72 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  %74 = load %struct.sm_row_struct*, %struct.sm_row_struct** %11, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %74)
  %75 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %76 = call i32 (%struct.sm_matrix_struct*, ...) bitcast (i32 (...)* @sm_row_dominance to i32 (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %13, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = icmp sgt i32 %84, 0
  br label %86

86:                                               ; preds = %83, %80, %77
  %87 = phi i1 [ true, %80 ], [ true, %77 ], [ %85, %83 ]
  br i1 %87, label %15, label %88, !llvm.loop !15

88:                                               ; preds = %63, %86
  ret void
}

declare dso_local i32 @sm_col_dominance(...) #1

declare dso_local i32 @sm_row_dominance(...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @verify_cover(%struct.sm_matrix_struct* noundef %0, %struct.sm_row_struct* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm_matrix_struct*, align 8
  %5 = alloca %struct.sm_row_struct*, align 8
  %6 = alloca %struct.sm_row_struct*, align 8
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %4, align 8
  store %struct.sm_row_struct* %1, %struct.sm_row_struct** %5, align 8
  %7 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %4, align 8
  %8 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %7, i32 0, i32 4
  %9 = load %struct.sm_row_struct*, %struct.sm_row_struct** %8, align 8
  store %struct.sm_row_struct* %9, %struct.sm_row_struct** %6, align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load %struct.sm_row_struct*, %struct.sm_row_struct** %6, align 8
  %12 = icmp ne %struct.sm_row_struct* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.sm_row_struct*, %struct.sm_row_struct** %6, align 8
  %15 = load %struct.sm_row_struct*, %struct.sm_row_struct** %5, align 8
  %16 = call i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...) bitcast (i32 (...)* @sm_row_intersects to i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %14, %struct.sm_row_struct* noundef %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %25

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.sm_row_struct*, %struct.sm_row_struct** %6, align 8
  %22 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %21, i32 0, i32 5
  %23 = load %struct.sm_row_struct*, %struct.sm_row_struct** %22, align 8
  store %struct.sm_row_struct* %23, %struct.sm_row_struct** %6, align 8
  br label %10, !llvm.loop !16

24:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @sm_row_intersects(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

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
