; ModuleID = './gdevprn.ll'
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
@str = private unnamed_addr constant [39 x i8] c"Printing in memory, please be patient.\00", align 1
@str.1 = private unnamed_addr constant [49 x i8] c"Can't print directly from memory to printer yet.\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_open(%struct.gx_device_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %3 = bitcast i8** %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(200) %3, i8* noundef nonnull align 8 dereferenceable(200) bitcast (%struct.gx_device_memory_s* @mem_mono_device to i8*), i64 200, i1 false)
  %4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %7 = getelementptr inbounds i8*, i8** %6, i64 3
  %8 = bitcast i8** %7 to i32*
  store i32 %5, i32* %8, align 8
  %9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %12 = bitcast i8** %11 to %struct.gx_device_memory_s*
  %13 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %12, i64 0, i32 4
  store i32 %10, i32* %13, align 4
  %14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1
  %15 = bitcast %struct.gx_device_s* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %.not = icmp eq i64 %16, 0
  br i1 %.not, label %22, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  br label %29

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %24 = bitcast i8** %23 to %struct.gx_device_memory_s*
  %25 = call i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef nonnull %24) #8
  %26 = icmp ugt i64 %25, 4294967292
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %90

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %17
  %.01 = phi i64 [ %21, %17 ], [ %25, %28 ]
  %30 = trunc i64 %.01 to i32
  %31 = call i8* @gs_malloc(i32 noundef %30, i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)) #8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %90

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %36 = getelementptr inbounds i8*, i8** %35, i64 20
  store i8* %31, i8** %36, align 8
  %37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = bitcast i8** %38 to i32 (%struct.gx_device_s*)***
  %40 = load i32 (%struct.gx_device_s*)**, i32 (%struct.gx_device_s*)*** %39, align 8
  %41 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %40, align 8
  %42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %43 = bitcast i8** %42 to %struct.gx_device_s*
  %44 = call i32 %41(%struct.gx_device_s* noundef nonnull %43) #8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %90

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1
  %49 = bitcast %struct.gx_device_s* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %.not2 = icmp eq i64 %50, 0
  br i1 %.not2, label %89, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 7
  %55 = ashr i32 %54, 3
  %56 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %57 = getelementptr inbounds i8*, i8** %56, i64 22
  %58 = bitcast i8** %57 to i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)**
  store i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)* @prn_bring_in_rect, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)** %58, align 8
  %59 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 4, i32 9
  %60 = bitcast i32* %59 to %struct.gx_vmem_s*
  %61 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %62 = getelementptr inbounds i8*, i8** %61, i64 21
  %63 = bitcast i8** %62 to i8***
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 5
  %68 = load float, float* %67, align 8
  %69 = fmul float %68, 1.250000e-01
  %70 = sitofp i32 %55 to float
  %71 = fmul float %69, %70
  %72 = fptosi float %71 to i32
  %73 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1
  %74 = bitcast %struct.gx_device_s* %73 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i32 %55, 4
  %77 = sext i32 %76 to i64
  %78 = icmp sgt i64 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %51
  %80 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1
  %81 = bitcast %struct.gx_device_s* %80 to i64*
  %82 = load i64, i64* %81, align 8
  br label %86

83:                                               ; preds = %51
  %84 = add nsw i32 %55, 4
  %85 = sext i32 %84 to i64
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i64 [ %82, %79 ], [ %85, %83 ]
  %88 = call i32 @vmem_init(%struct.gx_vmem_s* noundef nonnull %60, i8** noundef %64, i32 noundef %55, i32 noundef %66, i8 noundef signext 0, i32 noundef %72, i64 noundef %87, i8* (i32, i32, i8*)* noundef nonnull @gs_malloc, void (i8*, i32, i32, i8*)* noundef nonnull @gs_free) #8
  br label %89

89:                                               ; preds = %86, %47
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %89, %46, %33, %27
  %.0 = phi i32 [ -1, %33 ], [ -1, %46 ], [ 0, %89 ], [ -1, %27 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @gx_device_memory_bitmap_size(%struct.gx_device_memory_s* noundef) #2

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @prn_bring_in_rect(%struct.gx_device_memory_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %0, i64 1
  %8 = bitcast %struct.gx_device_memory_s* %7 to %struct.gx_vmem_s*
  %9 = call i32 @vmem_bring_in_rect(%struct.gx_vmem_s* noundef nonnull %8, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #8
  ret i32 %9
}

declare dso_local i32 @vmem_init(%struct.gx_vmem_s* noundef, i8** noundef, i32 noundef, i32 noundef, i8 noundef signext, i32 noundef, i64 noundef, i8* (i32, i32, i8*)* noundef, void (i8*, i32, i32, i8*)* noundef) #2

declare dso_local void @gs_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_close(%struct.gx_device_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1
  %3 = bitcast %struct.gx_device_s* %2 to i64*
  %4 = load i64, i64* %3, align 8
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 4, i32 9
  %7 = bitcast i32* %6 to %struct.gx_vmem_s*
  %8 = call i32 (%struct.gx_vmem_s*, ...) bitcast (i32 (...)* @vmem_close to i32 (%struct.gx_vmem_s*, ...)*)(%struct.gx_vmem_s* noundef nonnull %7) #8
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i32 [ %8, %5 ], [ 0, %9 ]
  ret i32 %11
}

declare dso_local i32 @vmem_close(...) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @gdev_prn_map_rgb_color(%struct.gx_device_s* nocapture noundef readnone %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #3 {
  %5 = or i16 %1, %2
  %6 = or i16 %5, %3
  %.not = icmp eq i16 %6, 0
  %7 = zext i1 %.not to i64
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @gdev_prn_map_color_rgb(%struct.gx_device_s* nocapture noundef readnone %0, i64 noundef %1, i16* nocapture noundef writeonly %2) #4 {
  %.not = icmp eq i64 %1, 0
  %4 = zext i1 %.not to i16
  %5 = getelementptr inbounds i16, i16* %2, i64 2
  store i16 %4, i16* %5, align 2
  %6 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 %4, i16* %6, align 2
  store i16 %4, i16* %2, align 2
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_fill_rectangle(%struct.gx_device_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %8 = getelementptr inbounds i8*, i8** %7, i64 1
  %9 = bitcast i8** %8 to %struct.gx_device_procs_s**
  %10 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %9, align 8
  %11 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %10, i64 0, i32 7
  %12 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %11, align 8
  %13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %14 = bitcast i8** %13 to %struct.gx_device_s*
  %15 = call i32 %12(%struct.gx_device_s* noundef nonnull %14, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #8
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_copy_mono(%struct.gx_device_s* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9) #0 {
  %11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = bitcast i8** %12 to %struct.gx_device_procs_s**
  %14 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %13, align 8
  %15 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %14, i64 0, i32 9
  %16 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %15, align 8
  %17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %18 = bitcast i8** %17 to %struct.gx_device_s*
  %19 = call i32 %16(%struct.gx_device_s* noundef nonnull %18, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9) #8
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_copy_color(%struct.gx_device_s* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = bitcast i8** %10 to %struct.gx_device_procs_s**
  %12 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %11, align 8
  %13 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %12, i64 0, i32 10
  %14 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %13, align 8
  %15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 2
  %16 = bitcast i8** %15 to %struct.gx_device_s*
  %17 = call i32 %14(%struct.gx_device_s* noundef nonnull %16, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #8
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_open_printer(%struct.gx_device_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 1
  %3 = bitcast %struct.gx_device_procs_s** %2 to i32*
  %4 = load i32, i32* %3, align 8
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([49 x i8], [49 x i8]* @str.1, i64 0, i64 0))
  br label %19

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 6, i32 9
  %8 = bitcast i32* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(16) %8, i8* noundef nonnull align 1 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 16, i1 false) #8
  %9 = call i32 (i8*, ...) bitcast (i32 (...)* @mktemp to i32 (i8*, ...)*)(i8* noundef nonnull %8) #8
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #8
  %11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 7, i32 3
  %12 = bitcast i32* %11 to %struct._IO_FILE**
  store %struct._IO_FILE* %10, %struct._IO_FILE** %12, align 8
  %13 = icmp eq %struct._IO_FILE* %10, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %7) #9
  br label %20

17:                                               ; preds = %6
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32* noundef nonnull %7) #8
  br label %19

19:                                               ; preds = %17, %5
  br label %20

20:                                               ; preds = %19, %14
  %.0 = phi i32 [ 0, %19 ], [ -1, %14 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #5

declare dso_local i32 @mktemp(...) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @gdev_prn_transpose_8x8(i8* nocapture noundef readonly %0, i32 noundef %1, i8* nocapture noundef writeonly %2, i32 noundef %3) #6 {
  %5 = shl i32 %1, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %0, i64 %6
  %8 = load i8, i8* %0, align 1
  %9 = zext i8 %8 to i16
  %10 = shl nuw i16 %9, 8
  %11 = load i8, i8* %7, align 1
  %12 = zext i8 %11 to i16
  %13 = or i16 %10, %12
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds i8, i8* %0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i16
  %18 = shl nuw i16 %17, 8
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds i8, i8* %7, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i16
  %23 = or i16 %18, %22
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds i8, i8* %15, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i16
  %28 = shl nuw i16 %27, 8
  %29 = sext i32 %1 to i64
  %30 = getelementptr inbounds i8, i8* %20, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i16
  %33 = or i16 %28, %32
  %34 = sext i32 %1 to i64
  %35 = getelementptr inbounds i8, i8* %25, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i16
  %38 = shl nuw i16 %37, 8
  %39 = sext i32 %1 to i64
  %40 = getelementptr inbounds i8, i8* %30, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i16
  %43 = or i16 %38, %42
  %44 = and i16 %13, -4081
  %45 = shl nuw nsw i16 %9, 4
  %46 = and i16 %45, 240
  %47 = or i16 %44, %46
  %48 = and i8 %11, -16
  %49 = zext i8 %48 to i16
  %50 = shl nuw nsw i16 %49, 4
  %51 = or i16 %50, %47
  %52 = and i16 %23, -4081
  %53 = shl nuw nsw i16 %17, 4
  %54 = and i16 %53, 240
  %55 = or i16 %52, %54
  %56 = and i8 %21, -16
  %57 = zext i8 %56 to i16
  %58 = shl nuw nsw i16 %57, 4
  %59 = or i16 %58, %55
  %60 = and i16 %33, -4081
  %61 = shl nuw nsw i16 %27, 4
  %62 = and i16 %61, 240
  %63 = or i16 %60, %62
  %64 = and i8 %31, -16
  %65 = zext i8 %64 to i16
  %66 = shl nuw nsw i16 %65, 4
  %67 = or i16 %66, %63
  %68 = and i16 %43, -4081
  %69 = shl nuw nsw i16 %37, 4
  %70 = and i16 %69, 240
  %71 = or i16 %68, %70
  %72 = and i8 %41, -16
  %73 = zext i8 %72 to i16
  %74 = shl nuw nsw i16 %73, 4
  %75 = or i16 %74, %71
  %76 = and i16 %67, 13107
  %77 = shl i16 %51, 2
  %78 = and i16 %77, -13108
  %79 = or i16 %76, %78
  %80 = and i16 %51, -13108
  %81 = lshr i16 %67, 2
  %82 = and i16 %81, 13107
  %83 = or i16 %80, %82
  %84 = and i16 %75, 13107
  %85 = shl i16 %59, 2
  %86 = and i16 %85, -13108
  %87 = or i16 %84, %86
  %88 = and i16 %59, -13108
  %89 = lshr i16 %75, 2
  %90 = and i16 %89, 13107
  %91 = or i16 %88, %90
  %92 = and i16 %91, 21845
  %93 = shl i16 %83, 1
  %94 = and i16 %93, -21846
  %95 = or i16 %92, %94
  %96 = and i16 %83, -21846
  %97 = lshr i16 %91, 1
  %98 = and i16 %97, 21845
  %99 = or i16 %96, %98
  %100 = and i16 %87, 21845
  %101 = shl i16 %79, 1
  %102 = and i16 %101, -21846
  %103 = or i16 %100, %102
  %104 = and i16 %79, -21846
  %105 = lshr i16 %87, 1
  %106 = and i16 %105, 21845
  %107 = or i16 %104, %106
  %108 = lshr i16 %99, 8
  %109 = trunc i16 %108 to i8
  store i8 %109, i8* %2, align 1
  %110 = sext i32 %3 to i64
  %111 = getelementptr inbounds i8, i8* %2, i64 %110
  %112 = lshr i16 %95, 8
  %113 = trunc i16 %112 to i8
  store i8 %113, i8* %111, align 1
  %114 = sext i32 %3 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = lshr i16 %107, 8
  %117 = trunc i16 %116 to i8
  store i8 %117, i8* %115, align 1
  %118 = sext i32 %3 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = lshr i16 %103, 8
  %121 = trunc i16 %120 to i8
  store i8 %121, i8* %119, align 1
  %122 = sext i32 %3 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = trunc i16 %99 to i8
  store i8 %124, i8* %123, align 1
  %125 = sext i32 %3 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = trunc i16 %95 to i8
  store i8 %127, i8* %126, align 1
  %128 = sext i32 %3 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = trunc i16 %107 to i8
  store i8 %130, i8* %129, align 1
  %131 = sext i32 %3 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = trunc i16 %103 to i8
  store i8 %133, i8* %132, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gdev_prn_close_printer(%struct.gx_device_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 1, i32 1
  %3 = bitcast %struct.gx_device_procs_s** %2 to i32*
  %4 = load i32, i32* %3, align 8
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 7, i32 3
  %7 = bitcast i32* %6 to %struct._IO_FILE**
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %9 = call i32 @fclose(%struct._IO_FILE* noundef %8) #8
  %10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 6, i32 9
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32* noundef nonnull %10) #8
  br label %12

12:                                               ; preds = %5, %1
  ret i32 0
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @vmem_bring_in_rect(%struct.gx_vmem_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
