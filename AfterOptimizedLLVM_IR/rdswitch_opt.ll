; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/rdswitch.c'
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
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [64 x i32], align 16
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call noalias %struct._IO_FILE* @fopen(i8* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %17, %struct._IO_FILE** %10, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* noundef %21)
  store i32 0, i32* %5, align 4
  br label %83

23:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %63, %23
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %26 = call i32 @read_text_integer(%struct._IO_FILE* noundef %25, i64* noundef %14, i32* noundef %13)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = icmp sge i32 %29, 4
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %32, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* noundef %33)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %36 = call i32 @fclose(%struct._IO_FILE* noundef %35)
  store i32 0, i32* %5, align 4
  br label %83

37:                                               ; preds = %28
  %38 = load i64, i64* %14, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  store i32 %39, i32* %40, align 16
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %60, %37
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 64
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %46 = call i32 @read_text_integer(%struct._IO_FILE* noundef %45, i64* noundef %14, i32* noundef %13)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* noundef %50)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %53 = call i32 @fclose(%struct._IO_FILE* noundef %52)
  store i32 0, i32* %5, align 4
  br label %83

54:                                               ; preds = %44
  %55 = load i64, i64* %14, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %58
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %41, !llvm.loop !4

63:                                               ; preds = %41
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* noundef %64, i32 noundef %65, i32* noundef %66, i32 noundef %67, i32 noundef %68)
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %24, !llvm.loop !6

71:                                               ; preds = %24
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* noundef %76)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %79 = call i32 @fclose(%struct._IO_FILE* noundef %78)
  store i32 0, i32* %5, align 4
  br label %83

80:                                               ; preds = %71
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %82 = call i32 @fclose(%struct._IO_FILE* noundef %81)
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %74, %48, %31, %19
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_text_integer(%struct._IO_FILE* noundef %0, i64* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %10

10:                                               ; preds = %19, %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %12 = call i32 @text_getc(%struct._IO_FILE* noundef %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %74

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = call i16** @__ctype_b_loc() #5
  %21 = load i16*, i16** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %21, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 8192
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %10, label %29, !llvm.loop !7

29:                                               ; preds = %19
  %30 = call i16** @__ctype_b_loc() #5
  %31 = load i16*, i16** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 2048
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %74

42:                                               ; preds = %29
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, 48
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %61, %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %48 = call i32 @text_getc(%struct._IO_FILE* noundef %47)
  store i32 %48, i32* %8, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = call i16** @__ctype_b_loc() #5
  %52 = load i16*, i16** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %52, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 2048
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %69

61:                                               ; preds = %50
  %62 = load i64, i64* %9, align 8
  %63 = mul nsw i64 %62, 10
  store i64 %63, i64* %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 48
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %9, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %9, align 8
  br label %46, !llvm.loop !8

69:                                               ; preds = %60, %46
  %70 = load i64, i64* %9, align 8
  %71 = load i64*, i64** %6, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  store i32 1, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %39, %15
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local void @jpeg_add_quant_table(%struct.jpeg_compress_struct* noundef, i32 noundef, i32* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_scan_script(%struct.jpeg_compress_struct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.jpeg_scan_info*, align 8
  %12 = alloca [100 x %struct.jpeg_scan_info], align 16
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call noalias %struct._IO_FILE* @fopen(i8* noundef %13, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %6, align 8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* noundef %18)
  store i32 0, i32* %3, align 4
  br label %188

20:                                               ; preds = %2
  %21 = getelementptr inbounds [100 x %struct.jpeg_scan_info], [100 x %struct.jpeg_scan_info]* %12, i64 0, i64 0
  store %struct.jpeg_scan_info* %21, %struct.jpeg_scan_info** %11, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %142, %20
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %24 = call i32 @read_scan_integer(%struct._IO_FILE* noundef %23, i64* noundef %10, i32* noundef %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %147

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 100
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* noundef %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %34 = call i32 @fclose(%struct._IO_FILE* noundef %33)
  store i32 0, i32* %3, align 4
  br label %188

35:                                               ; preds = %26
  %36 = load i64, i64* %10, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %39 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  store i32 %37, i32* %40, align 4
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %58, %35
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp sge i32 %45, 4
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* noundef %49)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %52 = call i32 @fclose(%struct._IO_FILE* noundef %51)
  store i32 0, i32* %3, align 4
  br label %188

53:                                               ; preds = %44
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %55 = call i32 @read_scan_integer(%struct._IO_FILE* noundef %54, i64* noundef %10, i32* noundef %9)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %136

58:                                               ; preds = %53
  %59 = load i64, i64* %10, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %62 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %61, i32 0, i32 1
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %41, !llvm.loop !9

68:                                               ; preds = %41
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %71 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 58
  br i1 %73, label %74, label %120

74:                                               ; preds = %68
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %76 = call i32 @read_scan_integer(%struct._IO_FILE* noundef %75, i64* noundef %10, i32* noundef %9)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 32
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %74
  br label %136

82:                                               ; preds = %78
  %83 = load i64, i64* %10, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %86 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %88 = call i32 @read_scan_integer(%struct._IO_FILE* noundef %87, i64* noundef %10, i32* noundef %9)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 32
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %82
  br label %136

94:                                               ; preds = %90
  %95 = load i64, i64* %10, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %98 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %100 = call i32 @read_scan_integer(%struct._IO_FILE* noundef %99, i64* noundef %10, i32* noundef %9)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 32
  br i1 %104, label %105, label %106

105:                                              ; preds = %102, %94
  br label %136

106:                                              ; preds = %102
  %107 = load i64, i64* %10, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %110 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %112 = call i32 @read_scan_integer(%struct._IO_FILE* noundef %111, i64* noundef %10, i32* noundef %9)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %106
  br label %136

115:                                              ; preds = %106
  %116 = load i64, i64* %10, align 8
  %117 = trunc i64 %116 to i32
  %118 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %119 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  br label %129

120:                                              ; preds = %68
  %121 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %122 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %121, i32 0, i32 2
  store i32 0, i32* %122, align 4
  %123 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %124 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %123, i32 0, i32 3
  store i32 63, i32* %124, align 4
  %125 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %126 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %125, i32 0, i32 4
  store i32 0, i32* %126, align 4
  %127 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %128 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %127, i32 0, i32 5
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %120, %115
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 59
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, -1
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %135, %114, %105, %93, %81, %57
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %137, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* noundef %138)
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %141 = call i32 @fclose(%struct._IO_FILE* noundef %140)
  store i32 0, i32* %3, align 4
  br label %188

142:                                              ; preds = %132, %129
  %143 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %144 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %143, i32 1
  store %struct.jpeg_scan_info* %144, %struct.jpeg_scan_info** %11, align 8
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %22, !llvm.loop !10

147:                                              ; preds = %22
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, -1
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %151, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* noundef %152)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %155 = call i32 @fclose(%struct._IO_FILE* noundef %154)
  store i32 0, i32* %3, align 4
  br label %188

156:                                              ; preds = %147
  %157 = load i32, i32* %7, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %185

159:                                              ; preds = %156
  %160 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %161 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %160, i32 0, i32 1
  %162 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %161, align 8
  %163 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %162, i32 0, i32 0
  %164 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %163, align 8
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %166 = bitcast %struct.jpeg_compress_struct* %165 to %struct.jpeg_common_struct*
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 36
  %170 = call i8* %164(%struct.jpeg_common_struct* noundef %166, i32 noundef 1, i64 noundef %169)
  %171 = bitcast i8* %170 to %struct.jpeg_scan_info*
  store %struct.jpeg_scan_info* %171, %struct.jpeg_scan_info** %11, align 8
  %172 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %173 = bitcast %struct.jpeg_scan_info* %172 to i8*
  %174 = getelementptr inbounds [100 x %struct.jpeg_scan_info], [100 x %struct.jpeg_scan_info]* %12, i64 0, i64 0
  %175 = bitcast %struct.jpeg_scan_info* %174 to i8*
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = mul i64 %177, 36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %173, i8* align 16 %175, i64 %178, i1 false)
  %179 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %11, align 8
  %180 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %181 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %180, i32 0, i32 22
  store %struct.jpeg_scan_info* %179, %struct.jpeg_scan_info** %181, align 8
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %184 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %183, i32 0, i32 21
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %159, %156
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %187 = call i32 @fclose(%struct._IO_FILE* noundef %186)
  store i32 1, i32* %3, align 4
  br label %188

188:                                              ; preds = %185, %150, %136, %47, %29, %16
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_scan_integer(%struct._IO_FILE* noundef %0, i64* noundef %1, i32* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @read_text_integer(%struct._IO_FILE* noundef %9, i64* noundef %10, i32* noundef %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %33, %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = call i16** @__ctype_b_loc() #5
  %23 = load i16*, i16** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %23, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 8192
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %21, %18
  %32 = phi i1 [ false, %18 ], [ %30, %21 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %35 = call i32 @text_getc(%struct._IO_FILE* noundef %34)
  store i32 %35, i32* %8, align 4
  br label %18, !llvm.loop !11

36:                                               ; preds = %31
  %37 = call i16** @__ctype_b_loc() #5
  %38 = load i16*, i16** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 2048
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %49 = call i32 @ungetc(i32 noundef %47, %struct._IO_FILE* noundef %48)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %67

52:                                               ; preds = %46
  store i32 32, i32* %8, align 4
  br label %64

53:                                               ; preds = %36
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 59
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 58
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 32, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %59, %56, %53
  br label %64

64:                                               ; preds = %63, %52
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %51, %14
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_quant_slots(%struct.jpeg_compress_struct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %69, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %72

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %12
  store i8 44, i8* %8, align 1
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* noundef %6, i8* noundef %8) #6
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %73

21:                                               ; preds = %16
  %22 = load i8, i8* %8, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 44
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %73

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp sge i32 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %26
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 noundef 3)
  store i32 0, i32* %3, align 4
  br label %73

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 14
  %39 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %39, i64 %41
  %43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 4
  store i32 %36, i32* %43, align 8
  br label %44

44:                                               ; preds = %57, %35
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 44
  br label %55

55:                                               ; preds = %49, %44
  %56 = phi i1 [ false, %44 ], [ %54, %49 ]
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  br label %44, !llvm.loop !12

58:                                               ; preds = %55
  br label %68

59:                                               ; preds = %12
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 14
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i64 %65
  %67 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 4
  store i32 %60, i32* %67, align 8
  br label %68

68:                                               ; preds = %59, %58
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %9, !llvm.loop !13

72:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %32, %25, %20
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_sample_factors(%struct.jpeg_compress_struct* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %99, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %102

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %83

18:                                               ; preds = %14
  store i8 44, i8* %10, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %19, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* noundef %7, i8* noundef %9, i32* noundef %8, i8* noundef %10) #6
  %21 = icmp slt i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %103

23:                                               ; preds = %18
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 120
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8, i8* %9, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 88
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %23
  %32 = load i8, i8* %10, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 44
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27
  store i32 0, i32* %3, align 4
  br label %103

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %42, %39, %36
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %103

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 14
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i64 %57
  %59 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 0, i32 2
  store i32 %52, i32* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 14
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i64 %65
  %67 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i32 0, i32 3
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %81, %51
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  %76 = load i8, i8* %74, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 44
  br label %79

79:                                               ; preds = %73, %68
  %80 = phi i1 [ false, %68 ], [ %78, %73 ]
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  br label %68, !llvm.loop !14

82:                                               ; preds = %79
  br label %98

83:                                               ; preds = %14
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 14
  %86 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %86, i64 %88
  %90 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %92 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %91, i32 0, i32 14
  %93 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %93, i64 %95
  %97 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %96, i32 0, i32 3
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %83, %82
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %11, !llvm.loop !15

102:                                              ; preds = %11
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %48, %35, %22
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @text_getc(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = call i32 @getc(%struct._IO_FILE* noundef %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %18, %8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %11 = call i32 @getc(%struct._IO_FILE* noundef %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 10
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, -1
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %9, label %20, !llvm.loop !16

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

declare dso_local i32 @getc(%struct._IO_FILE* noundef) #1

declare dso_local i32 @ungetc(i32 noundef, %struct._IO_FILE* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind }

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
