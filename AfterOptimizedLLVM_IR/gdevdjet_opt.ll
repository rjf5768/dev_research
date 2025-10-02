; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gdevdjet.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compress_row(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 -4
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %148, %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %149

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %58, %23
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ule i8* %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %12, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %32, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %29
  %39 = load i8, i8* %12, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %40, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load i8, i8* %12, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %48, %52
  br label %54

54:                                               ; preds = %46, %38, %29
  %55 = phi i1 [ true, %38 ], [ true, %29 ], [ %53, %46 ]
  br label %56

56:                                               ; preds = %54, %25
  %57 = phi i1 [ false, %25 ], [ %55, %54 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %7, align 8
  br label %25, !llvm.loop !4

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ugt i8* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  store i8* %66, i8** %7, align 8
  store i8* %66, i8** %11, align 8
  br label %87

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %83, %67
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ult i8* %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i8*, i8** %11, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* %12, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br label %81

81:                                               ; preds = %74, %70
  %82 = phi i1 [ false, %70 ], [ %80, %74 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %11, align 8
  br label %70, !llvm.loop !6

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86, %65
  br label %88

88:                                               ; preds = %119, %87
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = icmp ult i8* %89, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %88
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp sgt i32 %99, 127
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 127, i32* %13, align 4
  br label %102

102:                                              ; preds = %101, %92
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 %103, 1
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %9, align 8
  store i8 %105, i8* %106, align 1
  br label %108

108:                                              ; preds = %111, %102
  %109 = load i32, i32* %13, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %10, align 8
  %114 = load i8, i8* %112, align 1
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %9, align 8
  store i8 %114, i8* %115, align 1
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %13, align 4
  br label %108, !llvm.loop !7

119:                                              ; preds = %108
  br label %88, !llvm.loop !8

120:                                              ; preds = %88
  br label %121

121:                                              ; preds = %135, %120
  %122 = load i8*, i8** %7, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = icmp ult i8* %122, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %121
  %126 = load i8*, i8** %11, align 8
  %127 = load i8*, i8** %7, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp sgt i32 %132, 127
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  store i32 127, i32* %14, align 4
  br label %135

135:                                              ; preds = %134, %125
  %136 = load i32, i32* %14, align 4
  %137 = sub nsw i32 1, %136
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %9, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %9, align 8
  store i8 %138, i8* %139, align 1
  %141 = load i8, i8* %12, align 1
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %9, align 8
  store i8 %141, i8* %142, align 1
  %144 = load i32, i32* %14, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8* %147, i8** %7, align 8
  br label %121, !llvm.loop !9

148:                                              ; preds = %121
  br label %19, !llvm.loop !10

149:                                              ; preds = %19
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** %6, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  ret i32 %155
}

declare dso_local i32 @gdev_prn_open(%struct.gx_device_s* noundef) #1

declare dso_local void @gx_default_get_initial_matrix(%struct.gx_device_s* noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gx_default_sync_output(%struct.gx_device_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @djet_output_page(%struct.gx_device_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gx_device_s*, align 8
  %4 = alloca i32, align 4
  store %struct.gx_device_s* %0, %struct.gx_device_s** %3, align 8
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %6 = call i32 @gdev_prn_open_printer(%struct.gx_device_s* noundef %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %13 = bitcast %struct.gx_device_s* %12 to %struct.gx_device_printer_s*
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %15 = bitcast %struct.gx_device_s* %14 to %struct.gx_device_printer_s*
  %16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %15, i32 0, i32 16
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = call i32 @djet_print_page(%struct.gx_device_printer_s* noundef %13, %struct._IO_FILE* noundef %17)
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %3, align 8
  %20 = call i32 @gdev_prn_close_printer(%struct.gx_device_s* noundef %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %11, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
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
define internal i32 @djet_print_page(%struct.gx_device_printer_s* noundef %0, %struct._IO_FILE* noundef %1) #0 {
  %3 = alloca %struct.gx_device_printer_s*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [304 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [303 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.gx_device_printer_s* %0, %struct.gx_device_printer_s** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 27)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 noundef 27)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef 27)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 noundef 27)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef 27)
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %3, align 8
  %23 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 13
  %24 = call i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef %23)
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %83, %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %3, align 8
  %28 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %86

31:                                               ; preds = %25
  %32 = getelementptr inbounds [304 x i8], [304 x i8]* %5, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 300
  store i8* %33, i8** %9, align 8
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %3, align 8
  %35 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 13
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [304 x i8], [304 x i8]* %5, i64 0, i64 0
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef %35, i32 noundef %36, i8* noundef %37, i32 noundef %38)
  br label %40

40:                                               ; preds = %52, %31
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds [304 x i8], [304 x i8]* %5, i64 0, i64 0
  %43 = icmp ugt i8* %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %44, %40
  %51 = phi i1 [ false, %40 ], [ %49, %44 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %54, i8** %9, align 8
  br label %40, !llvm.loop !11

55:                                               ; preds = %50
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds [304 x i8], [304 x i8]* %5, i64 0, i64 0
  %58 = icmp eq i8* %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %82

62:                                               ; preds = %55
  %63 = getelementptr inbounds [304 x i8], [304 x i8]* %5, i64 0, i64 0
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds [303 x i8], [303 x i8]* %10, i64 0, i64 0
  %66 = call i32 @compress_row(i8* noundef %63, i8* noundef %64, i8* noundef %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef 27, i32 noundef %71)
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 noundef 27, i32 noundef %75)
  %77 = getelementptr inbounds [303 x i8], [303 x i8]* %10, i64 0, i64 0
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %81 = call i64 @fwrite(i8* noundef %77, i64 noundef 1, i64 noundef %79, %struct._IO_FILE* noundef %80)
  br label %82

82:                                               ; preds = %73, %59
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %25, !llvm.loop !12

86:                                               ; preds = %25
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %87, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 27)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 noundef 27)
  ret i32 0
}

declare dso_local i32 @gdev_prn_close_printer(%struct.gx_device_s* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @mem_bytes_per_scan_line(%struct.gx_device_memory_s* noundef) #1

declare dso_local i32 @mem_copy_scan_lines(%struct.gx_device_memory_s* noundef, i32 noundef, i8* noundef, i32 noundef) #1

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

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
