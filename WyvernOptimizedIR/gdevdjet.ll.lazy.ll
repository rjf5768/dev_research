; ModuleID = './gdevdjet.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gdevdjet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, i64, i32, %struct.gx_device_memory_s, %struct.gx_vmem_s, [30 x i8], %struct._IO_FILE* }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32, %struct.gs_matrix_s, i32, i8*, i8**, i32 (%struct.gx_device_memory_s*, i32, i32, i32, i32, i32)*, i32, i32, i8* }
%struct.gx_vmem_s = type { i8**, i32, i32, i8, i32, i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)*, %struct._IO_FILE*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@prn_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*)* @djet_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16, i16, i16)* @gdev_prn_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_prn_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gdev_prn_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* @gdev_prn_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)* @gdev_prn_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* @gx_default_tile_trapezoid }, align 8
@.str = private unnamed_addr constant [8 x i8] c"deskjet\00", align 1
@gs_deskjet_device = dso_local global %struct.gx_device_printer_s { i32 424, %struct.gx_device_procs_s* @prn_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2400, i32 3150, float 3.000000e+02, float 3.000000e+02, i32 0, i16 1, i32 1, i32 0, i64 0, i32 0, %struct.gx_device_memory_s zeroinitializer, %struct.gx_vmem_s zeroinitializer, [30 x i8] zeroinitializer, %struct._IO_FILE* null }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%c*rB\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%c*t300R\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%c*p0x0Y\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%c*r0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%c*b2M\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%c*p+%dY\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%c*b%dW\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%c&l0H\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @compress_row(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = getelementptr inbounds i8, i8* %1, i64 -4
  br label %5

5:                                                ; preds = %78, %3
  %.09 = phi i8* [ %2, %3 ], [ %.312, %78 ]
  %.04 = phi i8* [ %0, %3 ], [ %.3, %78 ]
  %.02 = phi i8 [ undef, %3 ], [ %.2, %78 ]
  %6 = icmp ult i8* %.04, %1
  br i1 %6, label %7, label %79

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %24, %7
  %.15 = phi i8* [ %.04, %7 ], [ %25, %24 ]
  %.13 = phi i8 [ %.02, %7 ], [ %.2, %24 ]
  %.not = icmp ugt i8* %.15, %4
  br i1 %.not, label %22, label %9

9:                                                ; preds = %8
  %10 = load i8, i8* %.15, align 1
  %11 = getelementptr inbounds i8, i8* %.15, i64 1
  %12 = load i8, i8* %11, align 1
  %.not15 = icmp eq i8 %10, %12
  br i1 %.not15, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, i8* %.15, i64 2
  %15 = load i8, i8* %14, align 1
  %.not16 = icmp eq i8 %10, %15
  br i1 %.not16, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, i8* %.15, i64 3
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %10, %18
  br label %20

20:                                               ; preds = %16, %13, %9
  %21 = phi i1 [ true, %13 ], [ true, %9 ], [ %19, %16 ]
  br label %22

22:                                               ; preds = %20, %8
  %.2 = phi i8 [ %10, %20 ], [ %.13, %8 ]
  %23 = phi i1 [ %21, %20 ], [ false, %8 ]
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, i8* %.15, i64 1
  br label %8, !llvm.loop !4

26:                                               ; preds = %22
  %27 = icmp ugt i8* %.15, %4
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %41

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, i8* %.15, i64 4
  br label %31

31:                                               ; preds = %38, %29
  %.07 = phi i8* [ %30, %29 ], [ %39, %38 ]
  %32 = icmp ult i8* %.07, %1
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8, i8* %.07, align 1
  %35 = icmp eq i8 %34, %.2
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i1 [ false, %31 ], [ %35, %33 ]
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, i8* %.07, i64 1
  br label %31, !llvm.loop !6

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %28
  %.18 = phi i8* [ %1, %28 ], [ %.07, %40 ]
  %.26 = phi i8* [ %1, %28 ], [ %.15, %40 ]
  br label %42

42:                                               ; preds = %60, %41
  %.013 = phi i8* [ %.04, %41 ], [ %.114, %60 ]
  %.110 = phi i8* [ %.09, %41 ], [ %.211, %60 ]
  %43 = icmp ult i8* %.013, %.26
  br i1 %43, label %44, label %61

44:                                               ; preds = %42
  %45 = ptrtoint i8* %.26 to i64
  %46 = ptrtoint i8* %.013 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = icmp sgt i32 %48, 127
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %44
  %.01 = phi i32 [ 127, %50 ], [ %48, %44 ]
  %52 = trunc i32 %.01 to i8
  %53 = add i8 %52, -1
  store i8 %53, i8* %.110, align 1
  br label %54

54:                                               ; preds = %56, %51
  %.114 = phi i8* [ %.013, %51 ], [ %57, %56 ]
  %.110.pn = phi i8* [ %.110, %51 ], [ %.211, %56 ]
  %.1 = phi i32 [ %.01, %51 ], [ %59, %56 ]
  %.211 = getelementptr inbounds i8, i8* %.110.pn, i64 1
  %55 = icmp sgt i32 %.1, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = getelementptr inbounds i8, i8* %.114, i64 1
  %58 = load i8, i8* %.114, align 1
  store i8 %58, i8* %.211, align 1
  %59 = add nsw i32 %.1, -1
  br label %54, !llvm.loop !7

60:                                               ; preds = %54
  br label %42, !llvm.loop !8

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %71, %61
  %.312 = phi i8* [ %.110, %61 ], [ %75, %71 ]
  %.3 = phi i8* [ %.26, %61 ], [ %77, %71 ]
  %63 = icmp ult i8* %.3, %.18
  br i1 %63, label %64, label %78

64:                                               ; preds = %62
  %65 = ptrtoint i8* %.18 to i64
  %66 = ptrtoint i8* %.3 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = icmp sgt i32 %68, 127
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %64
  %.0 = phi i32 [ 127, %70 ], [ %68, %64 ]
  %72 = trunc i32 %.0 to i8
  %73 = sub i8 1, %72
  %74 = getelementptr inbounds i8, i8* %.312, i64 1
  store i8 %73, i8* %.312, align 1
  %75 = getelementptr inbounds i8, i8* %.312, i64 2
  store i8 %.2, i8* %74, align 1
  %76 = sext i32 %.0 to i64
  %77 = getelementptr inbounds i8, i8* %.3, i64 %76
  br label %62, !llvm.loop !9

78:                                               ; preds = %62
  br label %5, !llvm.loop !10

79:                                               ; preds = %5
  %80 = ptrtoint i8* %.09 to i64
  %81 = ptrtoint i8* %2 to i64
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  ret i32 %83
}

declare dso_local i32 @gdev_prn_open(%struct.gx_device_s* noundef) #1

declare dso_local void @gx_default_get_initial_matrix(%struct.gx_device_s* noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gx_default_sync_output(%struct.gx_device_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @djet_output_page(%struct.gx_device_s* noundef %0) #2 {
  %2 = call i32 @gdev_prn_open_printer(%struct.gx_device_s* noundef %0) #3
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %12

5:                                                ; preds = %1
  %6 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_printer_s*
  %7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 7, i32 3
  %8 = bitcast i32* %7 to %struct._IO_FILE**
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %10 = call i32 @djet_print_page(%struct.gx_device_printer_s* noundef %6, %struct._IO_FILE* noundef %9)
  %11 = call i32 @gdev_prn_close_printer(%struct.gx_device_s* noundef %0) #3
  br label %12

12:                                               ; preds = %5, %4
  %.0 = phi i32 [ %2, %4 ], [ 0, %5 ]
  ret i32 %.0
}

declare dso_local i32 @gdev_prn_close(%struct.gx_device_s* noundef) #1

declare dso_local i64 @gdev_prn_map_rgb_color(%struct.gx_device_s* noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

declare dso_local i32 @gdev_prn_map_color_rgb(%struct.gx_device_s* noundef, i64 noundef, i16* noundef) #1

declare dso_local i32 @gdev_prn_fill_rectangle(%struct.gx_device_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @gx_default_tile_rectangle(%struct.gx_device_s* noundef, %struct.gx_bitmap_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) #1

declare dso_local i32 @gdev_prn_copy_mono(%struct.gx_device_s* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) #1

declare dso_local i32 @gdev_prn_copy_color(%struct.gx_device_s* noundef, i8* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @gx_default_draw_line(%struct.gx_device_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @gx_default_fill_trapezoid(%struct.gx_device_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #1

declare dso_local i32 @gx_default_tile_trapezoid(%struct.gx_device_s* noundef, %struct.gx_bitmap_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) #1

declare dso_local i32 @gdev_prn_open_printer(%struct.gx_device_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @djet_print_page(%struct.gx_device_printer_s* noundef %0, %struct._IO_FILE* noundef %1) #2 {
  %3 = alloca [304 x i8], align 16
  %4 = alloca [303 x i8], align 16
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 27) #3
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef 27) #3
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef 27) #3
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 noundef 27) #3
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef 27) #3
  %10 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %0, i64 0, i32 13
  %11 = call i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef nonnull %10) #3
  br label %12

12:                                               ; preds = %50, %2
  %.02 = phi i32 [ 0, %2 ], [ %51, %50 ]
  %.01 = phi i32 [ 0, %2 ], [ %.2, %50 ]
  %13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %0, i64 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %.02, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = getelementptr inbounds [304 x i8], [304 x i8]* %3, i64 0, i64 300
  %18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %0, i64 0, i32 13
  %19 = getelementptr inbounds [304 x i8], [304 x i8]* %3, i64 0, i64 0
  %20 = call i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef nonnull %18, i32 noundef %.02, i8* noundef nonnull %19, i32 noundef %11) #3
  br label %21

21:                                               ; preds = %30, %16
  %.0 = phi i8* [ %17, %16 ], [ %31, %30 ]
  %22 = getelementptr inbounds [304 x i8], [304 x i8]* %3, i64 0, i64 0
  %23 = icmp ugt i8* %.0, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, i8* %.0, i64 -1
  %26 = load i8, i8* %25, align 1
  %27 = icmp eq i8 %26, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, i8* %.0, i64 -1
  br label %21, !llvm.loop !11

32:                                               ; preds = %28
  %33 = getelementptr inbounds [304 x i8], [304 x i8]* %3, i64 0, i64 0
  %34 = icmp eq i8* %.0, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = add nsw i32 %.01, 1
  br label %49

37:                                               ; preds = %32
  %38 = getelementptr inbounds [304 x i8], [304 x i8]* %3, i64 0, i64 0
  %39 = getelementptr inbounds [303 x i8], [303 x i8]* %4, i64 0, i64 0
  %40 = call i32 @compress_row(i8* noundef nonnull %38, i8* noundef nonnull %.0, i8* noundef nonnull %39)
  %41 = icmp sgt i32 %.01, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef 27, i32 noundef %.01) #3
  br label %44

44:                                               ; preds = %42, %37
  %.1 = phi i32 [ 0, %42 ], [ %.01, %37 ]
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef 27, i32 noundef %40) #3
  %46 = getelementptr inbounds [303 x i8], [303 x i8]* %4, i64 0, i64 0
  %47 = sext i32 %40 to i64
  %48 = call i64 @fwrite(i8* noundef nonnull %46, i64 noundef 1, i64 noundef %47, %struct._IO_FILE* noundef %1) #3
  br label %49

49:                                               ; preds = %44, %35
  %.2 = phi i32 [ %36, %35 ], [ %.1, %44 ]
  br label %50

50:                                               ; preds = %49
  %51 = add nuw nsw i32 %.02, 1
  br label %12, !llvm.loop !12

52:                                               ; preds = %12
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 27) #3
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 noundef 27) #3
  ret i32 0
}

declare dso_local i32 @gdev_prn_close_printer(%struct.gx_device_s* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef) #1

declare dso_local i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
