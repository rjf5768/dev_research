; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/sharp.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/sharp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external dso_local global %struct.cube_struct, align 8
@start_time = dso_local global i64 0, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [41 x i8] c"# SHARP[%d]: %4d = %4d x %4d, time = %s\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cv_sharp(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store %struct.set_family* %1, %struct.set_family** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %9 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 0, i32 noundef %8)
  store %struct.set_family* %9, %struct.set_family** %7, align 8
  %10 = load %struct.set_family*, %struct.set_family** %3, align 8
  %11 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.set_family*, %struct.set_family** %3, align 8
  %15 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.set_family*, %struct.set_family** %3, align 8
  %18 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %13, i64 %21
  store i32* %22, i32** %5, align 8
  br label %23

23:                                               ; preds = %33, %2
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ult i32* %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.set_family*, %struct.set_family** %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.set_family*, %struct.set_family** %4, align 8
  %31 = call %struct.set_family* @cb_sharp(i32* noundef %29, %struct.set_family* noundef %30)
  %32 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %28, %struct.set_family* noundef %31)
  store %struct.set_family* %32, %struct.set_family** %7, align 8
  br label %33

33:                                               ; preds = %27
  %34 = load %struct.set_family*, %struct.set_family** %3, align 8
  %35 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %6, align 8
  br label %23, !llvm.loop !4

40:                                               ; preds = %23
  %41 = load %struct.set_family*, %struct.set_family** %7, align 8
  ret %struct.set_family* %41
}

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local %struct.set_family* @sf_union(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb_sharp(i32* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.set_family*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.set_family* %1, %struct.set_family** %4, align 8
  %5 = load %struct.set_family*, %struct.set_family** %4, align 8
  %6 = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %11 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 1, i32 noundef %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %11, i32* noundef %12)
  store %struct.set_family* %13, %struct.set_family** %4, align 8
  br label %23

14:                                               ; preds = %2
  %15 = call i64 (...) @util_cpu_time()
  store i64 %15, i64* @start_time, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.set_family*, %struct.set_family** %4, align 8
  %18 = load %struct.set_family*, %struct.set_family** %4, align 8
  %19 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call %struct.set_family* @cb_recur_sharp(i32* noundef %16, %struct.set_family* noundef %17, i32 noundef 0, i32 noundef %21, i32 noundef 0)
  store %struct.set_family* %22, %struct.set_family** %4, align 8
  br label %23

23:                                               ; preds = %14, %9
  %24 = load %struct.set_family*, %struct.set_family** %4, align 8
  ret %struct.set_family* %24
}

declare dso_local %struct.set_family* @sf_addset(...) #1

declare dso_local i64 @util_cpu_time(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb_recur_sharp(i32* noundef %0, %struct.set_family* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.set_family*, align 8
  %12 = alloca %struct.set_family*, align 8
  %13 = alloca %struct.set_family*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.set_family* %1, %struct.set_family** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.set_family*, %struct.set_family** %7, align 8
  %21 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.set_family*, %struct.set_family** %7, align 8
  %24 = getelementptr inbounds %struct.set_family, %struct.set_family* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  %30 = call %struct.set_family* @sharp(i32* noundef %19, i32* noundef %29)
  store %struct.set_family* %30, %struct.set_family** %11, align 8
  br label %81

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %32, %33
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %14, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.set_family*, %struct.set_family** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  %42 = call %struct.set_family* @cb_recur_sharp(i32* noundef %36, %struct.set_family* noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %41)
  store %struct.set_family* %42, %struct.set_family** %12, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.set_family*, %struct.set_family** %7, align 8
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  %50 = call %struct.set_family* @cb_recur_sharp(i32* noundef %43, %struct.set_family* noundef %44, i32 noundef %46, i32 noundef %47, i32 noundef %49)
  store %struct.set_family* %50, %struct.set_family** %13, align 8
  %51 = load %struct.set_family*, %struct.set_family** %12, align 8
  %52 = load %struct.set_family*, %struct.set_family** %13, align 8
  %53 = call %struct.set_family* @cv_intersect(%struct.set_family* noundef %51, %struct.set_family* noundef %52)
  store %struct.set_family* %53, %struct.set_family** %11, align 8
  %54 = load i32, i32* @debug, align 4
  %55 = and i32 %54, 8192
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %31
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.set_family*, %struct.set_family** %11, align 8
  %63 = getelementptr inbounds %struct.set_family, %struct.set_family* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.set_family*, %struct.set_family** %12, align 8
  %66 = getelementptr inbounds %struct.set_family, %struct.set_family* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.set_family*, %struct.set_family** %13, align 8
  %69 = getelementptr inbounds %struct.set_family, %struct.set_family* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 (...) @util_cpu_time()
  %72 = load i64, i64* @start_time, align 8
  %73 = sub nsw i64 %71, %72
  %74 = call i8* @util_print_time(i64 noundef %73)
  %75 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 noundef %61, i32 noundef %64, i32 noundef %67, i32 noundef %70, i8* noundef %74)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %77 = call i32 @fflush(%struct._IO_FILE* noundef %76)
  br label %78

78:                                               ; preds = %60, %57, %31
  %79 = load %struct.set_family*, %struct.set_family** %12, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %79)
  %80 = load %struct.set_family*, %struct.set_family** %13, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %80)
  br label %81

81:                                               ; preds = %78, %18
  %82 = load %struct.set_family*, %struct.set_family** %11, align 8
  ret %struct.set_family* %82
}

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i8* @util_print_time(i64 noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local void @sf_free(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sharp(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.set_family*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %21 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %19, i32 noundef %20)
  store %struct.set_family* %21, %struct.set_family** %9, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* noundef %22, i32* noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %2
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %27, i32* noundef %28, i32* noundef %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %72, %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %36, i32* noundef %37, i32* noundef %42)
  %44 = call i32 (i32*, ...) bitcast (i32 (...)* @setp_empty to i32 (i32*, ...)*)(i32* noundef %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %35
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %47, i32* noundef %48, i32* noundef %53)
  %55 = load %struct.set_family*, %struct.set_family** %9, align 8
  %56 = getelementptr inbounds %struct.set_family, %struct.set_family* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.set_family*, %struct.set_family** %9, align 8
  %59 = getelementptr inbounds %struct.set_family, %struct.set_family* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.set_family*, %struct.set_family** %9, align 8
  %62 = getelementptr inbounds %struct.set_family, %struct.set_family* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = mul nsw i32 %60, %63
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %57, i64 %66
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %67, i32* noundef %68, i32* noundef %69)
  br label %71

71:                                               ; preds = %46, %35
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %31, !llvm.loop !6

75:                                               ; preds = %31
  br label %80

76:                                               ; preds = %2
  %77 = load %struct.set_family*, %struct.set_family** %9, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %77, i32* noundef %78)
  store %struct.set_family* %79, %struct.set_family** %9, align 8
  br label %80

80:                                               ; preds = %76, %75
  %81 = load %struct.set_family*, %struct.set_family** %9, align 8
  ret %struct.set_family* %81
}

declare dso_local i32 @cdist0(...) #1

declare dso_local i32* @set_diff(...) #1

declare dso_local i32 @setp_empty(...) #1

declare dso_local i32* @set_and(...) #1

declare dso_local i32* @set_or(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @make_disjoint(%struct.set_family* noundef %0) #0 {
  %2 = alloca %struct.set_family*, align 8
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.set_family* %0, %struct.set_family** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %8 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 0, i32 noundef %7)
  store %struct.set_family* %8, %struct.set_family** %3, align 8
  %9 = load %struct.set_family*, %struct.set_family** %2, align 8
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.set_family*, %struct.set_family** %2, align 8
  %14 = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.set_family*, %struct.set_family** %2, align 8
  %17 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %15, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %12, i64 %20
  store i32* %21, i32** %5, align 8
  br label %22

22:                                               ; preds = %33, %1
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ult i32* %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.set_family*, %struct.set_family** %3, align 8
  %29 = call %struct.set_family* @cb_dsharp(i32* noundef %27, %struct.set_family* noundef %28)
  store %struct.set_family* %29, %struct.set_family** %4, align 8
  %30 = load %struct.set_family*, %struct.set_family** %3, align 8
  %31 = load %struct.set_family*, %struct.set_family** %4, align 8
  %32 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %30, %struct.set_family* noundef %31)
  store %struct.set_family* %32, %struct.set_family** %3, align 8
  br label %33

33:                                               ; preds = %26
  %34 = load %struct.set_family*, %struct.set_family** %2, align 8
  %35 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %6, align 8
  br label %22, !llvm.loop !7

40:                                               ; preds = %22
  %41 = load %struct.set_family*, %struct.set_family** %3, align 8
  ret %struct.set_family* %41
}

declare dso_local %struct.set_family* @sf_append(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cv_dsharp(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store %struct.set_family* %1, %struct.set_family** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %9 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 0, i32 noundef %8)
  store %struct.set_family* %9, %struct.set_family** %7, align 8
  %10 = load %struct.set_family*, %struct.set_family** %3, align 8
  %11 = getelementptr inbounds %struct.set_family, %struct.set_family* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.set_family*, %struct.set_family** %3, align 8
  %15 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.set_family*, %struct.set_family** %3, align 8
  %18 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %13, i64 %21
  store i32* %22, i32** %5, align 8
  br label %23

23:                                               ; preds = %33, %2
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp ult i32* %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.set_family*, %struct.set_family** %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.set_family*, %struct.set_family** %4, align 8
  %31 = call %struct.set_family* @cb_dsharp(i32* noundef %29, %struct.set_family* noundef %30)
  %32 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %28, %struct.set_family* noundef %31)
  store %struct.set_family* %32, %struct.set_family** %7, align 8
  br label %33

33:                                               ; preds = %27
  %34 = load %struct.set_family*, %struct.set_family** %3, align 8
  %35 = getelementptr inbounds %struct.set_family, %struct.set_family* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %6, align 8
  br label %23, !llvm.loop !8

40:                                               ; preds = %23
  %41 = load %struct.set_family*, %struct.set_family** %7, align 8
  ret %struct.set_family* %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb1_dsharp(%struct.set_family* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.set_family*, %struct.set_family** %3, align 8
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %12 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %10, i32 noundef %11)
  store %struct.set_family* %12, %struct.set_family** %7, align 8
  %13 = load %struct.set_family*, %struct.set_family** %3, align 8
  %14 = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.set_family*, %struct.set_family** %3, align 8
  %18 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.set_family*, %struct.set_family** %3, align 8
  %21 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %16, i64 %24
  store i32* %25, i32** %5, align 8
  br label %26

26:                                               ; preds = %36, %2
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ult i32* %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.set_family*, %struct.set_family** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call %struct.set_family* @dsharp(i32* noundef %32, i32* noundef %33)
  %35 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %31, %struct.set_family* noundef %34)
  store %struct.set_family* %35, %struct.set_family** %7, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load %struct.set_family*, %struct.set_family** %3, align 8
  %38 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %6, align 8
  br label %26, !llvm.loop !9

43:                                               ; preds = %26
  %44 = load %struct.set_family*, %struct.set_family** %7, align 8
  ret %struct.set_family* %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cb_dsharp(i32* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.set_family*, align 8
  %8 = alloca %struct.set_family*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.set_family* %1, %struct.set_family** %4, align 8
  %9 = load %struct.set_family*, %struct.set_family** %4, align 8
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %15 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 1, i32 noundef %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %15, i32* noundef %16)
  store %struct.set_family* %17, %struct.set_family** %7, align 8
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.set_family*, %struct.set_family** %4, align 8
  %20 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %23 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %21, i32 noundef %22)
  store %struct.set_family* %23, %struct.set_family** %7, align 8
  %24 = load %struct.set_family*, %struct.set_family** %7, align 8
  %25 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.set_family*, %struct.set_family** %7, align 8
  %28 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.set_family*, %struct.set_family** %7, align 8
  %31 = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = mul nsw i32 %29, %32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %26, i64 %35
  %37 = load i32*, i32** %3, align 8
  %38 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %36, i32* noundef %37)
  %39 = load %struct.set_family*, %struct.set_family** %4, align 8
  %40 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.set_family*, %struct.set_family** %4, align 8
  %44 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.set_family*, %struct.set_family** %4, align 8
  %47 = getelementptr inbounds %struct.set_family, %struct.set_family* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %42, i64 %50
  store i32* %51, i32** %5, align 8
  br label %52

52:                                               ; preds = %62, %18
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = icmp ult i32* %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load %struct.set_family*, %struct.set_family** %7, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call %struct.set_family* @cb1_dsharp(%struct.set_family* noundef %57, i32* noundef %58)
  store %struct.set_family* %59, %struct.set_family** %8, align 8
  %60 = load %struct.set_family*, %struct.set_family** %7, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %60)
  %61 = load %struct.set_family*, %struct.set_family** %8, align 8
  store %struct.set_family* %61, %struct.set_family** %7, align 8
  br label %62

62:                                               ; preds = %56
  %63 = load %struct.set_family*, %struct.set_family** %4, align 8
  %64 = getelementptr inbounds %struct.set_family, %struct.set_family* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %6, align 8
  br label %52, !llvm.loop !10

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %13
  %71 = load %struct.set_family*, %struct.set_family** %7, align 8
  ret %struct.set_family* %71
}

declare dso_local i32* @set_copy(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @dsharp(i32* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.set_family*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %21 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %19, i32 noundef %20)
  store %struct.set_family* %21, %struct.set_family** %11, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* noundef %22, i32* noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %287

26:                                               ; preds = %2
  %27 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %28 = icmp sle i32 %27, 32
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %36

30:                                               ; preds = %26
  %31 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %32 = sub nsw i32 %31, 1
  %33 = ashr i32 %32, 5
  %34 = add nsw i32 %33, 1
  %35 = add nsw i32 %34, 1
  br label %36

36:                                               ; preds = %30, %29
  %37 = phi i32 [ 2, %29 ], [ %35, %30 ]
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = call i8* @malloc(i64 noundef %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %43 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %41, i32 noundef %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %43, i32* noundef %44, i32* noundef %45)
  store i32* %46, i32** %6, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %48 = icmp sle i32 %47, 32
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %56

50:                                               ; preds = %36
  %51 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %52 = sub nsw i32 %51, 1
  %53 = ashr i32 %52, 5
  %54 = add nsw i32 %53, 1
  %55 = add nsw i32 %54, 1
  br label %56

56:                                               ; preds = %50, %49
  %57 = phi i32 [ 2, %49 ], [ %55, %50 ]
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = call i8* @malloc(i64 noundef %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %63 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %61, i32 noundef %62)
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %63, i32* noundef %64, i32* noundef %65)
  store i32* %66, i32** %7, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %68 = icmp sle i32 %67, 32
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %76

70:                                               ; preds = %56
  %71 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %72 = sub nsw i32 %71, 1
  %73 = ashr i32 %72, 5
  %74 = add nsw i32 %73, 1
  %75 = add nsw i32 %74, 1
  br label %76

76:                                               ; preds = %70, %69
  %77 = phi i32 [ 2, %69 ], [ %75, %70 ]
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = call i8* @malloc(i64 noundef %79)
  %81 = bitcast i8* %80 to i32*
  %82 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %83 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %81, i32 noundef %82)
  store i32* %83, i32** %5, align 8
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %265, %76
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %268

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* noundef %89, i32* noundef %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %264, label %97

97:                                               ; preds = %88
  %98 = load %struct.set_family*, %struct.set_family** %11, align 8
  %99 = getelementptr inbounds %struct.set_family, %struct.set_family* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.set_family*, %struct.set_family** %11, align 8
  %102 = getelementptr inbounds %struct.set_family, %struct.set_family* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.set_family*, %struct.set_family** %11, align 8
  %105 = getelementptr inbounds %struct.set_family, %struct.set_family* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = mul nsw i32 %103, %106
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %100, i64 %109
  store i32* %110, i32** %8, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %111, i32* noundef %112, i32* noundef %117)
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 1023
  store i32 %122, i32* %12, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, -1024
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %148, %97
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %137, %142
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %143, i32* %147, align 4
  br label %148

148:                                              ; preds = %132
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %12, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %132, label %152, !llvm.loop !11

152:                                              ; preds = %148
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 1023
  store i32 %156, i32* %13, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, -1024
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %13, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %182, %152
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %171, %176
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %177, i32* %181, align 4
  br label %182

182:                                              ; preds = %166
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %13, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %166, label %186, !llvm.loop !12

186:                                              ; preds = %182
  %187 = load i32*, i32** %5, align 8
  %188 = load i32*, i32** %5, align 8
  %189 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %187, i32* noundef %188, i32* noundef %193)
  %195 = load i32*, i32** %3, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 1023
  store i32 %198, i32* %14, align 4
  %199 = load i32*, i32** %9, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, -1024
  store i32 %202, i32* %200, align 4
  %203 = load i32, i32* %14, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %225, %186
  %209 = load i32*, i32** %3, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %5, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = xor i32 %218, -1
  %220 = and i32 %213, %219
  %221 = load i32*, i32** %9, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %220, i32* %224, align 4
  br label %225

225:                                              ; preds = %208
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %14, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %208, label %229, !llvm.loop !13

229:                                              ; preds = %225
  %230 = load i32*, i32** %8, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 1023
  store i32 %233, i32* %15, align 4
  %234 = load i32*, i32** %8, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, -1024
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32*, i32** %8, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %259, %229
  %244 = load i32*, i32** %8, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %9, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %248, %253
  %255 = load i32*, i32** %8, align 8
  %256 = load i32, i32* %15, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 %254, i32* %258, align 4
  br label %259

259:                                              ; preds = %243
  %260 = load i32, i32* %15, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %15, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %243, label %263, !llvm.loop !14

263:                                              ; preds = %259
  br label %264

264:                                              ; preds = %263, %88
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %10, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %10, align 4
  br label %84, !llvm.loop !15

268:                                              ; preds = %84
  %269 = load i32*, i32** %6, align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i32*, i32** %6, align 8
  %273 = bitcast i32* %272 to i8*
  call void @free(i8* noundef %273)
  store i32* null, i32** %6, align 8
  br label %274

274:                                              ; preds = %271, %268
  %275 = load i32*, i32** %7, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i32*, i32** %7, align 8
  %279 = bitcast i32* %278 to i8*
  call void @free(i8* noundef %279)
  store i32* null, i32** %7, align 8
  br label %280

280:                                              ; preds = %277, %274
  %281 = load i32*, i32** %5, align 8
  %282 = icmp ne i32* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32*, i32** %5, align 8
  %285 = bitcast i32* %284 to i8*
  call void @free(i8* noundef %285)
  store i32* null, i32** %5, align 8
  br label %286

286:                                              ; preds = %283, %280
  br label %291

287:                                              ; preds = %2
  %288 = load %struct.set_family*, %struct.set_family** %11, align 8
  %289 = load i32*, i32** %3, align 8
  %290 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* noundef %288, i32* noundef %289)
  store %struct.set_family* %290, %struct.set_family** %11, align 8
  br label %291

291:                                              ; preds = %287, %286
  %292 = load %struct.set_family*, %struct.set_family** %11, align 8
  ret %struct.set_family* %292
}

declare dso_local i32* @set_clear(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32 @setp_disjoint(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @cv_intersect(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.set_family*, align 8
  %11 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store %struct.set_family* %1, %struct.set_family** %4, align 8
  store %struct.set_family* null, %struct.set_family** %11, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %13 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 500, i32 noundef %12)
  store %struct.set_family* %13, %struct.set_family** %10, align 8
  %14 = load %struct.set_family*, %struct.set_family** %10, align 8
  %15 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %9, align 8
  %17 = load %struct.set_family*, %struct.set_family** %3, align 8
  %18 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.set_family*, %struct.set_family** %3, align 8
  %22 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.set_family*, %struct.set_family** %3, align 8
  %25 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %20, i64 %28
  store i32* %29, i32** %7, align 8
  br label %30

30:                                               ; preds = %104, %2
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %111

34:                                               ; preds = %30
  %35 = load %struct.set_family*, %struct.set_family** %4, align 8
  %36 = getelementptr inbounds %struct.set_family, %struct.set_family* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.set_family*, %struct.set_family** %4, align 8
  %40 = getelementptr inbounds %struct.set_family, %struct.set_family* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.set_family*, %struct.set_family** %4, align 8
  %43 = getelementptr inbounds %struct.set_family, %struct.set_family* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %38, i64 %46
  store i32* %47, i32** %8, align 8
  br label %48

48:                                               ; preds = %96, %34
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = icmp ult i32* %49, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %48
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* noundef %53, i32* noundef %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %52
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %58, i32* noundef %59, i32* noundef %60)
  %62 = load %struct.set_family*, %struct.set_family** %10, align 8
  %63 = getelementptr inbounds %struct.set_family, %struct.set_family* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.set_family*, %struct.set_family** %10, align 8
  %67 = getelementptr inbounds %struct.set_family, %struct.set_family* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %57
  %71 = load %struct.set_family*, %struct.set_family** %11, align 8
  %72 = icmp eq %struct.set_family* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.set_family*, %struct.set_family** %10, align 8
  %75 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %74)
  store %struct.set_family* %75, %struct.set_family** %11, align 8
  br label %81

76:                                               ; preds = %70
  %77 = load %struct.set_family*, %struct.set_family** %11, align 8
  %78 = load %struct.set_family*, %struct.set_family** %10, align 8
  %79 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %78)
  %80 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %77, %struct.set_family* noundef %79)
  store %struct.set_family* %80, %struct.set_family** %11, align 8
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %83 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef 500, i32 noundef %82)
  store %struct.set_family* %83, %struct.set_family** %10, align 8
  %84 = load %struct.set_family*, %struct.set_family** %10, align 8
  %85 = getelementptr inbounds %struct.set_family, %struct.set_family* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %9, align 8
  br label %94

87:                                               ; preds = %57
  %88 = load %struct.set_family*, %struct.set_family** %10, align 8
  %89 = getelementptr inbounds %struct.set_family, %struct.set_family* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %9, align 8
  br label %94

94:                                               ; preds = %87, %81
  br label %95

95:                                               ; preds = %94, %52
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.set_family*, %struct.set_family** %4, align 8
  %98 = getelementptr inbounds %struct.set_family, %struct.set_family* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %6, align 8
  br label %48, !llvm.loop !16

103:                                              ; preds = %48
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.set_family*, %struct.set_family** %3, align 8
  %106 = getelementptr inbounds %struct.set_family, %struct.set_family* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %5, align 8
  br label %30, !llvm.loop !17

111:                                              ; preds = %30
  %112 = load %struct.set_family*, %struct.set_family** %11, align 8
  %113 = icmp eq %struct.set_family* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load %struct.set_family*, %struct.set_family** %10, align 8
  %116 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %115)
  store %struct.set_family* %116, %struct.set_family** %11, align 8
  br label %122

117:                                              ; preds = %111
  %118 = load %struct.set_family*, %struct.set_family** %11, align 8
  %119 = load %struct.set_family*, %struct.set_family** %10, align 8
  %120 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* noundef %119)
  %121 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* noundef %118, %struct.set_family* noundef %120)
  store %struct.set_family* %121, %struct.set_family** %11, align 8
  br label %122

122:                                              ; preds = %117, %114
  %123 = load %struct.set_family*, %struct.set_family** %11, align 8
  ret %struct.set_family* %123
}

declare dso_local %struct.set_family* @sf_contain(...) #1

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
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
