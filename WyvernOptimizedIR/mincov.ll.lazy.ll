; ModuleID = './mincov.ll'
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
@str = private unnamed_addr constant [28 x i8] c"**** heuristic covering ...\00", align 1
@str.1 = private unnamed_addr constant [5 x i8] c"BEST\00", align 1
@str.2 = private unnamed_addr constant [8 x i8] c"bounded\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_row_struct* @sm_minimum_cover(%struct.sm_matrix_struct* noundef %0, i32* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.stats_struct, align 8
  %6 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call %struct.sm_row_struct* (...) @sm_row_alloc() #4
  br label %118

11:                                               ; preds = %4
  %12 = call i64 (...) @util_cpu_time() #4
  %13 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 8
  store i64 %12, i64* %13, align 8
  %14 = icmp sgt i32 %3, 0
  %15 = zext i1 %14 to i32
  %16 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 1
  store i32 %3, i32* %17, align 4
  %18 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 2
  store i32 -1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 5
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 4
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 6
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 7
  store i32 0, i32* %23, align 4
  %24 = icmp ne i32 %2, 0
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 9
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 10
  store i32 -1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 4
  br label %29

29:                                               ; preds = %31, %11
  %.04.in = phi %struct.sm_row_struct** [ %28, %11 ], [ %35, %31 ]
  %.02 = phi i32 [ 0, %11 ], [ %34, %31 ]
  %.04 = load %struct.sm_row_struct*, %struct.sm_row_struct** %.04.in, align 8
  %.not = icmp eq %struct.sm_row_struct* %.04, null
  br i1 %.not, label %36, label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.04, i64 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %.02, %33
  %35 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.04, i64 0, i32 5
  br label %29, !llvm.loop !4

36:                                               ; preds = %29
  %37 = sitofp i32 %.02 to double
  %38 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %39, %41
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %37, %43
  %45 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 7
  br label %46

46:                                               ; preds = %58, %36
  %.03.in = phi %struct.sm_col_struct** [ %45, %36 ], [ %60, %58 ]
  %.01 = phi i32 [ 1, %36 ], [ %59, %58 ]
  %.03 = load %struct.sm_col_struct*, %struct.sm_col_struct** %.03.in, align 8
  %.not5 = icmp eq %struct.sm_col_struct* %.03, null
  br i1 %.not5, label %61, label %47

47:                                               ; preds = %46
  %48 = icmp eq i32* %1, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  br label %56

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %1, i64 %53
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %50, %49
  %57 = phi i32 [ 1, %49 ], [ %55, %50 ]
  br label %58

58:                                               ; preds = %56
  %59 = add nsw i32 %.01, %57
  %60 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 5
  br label %46, !llvm.loop !6

61:                                               ; preds = %46
  %62 = call %struct.solution_struct* (...) @solution_alloc() #4
  %63 = call %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...) bitcast (%struct.sm_matrix_struct* (...)* @sm_dup to %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %0) #4
  %64 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %63, %struct.solution_struct* noundef %62, i32* noundef %1, i32 noundef 0, i32 noundef %.01, i32 noundef 0, %struct.stats_struct* noundef nonnull %5)
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %63) #4
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %62) #4
  %65 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 0
  %66 = load i32, i32* %65, align 8
  %.not6 = icmp eq i32 %66, 0
  br i1 %.not6, label %107, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 9
  %69 = load i32, i32* %68, align 8
  %.not8 = icmp eq i32 %69, 0
  br i1 %.not8, label %74, label %70

70:                                               ; preds = %67
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @str, i64 0, i64 0))
  %71 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 noundef %72) #4
  br label %74

74:                                               ; preds = %70, %67
  %75 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 9
  %78 = load i32, i32* %77, align 8
  %79 = fmul double %44, 1.000000e+02
  %80 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 noundef %76, i32 noundef %78, i32 noundef %.02, double noundef %79) #4
  %81 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %64, i64 0, i32 0
  %82 = load %struct.sm_row_struct*, %struct.sm_row_struct** %81, align 8
  %83 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %82, i64 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef %84) #4
  %86 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %64, i64 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 noundef %87) #4
  %89 = call i64 (...) @util_cpu_time() #4
  %90 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %89, %91
  %93 = call i8* @util_print_time(i64 noundef %92) #4
  %94 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* noundef %93) #4
  %95 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 noundef %96) #4
  %98 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 noundef %99) #4
  %101 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 noundef %102) #4
  %104 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %5, i64 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 noundef %105) #4
  br label %107

107:                                              ; preds = %74, %61
  %108 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %64, i64 0, i32 0
  %109 = load %struct.sm_row_struct*, %struct.sm_row_struct** %108, align 8
  %110 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %109) #4
  %111 = call i32 @verify_cover(%struct.sm_matrix_struct* noundef %0, %struct.sm_row_struct* noundef %110)
  %.not7 = icmp eq i32 %111, 0
  br i1 %.not7, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %113, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([83 x i8], [83 x i8]* @.str.11, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0)) #5
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %116 = call i32 @fflush(%struct._IO_FILE* noundef %115) #4
  call void @abort() #6
  unreachable

117:                                              ; preds = %107
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %64) #4
  br label %118

118:                                              ; preds = %117, %9
  %.0 = phi %struct.sm_row_struct* [ %10, %9 ], [ %110, %117 ]
  ret %struct.sm_row_struct* %.0
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
  %8 = alloca %struct.sm_matrix_struct*, align 8
  %9 = alloca %struct.sm_matrix_struct*, align 8
  %10 = alloca %struct.solution_struct*, align 8
  %11 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, %5
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 2
  store i32 %5, i32* %18, align 8
  br label %19

19:                                               ; preds = %17, %7
  %20 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 0
  %21 = load i32, i32* %20, align 8
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, %5
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  call void @select_essential(%struct.sm_matrix_struct* noundef %0, %struct.solution_struct* noundef %1, i32* noundef %2, i32 noundef %4)
  %28 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %1, i64 0, i32 1
  %29 = load i32, i32* %28, align 8
  %.not3 = icmp slt i32 %29, %4
  br i1 %.not3, label %31, label %30

30:                                               ; preds = %26
  br label %210

31:                                               ; preds = %26
  %32 = icmp eq i32* %2, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = call i32 (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, %struct.solution_struct**, ...) bitcast (i32 (...)* @gimpel_reduce to i32 (%struct.sm_matrix_struct*, %struct.solution_struct*, i32*, i32, i32, i32, %struct.stats_struct*, %struct.solution_struct**, ...)*)(%struct.sm_matrix_struct* noundef %0, %struct.solution_struct* noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, %struct.stats_struct* noundef %6, %struct.solution_struct** noundef nonnull %10) #4
  %.not13 = icmp eq i32 %34, 0
  br i1 %.not13, label %37, label %35

35:                                               ; preds = %33
  %36 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  br label %210

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37, %31
  %39 = call %struct.solution_struct* (%struct.sm_matrix_struct*, i32*, ...) bitcast (%struct.solution_struct* (...)* @sm_maximal_independent_set to %struct.solution_struct* (%struct.sm_matrix_struct*, i32*, ...)*)(%struct.sm_matrix_struct* noundef %0, i32* noundef %2) #4
  %40 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %1, i64 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %39, i64 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %41, %43
  %45 = icmp sgt i32 %44, %3
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %1, i64 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %39, i64 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %48, %50
  br label %53

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i32 [ %51, %46 ], [ %3, %52 ]
  %55 = call i32 @select_column(%struct.sm_matrix_struct* noundef %0, i32* noundef %2, %struct.solution_struct* noundef %39)
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %39) #4
  %56 = icmp eq i32 %5, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %54, %59
  %61 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 10
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %53
  br i1 %27, label %63, label %85

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 4
  %65 = load i32, i32* %64, align 8
  %.not12 = icmp eq i32 %65, 0
  %66 = select i1 %.not12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 noundef %5, i8* noundef %66) #4
  %68 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %1, i64 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %73, %75
  %77 = add nsw i32 %75, %4
  %78 = add nsw i32 %54, %75
  %79 = call i64 (...) @util_cpu_time() #4
  %80 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %79, %81
  %83 = call i8* @util_print_time(i64 noundef %82) #4
  %84 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 noundef %69, i32 noundef %71, i32 noundef %76, i32 noundef %77, i32 noundef %78, i8* noundef %83) #4
  br label %85

85:                                               ; preds = %63, %62
  %.not4 = icmp slt i32 %54, %4
  br i1 %.not4, label %89, label %86

86:                                               ; preds = %85
  br i1 %27, label %87, label %88

87:                                               ; preds = %86
  %puts11 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %87, %86
  store %struct.solution_struct* null, %struct.solution_struct** %10, align 8
  br label %208

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %89
  %94 = call %struct.solution_struct* (%struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_dup to %struct.solution_struct* (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %1) #4
  store %struct.solution_struct* %94, %struct.solution_struct** %10, align 8
  br i1 %27, label %95, label %96

95:                                               ; preds = %93
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %95, %93
  %97 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 0
  %98 = load i32, i32* %97, align 8
  %.not10 = icmp eq i32 %98, 0
  br i1 %.not10, label %116, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  %105 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %104, i64 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %106, %108
  %110 = call i64 (...) @util_cpu_time() #4
  %111 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 8
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %110, %112
  %114 = call i8* @util_print_time(i64 noundef %113) #4
  %115 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i32 noundef %109, i32 noundef %5, i8* noundef %114) #4
  br label %116

116:                                              ; preds = %103, %99, %96
  br label %207

117:                                              ; preds = %89
  %118 = call i32 (%struct.sm_matrix_struct*, %struct.sm_matrix_struct**, %struct.sm_matrix_struct**, ...) bitcast (i32 (...)* @sm_block_partition to i32 (%struct.sm_matrix_struct*, %struct.sm_matrix_struct**, %struct.sm_matrix_struct**, ...)*)(%struct.sm_matrix_struct* noundef %0, %struct.sm_matrix_struct** noundef nonnull %8, %struct.sm_matrix_struct** noundef nonnull %9) #4
  %.not5 = icmp eq i32 %118, 0
  br i1 %.not5, label %175, label %119

119:                                              ; preds = %117
  %120 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %8, align 8
  %121 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %120, i64 0, i32 9
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %124 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %123, i64 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %8, align 8
  %129 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  store %struct.sm_matrix_struct* %129, %struct.sm_matrix_struct** %8, align 8
  store %struct.sm_matrix_struct* %128, %struct.sm_matrix_struct** %9, align 8
  br label %130

130:                                              ; preds = %127, %119
  br i1 %27, label %131, label %139

131:                                              ; preds = %130
  %132 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %8, align 8
  %133 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %132, i64 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %136 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %135, i64 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 noundef %134, i32 noundef %137) #4
  br label %139

139:                                              ; preds = %131, %130
  %140 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = call %struct.solution_struct* (...) @solution_alloc() #4
  %144 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %8, align 8
  %148 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %1, i64 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %4, %149
  %151 = add nsw i32 %5, 1
  %152 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %147, %struct.solution_struct* noundef %143, i32* noundef %2, i32 noundef 0, i32 noundef %150, i32 noundef %151, %struct.stats_struct* noundef %6)
  %153 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %153, align 8
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %143) #4
  %156 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %8, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %156) #4
  %157 = icmp eq %struct.solution_struct* %152, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %139
  br label %173

159:                                              ; preds = %139
  %160 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %152, i64 0, i32 0
  %161 = load %struct.sm_row_struct*, %struct.sm_row_struct** %160, align 8
  %162 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %161, i64 0, i32 3
  br label %163

163:                                              ; preds = %167, %159
  %.01.in = phi %struct.sm_element_struct** [ %162, %159 ], [ %168, %167 ]
  %.01 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.01.in, align 8
  %.not9 = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %.not9, label %169, label %164

164:                                              ; preds = %163
  %165 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %166 = load i32, i32* %165, align 4
  call void (%struct.solution_struct*, i32*, i32, ...) bitcast (void (...)* @solution_add to void (%struct.solution_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %1, i32* noundef %2, i32 noundef %166) #4
  br label %167

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 4
  br label %163, !llvm.loop !7

169:                                              ; preds = %163
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef nonnull %152) #4
  %170 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  %171 = add nsw i32 %5, 1
  %172 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %170, %struct.solution_struct* noundef %1, i32* noundef %2, i32 noundef %54, i32 noundef %4, i32 noundef %171, %struct.stats_struct* noundef %6)
  br label %173

173:                                              ; preds = %169, %158
  %storemerge = phi %struct.solution_struct* [ %172, %169 ], [ null, %158 ]
  store %struct.solution_struct* %storemerge, %struct.solution_struct** %10, align 8
  %174 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %9, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %174) #4
  br label %206

175:                                              ; preds = %117
  br i1 %27, label %176, label %178

176:                                              ; preds = %175
  %177 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 noundef %55) #4
  br label %178

178:                                              ; preds = %176, %175
  %179 = call %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...) bitcast (%struct.sm_matrix_struct* (...)* @sm_dup to %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %0) #4
  %180 = call %struct.solution_struct* (%struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_dup to %struct.solution_struct* (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %1) #4
  call void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...) bitcast (void (...)* @solution_accept to void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %180, %struct.sm_matrix_struct* noundef %179, i32* noundef %2, i32 noundef %55) #4
  %181 = add nsw i32 %5, 1
  %182 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %179, %struct.solution_struct* noundef %180, i32* noundef %2, i32 noundef %54, i32 noundef %4, i32 noundef %181, %struct.stats_struct* noundef %6)
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %180) #4
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %179) #4
  %.not6 = icmp eq %struct.solution_struct* %182, null
  br i1 %.not6, label %190, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %182, i64 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %185, %4
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %182, i64 0, i32 1
  %189 = load i32, i32* %188, align 8
  br label %190

190:                                              ; preds = %187, %183, %178
  %.02 = phi i32 [ %189, %187 ], [ %4, %183 ], [ %4, %178 ]
  %191 = getelementptr inbounds %struct.stats_struct, %struct.stats_struct* %6, i64 0, i32 9
  %192 = load i32, i32* %191, align 8
  %.not7 = icmp eq i32 %192, 0
  br i1 %.not7, label %194, label %193

193:                                              ; preds = %190
  br label %210

194:                                              ; preds = %190
  %.not8 = icmp eq %struct.solution_struct* %182, null
  br i1 %.not8, label %200, label %195

195:                                              ; preds = %194
  %196 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %182, i64 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, %54
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %210

200:                                              ; preds = %195, %194
  %201 = call %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...) bitcast (%struct.sm_matrix_struct* (...)* @sm_dup to %struct.sm_matrix_struct* (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %0) #4
  %202 = call %struct.solution_struct* (%struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_dup to %struct.solution_struct* (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %1) #4
  call void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...) bitcast (void (...)* @solution_reject to void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %202, %struct.sm_matrix_struct* noundef %201, i32* noundef %2, i32 noundef %55) #4
  %203 = add nsw i32 %5, 1
  %204 = call %struct.solution_struct* @sm_mincov(%struct.sm_matrix_struct* noundef %201, %struct.solution_struct* noundef %202, i32* noundef %2, i32 noundef %54, i32 noundef %.02, i32 noundef %203, %struct.stats_struct* noundef %6)
  call void (%struct.solution_struct*, ...) bitcast (void (...)* @solution_free to void (%struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %202) #4
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %201) #4
  %205 = call %struct.solution_struct* (%struct.solution_struct*, %struct.solution_struct*, ...) bitcast (%struct.solution_struct* (...)* @solution_choose_best to %struct.solution_struct* (%struct.solution_struct*, %struct.solution_struct*, ...)*)(%struct.solution_struct* noundef %182, %struct.solution_struct* noundef %204) #4
  store %struct.solution_struct* %205, %struct.solution_struct** %10, align 8
  br label %206

206:                                              ; preds = %200, %173
  br label %207

207:                                              ; preds = %206, %116
  br label %208

208:                                              ; preds = %207, %88
  %209 = load %struct.solution_struct*, %struct.solution_struct** %10, align 8
  br label %210

210:                                              ; preds = %208, %199, %193, %35, %30
  %.0 = phi %struct.solution_struct* [ null, %30 ], [ %36, %35 ], [ %209, %208 ], [ %182, %193 ], [ %182, %199 ]
  ret %struct.solution_struct* %.0
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
define internal i32 @select_column(%struct.sm_matrix_struct* nocapture noundef readonly %0, i32* noundef readonly %1, %struct.solution_struct* noundef readonly %2) #0 {
  %4 = call %struct.sm_row_struct* (...) @sm_row_alloc() #4
  %.not = icmp eq %struct.solution_struct* %2, null
  br i1 %.not, label %43, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %2, i64 0, i32 0
  %7 = load %struct.sm_row_struct*, %struct.sm_row_struct** %6, align 8
  %8 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %7, i64 0, i32 3
  br label %9

9:                                                ; preds = %40, %5
  %.07.in = phi %struct.sm_element_struct** [ %8, %5 ], [ %41, %40 ]
  %.07 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.07.in, align 8
  %.not12 = icmp eq %struct.sm_element_struct* %.07, null
  br i1 %.not12, label %42, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.07, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.07, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 0
  %22 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %21, align 8
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.07, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %22, i64 %25
  %27 = load %struct.sm_row_struct*, %struct.sm_row_struct** %26, align 8
  br label %29

28:                                               ; preds = %14, %10
  br label %29

29:                                               ; preds = %28, %20
  %30 = phi %struct.sm_row_struct* [ %27, %20 ], [ null, %28 ]
  %31 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %30, i64 0, i32 3
  br label %32

32:                                               ; preds = %37, %29
  %.05.in = phi %struct.sm_element_struct** [ %31, %29 ], [ %38, %37 ]
  %.05 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.05.in, align 8
  %.not13 = icmp eq %struct.sm_element_struct* %.05, null
  br i1 %.not13, label %39, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.05, i64 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %4, i32 noundef %35) #4
  br label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.05, i64 0, i32 4
  br label %32, !llvm.loop !8

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.07, i64 0, i32 4
  br label %9, !llvm.loop !9

42:                                               ; preds = %9
  br label %53

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 7
  br label %45

45:                                               ; preds = %50, %43
  %.04.in = phi %struct.sm_col_struct** [ %44, %43 ], [ %51, %50 ]
  %.04 = load %struct.sm_col_struct*, %struct.sm_col_struct** %.04.in, align 8
  %.not9 = icmp eq %struct.sm_col_struct* %.04, null
  br i1 %.not9, label %52, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.04, i64 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %4, i32 noundef %48) #4
  br label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.04, i64 0, i32 5
  br label %45, !llvm.loop !10

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %42
  %54 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %4, i64 0, i32 3
  br label %55

55:                                               ; preds = %126, %53
  %.16.in = phi %struct.sm_element_struct** [ %54, %53 ], [ %127, %126 ]
  %.01 = phi double [ -1.000000e+00, %53 ], [ %.12, %126 ]
  %.0 = phi i32 [ -1, %53 ], [ %.1, %126 ]
  %.16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.16.in, align 8
  %.not10 = icmp eq %struct.sm_element_struct* %.16, null
  br i1 %.not10, label %128, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.16, i64 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.16, i64 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %68 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %67, align 8
  %69 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.16, i64 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %68, i64 %71
  %73 = load %struct.sm_col_struct*, %struct.sm_col_struct** %72, align 8
  br label %75

74:                                               ; preds = %60, %56
  br label %75

75:                                               ; preds = %74, %66
  %76 = phi %struct.sm_col_struct* [ %73, %66 ], [ null, %74 ]
  %77 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %76, i64 0, i32 3
  br label %78

78:                                               ; preds = %100, %75
  %.18.in = phi %struct.sm_element_struct** [ %77, %75 ], [ %107, %100 ]
  %.03 = phi double [ 0.000000e+00, %75 ], [ %106, %100 ]
  %.18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.18.in, align 8
  %.not11 = icmp eq %struct.sm_element_struct* %.18, null
  br i1 %.not11, label %108, label %79

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.18, i64 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.18, i64 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 0
  %91 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %90, align 8
  %92 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.18, i64 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %91, i64 %94
  %96 = load %struct.sm_row_struct*, %struct.sm_row_struct** %95, align 8
  br label %98

97:                                               ; preds = %83, %79
  br label %98

98:                                               ; preds = %97, %89
  %99 = phi %struct.sm_row_struct* [ %96, %89 ], [ null, %97 ]
  br label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %99, i64 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sitofp i32 %102 to double
  %104 = fadd double %103, -1.000000e+00
  %105 = fdiv double 1.000000e+00, %104
  %106 = fadd double %.03, %105
  %107 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.18, i64 0, i32 2
  br label %78, !llvm.loop !11

108:                                              ; preds = %78
  %109 = icmp eq i32* %1, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %108
  br label %117

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %76, i64 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %1, i64 %114
  %116 = load i32, i32* %115, align 4
  br label %117

117:                                              ; preds = %111, %110
  %118 = phi i32 [ 1, %110 ], [ %116, %111 ]
  %119 = sitofp i32 %118 to double
  %120 = fdiv double %.03, %119
  %121 = fcmp ogt double %120, %.01
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %76, i64 0, i32 0
  %124 = load i32, i32* %123, align 8
  br label %125

125:                                              ; preds = %122, %117
  %.12 = phi double [ %120, %122 ], [ %.01, %117 ]
  %.1 = phi i32 [ %124, %122 ], [ %.0, %117 ]
  br label %126

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.16, i64 0, i32 4
  br label %55, !llvm.loop !12

128:                                              ; preds = %55
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %4) #4
  ret i32 %.0
}

declare dso_local %struct.sm_element_struct* @sm_row_insert(...) #1

declare dso_local void @sm_row_free(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @select_essential(%struct.sm_matrix_struct* noundef %0, %struct.solution_struct* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %45, %4
  %6 = call i32 (%struct.sm_matrix_struct*, i32*, ...) bitcast (i32 (...)* @sm_col_dominance to i32 (%struct.sm_matrix_struct*, i32*, ...)*)(%struct.sm_matrix_struct* noundef %0, i32* noundef %2) #4
  %7 = call %struct.sm_row_struct* (...) @sm_row_alloc() #4
  %8 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %21, %5
  %.0.in = phi %struct.sm_row_struct** [ %8, %5 ], [ %22, %21 ]
  %.0 = load %struct.sm_row_struct*, %struct.sm_row_struct** %.0.in, align 8
  %.not = icmp eq %struct.sm_row_struct* %.0, null
  br i1 %.not, label %23, label %10

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.0, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.0, i64 0, i32 3
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %15, align 8
  %17 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %7, i32 noundef %18) #4
  br label %20

20:                                               ; preds = %14, %10
  br label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.0, i64 0, i32 5
  br label %9, !llvm.loop !13

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %7, i64 0, i32 3
  br label %25

25:                                               ; preds = %33, %23
  %.01.in = phi %struct.sm_element_struct** [ %24, %23 ], [ %34, %33 ]
  %.01 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.01.in, align 8
  %.not3 = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %.not3, label %35, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %28 = load i32, i32* %27, align 4
  call void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...) bitcast (void (...)* @solution_accept to void (%struct.solution_struct*, %struct.sm_matrix_struct*, i32*, i32, ...)*)(%struct.solution_struct* noundef %1, %struct.sm_matrix_struct* noundef %0, i32* noundef %2, i32 noundef %28) #4
  %29 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %1, i64 0, i32 1
  %30 = load i32, i32* %29, align 8
  %.not4 = icmp slt i32 %30, %3
  br i1 %.not4, label %32, label %31

31:                                               ; preds = %26
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %7) #4
  br label %47

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 4
  br label %25, !llvm.loop !14

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %7, i64 0, i32 1
  %37 = load i32, i32* %36, align 4
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %7) #4
  %38 = call i32 (%struct.sm_matrix_struct*, ...) bitcast (i32 (...)* @sm_row_dominance to i32 (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %0) #4
  br label %39

39:                                               ; preds = %35
  %40 = icmp sgt i32 %6, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = icmp sgt i32 %38, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = icmp sgt i32 %37, 0
  br label %45

45:                                               ; preds = %43, %41, %39
  %46 = phi i1 [ true, %41 ], [ true, %39 ], [ %44, %43 ]
  br i1 %46, label %5, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %45
  br label %47

47:                                               ; preds = %.loopexit, %31
  ret void
}

declare dso_local i32 @sm_col_dominance(...) #1

declare dso_local i32 @sm_row_dominance(...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @verify_cover(%struct.sm_matrix_struct* nocapture noundef readonly %0, %struct.sm_row_struct* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 4
  br label %4

4:                                                ; preds = %9, %2
  %.01.in = phi %struct.sm_row_struct** [ %3, %2 ], [ %10, %9 ]
  %.01 = load %struct.sm_row_struct*, %struct.sm_row_struct** %.01.in, align 8
  %.not = icmp eq %struct.sm_row_struct* %.01, null
  br i1 %.not, label %11, label %5

5:                                                ; preds = %4
  %6 = call i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...) bitcast (i32 (...)* @sm_row_intersects to i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef nonnull %.01, %struct.sm_row_struct* noundef %1) #4
  %.not2 = icmp eq i32 %6, 0
  br i1 %.not2, label %7, label %8

7:                                                ; preds = %5
  br label %12

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.01, i64 0, i32 5
  br label %4, !llvm.loop !16

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11, %7
  %.0 = phi i32 [ 0, %7 ], [ 1, %11 ]
  ret i32 %.0
}

declare dso_local i32 @sm_row_intersects(...) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { noreturn nounwind }

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
