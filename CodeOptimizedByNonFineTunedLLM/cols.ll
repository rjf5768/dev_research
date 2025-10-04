; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/cols.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/cols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_col_struct* @sm_col_alloc() #0 {
  %1 = alloca %struct.sm_col_struct*, align 8
  %2 = call i8* @malloc(i64 noundef 56)
  %3 = bitcast i8* %2 to %struct.sm_col_struct*
  store %struct.sm_col_struct* %3, %struct.sm_col_struct** %1, align 8
  %4 = load %struct.sm_col_struct*, %struct.sm_col_struct** %1, align 8
  %5 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %4, i32 0, i32 0
  store i32 0, i32* %5, align 8
  %6 = load %struct.sm_col_struct*, %struct.sm_col_struct** %1, align 8
  %7 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %6, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = load %struct.sm_col_struct*, %struct.sm_col_struct** %1, align 8
  %9 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %8, i32 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %9, align 8
  %10 = load %struct.sm_col_struct*, %struct.sm_col_struct** %1, align 8
  %11 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %10, i32 0, i32 3
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %11, align 8
  %12 = load %struct.sm_col_struct*, %struct.sm_col_struct** %1, align 8
  %13 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %12, i32 0, i32 6
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %13, align 8
  %14 = load %struct.sm_col_struct*, %struct.sm_col_struct** %1, align 8
  %15 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %14, i32 0, i32 5
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %15, align 8
  %16 = load %struct.sm_col_struct*, %struct.sm_col_struct** %1, align 8
  %17 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %16, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = load %struct.sm_col_struct*, %struct.sm_col_struct** %1, align 8
  %19 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %18, i32 0, i32 7
  store i8* null, i8** %19, align 8
  %20 = load %struct.sm_col_struct*, %struct.sm_col_struct** %1, align 8
  ret %struct.sm_col_struct* %20
}

declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @sm_col_free(%struct.sm_col_struct* noundef %0) #0 {
  %2 = alloca %struct.sm_col_struct*, align 8
  %3 = alloca %struct.sm_element_struct*, align 8
  %4 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %2, align 8
  %5 = load %struct.sm_col_struct*, %struct.sm_col_struct** %2, align 8
  %6 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %5, i32 0, i32 3
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  store %struct.sm_element_struct* %7, %struct.sm_element_struct** %3, align 8
  br label %8

8:                                                ; preds = %21, %1
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %3, align 8
  %10 = icmp ne %struct.sm_element_struct* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %3, align 8
  %13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i32 0, i32 2
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %13, align 8
  store %struct.sm_element_struct* %14, %struct.sm_element_struct** %4, align 8
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %3, align 8
  %16 = icmp ne %struct.sm_element_struct* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %3, align 8
  %19 = bitcast %struct.sm_element_struct* %18 to i8*
  call void @free(i8* noundef %19)
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %3, align 8
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  store %struct.sm_element_struct* %22, %struct.sm_element_struct** %3, align 8
  br label %8, !llvm.loop !4

23:                                               ; preds = %8
  %24 = load %struct.sm_col_struct*, %struct.sm_col_struct** %2, align 8
  %25 = icmp ne %struct.sm_col_struct* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.sm_col_struct*, %struct.sm_col_struct** %2, align 8
  %28 = bitcast %struct.sm_col_struct* %27 to i8*
  call void @free(i8* noundef %28)
  store %struct.sm_col_struct* null, %struct.sm_col_struct** %2, align 8
  br label %29

29:                                               ; preds = %26, %23
  ret void
}

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_col_struct* @sm_col_dup(%struct.sm_col_struct* noundef %0) #0 {
  %2 = alloca %struct.sm_col_struct*, align 8
  %3 = alloca %struct.sm_col_struct*, align 8
  %4 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %2, align 8
  %5 = call %struct.sm_col_struct* @sm_col_alloc()
  store %struct.sm_col_struct* %5, %struct.sm_col_struct** %3, align 8
  %6 = load %struct.sm_col_struct*, %struct.sm_col_struct** %2, align 8
  %7 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %6, i32 0, i32 3
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %4, align 8
  br label %9

9:                                                ; preds = %18, %1
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %11 = icmp ne %struct.sm_element_struct* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.sm_element_struct* @sm_col_insert(%struct.sm_col_struct* noundef %13, i32 noundef %16)
  br label %18

18:                                               ; preds = %12
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %20 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %19, i32 0, i32 2
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %20, align 8
  store %struct.sm_element_struct* %21, %struct.sm_element_struct** %4, align 8
  br label %9, !llvm.loop !6

22:                                               ; preds = %9
  %23 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  ret %struct.sm_col_struct* %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_element_struct* @sm_col_insert(%struct.sm_col_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sm_col_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sm_element_struct*, align 8
  %6 = alloca %struct.sm_element_struct*, align 8
  %7 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i8* @malloc(i64 noundef 48)
  %9 = bitcast i8* %8 to %struct.sm_element_struct*
  store %struct.sm_element_struct* %9, %struct.sm_element_struct** %6, align 8
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %11 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %10, i32 0, i32 6
  store i8* null, i8** %11, align 8
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  store %struct.sm_element_struct* %12, %struct.sm_element_struct** %5, align 8
  %13 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %14 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %13, i32 0, i32 4
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %14, align 8
  %16 = icmp eq %struct.sm_element_struct* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %20 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %22 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %23 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %22, i32 0, i32 3
  store %struct.sm_element_struct* %21, %struct.sm_element_struct** %23, align 8
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %25 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %26 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %25, i32 0, i32 4
  store %struct.sm_element_struct* %24, %struct.sm_element_struct** %26, align 8
  %27 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %28 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %27, i32 0, i32 2
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %28, align 8
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %30 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 3
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %30, align 8
  %31 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %32 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %150

35:                                               ; preds = %2
  %36 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %37 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %36, i32 0, i32 4
  %38 = load %struct.sm_element_struct*, %struct.sm_element_struct** %37, align 8
  %39 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %46 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %48 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %49 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %48, i32 0, i32 4
  %50 = load %struct.sm_element_struct*, %struct.sm_element_struct** %49, align 8
  %51 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %50, i32 0, i32 2
  store %struct.sm_element_struct* %47, %struct.sm_element_struct** %51, align 8
  %52 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %53 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %52, i32 0, i32 4
  %54 = load %struct.sm_element_struct*, %struct.sm_element_struct** %53, align 8
  %55 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %56 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %55, i32 0, i32 3
  store %struct.sm_element_struct* %54, %struct.sm_element_struct** %56, align 8
  %57 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %58 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %59 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %58, i32 0, i32 4
  store %struct.sm_element_struct* %57, %struct.sm_element_struct** %59, align 8
  %60 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %61 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %60, i32 0, i32 2
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %61, align 8
  %62 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %63 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %149

66:                                               ; preds = %35
  %67 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %68 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %67, i32 0, i32 3
  %69 = load %struct.sm_element_struct*, %struct.sm_element_struct** %68, align 8
  %70 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %66
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %77 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %79 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %80 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %79, i32 0, i32 3
  %81 = load %struct.sm_element_struct*, %struct.sm_element_struct** %80, align 8
  %82 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %81, i32 0, i32 3
  store %struct.sm_element_struct* %78, %struct.sm_element_struct** %82, align 8
  %83 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %84 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %83, i32 0, i32 3
  %85 = load %struct.sm_element_struct*, %struct.sm_element_struct** %84, align 8
  %86 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %87 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %86, i32 0, i32 2
  store %struct.sm_element_struct* %85, %struct.sm_element_struct** %87, align 8
  %88 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %89 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %90 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %89, i32 0, i32 3
  store %struct.sm_element_struct* %88, %struct.sm_element_struct** %90, align 8
  %91 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %92 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %91, i32 0, i32 3
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %92, align 8
  %93 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %94 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %148

97:                                               ; preds = %66
  %98 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %99 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %98, i32 0, i32 3
  %100 = load %struct.sm_element_struct*, %struct.sm_element_struct** %99, align 8
  store %struct.sm_element_struct* %100, %struct.sm_element_struct** %7, align 8
  br label %101

101:                                              ; preds = %108, %97
  %102 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %103 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %110 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %109, i32 0, i32 2
  %111 = load %struct.sm_element_struct*, %struct.sm_element_struct** %110, align 8
  store %struct.sm_element_struct* %111, %struct.sm_element_struct** %7, align 8
  br label %101, !llvm.loop !7

112:                                              ; preds = %101
  %113 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %114 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %145

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %121 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %123 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %122, i32 0, i32 3
  %124 = load %struct.sm_element_struct*, %struct.sm_element_struct** %123, align 8
  store %struct.sm_element_struct* %124, %struct.sm_element_struct** %7, align 8
  %125 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %126 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %127 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %126, i32 0, i32 2
  %128 = load %struct.sm_element_struct*, %struct.sm_element_struct** %127, align 8
  %129 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %128, i32 0, i32 3
  store %struct.sm_element_struct* %125, %struct.sm_element_struct** %129, align 8
  %130 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %131 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %130, i32 0, i32 2
  %132 = load %struct.sm_element_struct*, %struct.sm_element_struct** %131, align 8
  %133 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %134 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %133, i32 0, i32 2
  store %struct.sm_element_struct* %132, %struct.sm_element_struct** %134, align 8
  %135 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %136 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %137 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %136, i32 0, i32 2
  store %struct.sm_element_struct* %135, %struct.sm_element_struct** %137, align 8
  %138 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %139 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %140 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %139, i32 0, i32 3
  store %struct.sm_element_struct* %138, %struct.sm_element_struct** %140, align 8
  %141 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %142 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %147

145:                                              ; preds = %112
  %146 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  store %struct.sm_element_struct* %146, %struct.sm_element_struct** %5, align 8
  br label %147

147:                                              ; preds = %145, %118
  br label %148

148:                                              ; preds = %147, %74
  br label %149

149:                                              ; preds = %148, %43
  br label %150

150:                                              ; preds = %149, %17
  %151 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %152 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %153 = icmp ne %struct.sm_element_struct* %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %156 = icmp ne %struct.sm_element_struct* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %159 = bitcast %struct.sm_element_struct* %158 to i8*
  call void @free(i8* noundef %159)
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %6, align 8
  br label %160

160:                                              ; preds = %157, %154
  br label %161

161:                                              ; preds = %160, %150
  %162 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  ret %struct.sm_element_struct* %162
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sm_col_remove(%struct.sm_col_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sm_col_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %7 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %6, i32 0, i32 3
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %5, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %11 = icmp ne %struct.sm_element_struct* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %14 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i1 [ false, %9 ], [ %17, %12 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %22, i32 0, i32 2
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %23, align 8
  store %struct.sm_element_struct* %24, %struct.sm_element_struct** %5, align 8
  br label %9, !llvm.loop !8

25:                                               ; preds = %18
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %27 = icmp ne %struct.sm_element_struct* %26, null
  br i1 %27, label %28, label %83

28:                                               ; preds = %25
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %30 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %83

34:                                               ; preds = %28
  %35 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %36 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %35, i32 0, i32 3
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %36, align 8
  %38 = icmp eq %struct.sm_element_struct* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %41 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %40, i32 0, i32 2
  %42 = load %struct.sm_element_struct*, %struct.sm_element_struct** %41, align 8
  %43 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %44 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %43, i32 0, i32 3
  store %struct.sm_element_struct* %42, %struct.sm_element_struct** %44, align 8
  br label %53

45:                                               ; preds = %34
  %46 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %47 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %46, i32 0, i32 2
  %48 = load %struct.sm_element_struct*, %struct.sm_element_struct** %47, align 8
  %49 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %50 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %49, i32 0, i32 3
  %51 = load %struct.sm_element_struct*, %struct.sm_element_struct** %50, align 8
  %52 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %51, i32 0, i32 2
  store %struct.sm_element_struct* %48, %struct.sm_element_struct** %52, align 8
  br label %53

53:                                               ; preds = %45, %39
  %54 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %55 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %54, i32 0, i32 2
  %56 = load %struct.sm_element_struct*, %struct.sm_element_struct** %55, align 8
  %57 = icmp eq %struct.sm_element_struct* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %60 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %59, i32 0, i32 3
  %61 = load %struct.sm_element_struct*, %struct.sm_element_struct** %60, align 8
  %62 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %63 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %62, i32 0, i32 4
  store %struct.sm_element_struct* %61, %struct.sm_element_struct** %63, align 8
  br label %72

64:                                               ; preds = %53
  %65 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %66 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %65, i32 0, i32 3
  %67 = load %struct.sm_element_struct*, %struct.sm_element_struct** %66, align 8
  %68 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %69 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %68, i32 0, i32 2
  %70 = load %struct.sm_element_struct*, %struct.sm_element_struct** %69, align 8
  %71 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %70, i32 0, i32 3
  store %struct.sm_element_struct* %67, %struct.sm_element_struct** %71, align 8
  br label %72

72:                                               ; preds = %64, %58
  %73 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %74 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %78 = icmp ne %struct.sm_element_struct* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %81 = bitcast %struct.sm_element_struct* %80 to i8*
  call void @free(i8* noundef %81)
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %5, align 8
  br label %82

82:                                               ; preds = %79, %72
  br label %83

83:                                               ; preds = %82, %28, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_element_struct* @sm_col_find(%struct.sm_col_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sm_element_struct*, align 8
  %4 = alloca %struct.sm_col_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sm_col_struct*, %struct.sm_col_struct** %4, align 8
  %8 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %7, i32 0, i32 3
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  store %struct.sm_element_struct* %9, %struct.sm_element_struct** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %12 = icmp ne %struct.sm_element_struct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %24 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %23, i32 0, i32 2
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %24, align 8
  store %struct.sm_element_struct* %25, %struct.sm_element_struct** %6, align 8
  br label %10, !llvm.loop !9

26:                                               ; preds = %19
  %27 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %28 = icmp ne %struct.sm_element_struct* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %31 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  store %struct.sm_element_struct* %36, %struct.sm_element_struct** %3, align 8
  br label %38

37:                                               ; preds = %29, %26
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %3, align 8
  br label %38

38:                                               ; preds = %37, %35
  %39 = load %struct.sm_element_struct*, %struct.sm_element_struct** %3, align 8
  ret %struct.sm_element_struct* %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sm_col_contains(%struct.sm_col_struct* noundef %0, %struct.sm_col_struct* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm_col_struct*, align 8
  %5 = alloca %struct.sm_col_struct*, align 8
  %6 = alloca %struct.sm_element_struct*, align 8
  %7 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %4, align 8
  store %struct.sm_col_struct* %1, %struct.sm_col_struct** %5, align 8
  %8 = load %struct.sm_col_struct*, %struct.sm_col_struct** %4, align 8
  %9 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %8, i32 0, i32 3
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %9, align 8
  store %struct.sm_element_struct* %10, %struct.sm_element_struct** %6, align 8
  %11 = load %struct.sm_col_struct*, %struct.sm_col_struct** %5, align 8
  %12 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %11, i32 0, i32 3
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %12, align 8
  store %struct.sm_element_struct* %13, %struct.sm_element_struct** %7, align 8
  br label %14

14:                                               ; preds = %49, %2
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %16 = icmp ne %struct.sm_element_struct* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %19 = icmp eq %struct.sm_element_struct* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %22 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %25 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %17
  store i32 0, i32* %3, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %31 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %39 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %38, i32 0, i32 2
  %40 = load %struct.sm_element_struct*, %struct.sm_element_struct** %39, align 8
  store %struct.sm_element_struct* %40, %struct.sm_element_struct** %6, align 8
  %41 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %42 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %41, i32 0, i32 2
  %43 = load %struct.sm_element_struct*, %struct.sm_element_struct** %42, align 8
  store %struct.sm_element_struct* %43, %struct.sm_element_struct** %7, align 8
  br label %48

44:                                               ; preds = %29
  %45 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %46 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %45, i32 0, i32 2
  %47 = load %struct.sm_element_struct*, %struct.sm_element_struct** %46, align 8
  store %struct.sm_element_struct* %47, %struct.sm_element_struct** %7, align 8
  br label %48

48:                                               ; preds = %44, %37
  br label %49

49:                                               ; preds = %48
  br label %14, !llvm.loop !10

50:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %28
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sm_col_intersects(%struct.sm_col_struct* noundef %0, %struct.sm_col_struct* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm_col_struct*, align 8
  %5 = alloca %struct.sm_col_struct*, align 8
  %6 = alloca %struct.sm_element_struct*, align 8
  %7 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %4, align 8
  store %struct.sm_col_struct* %1, %struct.sm_col_struct** %5, align 8
  %8 = load %struct.sm_col_struct*, %struct.sm_col_struct** %4, align 8
  %9 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %8, i32 0, i32 3
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %9, align 8
  store %struct.sm_element_struct* %10, %struct.sm_element_struct** %6, align 8
  %11 = load %struct.sm_col_struct*, %struct.sm_col_struct** %5, align 8
  %12 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %11, i32 0, i32 3
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %12, align 8
  store %struct.sm_element_struct* %13, %struct.sm_element_struct** %7, align 8
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %15 = icmp eq %struct.sm_element_struct* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %18 = icmp eq %struct.sm_element_struct* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %54

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %53, %20
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %26 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %31 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %30, i32 0, i32 2
  %32 = load %struct.sm_element_struct*, %struct.sm_element_struct** %31, align 8
  store %struct.sm_element_struct* %32, %struct.sm_element_struct** %6, align 8
  %33 = icmp eq %struct.sm_element_struct* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %54

35:                                               ; preds = %29
  br label %53

36:                                               ; preds = %21
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %38 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %41 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %46 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %45, i32 0, i32 2
  %47 = load %struct.sm_element_struct*, %struct.sm_element_struct** %46, align 8
  store %struct.sm_element_struct* %47, %struct.sm_element_struct** %7, align 8
  %48 = icmp eq %struct.sm_element_struct* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %54

50:                                               ; preds = %44
  br label %52

51:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %54

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %35
  br label %21

54:                                               ; preds = %51, %49, %34, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sm_col_compare(%struct.sm_col_struct* noundef %0, %struct.sm_col_struct* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm_col_struct*, align 8
  %5 = alloca %struct.sm_col_struct*, align 8
  %6 = alloca %struct.sm_element_struct*, align 8
  %7 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %4, align 8
  store %struct.sm_col_struct* %1, %struct.sm_col_struct** %5, align 8
  %8 = load %struct.sm_col_struct*, %struct.sm_col_struct** %4, align 8
  %9 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %8, i32 0, i32 3
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %9, align 8
  store %struct.sm_element_struct* %10, %struct.sm_element_struct** %6, align 8
  %11 = load %struct.sm_col_struct*, %struct.sm_col_struct** %5, align 8
  %12 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %11, i32 0, i32 3
  %13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %12, align 8
  store %struct.sm_element_struct* %13, %struct.sm_element_struct** %7, align 8
  br label %14

14:                                               ; preds = %38, %2
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %16 = icmp ne %struct.sm_element_struct* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %19 = icmp ne %struct.sm_element_struct* %18, null
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %45

22:                                               ; preds = %20
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %24 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %27 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %32 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %35 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %3, align 4
  br label %54

38:                                               ; preds = %22
  %39 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %40 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %39, i32 0, i32 2
  %41 = load %struct.sm_element_struct*, %struct.sm_element_struct** %40, align 8
  store %struct.sm_element_struct* %41, %struct.sm_element_struct** %6, align 8
  %42 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %43 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %42, i32 0, i32 2
  %44 = load %struct.sm_element_struct*, %struct.sm_element_struct** %43, align 8
  store %struct.sm_element_struct* %44, %struct.sm_element_struct** %7, align 8
  br label %14, !llvm.loop !11

45:                                               ; preds = %20
  %46 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %47 = icmp ne %struct.sm_element_struct* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %54

49:                                               ; preds = %45
  %50 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %51 = icmp ne %struct.sm_element_struct* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %54

53:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %48, %30
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_col_struct* @sm_col_and(%struct.sm_col_struct* noundef %0, %struct.sm_col_struct* noundef %1) #0 {
  %3 = alloca %struct.sm_col_struct*, align 8
  %4 = alloca %struct.sm_col_struct*, align 8
  %5 = alloca %struct.sm_col_struct*, align 8
  %6 = alloca %struct.sm_element_struct*, align 8
  %7 = alloca %struct.sm_element_struct*, align 8
  %8 = alloca %struct.sm_col_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %4, align 8
  store %struct.sm_col_struct* %1, %struct.sm_col_struct** %5, align 8
  %9 = call %struct.sm_col_struct* @sm_col_alloc()
  store %struct.sm_col_struct* %9, %struct.sm_col_struct** %8, align 8
  %10 = load %struct.sm_col_struct*, %struct.sm_col_struct** %4, align 8
  %11 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %10, i32 0, i32 3
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  store %struct.sm_element_struct* %12, %struct.sm_element_struct** %6, align 8
  %13 = load %struct.sm_col_struct*, %struct.sm_col_struct** %5, align 8
  %14 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %13, i32 0, i32 3
  %15 = load %struct.sm_element_struct*, %struct.sm_element_struct** %14, align 8
  store %struct.sm_element_struct* %15, %struct.sm_element_struct** %7, align 8
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %17 = icmp eq %struct.sm_element_struct* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %20 = icmp eq %struct.sm_element_struct* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %2
  %22 = load %struct.sm_col_struct*, %struct.sm_col_struct** %8, align 8
  store %struct.sm_col_struct* %22, %struct.sm_col_struct** %3, align 8
  br label %78

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %77, %23
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %26 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %29 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %33, i32 0, i32 2
  %35 = load %struct.sm_element_struct*, %struct.sm_element_struct** %34, align 8
  store %struct.sm_element_struct* %35, %struct.sm_element_struct** %6, align 8
  %36 = icmp eq %struct.sm_element_struct* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load %struct.sm_col_struct*, %struct.sm_col_struct** %8, align 8
  store %struct.sm_col_struct* %38, %struct.sm_col_struct** %3, align 8
  br label %78

39:                                               ; preds = %32
  br label %77

40:                                               ; preds = %24
  %41 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %42 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %45 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %50 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %49, i32 0, i32 2
  %51 = load %struct.sm_element_struct*, %struct.sm_element_struct** %50, align 8
  store %struct.sm_element_struct* %51, %struct.sm_element_struct** %7, align 8
  %52 = icmp eq %struct.sm_element_struct* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load %struct.sm_col_struct*, %struct.sm_col_struct** %8, align 8
  store %struct.sm_col_struct* %54, %struct.sm_col_struct** %3, align 8
  br label %78

55:                                               ; preds = %48
  br label %76

56:                                               ; preds = %40
  %57 = load %struct.sm_col_struct*, %struct.sm_col_struct** %8, align 8
  %58 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %59 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.sm_element_struct* @sm_col_insert(%struct.sm_col_struct* noundef %57, i32 noundef %60)
  %62 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %63 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %62, i32 0, i32 2
  %64 = load %struct.sm_element_struct*, %struct.sm_element_struct** %63, align 8
  store %struct.sm_element_struct* %64, %struct.sm_element_struct** %6, align 8
  %65 = icmp eq %struct.sm_element_struct* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load %struct.sm_col_struct*, %struct.sm_col_struct** %8, align 8
  store %struct.sm_col_struct* %67, %struct.sm_col_struct** %3, align 8
  br label %78

68:                                               ; preds = %56
  %69 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %70 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %69, i32 0, i32 2
  %71 = load %struct.sm_element_struct*, %struct.sm_element_struct** %70, align 8
  store %struct.sm_element_struct* %71, %struct.sm_element_struct** %7, align 8
  %72 = icmp eq %struct.sm_element_struct* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load %struct.sm_col_struct*, %struct.sm_col_struct** %8, align 8
  store %struct.sm_col_struct* %74, %struct.sm_col_struct** %3, align 8
  br label %78

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %55
  br label %77

77:                                               ; preds = %76, %39
  br label %24

78:                                               ; preds = %73, %66, %53, %37, %21
  %79 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  ret %struct.sm_col_struct* %79
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sm_col_hash(%struct.sm_col_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sm_col_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %8 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %7, i32 0, i32 3
  %9 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  store %struct.sm_element_struct* %9, %struct.sm_element_struct** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %12 = icmp ne %struct.sm_element_struct* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 17
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %17 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = load i32, i32* %4, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %24 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %23, i32 0, i32 2
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %24, align 8
  store %struct.sm_element_struct* %25, %struct.sm_element_struct** %6, align 8
  br label %10, !llvm.loop !12

26:                                               ; preds = %10
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sm_col_remove_element(%struct.sm_col_struct* noundef %0, %struct.sm_element_struct* noundef %1) #0 {
  %3 = alloca %struct.sm_col_struct*, align 8
  %4 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_col_struct* %0, %struct.sm_col_struct** %3, align 8
  store %struct.sm_element_struct* %1, %struct.sm_element_struct** %4, align 8
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %5, i32 0, i32 3
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %8 = icmp eq %struct.sm_element_struct* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %11 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %10, i32 0, i32 2
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %13 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %14 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %13, i32 0, i32 3
  store %struct.sm_element_struct* %12, %struct.sm_element_struct** %14, align 8
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %17 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %16, i32 0, i32 2
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %17, align 8
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %20 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %19, i32 0, i32 3
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %20, align 8
  %22 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %21, i32 0, i32 2
  store %struct.sm_element_struct* %18, %struct.sm_element_struct** %22, align 8
  br label %23

23:                                               ; preds = %15, %9
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %25 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %24, i32 0, i32 2
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %25, align 8
  %27 = icmp eq %struct.sm_element_struct* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %30 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 3
  %31 = load %struct.sm_element_struct*, %struct.sm_element_struct** %30, align 8
  %32 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %33 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %32, i32 0, i32 4
  store %struct.sm_element_struct* %31, %struct.sm_element_struct** %33, align 8
  br label %42

34:                                               ; preds = %23
  %35 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %36 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %35, i32 0, i32 3
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %36, align 8
  %38 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %39 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %38, i32 0, i32 2
  %40 = load %struct.sm_element_struct*, %struct.sm_element_struct** %39, align 8
  %41 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %40, i32 0, i32 3
  store %struct.sm_element_struct* %37, %struct.sm_element_struct** %41, align 8
  br label %42

42:                                               ; preds = %34, %28
  %43 = load %struct.sm_col_struct*, %struct.sm_col_struct** %3, align 8
  %44 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %48 = icmp ne %struct.sm_element_struct* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %51 = bitcast %struct.sm_element_struct* %50 to i8*
  call void @free(i8* noundef %51)
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %4, align 8
  br label %52

52:                                               ; preds = %49, %42
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sm_col_print(%struct._IO_FILE* noundef %0, %struct.sm_col_struct* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.sm_col_struct*, align 8
  %5 = alloca %struct.sm_element_struct*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.sm_col_struct* %1, %struct.sm_col_struct** %4, align 8
  %6 = load %struct.sm_col_struct*, %struct.sm_col_struct** %4, align 8
  %7 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %6, i32 0, i32 3
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %11 = icmp ne %struct.sm_element_struct* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %16)
  br label %18

18:                                               ; preds = %12
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %20 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %19, i32 0, i32 2
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %20, align 8
  store %struct.sm_element_struct* %21, %struct.sm_element_struct** %5, align 8
  br label %9, !llvm.loop !13

22:                                               ; preds = %9
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

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
