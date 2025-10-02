; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/em3d/make_graph.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/em3d/make_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_t = type { double*, %struct.node_t*, %struct.node_t**, double**, double*, i32, i32 }
%struct.table_t = type { [1 x %struct.node_t**], [1 x %struct.node_t**] }
%struct.graph_t = type { [1 x %struct.node_t*], [1 x %struct.node_t*] }

@.str = private unnamed_addr constant [19 x i8] c"Assertion failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Uncaught malloc error\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Error! on dest %d @ %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error! no to_nodes filed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Help! no from count (from_count=%d) \0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Help!!\0A\00", align 1
@n_nodes = dso_local global i32 0, align 4
@d_nodes = dso_local global i32 0, align 4
@local_p = dso_local global i32 0, align 4
@NumMisses = dso_local global i32 0, align 4
@NumNodes = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"making tables \0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"making neighbors\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"updating from and coeffs\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"filling from fields\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"localizing coeffs, from_nodes\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"cleanup for return now\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Clearing NumMisses\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Returning\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node_t** @make_table(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.node_t**, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = call noalias i8* @malloc(i64 noundef %8) #4
  %10 = bitcast i8* %9 to %struct.node_t**
  store %struct.node_t** %10, %struct.node_t*** %5, align 8
  %11 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %12 = icmp ne %struct.node_t** %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef -1) #5
  unreachable

15:                                               ; preds = %2
  %16 = load %struct.node_t**, %struct.node_t*** %5, align 8
  ret %struct.node_t** %16
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_table(%struct.node_t** noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.node_t**, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.node_t*, align 8
  %10 = alloca %struct.node_t*, align 8
  %11 = alloca i32, align 4
  store %struct.node_t** %0, %struct.node_t*** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call noalias i8* @malloc(i64 noundef 48) #4
  %13 = bitcast i8* %12 to %struct.node_t*
  store %struct.node_t* %13, %struct.node_t** %10, align 8
  %14 = load %struct.node_t*, %struct.node_t** %10, align 8
  %15 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %16 = getelementptr inbounds %struct.node_t*, %struct.node_t** %15, i64 0
  store %struct.node_t* %14, %struct.node_t** %16, align 8
  %17 = call double @gen_uniform_double()
  %18 = load double*, double** %6, align 8
  store double %17, double* %18, align 8
  %19 = load double*, double** %6, align 8
  %20 = getelementptr inbounds double, double* %19, i32 1
  store double* %20, double** %6, align 8
  %21 = load %struct.node_t*, %struct.node_t** %10, align 8
  %22 = getelementptr inbounds %struct.node_t, %struct.node_t* %21, i32 0, i32 0
  store double* %19, double** %22, align 8
  %23 = load %struct.node_t*, %struct.node_t** %10, align 8
  %24 = getelementptr inbounds %struct.node_t, %struct.node_t* %23, i32 0, i32 5
  store i32 0, i32* %24, align 8
  store i32 1, i32* %11, align 4
  br label %25

25:                                               ; preds = %49, %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = call noalias i8* @malloc(i64 noundef 48) #4
  %31 = bitcast i8* %30 to %struct.node_t*
  store %struct.node_t* %31, %struct.node_t** %9, align 8
  %32 = call double @gen_uniform_double()
  %33 = load double*, double** %6, align 8
  store double %32, double* %33, align 8
  %34 = load double*, double** %6, align 8
  %35 = getelementptr inbounds double, double* %34, i32 1
  store double* %35, double** %6, align 8
  %36 = load %struct.node_t*, %struct.node_t** %9, align 8
  %37 = getelementptr inbounds %struct.node_t, %struct.node_t* %36, i32 0, i32 0
  store double* %34, double** %37, align 8
  %38 = load %struct.node_t*, %struct.node_t** %9, align 8
  %39 = getelementptr inbounds %struct.node_t, %struct.node_t* %38, i32 0, i32 5
  store i32 0, i32* %39, align 8
  %40 = load %struct.node_t*, %struct.node_t** %9, align 8
  %41 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.node_t*, %struct.node_t** %41, i64 %43
  store %struct.node_t* %40, %struct.node_t** %44, align 8
  %45 = load %struct.node_t*, %struct.node_t** %9, align 8
  %46 = load %struct.node_t*, %struct.node_t** %10, align 8
  %47 = getelementptr inbounds %struct.node_t, %struct.node_t* %46, i32 0, i32 1
  store %struct.node_t* %45, %struct.node_t** %47, align 8
  %48 = load %struct.node_t*, %struct.node_t** %9, align 8
  store %struct.node_t* %48, %struct.node_t** %10, align 8
  br label %49

49:                                               ; preds = %29
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %25, !llvm.loop !4

52:                                               ; preds = %25
  %53 = load %struct.node_t*, %struct.node_t** %9, align 8
  %54 = getelementptr inbounds %struct.node_t, %struct.node_t* %53, i32 0, i32 1
  store %struct.node_t* null, %struct.node_t** %54, align 8
  ret void
}

declare dso_local double @gen_uniform_double() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_neighbors(%struct.node_t* noundef %0, %struct.node_t*** noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.node_t*, align 8
  %8 = alloca %struct.node_t***, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.node_t*, align 8
  %14 = alloca %struct.node_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.node_t**, align 8
  %19 = alloca i32, align 4
  store %struct.node_t* %0, %struct.node_t** %7, align 8
  store %struct.node_t*** %1, %struct.node_t**** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load %struct.node_t*, %struct.node_t** %7, align 8
  store %struct.node_t* %20, %struct.node_t** %13, align 8
  br label %21

21:                                               ; preds = %127, %6
  %22 = load %struct.node_t*, %struct.node_t** %13, align 8
  %23 = icmp ne %struct.node_t* %22, null
  br i1 %23, label %24, label %131

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = call noalias i8* @malloc(i64 noundef %27) #4
  %29 = bitcast i8* %28 to %struct.node_t**
  %30 = load %struct.node_t*, %struct.node_t** %13, align 8
  %31 = getelementptr inbounds %struct.node_t, %struct.node_t* %30, i32 0, i32 2
  store %struct.node_t** %29, %struct.node_t*** %31, align 8
  %32 = load %struct.node_t*, %struct.node_t** %13, align 8
  %33 = getelementptr inbounds %struct.node_t, %struct.node_t* %32, i32 0, i32 2
  %34 = load %struct.node_t**, %struct.node_t*** %33, align 8
  %35 = icmp ne %struct.node_t** %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %24
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 noundef 0) #5
  unreachable

38:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %123, %38
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %126

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %97, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @gen_number(i32 noundef %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @check_percent(i32 noundef %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %17, align 4
  br label %59

52:                                               ; preds = %44
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @gen_signed_number(i32 noundef 1)
  %56 = mul nsw i32 4, %55
  %57 = add nsw i32 %54, %56
  %58 = srem i32 %57, 1
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %52, %50
  %60 = load %struct.node_t***, %struct.node_t**** %8, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.node_t**, %struct.node_t*** %60, i64 %62
  %64 = load %struct.node_t**, %struct.node_t*** %63, align 8
  store %struct.node_t** %64, %struct.node_t*** %18, align 8
  %65 = load %struct.node_t**, %struct.node_t*** %18, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.node_t*, %struct.node_t** %65, i64 %67
  %69 = load %struct.node_t*, %struct.node_t** %68, align 8
  store %struct.node_t* %69, %struct.node_t** %14, align 8
  %70 = load %struct.node_t*, %struct.node_t** %14, align 8
  %71 = icmp ne %struct.node_t* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef %73, i32 noundef %74)
  call void @exit(i32 noundef 1) #5
  unreachable

76:                                               ; preds = %59
  store i32 0, i32* %16, align 4
  br label %77

77:                                               ; preds = %93, %76
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load %struct.node_t*, %struct.node_t** %14, align 8
  %83 = load %struct.node_t*, %struct.node_t** %13, align 8
  %84 = getelementptr inbounds %struct.node_t, %struct.node_t* %83, i32 0, i32 2
  %85 = load %struct.node_t**, %struct.node_t*** %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.node_t*, %struct.node_t** %85, i64 %87
  %89 = load %struct.node_t*, %struct.node_t** %88, align 8
  %90 = icmp eq %struct.node_t* %82, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %96

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %77, !llvm.loop !6

96:                                               ; preds = %91, %77
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %44, label %101, !llvm.loop !7

101:                                              ; preds = %97
  %102 = load %struct.node_t*, %struct.node_t** %13, align 8
  %103 = icmp ne %struct.node_t* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.node_t*, %struct.node_t** %13, align 8
  %106 = getelementptr inbounds %struct.node_t, %struct.node_t* %105, i32 0, i32 2
  %107 = load %struct.node_t**, %struct.node_t*** %106, align 8
  %108 = icmp ne %struct.node_t** %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %104, %101
  %110 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

111:                                              ; preds = %104
  %112 = load %struct.node_t*, %struct.node_t** %14, align 8
  %113 = load %struct.node_t*, %struct.node_t** %13, align 8
  %114 = getelementptr inbounds %struct.node_t, %struct.node_t* %113, i32 0, i32 2
  %115 = load %struct.node_t**, %struct.node_t*** %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.node_t*, %struct.node_t** %115, i64 %117
  store %struct.node_t* %112, %struct.node_t** %118, align 8
  %119 = load %struct.node_t*, %struct.node_t** %14, align 8
  %120 = getelementptr inbounds %struct.node_t, %struct.node_t* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %39, !llvm.loop !8

126:                                              ; preds = %39
  br label %127

127:                                              ; preds = %126
  %128 = load %struct.node_t*, %struct.node_t** %13, align 8
  %129 = getelementptr inbounds %struct.node_t, %struct.node_t* %128, i32 0, i32 1
  %130 = load %struct.node_t*, %struct.node_t** %129, align 8
  store %struct.node_t* %130, %struct.node_t** %13, align 8
  br label %21, !llvm.loop !9

131:                                              ; preds = %21
  ret void
}

declare dso_local i32 @gen_number(i32 noundef) #2

declare dso_local i32 @check_percent(i32 noundef) #2

declare dso_local i32 @gen_signed_number(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @update_from_coeffs(%struct.node_t* noundef %0) #0 {
  %2 = alloca %struct.node_t*, align 8
  %3 = alloca %struct.node_t*, align 8
  %4 = alloca i32, align 4
  store %struct.node_t* %0, %struct.node_t** %2, align 8
  %5 = load %struct.node_t*, %struct.node_t** %2, align 8
  store %struct.node_t* %5, %struct.node_t** %3, align 8
  br label %6

6:                                                ; preds = %46, %1
  %7 = load %struct.node_t*, %struct.node_t** %3, align 8
  %8 = icmp ne %struct.node_t* %7, null
  br i1 %8, label %9, label %50

9:                                                ; preds = %6
  %10 = load %struct.node_t*, %struct.node_t** %3, align 8
  %11 = getelementptr inbounds %struct.node_t, %struct.node_t* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 noundef %16)
  %18 = call noalias i8* @malloc(i64 noundef 160) #4
  %19 = bitcast i8* %18 to double**
  %20 = load %struct.node_t*, %struct.node_t** %3, align 8
  %21 = getelementptr inbounds %struct.node_t, %struct.node_t* %20, i32 0, i32 3
  store double** %19, double*** %21, align 8
  %22 = call noalias i8* @malloc(i64 noundef 160) #4
  %23 = bitcast i8* %22 to double*
  %24 = load %struct.node_t*, %struct.node_t** %3, align 8
  %25 = getelementptr inbounds %struct.node_t, %struct.node_t* %24, i32 0, i32 4
  store double* %23, double** %25, align 8
  %26 = load %struct.node_t*, %struct.node_t** %3, align 8
  %27 = getelementptr inbounds %struct.node_t, %struct.node_t* %26, i32 0, i32 6
  store i32 0, i32* %27, align 4
  br label %45

28:                                               ; preds = %9
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = call noalias i8* @malloc(i64 noundef %31) #4
  %33 = bitcast i8* %32 to double**
  %34 = load %struct.node_t*, %struct.node_t** %3, align 8
  %35 = getelementptr inbounds %struct.node_t, %struct.node_t* %34, i32 0, i32 3
  store double** %33, double*** %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = call noalias i8* @malloc(i64 noundef %38) #4
  %40 = bitcast i8* %39 to double*
  %41 = load %struct.node_t*, %struct.node_t** %3, align 8
  %42 = getelementptr inbounds %struct.node_t, %struct.node_t* %41, i32 0, i32 4
  store double* %40, double** %42, align 8
  %43 = load %struct.node_t*, %struct.node_t** %3, align 8
  %44 = getelementptr inbounds %struct.node_t, %struct.node_t* %43, i32 0, i32 6
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %28, %15
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.node_t*, %struct.node_t** %3, align 8
  %48 = getelementptr inbounds %struct.node_t, %struct.node_t* %47, i32 0, i32 1
  %49 = load %struct.node_t*, %struct.node_t** %48, align 8
  store %struct.node_t* %49, %struct.node_t** %3, align 8
  br label %6, !llvm.loop !10

50:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_from_fields(%struct.node_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.node_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.node_t*, align 8
  %10 = alloca double**, align 8
  %11 = alloca double*, align 8
  store %struct.node_t* %0, %struct.node_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.node_t*, %struct.node_t** %3, align 8
  store %struct.node_t* %12, %struct.node_t** %5, align 8
  br label %13

13:                                               ; preds = %70, %2
  %14 = load %struct.node_t*, %struct.node_t** %5, align 8
  %15 = icmp ne %struct.node_t* %14, null
  br i1 %15, label %16, label %74

16:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %66, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  %22 = load %struct.node_t*, %struct.node_t** %5, align 8
  %23 = getelementptr inbounds %struct.node_t, %struct.node_t* %22, i32 0, i32 2
  %24 = load %struct.node_t**, %struct.node_t*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.node_t*, %struct.node_t** %24, i64 %26
  %28 = load %struct.node_t*, %struct.node_t** %27, align 8
  store %struct.node_t* %28, %struct.node_t** %9, align 8
  %29 = load %struct.node_t*, %struct.node_t** %5, align 8
  %30 = getelementptr inbounds %struct.node_t, %struct.node_t* %29, i32 0, i32 0
  %31 = load double*, double** %30, align 8
  store double* %31, double** %11, align 8
  %32 = load %struct.node_t*, %struct.node_t** %9, align 8
  %33 = icmp ne %struct.node_t* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %21
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %21
  %37 = load %struct.node_t*, %struct.node_t** %9, align 8
  %38 = getelementptr inbounds %struct.node_t, %struct.node_t* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %41 = load %struct.node_t*, %struct.node_t** %9, align 8
  %42 = getelementptr inbounds %struct.node_t, %struct.node_t* %41, i32 0, i32 3
  %43 = load double**, double*** %42, align 8
  store double** %43, double*** %10, align 8
  %44 = load %struct.node_t*, %struct.node_t** %9, align 8
  %45 = getelementptr inbounds %struct.node_t, %struct.node_t* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %8, align 4
  %47 = load double**, double*** %10, align 8
  %48 = icmp ne double** %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %36
  %50 = load %struct.node_t*, %struct.node_t** %9, align 8
  %51 = getelementptr inbounds %struct.node_t, %struct.node_t* %50, i32 0, i32 3
  %52 = load double**, double*** %51, align 8
  store double** %52, double*** %10, align 8
  br label %53

53:                                               ; preds = %49, %36
  %54 = load double*, double** %11, align 8
  %55 = load double**, double*** %10, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double*, double** %55, i64 %57
  store double* %54, double** %58, align 8
  %59 = call double @gen_uniform_double()
  %60 = load %struct.node_t*, %struct.node_t** %9, align 8
  %61 = getelementptr inbounds %struct.node_t, %struct.node_t* %60, i32 0, i32 4
  %62 = load double*, double** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  store double %59, double* %65, align 8
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %17, !llvm.loop !11

69:                                               ; preds = %17
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.node_t*, %struct.node_t** %5, align 8
  %72 = getelementptr inbounds %struct.node_t, %struct.node_t* %71, i32 0, i32 1
  %73 = load %struct.node_t*, %struct.node_t** %72, align 8
  store %struct.node_t* %73, %struct.node_t** %5, align 8
  br label %13, !llvm.loop !12

74:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @localize_local(%struct.node_t* noundef %0) #0 {
  %2 = alloca %struct.node_t*, align 8
  %3 = alloca %struct.node_t*, align 8
  store %struct.node_t* %0, %struct.node_t** %2, align 8
  %4 = load %struct.node_t*, %struct.node_t** %2, align 8
  store %struct.node_t* %4, %struct.node_t** %3, align 8
  br label %5

5:                                                ; preds = %24, %1
  %6 = load %struct.node_t*, %struct.node_t** %3, align 8
  %7 = icmp ne %struct.node_t* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = load %struct.node_t*, %struct.node_t** %3, align 8
  %10 = getelementptr inbounds %struct.node_t, %struct.node_t* %9, i32 0, i32 4
  %11 = load double*, double** %10, align 8
  %12 = load %struct.node_t*, %struct.node_t** %3, align 8
  %13 = getelementptr inbounds %struct.node_t, %struct.node_t* %12, i32 0, i32 4
  store double* %11, double** %13, align 8
  %14 = load %struct.node_t*, %struct.node_t** %3, align 8
  %15 = getelementptr inbounds %struct.node_t, %struct.node_t* %14, i32 0, i32 3
  %16 = load double**, double*** %15, align 8
  %17 = load %struct.node_t*, %struct.node_t** %3, align 8
  %18 = getelementptr inbounds %struct.node_t, %struct.node_t* %17, i32 0, i32 3
  store double** %16, double*** %18, align 8
  %19 = load %struct.node_t*, %struct.node_t** %3, align 8
  %20 = getelementptr inbounds %struct.node_t, %struct.node_t* %19, i32 0, i32 0
  %21 = load double*, double** %20, align 8
  %22 = load %struct.node_t*, %struct.node_t** %3, align 8
  %23 = getelementptr inbounds %struct.node_t, %struct.node_t* %22, i32 0, i32 0
  store double* %21, double** %23, align 8
  br label %24

24:                                               ; preds = %8
  %25 = load %struct.node_t*, %struct.node_t** %3, align 8
  %26 = getelementptr inbounds %struct.node_t, %struct.node_t* %25, i32 0, i32 1
  %27 = load %struct.node_t*, %struct.node_t** %26, align 8
  store %struct.node_t* %27, %struct.node_t** %3, align 8
  br label %5, !llvm.loop !13

28:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_tables(%struct.table_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.table_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node_t**, align 8
  %6 = alloca %struct.node_t**, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store %struct.table_t* %0, %struct.table_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 793, %10
  call void @init_random(i32 noundef %11)
  %12 = load i32, i32* @n_nodes, align 4
  %13 = sdiv i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = call noalias i8* @malloc(i64 noundef %15) #4
  %17 = bitcast i8* %16 to double*
  store double* %17, double** %7, align 8
  %18 = load i32, i32* @n_nodes, align 4
  %19 = sdiv i32 %18, 1
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.node_t** @make_table(i32 noundef %19, i32 noundef %20)
  store %struct.node_t** %21, %struct.node_t*** %5, align 8
  %22 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %23 = load double*, double** %7, align 8
  %24 = load i32, i32* @n_nodes, align 4
  %25 = sdiv i32 %24, 1
  %26 = load i32, i32* %9, align 4
  call void @fill_table(%struct.node_t** noundef %22, double* noundef %23, i32 noundef %25, i32 noundef %26)
  %27 = load i32, i32* @n_nodes, align 4
  %28 = sdiv i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = call noalias i8* @malloc(i64 noundef %30) #4
  %32 = bitcast i8* %31 to double*
  store double* %32, double** %8, align 8
  %33 = load i32, i32* @n_nodes, align 4
  %34 = sdiv i32 %33, 1
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.node_t** @make_table(i32 noundef %34, i32 noundef %35)
  store %struct.node_t** %36, %struct.node_t*** %6, align 8
  %37 = load %struct.node_t**, %struct.node_t*** %6, align 8
  %38 = load double*, double** %8, align 8
  %39 = load i32, i32* @n_nodes, align 4
  %40 = sdiv i32 %39, 1
  %41 = load i32, i32* %9, align 4
  call void @fill_table(%struct.node_t** noundef %37, double* noundef %38, i32 noundef %40, i32 noundef %41)
  %42 = load %struct.node_t**, %struct.node_t*** %6, align 8
  %43 = load %struct.table_t*, %struct.table_t** %3, align 8
  %44 = getelementptr inbounds %struct.table_t, %struct.table_t* %43, i32 0, i32 0
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %44, i64 0, i64 %46
  store %struct.node_t** %42, %struct.node_t*** %47, align 8
  %48 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %49 = load %struct.table_t*, %struct.table_t** %3, align 8
  %50 = getelementptr inbounds %struct.table_t, %struct.table_t* %49, i32 0, i32 1
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %50, i64 0, i64 %52
  store %struct.node_t** %48, %struct.node_t*** %53, align 8
  ret void
}

declare dso_local void @init_random(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_all_neighbors(%struct.table_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.table_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node_t*, align 8
  %6 = alloca %struct.node_t**, align 8
  %7 = alloca %struct.node_t***, align 8
  store %struct.table_t* %0, %struct.table_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 39, %8
  call void @init_random(i32 noundef %9)
  %10 = load %struct.table_t*, %struct.table_t** %3, align 8
  %11 = getelementptr inbounds %struct.table_t, %struct.table_t* %10, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %11, i64 0, i64 %13
  %15 = load %struct.node_t**, %struct.node_t*** %14, align 8
  store %struct.node_t** %15, %struct.node_t*** %6, align 8
  %16 = load %struct.table_t*, %struct.table_t** %3, align 8
  %17 = getelementptr inbounds %struct.table_t, %struct.table_t* %16, i32 0, i32 0
  %18 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %17, i64 0, i64 0
  store %struct.node_t*** %18, %struct.node_t**** %7, align 8
  %19 = load %struct.node_t**, %struct.node_t*** %6, align 8
  %20 = getelementptr inbounds %struct.node_t*, %struct.node_t** %19, i64 0
  %21 = load %struct.node_t*, %struct.node_t** %20, align 8
  store %struct.node_t* %21, %struct.node_t** %5, align 8
  %22 = load %struct.node_t*, %struct.node_t** %5, align 8
  %23 = load %struct.node_t***, %struct.node_t**** %7, align 8
  %24 = load i32, i32* @n_nodes, align 4
  %25 = sdiv i32 %24, 1
  %26 = load i32, i32* @d_nodes, align 4
  %27 = load i32, i32* @local_p, align 4
  %28 = load i32, i32* %4, align 4
  call void @make_neighbors(%struct.node_t* noundef %22, %struct.node_t*** noundef %23, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28)
  %29 = load %struct.table_t*, %struct.table_t** %3, align 8
  %30 = getelementptr inbounds %struct.table_t, %struct.table_t* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %30, i64 0, i64 %32
  %34 = load %struct.node_t**, %struct.node_t*** %33, align 8
  store %struct.node_t** %34, %struct.node_t*** %6, align 8
  %35 = load %struct.table_t*, %struct.table_t** %3, align 8
  %36 = getelementptr inbounds %struct.table_t, %struct.table_t* %35, i32 0, i32 1
  %37 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %36, i64 0, i64 0
  store %struct.node_t*** %37, %struct.node_t**** %7, align 8
  %38 = load %struct.node_t**, %struct.node_t*** %6, align 8
  %39 = getelementptr inbounds %struct.node_t*, %struct.node_t** %38, i64 0
  %40 = load %struct.node_t*, %struct.node_t** %39, align 8
  store %struct.node_t* %40, %struct.node_t** %5, align 8
  %41 = load %struct.node_t*, %struct.node_t** %5, align 8
  %42 = load %struct.node_t***, %struct.node_t**** %7, align 8
  %43 = load i32, i32* @n_nodes, align 4
  %44 = sdiv i32 %43, 1
  %45 = load i32, i32* @d_nodes, align 4
  %46 = load i32, i32* @local_p, align 4
  %47 = load i32, i32* %4, align 4
  call void @make_neighbors(%struct.node_t* noundef %41, %struct.node_t*** noundef %42, i32 noundef %44, i32 noundef %45, i32 noundef %46, i32 noundef %47)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @update_all_from_coeffs(%struct.table_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.table_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node_t**, align 8
  %6 = alloca %struct.node_t*, align 8
  store %struct.table_t* %0, %struct.table_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.table_t*, %struct.table_t** %3, align 8
  %8 = getelementptr inbounds %struct.table_t, %struct.table_t* %7, i32 0, i32 1
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %8, i64 0, i64 %10
  %12 = load %struct.node_t**, %struct.node_t*** %11, align 8
  store %struct.node_t** %12, %struct.node_t*** %5, align 8
  %13 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %14 = getelementptr inbounds %struct.node_t*, %struct.node_t** %13, i64 0
  %15 = load %struct.node_t*, %struct.node_t** %14, align 8
  store %struct.node_t* %15, %struct.node_t** %6, align 8
  %16 = load %struct.node_t*, %struct.node_t** %6, align 8
  call void @update_from_coeffs(%struct.node_t* noundef %16)
  %17 = load %struct.table_t*, %struct.table_t** %3, align 8
  %18 = getelementptr inbounds %struct.table_t, %struct.table_t* %17, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %18, i64 0, i64 %20
  %22 = load %struct.node_t**, %struct.node_t*** %21, align 8
  store %struct.node_t** %22, %struct.node_t*** %5, align 8
  %23 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %24 = getelementptr inbounds %struct.node_t*, %struct.node_t** %23, i64 0
  %25 = load %struct.node_t*, %struct.node_t** %24, align 8
  store %struct.node_t* %25, %struct.node_t** %6, align 8
  %26 = load %struct.node_t*, %struct.node_t** %6, align 8
  call void @update_from_coeffs(%struct.node_t* noundef %26)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_all_from_fields(%struct.table_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.table_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node_t**, align 8
  %6 = alloca %struct.node_t*, align 8
  store %struct.table_t* %0, %struct.table_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = mul nsw i32 17, %7
  call void @init_random(i32 noundef %8)
  %9 = load %struct.table_t*, %struct.table_t** %3, align 8
  %10 = getelementptr inbounds %struct.table_t, %struct.table_t* %9, i32 0, i32 1
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %10, i64 0, i64 %12
  %14 = load %struct.node_t**, %struct.node_t*** %13, align 8
  store %struct.node_t** %14, %struct.node_t*** %5, align 8
  %15 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %16 = getelementptr inbounds %struct.node_t*, %struct.node_t** %15, i64 0
  %17 = load %struct.node_t*, %struct.node_t** %16, align 8
  store %struct.node_t* %17, %struct.node_t** %6, align 8
  %18 = load %struct.node_t*, %struct.node_t** %6, align 8
  %19 = load i32, i32* @d_nodes, align 4
  call void @fill_from_fields(%struct.node_t* noundef %18, i32 noundef %19)
  %20 = load %struct.table_t*, %struct.table_t** %3, align 8
  %21 = getelementptr inbounds %struct.table_t, %struct.table_t* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %21, i64 0, i64 %23
  %25 = load %struct.node_t**, %struct.node_t*** %24, align 8
  store %struct.node_t** %25, %struct.node_t*** %5, align 8
  %26 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %27 = getelementptr inbounds %struct.node_t*, %struct.node_t** %26, i64 0
  %28 = load %struct.node_t*, %struct.node_t** %27, align 8
  store %struct.node_t* %28, %struct.node_t** %6, align 8
  %29 = load %struct.node_t*, %struct.node_t** %6, align 8
  %30 = load i32, i32* @d_nodes, align 4
  call void @fill_from_fields(%struct.node_t* noundef %29, i32 noundef %30)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @localize(%struct.table_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.table_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node_t**, align 8
  %6 = alloca %struct.node_t*, align 8
  store %struct.table_t* %0, %struct.table_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.table_t*, %struct.table_t** %3, align 8
  %8 = getelementptr inbounds %struct.table_t, %struct.table_t* %7, i32 0, i32 1
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %8, i64 0, i64 %10
  %12 = load %struct.node_t**, %struct.node_t*** %11, align 8
  store %struct.node_t** %12, %struct.node_t*** %5, align 8
  %13 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %14 = getelementptr inbounds %struct.node_t*, %struct.node_t** %13, i64 0
  %15 = load %struct.node_t*, %struct.node_t** %14, align 8
  store %struct.node_t* %15, %struct.node_t** %6, align 8
  %16 = load %struct.node_t*, %struct.node_t** %6, align 8
  call void @localize_local(%struct.node_t* noundef %16)
  %17 = load %struct.table_t*, %struct.table_t** %3, align 8
  %18 = getelementptr inbounds %struct.table_t, %struct.table_t* %17, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %18, i64 0, i64 %20
  %22 = load %struct.node_t**, %struct.node_t*** %21, align 8
  store %struct.node_t** %22, %struct.node_t*** %5, align 8
  %23 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %24 = getelementptr inbounds %struct.node_t*, %struct.node_t** %23, i64 0
  %25 = load %struct.node_t*, %struct.node_t** %24, align 8
  store %struct.node_t* %25, %struct.node_t** %6, align 8
  %26 = load %struct.node_t*, %struct.node_t** %6, align 8
  call void @localize_local(%struct.node_t* noundef %26)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clear_nummiss(%struct.table_t* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.table_t*, align 8
  %4 = alloca i32, align 4
  store %struct.table_t* %0, %struct.table_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* @NumMisses, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_all(%struct.table_t* noundef %0, i32 noundef %1, i32 noundef %2, void (%struct.table_t*, i32)* noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.table_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.table_t*, i32)*, align 8
  %10 = alloca i32, align 4
  store %struct.table_t* %0, %struct.table_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store void (%struct.table_t*, i32)* %3, void (%struct.table_t*, i32)** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %29

13:                                               ; preds = %5
  %14 = load %struct.table_t*, %struct.table_t** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sdiv i32 %16, 2
  %18 = add nsw i32 %15, %17
  %19 = load i32, i32* %8, align 4
  %20 = sdiv i32 %19, 2
  %21 = load void (%struct.table_t*, i32)*, void (%struct.table_t*, i32)** %9, align 8
  %22 = load i32, i32* %10, align 4
  call void @do_all(%struct.table_t* noundef %14, i32 noundef %18, i32 noundef %20, void (%struct.table_t*, i32)* noundef %21, i32 noundef %22)
  %23 = load %struct.table_t*, %struct.table_t** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sdiv i32 %25, 2
  %27 = load void (%struct.table_t*, i32)*, void (%struct.table_t*, i32)** %9, align 8
  %28 = load i32, i32* %10, align 4
  call void @do_all(%struct.table_t* noundef %23, i32 noundef %24, i32 noundef %26, void (%struct.table_t*, i32)* noundef %27, i32 noundef %28)
  br label %33

29:                                               ; preds = %5
  %30 = load void (%struct.table_t*, i32)*, void (%struct.table_t*, i32)** %9, align 8
  %31 = load %struct.table_t*, %struct.table_t** %6, align 8
  %32 = load i32, i32* %7, align 4
  call void %30(%struct.table_t* noundef %31, i32 noundef %32)
  br label %33

33:                                               ; preds = %29, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.graph_t* @initialize_graph() #0 {
  %1 = alloca %struct.table_t*, align 8
  %2 = alloca %struct.graph_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.node_t**, align 8
  %8 = alloca %struct.node_t*, align 8
  %9 = alloca %struct.node_t*, align 8
  %10 = call noalias i8* @malloc(i64 noundef 16) #4
  %11 = bitcast i8* %10 to %struct.table_t*
  store %struct.table_t* %11, %struct.table_t** %1, align 8
  %12 = call noalias i8* @malloc(i64 noundef 16) #4
  %13 = bitcast i8* %12 to %struct.graph_t*
  store %struct.graph_t* %13, %struct.graph_t** %2, align 8
  %14 = load i32, i32* @NumNodes, align 4
  %15 = sdiv i32 1, %14
  store i32 %15, i32* %6, align 4
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %17 = load %struct.table_t*, %struct.table_t** %1, align 8
  %18 = load i32, i32* %6, align 4
  call void @do_all(%struct.table_t* noundef %17, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef @make_tables, i32 noundef %18)
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %20 = load %struct.table_t*, %struct.table_t** %1, align 8
  %21 = load i32, i32* %6, align 4
  call void @do_all(%struct.table_t* noundef %20, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef @make_all_neighbors, i32 noundef %21)
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %23 = load %struct.table_t*, %struct.table_t** %1, align 8
  %24 = load i32, i32* %6, align 4
  call void @do_all(%struct.table_t* noundef %23, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef @update_all_from_coeffs, i32 noundef %24)
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %26 = load %struct.table_t*, %struct.table_t** %1, align 8
  %27 = load i32, i32* %6, align 4
  call void @do_all(%struct.table_t* noundef %26, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef @fill_all_from_fields, i32 noundef %27)
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %29 = load %struct.table_t*, %struct.table_t** %1, align 8
  %30 = load i32, i32* %6, align 4
  call void @do_all(%struct.table_t* noundef %29, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef @localize, i32 noundef %30)
  %31 = load i32, i32* @NumNodes, align 4
  %32 = sdiv i32 1, %31
  store i32 %32, i32* %5, align 4
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %150, %0
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @NumNodes, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %153

38:                                               ; preds = %34
  %39 = load %struct.table_t*, %struct.table_t** %1, align 8
  %40 = getelementptr inbounds %struct.table_t, %struct.table_t* %39, i32 0, i32 0
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %40, i64 0, i64 %44
  %46 = load %struct.node_t**, %struct.node_t*** %45, align 8
  store %struct.node_t** %46, %struct.node_t*** %7, align 8
  %47 = load %struct.node_t**, %struct.node_t*** %7, align 8
  %48 = getelementptr inbounds %struct.node_t*, %struct.node_t** %47, i64 0
  %49 = load %struct.node_t*, %struct.node_t** %48, align 8
  store %struct.node_t* %49, %struct.node_t** %8, align 8
  %50 = load %struct.node_t*, %struct.node_t** %8, align 8
  %51 = load %struct.graph_t*, %struct.graph_t** %2, align 8
  %52 = getelementptr inbounds %struct.graph_t, %struct.graph_t* %51, i32 0, i32 0
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1 x %struct.node_t*], [1 x %struct.node_t*]* %52, i64 0, i64 %54
  store %struct.node_t* %50, %struct.node_t** %55, align 8
  %56 = load %struct.table_t*, %struct.table_t** %1, align 8
  %57 = getelementptr inbounds %struct.table_t, %struct.table_t* %56, i32 0, i32 1
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %5, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %57, i64 0, i64 %61
  %63 = load %struct.node_t**, %struct.node_t*** %62, align 8
  store %struct.node_t** %63, %struct.node_t*** %7, align 8
  %64 = load %struct.node_t**, %struct.node_t*** %7, align 8
  %65 = getelementptr inbounds %struct.node_t*, %struct.node_t** %64, i64 0
  %66 = load %struct.node_t*, %struct.node_t** %65, align 8
  store %struct.node_t* %66, %struct.node_t** %8, align 8
  %67 = load %struct.node_t*, %struct.node_t** %8, align 8
  %68 = load %struct.graph_t*, %struct.graph_t** %2, align 8
  %69 = getelementptr inbounds %struct.graph_t, %struct.graph_t* %68, i32 0, i32 1
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [1 x %struct.node_t*], [1 x %struct.node_t*]* %69, i64 0, i64 %71
  store %struct.node_t* %67, %struct.node_t** %72, align 8
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %146, %38
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %149

77:                                               ; preds = %73
  %78 = load %struct.table_t*, %struct.table_t** %1, align 8
  %79 = getelementptr inbounds %struct.table_t, %struct.table_t* %78, i32 0, i32 0
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %5, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %82, %83
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %79, i64 0, i64 %86
  %88 = load %struct.node_t**, %struct.node_t*** %87, align 8
  store %struct.node_t** %88, %struct.node_t*** %7, align 8
  %89 = load %struct.node_t**, %struct.node_t*** %7, align 8
  %90 = load i32, i32* @n_nodes, align 4
  %91 = sdiv i32 %90, 1
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.node_t*, %struct.node_t** %89, i64 %93
  %95 = load %struct.node_t*, %struct.node_t** %94, align 8
  store %struct.node_t* %95, %struct.node_t** %9, align 8
  %96 = load %struct.table_t*, %struct.table_t** %1, align 8
  %97 = getelementptr inbounds %struct.table_t, %struct.table_t* %96, i32 0, i32 0
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %5, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %97, i64 0, i64 %103
  %105 = load %struct.node_t**, %struct.node_t*** %104, align 8
  store %struct.node_t** %105, %struct.node_t*** %7, align 8
  %106 = load %struct.node_t**, %struct.node_t*** %7, align 8
  %107 = getelementptr inbounds %struct.node_t*, %struct.node_t** %106, i64 0
  %108 = load %struct.node_t*, %struct.node_t** %107, align 8
  store %struct.node_t* %108, %struct.node_t** %8, align 8
  %109 = load %struct.node_t*, %struct.node_t** %8, align 8
  %110 = load %struct.node_t*, %struct.node_t** %9, align 8
  %111 = getelementptr inbounds %struct.node_t, %struct.node_t* %110, i32 0, i32 1
  store %struct.node_t* %109, %struct.node_t** %111, align 8
  %112 = load %struct.table_t*, %struct.table_t** %1, align 8
  %113 = getelementptr inbounds %struct.table_t, %struct.table_t* %112, i32 0, i32 1
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %5, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %116, %117
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %113, i64 0, i64 %120
  %122 = load %struct.node_t**, %struct.node_t*** %121, align 8
  store %struct.node_t** %122, %struct.node_t*** %7, align 8
  %123 = load %struct.node_t**, %struct.node_t*** %7, align 8
  %124 = load i32, i32* @n_nodes, align 4
  %125 = sdiv i32 %124, 1
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.node_t*, %struct.node_t** %123, i64 %127
  %129 = load %struct.node_t*, %struct.node_t** %128, align 8
  store %struct.node_t* %129, %struct.node_t** %9, align 8
  %130 = load %struct.table_t*, %struct.table_t** %1, align 8
  %131 = getelementptr inbounds %struct.table_t, %struct.table_t* %130, i32 0, i32 1
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %5, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [1 x %struct.node_t**], [1 x %struct.node_t**]* %131, i64 0, i64 %137
  %139 = load %struct.node_t**, %struct.node_t*** %138, align 8
  store %struct.node_t** %139, %struct.node_t*** %7, align 8
  %140 = load %struct.node_t**, %struct.node_t*** %7, align 8
  %141 = getelementptr inbounds %struct.node_t*, %struct.node_t** %140, i64 0
  %142 = load %struct.node_t*, %struct.node_t** %141, align 8
  store %struct.node_t* %142, %struct.node_t** %8, align 8
  %143 = load %struct.node_t*, %struct.node_t** %8, align 8
  %144 = load %struct.node_t*, %struct.node_t** %9, align 8
  %145 = getelementptr inbounds %struct.node_t, %struct.node_t* %144, i32 0, i32 1
  store %struct.node_t* %143, %struct.node_t** %145, align 8
  br label %146

146:                                              ; preds = %77
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %73, !llvm.loop !14

149:                                              ; preds = %73
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %34, !llvm.loop !15

153:                                              ; preds = %34
  %154 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %155 = load %struct.table_t*, %struct.table_t** %1, align 8
  %156 = load i32, i32* %6, align 4
  call void @do_all(%struct.table_t* noundef %155, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef @clear_nummiss, i32 noundef %156)
  %157 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %158 = load %struct.graph_t*, %struct.graph_t** %2, align 8
  ret %struct.graph_t* %158
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
