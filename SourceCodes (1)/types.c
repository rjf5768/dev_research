; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/analyzer/types.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/FreeBench/analyzer/types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hard_raw = type { %struct.hard_raw*, %struct.hard_raw*, i64, i32, i32, i64, i32, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.def_list_t = type { i8*, i64, i32, i32 }
%struct.conf_list_t = type { i8*, i64, i32 }

@hard_raw_mod.last = internal global %struct.hard_raw* null, align 8
@hard_raw_mod.hr_empty = internal global i32 1, align 4
@hard_raw_list = external dso_local global %struct.hard_raw*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"ALERT: \09Out of memory, aborting...\0A\00", align 1
@def_table_size = external dso_local global i32, align 4
@def_table = external dso_local global %struct.def_list_t**, align 8
@conflict_list.next = internal global %struct.conf_list_t* null, align 8
@first = external dso_local global i32, align 4
@list = external dso_local global %struct.conf_list_t*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @hard_raw_mod(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %15 = load i32, i32* @hard_raw_mod.hr_empty, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %7
  %18 = call noalias i8* @malloc(i64 noundef 56) #4
  %19 = bitcast i8* %18 to %struct.hard_raw*
  store %struct.hard_raw* %19, %struct.hard_raw** @hard_raw_list, align 8
  %20 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %21 = icmp ne %struct.hard_raw* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

25:                                               ; preds = %17
  %26 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %27 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %26, i32 0, i32 0
  store %struct.hard_raw* null, %struct.hard_raw** %27, align 8
  %28 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %29 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %28, i32 0, i32 1
  store %struct.hard_raw* null, %struct.hard_raw** %29, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %32 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %35 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %38 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %41 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %44 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %47 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %50 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %49, i32 0, i32 8
  store i64 %48, i64* %50, align 8
  store i32 0, i32* @hard_raw_mod.hr_empty, align 4
  %51 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %51, %struct.hard_raw** @hard_raw_mod.last, align 8
  br label %94

52:                                               ; preds = %7
  %53 = call noalias i8* @malloc(i64 noundef 56) #4
  %54 = bitcast i8* %53 to %struct.hard_raw*
  %55 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %56 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %55, i32 0, i32 0
  store %struct.hard_raw* %54, %struct.hard_raw** %56, align 8
  %57 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %58 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %59 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %58, i32 0, i32 0
  %60 = load %struct.hard_raw*, %struct.hard_raw** %59, align 8
  %61 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %60, i32 0, i32 1
  store %struct.hard_raw* %57, %struct.hard_raw** %61, align 8
  %62 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %63 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %62, i32 0, i32 0
  %64 = load %struct.hard_raw*, %struct.hard_raw** %63, align 8
  store %struct.hard_raw* %64, %struct.hard_raw** @hard_raw_mod.last, align 8
  %65 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %66 = icmp ne %struct.hard_raw* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %52
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

70:                                               ; preds = %52
  %71 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %72 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %71, i32 0, i32 0
  store %struct.hard_raw* null, %struct.hard_raw** %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %75 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %78 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %81 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %84 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %87 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %90 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* %14, align 8
  %92 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %93 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %92, i32 0, i32 8
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %70, %25
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @def_hash(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i32, i32* @def_table_size, align 4
  %5 = sext i32 %4 to i64
  %6 = urem i64 %3, %5
  ret i64 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.def_list_t* @def_list_lookup(i64 noundef %0) #0 {
  %2 = alloca %struct.def_list_t*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.def_list_t*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @def_hash(i64 noundef %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %8, i64 %9
  %11 = load %struct.def_list_t*, %struct.def_list_t** %10, align 8
  store %struct.def_list_t* %11, %struct.def_list_t** %5, align 8
  br label %12

12:                                               ; preds = %23, %1
  %13 = load %struct.def_list_t*, %struct.def_list_t** %5, align 8
  %14 = icmp ne %struct.def_list_t* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.def_list_t*, %struct.def_list_t** %5, align 8
  %18 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.def_list_t*, %struct.def_list_t** %5, align 8
  store %struct.def_list_t* %22, %struct.def_list_t** %2, align 8
  br label %29

23:                                               ; preds = %15
  %24 = load %struct.def_list_t*, %struct.def_list_t** %5, align 8
  %25 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.def_list_t*
  store %struct.def_list_t* %27, %struct.def_list_t** %5, align 8
  br label %12, !llvm.loop !4

28:                                               ; preds = %12
  store %struct.def_list_t* null, %struct.def_list_t** %2, align 8
  br label %29

29:                                               ; preds = %28, %21
  %30 = load %struct.def_list_t*, %struct.def_list_t** %2, align 8
  ret %struct.def_list_t* %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_list_mod(i64 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.def_list_t*, align 8
  %8 = alloca %struct.def_list_t*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.def_list_t* null, %struct.def_list_t** %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @def_hash(i64 noundef %10)
  store i64 %11, i64* %9, align 8
  %12 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %13 = load i64, i64* %9, align 8
  %14 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %12, i64 %13
  %15 = load %struct.def_list_t*, %struct.def_list_t** %14, align 8
  %16 = icmp eq %struct.def_list_t* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = call noalias i8* @malloc(i64 noundef 24) #4
  %19 = bitcast i8* %18 to %struct.def_list_t*
  store %struct.def_list_t* %19, %struct.def_list_t** %7, align 8
  %20 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %21 = icmp ne %struct.def_list_t* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

25:                                               ; preds = %17
  %26 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %27 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %26, i32 0, i32 0
  store i8* null, i8** %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %30 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %33 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %36 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %38 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %38, i64 %39
  store %struct.def_list_t* %37, %struct.def_list_t** %40, align 8
  br label %93

41:                                               ; preds = %3
  %42 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %42, i64 %43
  %45 = load %struct.def_list_t*, %struct.def_list_t** %44, align 8
  store %struct.def_list_t* %45, %struct.def_list_t** %8, align 8
  br label %46

46:                                               ; preds = %64, %41
  %47 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %48 = icmp ne %struct.def_list_t* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  store %struct.def_list_t* %50, %struct.def_list_t** %7, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %53 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %59 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %62 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %93

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %66 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = bitcast i8* %67 to %struct.def_list_t*
  store %struct.def_list_t* %68, %struct.def_list_t** %8, align 8
  br label %46, !llvm.loop !6

69:                                               ; preds = %46
  %70 = call noalias i8* @malloc(i64 noundef 24) #4
  %71 = bitcast i8* %70 to %struct.def_list_t*
  store %struct.def_list_t* %71, %struct.def_list_t** %8, align 8
  %72 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %73 = icmp ne %struct.def_list_t* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

77:                                               ; preds = %69
  %78 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %79 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %78, i32 0, i32 0
  store i8* null, i8** %79, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %82 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %85 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %88 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %90 = bitcast %struct.def_list_t* %89 to i8*
  %91 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %92 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %56, %77, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @conflict_list(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.conf_list_t*, align 8
  %4 = alloca %struct.conf_list_t*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store %struct.conf_list_t* null, %struct.conf_list_t** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* @first, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = call noalias i8* @malloc(i64 noundef 24) #4
  %10 = bitcast i8* %9 to %struct.conf_list_t*
  store %struct.conf_list_t* %10, %struct.conf_list_t** @list, align 8
  %11 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %12 = icmp ne %struct.conf_list_t* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

16:                                               ; preds = %8
  %17 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %18 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %17, i32 0, i32 0
  store i8* null, i8** %18, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %21 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %23 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  store i32 0, i32* @first, align 4
  %24 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  store %struct.conf_list_t* %24, %struct.conf_list_t** @conflict_list.next, align 8
  br label %71

25:                                               ; preds = %1
  %26 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  store %struct.conf_list_t* %26, %struct.conf_list_t** %4, align 8
  br label %27

27:                                               ; preds = %43, %25
  %28 = load %struct.conf_list_t*, %struct.conf_list_t** %4, align 8
  %29 = icmp ne %struct.conf_list_t* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load %struct.conf_list_t*, %struct.conf_list_t** %4, align 8
  store %struct.conf_list_t* %31, %struct.conf_list_t** %3, align 8
  %32 = load i64, i64* %2, align 8
  %33 = load %struct.conf_list_t*, %struct.conf_list_t** %4, align 8
  %34 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.conf_list_t*, %struct.conf_list_t** %4, align 8
  %39 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  store i32 0, i32* %5, align 4
  br label %48

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.conf_list_t*, %struct.conf_list_t** %4, align 8
  %45 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = bitcast i8* %46 to %struct.conf_list_t*
  store %struct.conf_list_t* %47, %struct.conf_list_t** %4, align 8
  br label %27, !llvm.loop !7

48:                                               ; preds = %37, %27
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = call noalias i8* @malloc(i64 noundef 24) #4
  %53 = bitcast i8* %52 to %struct.conf_list_t*
  store %struct.conf_list_t* %53, %struct.conf_list_t** @conflict_list.next, align 8
  %54 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %55 = icmp ne %struct.conf_list_t* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

59:                                               ; preds = %51
  %60 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %61 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %60, i32 0, i32 0
  store i8* null, i8** %61, align 8
  %62 = load i64, i64* %2, align 8
  %63 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %64 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %66 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %68 = bitcast %struct.conf_list_t* %67 to i8*
  %69 = load %struct.conf_list_t*, %struct.conf_list_t** %3, align 8
  %70 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %16, %59, %48
  ret void
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
