; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gdevprn.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gdevprn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }
%struct.gx_device_procs_s = type { {}*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, {}*, {}*, {}*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, i64, i32, %struct.gx_device_memory_s, %struct.gx_vmem_s, [30 x i8], %struct._IO_FILE* }
%struct.gx_vmem_s = type { i8**, i32, i32, i8, i32, i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@mem_mono_device = external dso_local global %struct.gx_device_memory_s, align 8
@.str = private unnamed_addr constant [15 x i8] c"printer buffer\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Printing in memory, please be patient.\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Can't print directly from memory to printer yet.\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/tmp/prn_XXXXXX\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"could not open the printer file %s!\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Printing from memory to file %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"To print the page, copy the file %s to the printer\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_open(%struct.gx_device_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gx_device_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.gx_device_s* %0, %struct.gx_device_s** %3, align 8
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_printer_s*
  %9 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 13
  %10 = bitcast %struct.gx_device_memory_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.gx_device_memory_s* @mem_mono_device to i8*), i64 200, i1 false)
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_printer_s*
  %16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 13
  %17 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %16, i32 0, i32 3
  store i32 %13, i32* %17, align 8
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %22 = bitcast %struct.gx_device_s* %21 to %struct.gx_device_printer_s*
  %23 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 13
  %24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 4
  store i32 %20, i32* %24, align 4
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %26 = bitcast %struct.gx_device_s* %25 to %struct.gx_device_printer_s*
  %27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 11
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %32 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  store i64 %35, i64* %4, align 8
  br label %45

36:                                               ; preds = %1
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %38 = bitcast %struct.gx_device_s* %37 to %struct.gx_device_printer_s*
  %39 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 13
  %40 = call i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp ugt i64 %41, 4294967292
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %134

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i64, i64* %4, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i8* @gs_malloc(i32 noundef %47, i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %134

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %55 = bitcast %struct.gx_device_s* %54 to %struct.gx_device_printer_s*
  %56 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %55, i32 0, i32 13
  %57 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %56, i32 0, i32 13
  store i8* %53, i8** %57, align 8
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %59 = bitcast %struct.gx_device_s* %58 to %struct.gx_device_printer_s*
  %60 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %59, i32 0, i32 13
  %61 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %60, i32 0, i32 1
  %62 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %61, align 8
  %63 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %62, i32 0, i32 0
  %64 = bitcast {}** %63 to i32 (%struct.gx_device_s*)**
  %65 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %64, align 8
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %67 = bitcast %struct.gx_device_s* %66 to %struct.gx_device_printer_s*
  %68 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %67, i32 0, i32 13
  %69 = bitcast %struct.gx_device_memory_s* %68 to %struct.gx_device_s*
  %70 = call i32 %65(%struct.gx_device_s* noundef %69)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %52
  store i32 -1, i32* %2, align 4
  br label %134

73:                                               ; preds = %52
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %75 = bitcast %struct.gx_device_s* %74 to %struct.gx_device_printer_s*
  %76 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %75, i32 0, i32 11
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %132

79:                                               ; preds = %73
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %81 = bitcast %struct.gx_device_s* %80 to %struct.gx_device_printer_s*
  %82 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 7
  %85 = ashr i32 %84, 3
  store i32 %85, i32* %6, align 4
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %87 = bitcast %struct.gx_device_s* %86 to %struct.gx_device_printer_s*
  %88 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %87, i32 0, i32 13
  %89 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %88, i32 0, i32 15
  store i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* @prn_bring_in_rect, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %89, align 8
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %91 = bitcast %struct.gx_device_s* %90 to %struct.gx_device_printer_s*
  %92 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %91, i32 0, i32 14
  %93 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %94 = bitcast %struct.gx_device_s* %93 to %struct.gx_device_printer_s*
  %95 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %94, i32 0, i32 13
  %96 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %95, i32 0, i32 14
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %100 = bitcast %struct.gx_device_s* %99 to %struct.gx_device_printer_s*
  %101 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %104 = bitcast %struct.gx_device_s* %103 to %struct.gx_device_printer_s*
  %105 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %104, i32 0, i32 5
  %106 = load float, float* %105, align 8
  %107 = fdiv float %106, 8.000000e+00
  %108 = load i32, i32* %6, align 4
  %109 = sitofp i32 %108 to float
  %110 = fmul float %107, %109
  %111 = fptosi float %110 to i32
  %112 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %113 = bitcast %struct.gx_device_s* %112 to %struct.gx_device_printer_s*
  %114 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %113, i32 0, i32 11
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 4
  %118 = sext i32 %117 to i64
  %119 = icmp sgt i64 %115, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %79
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %122 = bitcast %struct.gx_device_s* %121 to %struct.gx_device_printer_s*
  %123 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %122, i32 0, i32 11
  %124 = load i64, i64* %123, align 8
  br label %129

125:                                              ; preds = %79
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  br label %129

129:                                              ; preds = %125, %120
  %130 = phi i64 [ %124, %120 ], [ %128, %125 ]
  %131 = call i32 @vmem_init(%struct.gx_vmem_s* noundef %92, i8** noundef %97, i32 noundef %98, i32 noundef %102, i8 noundef signext 0, i32 noundef %111, i64 noundef %130, i8* (i32, i32, i8*)* noundef @gs_malloc, void (i8*, i32, i32, i8*)* noundef @gs_free)
  br label %132

132:                                              ; preds = %129, %73
  %133 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %72, %51, %43
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef) #2

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @prn_bring_in_rect(%struct.gx_device_memory_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.gx_device_memory_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gx_device_memory_s* %0, %struct.gx_device_memory_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %7, align 8
  %14 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %13, i64 1
  %15 = bitcast %struct.gx_device_memory_s* %14 to %struct.gx_vmem_s*
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @vmem_bring_in_rect(%struct.gx_vmem_s* noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20)
  ret i32 %21
}

declare dso_local i32 @vmem_init(%struct.gx_vmem_s* noundef, i8** noundef, i32 noundef, i32 noundef, i8 noundef signext, i32 noundef, i64 noundef, i8* (i32, i32, i8*)* noundef, void (i8*, i32, i32, i8*)* noundef) #2

declare dso_local void @gs_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_close(%struct.gx_device_s* noundef %0) #0 {
  %2 = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %2, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %2, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_printer_s*
  %5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 11
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %2, align 8
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_printer_s*
  %11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 14
  %12 = call i32 (%struct.gx_vmem_s*, ...) bitcast (i32 (...)* @vmem_close to i32 (%struct.gx_vmem_s*, ...)*)(%struct.gx_vmem_s* noundef %11)
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi i32 [ %12, %8 ], [ 0, %13 ]
  ret i32 %15
}

declare dso_local i32 @vmem_close(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @gdev_prn_map_rgb_color(%struct.gx_device_s* noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = alloca %struct.gx_device_s*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.gx_device_s* %0, %struct.gx_device_s** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %9 = load i16, i16* %6, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* %7, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %10, %12
  %14 = load i16, i16* %8, align 2
  %15 = zext i16 %14 to i32
  %16 = or i32 %13, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 1
  %20 = sext i32 %19 to i64
  ret i64 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_map_color_rgb(%struct.gx_device_s* noundef %0, i64 noundef %1, i16* noundef %2) #0 {
  %4 = alloca %struct.gx_device_s*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %4, align 8
  store i64 %1, i64* %5, align 8
  store i16* %2, i16** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 1
  %11 = trunc i32 %10 to i16
  %12 = load i16*, i16** %6, align 8
  %13 = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %11, i16* %13, align 2
  %14 = load i16*, i16** %6, align 8
  %15 = getelementptr inbounds i16, i16* %14, i64 1
  store i16 %11, i16* %15, align 2
  %16 = load i16*, i16** %6, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 0
  store i16 %11, i16* %17, align 2
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_fill_rectangle(%struct.gx_device_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #0 {
  %7 = alloca %struct.gx_device_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %7, align 8
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_printer_s*
  %15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 13
  %16 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %15, i32 0, i32 1
  %17 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %16, align 8
  %18 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %17, i32 0, i32 7
  %19 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %18, align 8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %7, align 8
  %21 = bitcast %struct.gx_device_s* %20 to %struct.gx_device_printer_s*
  %22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %21, i32 0, i32 13
  %23 = bitcast %struct.gx_device_memory_s* %22 to %struct.gx_device_s*
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i64, i64* %12, align 8
  %29 = call i32 %19(%struct.gx_device_s* noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i64 noundef %28)
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_copy_mono(%struct.gx_device_s* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9) #0 {
  %11 = alloca %struct.gx_device_s*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %22 = bitcast %struct.gx_device_s* %21 to %struct.gx_device_printer_s*
  %23 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 13
  %24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %23, i32 0, i32 1
  %25 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %24, align 8
  %26 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %25, i32 0, i32 9
  %27 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %26, align 8
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %29 = bitcast %struct.gx_device_s* %28 to %struct.gx_device_printer_s*
  %30 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 13
  %31 = bitcast %struct.gx_device_memory_s* %30 to %struct.gx_device_s*
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i64, i64* %19, align 8
  %40 = load i64, i64* %20, align 8
  %41 = call i32 %27(%struct.gx_device_s* noundef %31, i8* noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, i64 noundef %39, i64 noundef %40)
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_copy_color(%struct.gx_device_s* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.gx_device_s*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gx_device_s* %0, %struct.gx_device_s** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %18 = bitcast %struct.gx_device_s* %17 to %struct.gx_device_printer_s*
  %19 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 13
  %20 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 1
  %21 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %20, align 8
  %22 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %21, i32 0, i32 10
  %23 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %22, align 8
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %9, align 8
  %25 = bitcast %struct.gx_device_s* %24 to %struct.gx_device_printer_s*
  %26 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %25, i32 0, i32 13
  %27 = bitcast %struct.gx_device_memory_s* %26 to %struct.gx_device_s*
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32 %23(%struct.gx_device_s* noundef %27, i8* noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_open_printer(%struct.gx_device_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gx_device_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %3, align 8
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_printer_s*
  %7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 12
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %14 = bitcast %struct.gx_device_s* %13 to %struct.gx_device_printer_s*
  %15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 15
  %16 = getelementptr inbounds [30 x i8], [30 x i8]* %15, i64 0, i64 0
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strcpy(i8* noundef %17, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i8*, ...) bitcast (i32 (...)* @mktemp to i32 (i8*, ...)*)(i8* noundef %19)
  %21 = load i8*, i8** %4, align 8
  %22 = call noalias %struct._IO_FILE* @fopen(i8* noundef %21, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %24 = bitcast %struct.gx_device_s* %23 to %struct.gx_device_printer_s*
  %25 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 16
  store %struct._IO_FILE* %22, %struct._IO_FILE** %25, align 8
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_printer_s*
  %28 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 16
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %28, align 8
  %30 = icmp eq %struct._IO_FILE* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %12
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* noundef %33)
  store i32 -1, i32* %2, align 4
  br label %39

35:                                               ; preds = %12
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* noundef %36)
  br label %38

38:                                               ; preds = %35, %10
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

declare dso_local i32 @mktemp(...) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @gdev_prn_transpose_8x8(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i16
  %23 = zext i16 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %24, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %10, align 2
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i16
  %36 = zext i16 %35 to i32
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %6, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %37, %43
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %11, align 2
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i16
  %52 = zext i16 %51 to i32
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %53, %59
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %12, align 2
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i16
  %68 = zext i16 %67 to i32
  %69 = shl i32 %68, 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add nsw i32 %69, %75
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %13, align 2
  %78 = load i16, i16* %10, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 61455
  %81 = load i16, i16* %10, align 2
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 3840
  %84 = ashr i32 %83, 4
  %85 = add nsw i32 %80, %84
  %86 = load i16, i16* %10, align 2
  %87 = zext i16 %86 to i32
  %88 = and i32 %87, 240
  %89 = shl i32 %88, 4
  %90 = add nsw i32 %85, %89
  %91 = trunc i32 %90 to i16
  store i16 %91, i16* %10, align 2
  %92 = load i16, i16* %11, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %93, 61455
  %95 = load i16, i16* %11, align 2
  %96 = zext i16 %95 to i32
  %97 = and i32 %96, 3840
  %98 = ashr i32 %97, 4
  %99 = add nsw i32 %94, %98
  %100 = load i16, i16* %11, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %101, 240
  %103 = shl i32 %102, 4
  %104 = add nsw i32 %99, %103
  %105 = trunc i32 %104 to i16
  store i16 %105, i16* %11, align 2
  %106 = load i16, i16* %12, align 2
  %107 = zext i16 %106 to i32
  %108 = and i32 %107, 61455
  %109 = load i16, i16* %12, align 2
  %110 = zext i16 %109 to i32
  %111 = and i32 %110, 3840
  %112 = ashr i32 %111, 4
  %113 = add nsw i32 %108, %112
  %114 = load i16, i16* %12, align 2
  %115 = zext i16 %114 to i32
  %116 = and i32 %115, 240
  %117 = shl i32 %116, 4
  %118 = add nsw i32 %113, %117
  %119 = trunc i32 %118 to i16
  store i16 %119, i16* %12, align 2
  %120 = load i16, i16* %13, align 2
  %121 = zext i16 %120 to i32
  %122 = and i32 %121, 61455
  %123 = load i16, i16* %13, align 2
  %124 = zext i16 %123 to i32
  %125 = and i32 %124, 3840
  %126 = ashr i32 %125, 4
  %127 = add nsw i32 %122, %126
  %128 = load i16, i16* %13, align 2
  %129 = zext i16 %128 to i32
  %130 = and i32 %129, 240
  %131 = shl i32 %130, 4
  %132 = add nsw i32 %127, %131
  %133 = trunc i32 %132 to i16
  store i16 %133, i16* %13, align 2
  %134 = load i16, i16* %12, align 2
  store i16 %134, i16* %14, align 2
  %135 = load i16, i16* %12, align 2
  %136 = zext i16 %135 to i32
  %137 = and i32 %136, 13107
  %138 = load i16, i16* %10, align 2
  %139 = zext i16 %138 to i32
  %140 = and i32 %139, 13107
  %141 = shl i32 %140, 2
  %142 = add nsw i32 %137, %141
  %143 = trunc i32 %142 to i16
  store i16 %143, i16* %12, align 2
  %144 = load i16, i16* %10, align 2
  %145 = zext i16 %144 to i32
  %146 = and i32 %145, -13108
  %147 = load i16, i16* %14, align 2
  %148 = zext i16 %147 to i32
  %149 = ashr i32 %148, 2
  %150 = and i32 %149, 13107
  %151 = add nsw i32 %146, %150
  %152 = trunc i32 %151 to i16
  store i16 %152, i16* %10, align 2
  %153 = load i16, i16* %13, align 2
  store i16 %153, i16* %14, align 2
  %154 = load i16, i16* %13, align 2
  %155 = zext i16 %154 to i32
  %156 = and i32 %155, 13107
  %157 = load i16, i16* %11, align 2
  %158 = zext i16 %157 to i32
  %159 = and i32 %158, 13107
  %160 = shl i32 %159, 2
  %161 = add nsw i32 %156, %160
  %162 = trunc i32 %161 to i16
  store i16 %162, i16* %13, align 2
  %163 = load i16, i16* %11, align 2
  %164 = zext i16 %163 to i32
  %165 = and i32 %164, -13108
  %166 = load i16, i16* %14, align 2
  %167 = zext i16 %166 to i32
  %168 = ashr i32 %167, 2
  %169 = and i32 %168, 13107
  %170 = add nsw i32 %165, %169
  %171 = trunc i32 %170 to i16
  store i16 %171, i16* %11, align 2
  %172 = load i16, i16* %11, align 2
  store i16 %172, i16* %14, align 2
  %173 = load i16, i16* %11, align 2
  %174 = zext i16 %173 to i32
  %175 = and i32 %174, 21845
  %176 = load i16, i16* %10, align 2
  %177 = zext i16 %176 to i32
  %178 = and i32 %177, 21845
  %179 = shl i32 %178, 1
  %180 = add nsw i32 %175, %179
  %181 = trunc i32 %180 to i16
  store i16 %181, i16* %11, align 2
  %182 = load i16, i16* %10, align 2
  %183 = zext i16 %182 to i32
  %184 = and i32 %183, -21846
  %185 = load i16, i16* %14, align 2
  %186 = zext i16 %185 to i32
  %187 = ashr i32 %186, 1
  %188 = and i32 %187, 21845
  %189 = add nsw i32 %184, %188
  %190 = trunc i32 %189 to i16
  store i16 %190, i16* %10, align 2
  %191 = load i16, i16* %13, align 2
  store i16 %191, i16* %14, align 2
  %192 = load i16, i16* %13, align 2
  %193 = zext i16 %192 to i32
  %194 = and i32 %193, 21845
  %195 = load i16, i16* %12, align 2
  %196 = zext i16 %195 to i32
  %197 = and i32 %196, 21845
  %198 = shl i32 %197, 1
  %199 = add nsw i32 %194, %198
  %200 = trunc i32 %199 to i16
  store i16 %200, i16* %13, align 2
  %201 = load i16, i16* %12, align 2
  %202 = zext i16 %201 to i32
  %203 = and i32 %202, -21846
  %204 = load i16, i16* %14, align 2
  %205 = zext i16 %204 to i32
  %206 = ashr i32 %205, 1
  %207 = and i32 %206, 21845
  %208 = add nsw i32 %203, %207
  %209 = trunc i32 %208 to i16
  store i16 %209, i16* %12, align 2
  %210 = load i16, i16* %10, align 2
  %211 = zext i16 %210 to i32
  %212 = ashr i32 %211, 8
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %7, align 8
  store i8 %213, i8* %214, align 1
  %215 = load i32, i32* %8, align 4
  %216 = load i8*, i8** %7, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  store i8* %218, i8** %7, align 8
  %219 = load i16, i16* %11, align 2
  %220 = zext i16 %219 to i32
  %221 = ashr i32 %220, 8
  %222 = trunc i32 %221 to i8
  %223 = load i8*, i8** %7, align 8
  store i8 %222, i8* %223, align 1
  %224 = load i32, i32* %8, align 4
  %225 = load i8*, i8** %7, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  store i8* %227, i8** %7, align 8
  %228 = load i16, i16* %12, align 2
  %229 = zext i16 %228 to i32
  %230 = ashr i32 %229, 8
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %7, align 8
  store i8 %231, i8* %232, align 1
  %233 = load i32, i32* %8, align 4
  %234 = load i8*, i8** %7, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8* %236, i8** %7, align 8
  %237 = load i16, i16* %13, align 2
  %238 = zext i16 %237 to i32
  %239 = ashr i32 %238, 8
  %240 = trunc i32 %239 to i8
  %241 = load i8*, i8** %7, align 8
  store i8 %240, i8* %241, align 1
  %242 = load i32, i32* %8, align 4
  %243 = load i8*, i8** %7, align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  store i8* %245, i8** %7, align 8
  %246 = load i16, i16* %10, align 2
  %247 = trunc i16 %246 to i8
  %248 = load i8*, i8** %7, align 8
  store i8 %247, i8* %248, align 1
  %249 = load i32, i32* %8, align 4
  %250 = load i8*, i8** %7, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i8, i8* %250, i64 %251
  store i8* %252, i8** %7, align 8
  %253 = load i16, i16* %11, align 2
  %254 = trunc i16 %253 to i8
  %255 = load i8*, i8** %7, align 8
  store i8 %254, i8* %255, align 1
  %256 = load i32, i32* %8, align 4
  %257 = load i8*, i8** %7, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  store i8* %259, i8** %7, align 8
  %260 = load i16, i16* %12, align 2
  %261 = trunc i16 %260 to i8
  %262 = load i8*, i8** %7, align 8
  store i8 %261, i8* %262, align 1
  %263 = load i32, i32* %8, align 4
  %264 = load i8*, i8** %7, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  store i8* %266, i8** %7, align 8
  %267 = load i16, i16* %13, align 2
  %268 = trunc i16 %267 to i8
  %269 = load i8*, i8** %7, align 8
  store i8 %268, i8* %269, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_close_printer(%struct.gx_device_s* noundef %0) #0 {
  %2 = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %0, %struct.gx_device_s** %2, align 8
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %2, align 8
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_printer_s*
  %5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 12
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %2, align 8
  %10 = bitcast %struct.gx_device_s* %9 to %struct.gx_device_printer_s*
  %11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %10, i32 0, i32 16
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %13 = call i32 @fclose(%struct._IO_FILE* noundef %12)
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %2, align 8
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_printer_s*
  %16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 15
  %17 = getelementptr inbounds [30 x i8], [30 x i8]* %16, i64 0, i64 0
  %18 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8* noundef %17)
  br label %19

19:                                               ; preds = %8, %1
  ret i32 0
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @vmem_bring_in_rect(%struct.gx_vmem_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
