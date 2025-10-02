; ModuleID = './rdswitch.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type opaque
%struct.jpeg_c_main_controller = type opaque
%struct.jpeg_c_prep_controller = type opaque
%struct.jpeg_c_coef_controller = type opaque
%struct.jpeg_marker_writer = type opaque
%struct.jpeg_color_converter = type opaque
%struct.jpeg_downsampler = type opaque
%struct.jpeg_forward_dct = type opaque
%struct.jpeg_entropy_encoder = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't open table file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Too many tables in file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid table data in file %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Non-numeric data in file %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't open scan definition file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Too many scans defined in file %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Too many components in one scan in file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Invalid scan entry format in file %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"JPEG quantization tables are numbered 0..%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%d%c%d%c\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"JPEG sampling factors must be 1..4\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_quant_tables(%struct.jpeg_compress_struct* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [64 x i32], align 16
  %8 = call noalias %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef %1) #7
  br label %52

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %41, %13
  %.02 = phi i32 [ 0, %13 ], [ %43, %41 ]
  %15 = call i32 @read_text_integer(%struct._IO_FILE* noundef nonnull %8, i64* noundef nonnull %6, i32* noundef nonnull %5)
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %44, label %16

16:                                               ; preds = %14
  %17 = icmp ugt i32 %.02, 3
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #7
  %21 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %8) #6
  br label %52

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  br label %26

26:                                               ; preds = %39, %22
  %.01 = phi i32 [ 1, %22 ], [ %40, %39 ]
  %27 = icmp ult i32 %.01, 64
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = call i32 @read_text_integer(%struct._IO_FILE* noundef nonnull %8, i64* noundef nonnull %6, i32* noundef nonnull %5)
  %.not4 = icmp eq i32 %29, 0
  br i1 %.not4, label %30, label %34

30:                                               ; preds = %28
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* noundef %1) #7
  %33 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %8) #6
  br label %52

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 %37
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %34
  %40 = add nuw nsw i32 %.01, 1
  br label %26, !llvm.loop !4

41:                                               ; preds = %26
  %42 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 0
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* noundef %0, i32 noundef %.02, i32* noundef nonnull %42, i32 noundef %2, i32 noundef %3) #6
  %43 = add nuw nsw i32 %.02, 1
  br label %14, !llvm.loop !6

44:                                               ; preds = %14
  %45 = load i32, i32* %5, align 4
  %.not3 = icmp eq i32 %45, -1
  br i1 %.not3, label %50, label %46

46:                                               ; preds = %44
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* noundef %1) #7
  %49 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %8) #6
  br label %52

50:                                               ; preds = %44
  %51 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %8) #6
  br label %52

52:                                               ; preds = %50, %46, %30, %18, %10
  %.0 = phi i32 [ 0, %10 ], [ 0, %18 ], [ 0, %30 ], [ 0, %46 ], [ 1, %50 ]
  ret i32 %.0
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_text_integer(%struct._IO_FILE* noundef %0, i64* nocapture noundef writeonly %1, i32* nocapture noundef writeonly %2) #0 {
  br label %4

4:                                                ; preds = %9, %3
  %5 = call i32 @text_getc(%struct._IO_FILE* noundef %0)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 %5, i32* %2, align 4
  br label %43

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = call i16** @__ctype_b_loc() #8
  %11 = load i16*, i16** %10, align 8
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds i16, i16* %11, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = and i16 %14, 8192
  %.not = icmp eq i16 %15, 0
  br i1 %.not, label %16, label %4, !llvm.loop !7

16:                                               ; preds = %9
  %17 = call i16** @__ctype_b_loc() #8
  %18 = load i16*, i16** %17, align 8
  %19 = sext i32 %5 to i64
  %20 = getelementptr inbounds i16, i16* %18, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = and i16 %21, 2048
  %.not7 = icmp eq i16 %22, 0
  br i1 %.not7, label %23, label %24

23:                                               ; preds = %16
  store i32 %5, i32* %2, align 4
  br label %43

24:                                               ; preds = %16
  %25 = add nsw i32 %5, -48
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %37, %24
  %.01 = phi i64 [ %26, %24 ], [ %41, %37 ]
  %28 = call i32 @text_getc(%struct._IO_FILE* noundef %0)
  %.not8 = icmp eq i32 %28, -1
  br i1 %.not8, label %.loopexit, label %29

29:                                               ; preds = %27
  %30 = call i16** @__ctype_b_loc() #8
  %31 = load i16*, i16** %30, align 8
  %32 = sext i32 %28 to i64
  %33 = getelementptr inbounds i16, i16* %31, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = and i16 %34, 2048
  %.not9 = icmp eq i16 %35, 0
  br i1 %.not9, label %36, label %37

36:                                               ; preds = %29
  br label %42

37:                                               ; preds = %29
  %38 = mul nsw i64 %.01, 10
  %39 = add nsw i32 %28, -48
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  br label %27, !llvm.loop !8

.loopexit:                                        ; preds = %27
  br label %42

42:                                               ; preds = %.loopexit, %36
  store i64 %.01, i64* %1, align 8
  store i32 %28, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %23, %7
  %.0 = phi i32 [ 0, %7 ], [ 1, %42 ], [ 0, %23 ]
  ret i32 %.0
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @jpeg_add_quant_table(%struct.jpeg_compress_struct* noundef, i32 noundef, i32* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_scan_script(%struct.jpeg_compress_struct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [100 x %struct.jpeg_scan_info], align 16
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* noundef %1) #7
  br label %119

11:                                               ; preds = %2
  %12 = getelementptr inbounds [100 x %struct.jpeg_scan_info], [100 x %struct.jpeg_scan_info]* %5, i64 0, i64 0
  br label %13

13:                                               ; preds = %92, %11
  %.03 = phi i32 [ 0, %11 ], [ %94, %92 ]
  %.01 = phi %struct.jpeg_scan_info* [ %12, %11 ], [ %93, %92 ]
  %14 = call i32 @read_scan_integer(%struct._IO_FILE* noundef nonnull %6, i64* noundef nonnull %4, i32* noundef nonnull %3)
  %.not = icmp eq i32 %14, 0
  br i1 %.not, label %95, label %15

15:                                               ; preds = %13
  %16 = icmp ugt i32 %.03, 99
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* noundef %1) #7
  %20 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #6
  br label %119

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 1, i64 0
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %37, %21
  %.02 = phi i32 [ 1, %21 ], [ %42, %37 ]
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = icmp ugt i32 %.02, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* noundef %1) #7
  %33 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #6
  br label %119

34:                                               ; preds = %28
  %35 = call i32 @read_scan_integer(%struct._IO_FILE* noundef nonnull %6, i64* noundef nonnull %4, i32* noundef nonnull %3)
  %.not25 = icmp eq i32 %35, 0
  br i1 %.not25, label %36, label %37

36:                                               ; preds = %34
  br label %88

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = trunc i64 %38 to i32
  %40 = zext i32 %.02 to i64
  %41 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 1, i64 %40
  store i32 %39, i32* %41, align 4
  %42 = add nuw nsw i32 %.02, 1
  br label %25, !llvm.loop !9

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 0
  store i32 %.02, i32* %44, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 58
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = call i32 @read_scan_integer(%struct._IO_FILE* noundef nonnull %6, i64* noundef nonnull %4, i32* noundef nonnull %3)
  %.not18 = icmp eq i32 %48, 0
  br i1 %.not18, label %51, label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %3, align 4
  %.not19 = icmp eq i32 %50, 32
  br i1 %.not19, label %52, label %51

51:                                               ; preds = %49, %47
  br label %88

52:                                               ; preds = %49
  %53 = load i64, i64* %4, align 8
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = call i32 @read_scan_integer(%struct._IO_FILE* noundef nonnull %6, i64* noundef nonnull %4, i32* noundef nonnull %3)
  %.not20 = icmp eq i32 %56, 0
  br i1 %.not20, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %.not21 = icmp eq i32 %58, 32
  br i1 %.not21, label %60, label %59

59:                                               ; preds = %57, %52
  br label %88

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 3
  store i32 %62, i32* %63, align 4
  %64 = call i32 @read_scan_integer(%struct._IO_FILE* noundef nonnull %6, i64* noundef nonnull %4, i32* noundef nonnull %3)
  %.not22 = icmp eq i32 %64, 0
  br i1 %.not22, label %67, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %3, align 4
  %.not23 = icmp eq i32 %66, 32
  br i1 %.not23, label %68, label %67

67:                                               ; preds = %65, %60
  br label %88

68:                                               ; preds = %65
  %69 = load i64, i64* %4, align 8
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 4
  store i32 %70, i32* %71, align 4
  %72 = call i32 @read_scan_integer(%struct._IO_FILE* noundef nonnull %6, i64* noundef nonnull %4, i32* noundef nonnull %3)
  %.not24 = icmp eq i32 %72, 0
  br i1 %.not24, label %73, label %74

73:                                               ; preds = %68
  br label %88

74:                                               ; preds = %68
  %75 = load i64, i64* %4, align 8
  %76 = trunc i64 %75 to i32
  %77 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 5
  store i32 %76, i32* %77, align 4
  br label %83

78:                                               ; preds = %43
  %79 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 2
  store i32 0, i32* %79, align 4
  %80 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 3
  store i32 63, i32* %80, align 4
  %81 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 4
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 0, i32 5
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %74
  %84 = load i32, i32* %3, align 4
  %.not16 = icmp eq i32 %84, 59
  br i1 %.not16, label %92, label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %3, align 4
  %.not17 = icmp eq i32 %86, -1
  br i1 %.not17, label %92, label %87

87:                                               ; preds = %85
  br label %88

88:                                               ; preds = %87, %73, %67, %59, %51, %36
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* noundef %1) #7
  %91 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #6
  br label %119

92:                                               ; preds = %85, %83
  %93 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.01, i64 1
  %94 = add nuw nsw i32 %.03, 1
  br label %13, !llvm.loop !10

95:                                               ; preds = %13
  %96 = load i32, i32* %3, align 4
  %.not14 = icmp eq i32 %96, -1
  br i1 %.not14, label %101, label %97

97:                                               ; preds = %95
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %98, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* noundef %1) #7
  %100 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #6
  br label %119

101:                                              ; preds = %95
  %.not15 = icmp eq i32 %.03, 0
  br i1 %.not15, label %117, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %104 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %103, align 8
  %105 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %104, i64 0, i32 0
  %106 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %105, align 8
  %107 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %108 = zext i32 %.03 to i64
  %109 = mul nuw nsw i64 %108, 36
  %110 = call i8* %106(%struct.jpeg_common_struct* noundef %107, i32 noundef 1, i64 noundef %109) #6
  %111 = bitcast [100 x %struct.jpeg_scan_info]* %5 to i8*
  %112 = zext i32 %.03 to i64
  %113 = mul nuw nsw i64 %112, 36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %110, i8* nonnull align 16 %111, i64 %113, i1 false)
  %114 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 22
  %115 = bitcast %struct.jpeg_scan_info** %114 to i8**
  store i8* %110, i8** %115, align 8
  %116 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 21
  store i32 %.03, i32* %116, align 8
  br label %117

117:                                              ; preds = %102, %101
  %118 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #6
  br label %119

119:                                              ; preds = %117, %97, %88, %30, %17, %8
  %.0 = phi i32 [ 0, %8 ], [ 0, %17 ], [ 0, %30 ], [ 0, %88 ], [ 0, %97 ], [ 1, %117 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_scan_integer(%struct._IO_FILE* noundef %0, i64* nocapture noundef writeonly %1, i32* nocapture noundef %2) #0 {
  %4 = call i32 @read_text_integer(%struct._IO_FILE* noundef %0, i64* noundef %1, i32* noundef %2)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %3
  br label %39

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  br label %8

8:                                                ; preds = %19, %6
  %.01 = phi i32 [ %7, %6 ], [ %20, %19 ]
  %.not2 = icmp eq i32 %.01, -1
  br i1 %.not2, label %17, label %9

9:                                                ; preds = %8
  %10 = call i16** @__ctype_b_loc() #8
  %11 = load i16*, i16** %10, align 8
  %12 = sext i32 %.01 to i64
  %13 = getelementptr inbounds i16, i16* %11, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = and i16 %14, 8192
  %16 = icmp ne i16 %15, 0
  br label %17

17:                                               ; preds = %9, %8
  %18 = phi i1 [ false, %8 ], [ %16, %9 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = call i32 @text_getc(%struct._IO_FILE* noundef %0)
  br label %8, !llvm.loop !11

21:                                               ; preds = %17
  %22 = call i16** @__ctype_b_loc() #8
  %23 = load i16*, i16** %22, align 8
  %24 = sext i32 %.01 to i64
  %25 = getelementptr inbounds i16, i16* %23, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = and i16 %26, 2048
  %.not3 = icmp eq i16 %27, 0
  br i1 %.not3, label %33, label %28

28:                                               ; preds = %21
  %29 = call i32 @ungetc(i32 noundef %.01, %struct._IO_FILE* noundef %0) #6
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %39

32:                                               ; preds = %28
  br label %38

33:                                               ; preds = %21
  %.not4 = icmp eq i32 %.01, -1
  br i1 %.not4, label %37, label %34

34:                                               ; preds = %33
  %.not5 = icmp eq i32 %.01, 59
  br i1 %.not5, label %37, label %35

35:                                               ; preds = %34
  %.not6 = icmp eq i32 %.01, 58
  br i1 %.not6, label %37, label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36, %35, %34, %33
  %.1 = phi i32 [ 32, %36 ], [ %.01, %35 ], [ %.01, %34 ], [ %.01, %33 ]
  br label %38

38:                                               ; preds = %37, %32
  %.2 = phi i32 [ 32, %32 ], [ %.1, %37 ]
  store i32 %.2, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31, %5
  %.0 = phi i32 [ 0, %31 ], [ 1, %38 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_quant_slots(%struct.jpeg_compress_struct* nocapture noundef readonly %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %48, %2
  %.02 = phi i8* [ %1, %2 ], [ %.3, %48 ]
  %.01 = phi i32 [ 0, %2 ], [ %49, %48 ]
  %6 = icmp ult i32 %.01, 10
  br i1 %6, label %7, label %50

7:                                                ; preds = %5
  %8 = load i8, i8* %.02, align 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %41, label %9

9:                                                ; preds = %7
  store i8 44, i8* %4, align 1
  %10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %.02, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* noundef nonnull %3, i8* noundef nonnull %4) #6
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %51

13:                                               ; preds = %9
  %14 = load i8, i8* %4, align 1
  %.not3 = icmp eq i8 %14, 44
  br i1 %.not3, label %16, label %15

15:                                               ; preds = %13
  br label %51

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %16
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 noundef 3) #7
  br label %51

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %27, align 8
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i64 %29, i32 4
  store i32 %26, i32* %30, align 8
  br label %31

31:                                               ; preds = %39, %25
  %.1 = phi i8* [ %.02, %25 ], [ %.2, %39 ]
  %32 = load i8, i8* %.1, align 1
  %.not4 = icmp eq i8 %32, 0
  br i1 %.not4, label %37, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %.1, i64 1
  %35 = load i8, i8* %.1, align 1
  %36 = icmp ne i8 %35, 44
  br label %37

37:                                               ; preds = %33, %31
  %.2 = phi i8* [ %34, %33 ], [ %.1, %31 ]
  %38 = phi i1 [ %36, %33 ], [ false, %31 ]
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  br label %31, !llvm.loop !12

40:                                               ; preds = %37
  br label %47

41:                                               ; preds = %7
  %42 = load i32, i32* %3, align 4
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %44 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %43, align 8
  %45 = zext i32 %.01 to i64
  %46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %44, i64 %45, i32 4
  store i32 %42, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %40
  %.3 = phi i8* [ %.2, %40 ], [ %.02, %41 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !13

50:                                               ; preds = %5
  br label %51

51:                                               ; preds = %50, %22, %15, %12
  %.0 = phi i32 [ 0, %12 ], [ 0, %15 ], [ 0, %22 ], [ 1, %50 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_sample_factors(%struct.jpeg_compress_struct* nocapture noundef readonly %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  br label %7

7:                                                ; preds = %68, %2
  %.02 = phi i8* [ %1, %2 ], [ %.3, %68 ]
  %.01 = phi i32 [ 0, %2 ], [ %69, %68 ]
  %8 = icmp ult i32 %.01, 10
  br i1 %8, label %9, label %70

9:                                                ; preds = %7
  %10 = load i8, i8* %.02, align 1
  %.not = icmp eq i8 %10, 0
  br i1 %.not, label %58, label %11

11:                                               ; preds = %9
  store i8 44, i8* %6, align 1
  %12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %.02, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* noundef nonnull %3, i8* noundef nonnull %5, i32* noundef nonnull %4, i8* noundef nonnull %6) #6
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %71

15:                                               ; preds = %11
  %16 = load i8, i8* %5, align 1
  %.not3 = icmp eq i8 %16, 120
  br i1 %.not3, label %19, label %17

17:                                               ; preds = %15
  %18 = load i8, i8* %5, align 1
  %.not6 = icmp eq i8 %18, 88
  br i1 %.not6, label %19, label %21

19:                                               ; preds = %17, %15
  %20 = load i8, i8* %6, align 1
  %.not4 = icmp eq i8 %20, 44
  br i1 %.not4, label %22, label %21

21:                                               ; preds = %19, %17
  br label %71

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 4
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %28, %25, %22
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %35) #9
  br label %71

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %39, align 8
  %41 = zext i32 %.01 to i64
  %42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i64 %41, i32 2
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %44, align 8
  %46 = zext i32 %.01 to i64
  %47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %45, i64 %46, i32 3
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %56, %37
  %.1 = phi i8* [ %.02, %37 ], [ %.2, %56 ]
  %49 = load i8, i8* %.1, align 1
  %.not5 = icmp eq i8 %49, 0
  br i1 %.not5, label %54, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds i8, i8* %.1, i64 1
  %52 = load i8, i8* %.1, align 1
  %53 = icmp ne i8 %52, 44
  br label %54

54:                                               ; preds = %50, %48
  %.2 = phi i8* [ %51, %50 ], [ %.1, %48 ]
  %55 = phi i1 [ %53, %50 ], [ false, %48 ]
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %48, !llvm.loop !14

57:                                               ; preds = %54
  br label %67

58:                                               ; preds = %9
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %60 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %59, align 8
  %61 = zext i32 %.01 to i64
  %62 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %60, i64 %61, i32 2
  store i32 1, i32* %62, align 8
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %64 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %63, align 8
  %65 = zext i32 %.01 to i64
  %66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %64, i64 %65, i32 3
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %57
  %.3 = phi i8* [ %.2, %57 ], [ %.02, %58 ]
  br label %68

68:                                               ; preds = %67
  %69 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !15

70:                                               ; preds = %7
  br label %71

71:                                               ; preds = %70, %34, %21, %14
  %.0 = phi i32 [ 0, %14 ], [ 0, %21 ], [ 0, %34 ], [ 1, %70 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @text_getc(%struct._IO_FILE* noundef %0) #0 {
  %2 = call i32 @getc(%struct._IO_FILE* noundef %0) #6
  %3 = icmp eq i32 %2, 35
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %10, %4
  %6 = call i32 @getc(%struct._IO_FILE* noundef %0) #6
  br label %7

7:                                                ; preds = %5
  %.not = icmp eq i32 %6, 10
  br i1 %.not, label %10, label %8

8:                                                ; preds = %7
  %9 = icmp ne i32 %6, -1
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i1 [ false, %7 ], [ %9, %8 ]
  br i1 %11, label %5, label %12, !llvm.loop !16

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %1
  %.0 = phi i32 [ %6, %12 ], [ %2, %1 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { cold }

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
