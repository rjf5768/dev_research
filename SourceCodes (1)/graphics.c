; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/graphics.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/graphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [16 x i8] c"graphics_output\00", align 1
@graphics_directory = dso_local global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), align 8
@graphics_ymax = internal global float 0.000000e+00, align 4
@graphics_ymin = internal global float 0.000000e+00, align 4
@graphics_xmax = internal global float 0.000000e+00, align 4
@graphics_xmin = internal global float 0.000000e+00, align 4
@width = internal global i32 0, align 4
@xconversion = internal global double 0.000000e+00, align 8
@yconversion = internal global double 0.000000e+00, align 8
@graphics_type = dso_local global i32 0, align 4
@magick_on = internal global i32 0, align 4
@data_type = internal global i32 1, align 4
@data_double = internal global double* null, align 8
@data_float = internal global float* null, align 8
@graphics_proc = internal global i32* null, align 8
@spatial_type = internal global i32 1, align 4
@x_double = internal global double* null, align 8
@dx_double = internal global double* null, align 8
@y_double = internal global double* null, align 8
@dy_double = internal global double* null, align 8
@x_float = internal global float* null, align 8
@dx_float = internal global float* null, align 8
@y_float = internal global float* null, align 8
@dy_float = internal global float* null, align 8
@graphics_view_mode = internal global i32 0, align 4
@graphics_mysize = internal global i32 0, align 4
@graphics_outline = internal global i32 0, align 4
@Ncolors = internal global i32 256, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s/graph%dcp%05d.data\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s/outline%dcp%05d.lin\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s/graph%05d.data\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s/outline%05d.lin\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%d,%lf\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%d,%d,%d,%d,%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"%d,%d,%d,%d\0A\00", align 1
@iteration = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Could not create %s in DrawSqaures\0A\00", align 1
@autoscale = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"Could not open %s in DisplayStateToFile\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_graphics_output() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = load float, float* @graphics_ymax, align 4
  %3 = load float, float* @graphics_ymin, align 4
  %4 = fsub float %2, %3
  %5 = fdiv float 8.000000e+02, %4
  %6 = load float, float* @graphics_xmax, align 4
  %7 = load float, float* @graphics_xmin, align 4
  %8 = fsub float %6, %7
  %9 = fmul float %5, %8
  %10 = fptosi float %9 to i32
  store i32 %10, i32* @width, align 4
  %11 = load float, float* @graphics_xmax, align 4
  %12 = load float, float* @graphics_xmin, align 4
  %13 = fsub float %11, %12
  %14 = fpext float %13 to double
  %15 = fdiv double 8.000000e+02, %14
  store double %15, double* @xconversion, align 8
  %16 = load float, float* @graphics_ymax, align 4
  %17 = load float, float* @graphics_ymin, align 4
  %18 = fsub float %16, %17
  %19 = fpext float %18 to double
  %20 = fdiv double 8.000000e+02, %19
  store double %20, double* @yconversion, align 8
  %21 = load i8*, i8** @graphics_directory, align 8
  %22 = call i32 @stat(i8* noundef %21, %struct.stat* noundef %1) #4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %0
  %25 = load i8*, i8** @graphics_directory, align 8
  %26 = call i32 @mkdir(i8* noundef %25, i32 noundef 511) #4
  br label %27

27:                                               ; preds = %24, %0
  %28 = load i32, i32* @graphics_type, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @graphics_type, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* @magick_on, align 4
  br label %34

34:                                               ; preds = %33, %30, %27
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @mkdir(i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @terminate_graphics_output() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_graphics_window(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %5, align 4
  store float %9, float* @graphics_xmin, align 4
  %10 = load float, float* %6, align 4
  store float %10, float* @graphics_xmax, align 4
  %11 = load float, float* %7, align 4
  store float %11, float* @graphics_ymin, align 4
  %12 = load float, float* %8, align 4
  store float %12, float* @graphics_ymax, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_graphics_cell_data_double(double* noundef %0) #0 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  store i32 0, i32* @data_type, align 4
  %3 = load double*, double** %2, align 8
  store double* %3, double** @data_double, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_graphics_cell_data_float(float* noundef %0) #0 {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  store i32 1, i32* @data_type, align 4
  %3 = load float*, float** %2, align 8
  store float* %3, float** @data_float, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_graphics_cell_proc(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** @graphics_proc, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_graphics_cell_coordinates_double(double* noundef %0, double* noundef %1, double* noundef %2, double* noundef %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  store i32 0, i32* @spatial_type, align 4
  %9 = load double*, double** %5, align 8
  store double* %9, double** @x_double, align 8
  %10 = load double*, double** %6, align 8
  store double* %10, double** @dx_double, align 8
  %11 = load double*, double** %7, align 8
  store double* %11, double** @y_double, align 8
  %12 = load double*, double** %8, align 8
  store double* %12, double** @dy_double, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_graphics_cell_coordinates_float(float* noundef %0, float* noundef %1, float* noundef %2, float* noundef %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  store i32 1, i32* @spatial_type, align 4
  %9 = load float*, float** %5, align 8
  store float* %9, float** @x_float, align 8
  %10 = load float*, float** %6, align 8
  store float* %10, float** @dx_float, align 8
  %11 = load float*, float** %7, align 8
  store float* %11, float** @y_float, align 8
  %12 = load float*, float** %8, align 8
  store float* %12, float** @dy_float, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_graphics_viewmode(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @graphics_view_mode, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_graphics_mysize(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @graphics_mysize, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_graphics_outline(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @graphics_outline, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DrawSquaresToFile(i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [50 x i8], align 16
  %23 = alloca [50 x i8], align 16
  %24 = alloca %struct._IO_FILE*, align 8
  %25 = alloca %struct._IO_FILE*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %26 = load i32, i32* @graphics_type, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %427

28:                                               ; preds = %5
  %29 = load i32, i32* @Ncolors, align 4
  %30 = load i32*, i32** @graphics_proc, align 8
  %31 = load i32, i32* @graphics_mysize, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = sdiv i32 %29, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %28
  %41 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %42 = load i8*, i8** @graphics_directory, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %41, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef %42, i32 noundef %43, i32 noundef %44) #4
  %46 = getelementptr inbounds [50 x i8], [50 x i8]* %23, i64 0, i64 0
  %47 = load i8*, i8** @graphics_directory, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %46, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef %47, i32 noundef %48, i32 noundef %49) #4
  br label %60

51:                                               ; preds = %28
  %52 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %53 = load i8*, i8** @graphics_directory, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %52, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %53, i32 noundef %54) #4
  %56 = getelementptr inbounds [50 x i8], [50 x i8]* %23, i64 0, i64 0
  %57 = load i8*, i8** @graphics_directory, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %56, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %57, i32 noundef %58) #4
  br label %60

60:                                               ; preds = %51, %40
  %61 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %62 = call noalias %struct._IO_FILE* @fopen(i8* noundef %61, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %62, %struct._IO_FILE** %24, align 8
  %63 = getelementptr inbounds [50 x i8], [50 x i8]* %23, i64 0, i64 0
  %64 = call noalias %struct._IO_FILE* @fopen(i8* noundef %63, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %64, %struct._IO_FILE** %25, align 8
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %66 = icmp ne %struct._IO_FILE* %65, null
  br i1 %66, label %67, label %416

67:                                               ; preds = %60
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %69 = icmp ne %struct._IO_FILE* %68, null
  br i1 %69, label %70, label %416

70:                                               ; preds = %67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load double, double* %8, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %72, double noundef %73)
  %75 = load i32, i32* @data_type, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %243

77:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %239, %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @graphics_mysize, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %242

82:                                               ; preds = %78
  %83 = load double*, double** @x_double, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  %88 = load float, float* @graphics_xmin, align 4
  %89 = fpext float %88 to double
  %90 = fsub double %87, %89
  %91 = load double, double* @xconversion, align 8
  %92 = fmul double %90, %91
  %93 = fptosi double %92 to i32
  store i32 %93, i32* %14, align 4
  %94 = load double*, double** @x_double, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  %99 = load double*, double** @dx_double, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %99, i64 %101
  %103 = load double, double* %102, align 8
  %104 = fadd double %98, %103
  %105 = load float, float* @graphics_xmin, align 4
  %106 = fpext float %105 to double
  %107 = fsub double %104, %106
  %108 = load double, double* @xconversion, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sitofp i32 %109 to double
  %111 = fneg double %110
  %112 = call double @llvm.fmuladd.f64(double %107, double %108, double %111)
  %113 = fptosi double %112 to i32
  store i32 %113, i32* %15, align 4
  %114 = load float, float* @graphics_ymax, align 4
  %115 = fpext float %114 to double
  %116 = load double*, double** @y_double, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  %120 = load double, double* %119, align 8
  %121 = load double*, double** @dy_double, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  %125 = load double, double* %124, align 8
  %126 = fadd double %120, %125
  %127 = fsub double %115, %126
  %128 = load double, double* @yconversion, align 8
  %129 = fmul double %127, %128
  %130 = fptosi double %129 to i32
  store i32 %130, i32* %16, align 4
  %131 = load float, float* @graphics_ymax, align 4
  %132 = fpext float %131 to double
  %133 = load double*, double** @y_double, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %133, i64 %135
  %137 = load double, double* %136, align 8
  %138 = fsub double %132, %137
  %139 = load double, double* @yconversion, align 8
  %140 = fmul double %138, %139
  %141 = fptosi double %140 to i32
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %17, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %17, align 4
  %145 = load i32*, i32** @graphics_proc, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %13, align 4
  %151 = mul nsw i32 %149, %150
  store i32 %151, i32* %12, align 4
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %153, i32 noundef %154, i32 noundef %155, i32 noundef %156, i32 noundef %157)
  %159 = load double*, double** @x_double, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, double* %159, i64 %161
  %163 = load double, double* %162, align 8
  %164 = load float, float* @graphics_xmin, align 4
  %165 = fpext float %164 to double
  %166 = fsub double %163, %165
  %167 = load double, double* @xconversion, align 8
  %168 = fmul double %166, %167
  %169 = fptosi double %168 to i32
  store i32 %169, i32* %18, align 4
  %170 = load double*, double** @x_double, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, double* %170, i64 %172
  %174 = load double, double* %173, align 8
  %175 = load double*, double** @dx_double, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds double, double* %175, i64 %177
  %179 = load double, double* %178, align 8
  %180 = fadd double %174, %179
  %181 = load float, float* @graphics_xmin, align 4
  %182 = fpext float %181 to double
  %183 = fsub double %180, %182
  %184 = load double, double* @xconversion, align 8
  %185 = fmul double %183, %184
  %186 = fptosi double %185 to i32
  store i32 %186, i32* %19, align 4
  %187 = load float, float* @graphics_ymax, align 4
  %188 = fpext float %187 to double
  %189 = load double*, double** @y_double, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds double, double* %189, i64 %191
  %193 = load double, double* %192, align 8
  %194 = fsub double %188, %193
  %195 = load double, double* @yconversion, align 8
  %196 = fmul double %194, %195
  %197 = fptosi double %196 to i32
  store i32 %197, i32* %20, align 4
  %198 = load float, float* @graphics_ymax, align 4
  %199 = fpext float %198 to double
  %200 = load double*, double** @y_double, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, double* %200, i64 %202
  %204 = load double, double* %203, align 8
  %205 = load double*, double** @dy_double, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, double* %205, i64 %207
  %209 = load double, double* %208, align 8
  %210 = fadd double %204, %209
  %211 = fsub double %199, %210
  %212 = load double, double* @yconversion, align 8
  %213 = fmul double %211, %212
  %214 = fptosi double %213 to i32
  store i32 %214, i32* %21, align 4
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %21, align 4
  %218 = load i32, i32* %19, align 4
  %219 = load i32, i32* %21, align 4
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %215, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %216, i32 noundef %217, i32 noundef %218, i32 noundef %219)
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %20, align 4
  %226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %221, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %222, i32 noundef %223, i32 noundef %224, i32 noundef %225)
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %228 = load i32, i32* %18, align 4
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* %21, align 4
  %232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %227, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %228, i32 noundef %229, i32 noundef %230, i32 noundef %231)
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %19, align 4
  %237 = load i32, i32* %21, align 4
  %238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %233, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %234, i32 noundef %235, i32 noundef %236, i32 noundef %237)
  br label %239

239:                                              ; preds = %82
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %11, align 4
  br label %78, !llvm.loop !4

242:                                              ; preds = %78
  br label %409

243:                                              ; preds = %70
  store i32 0, i32* %11, align 4
  br label %244

244:                                              ; preds = %405, %243
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* @graphics_mysize, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %408

248:                                              ; preds = %244
  %249 = load float*, float** @x_float, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %249, i64 %251
  %253 = load float, float* %252, align 4
  %254 = load float, float* @graphics_xmin, align 4
  %255 = fsub float %253, %254
  %256 = fpext float %255 to double
  %257 = load double, double* @xconversion, align 8
  %258 = fmul double %256, %257
  %259 = fptosi double %258 to i32
  store i32 %259, i32* %14, align 4
  %260 = load float*, float** @x_float, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, float* %260, i64 %262
  %264 = load float, float* %263, align 4
  %265 = load float*, float** @dx_float, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %265, i64 %267
  %269 = load float, float* %268, align 4
  %270 = fadd float %264, %269
  %271 = load float, float* @graphics_xmin, align 4
  %272 = fsub float %270, %271
  %273 = fpext float %272 to double
  %274 = load double, double* @xconversion, align 8
  %275 = load i32, i32* %14, align 4
  %276 = sitofp i32 %275 to double
  %277 = fneg double %276
  %278 = call double @llvm.fmuladd.f64(double %273, double %274, double %277)
  %279 = fptosi double %278 to i32
  store i32 %279, i32* %15, align 4
  %280 = load float, float* @graphics_ymax, align 4
  %281 = load float*, float** @y_float, align 8
  %282 = load i32, i32* %11, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %281, i64 %283
  %285 = load float, float* %284, align 4
  %286 = load float*, float** @dy_float, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %286, i64 %288
  %290 = load float, float* %289, align 4
  %291 = fadd float %285, %290
  %292 = fsub float %280, %291
  %293 = fpext float %292 to double
  %294 = load double, double* @yconversion, align 8
  %295 = fmul double %293, %294
  %296 = fptosi double %295 to i32
  store i32 %296, i32* %16, align 4
  %297 = load float, float* @graphics_ymax, align 4
  %298 = load float*, float** @y_float, align 8
  %299 = load i32, i32* %11, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %298, i64 %300
  %302 = load float, float* %301, align 4
  %303 = fsub float %297, %302
  %304 = fpext float %303 to double
  %305 = load double, double* @yconversion, align 8
  %306 = fmul double %304, %305
  %307 = fptosi double %306 to i32
  store i32 %307, i32* %17, align 4
  %308 = load i32, i32* %16, align 4
  %309 = load i32, i32* %17, align 4
  %310 = sub nsw i32 %309, %308
  store i32 %310, i32* %17, align 4
  %311 = load i32*, i32** @graphics_proc, align 8
  %312 = load i32, i32* %11, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %13, align 4
  %317 = mul nsw i32 %315, %316
  store i32 %317, i32* %12, align 4
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %319 = load i32, i32* %14, align 4
  %320 = load i32, i32* %16, align 4
  %321 = load i32, i32* %15, align 4
  %322 = load i32, i32* %17, align 4
  %323 = load i32, i32* %12, align 4
  %324 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %318, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %319, i32 noundef %320, i32 noundef %321, i32 noundef %322, i32 noundef %323)
  %325 = load float*, float** @x_float, align 8
  %326 = load i32, i32* %11, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %325, i64 %327
  %329 = load float, float* %328, align 4
  %330 = load float, float* @graphics_xmin, align 4
  %331 = fsub float %329, %330
  %332 = fpext float %331 to double
  %333 = load double, double* @xconversion, align 8
  %334 = fmul double %332, %333
  %335 = fptosi double %334 to i32
  store i32 %335, i32* %18, align 4
  %336 = load float*, float** @x_float, align 8
  %337 = load i32, i32* %11, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds float, float* %336, i64 %338
  %340 = load float, float* %339, align 4
  %341 = load float*, float** @dx_float, align 8
  %342 = load i32, i32* %11, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %341, i64 %343
  %345 = load float, float* %344, align 4
  %346 = fadd float %340, %345
  %347 = load float, float* @graphics_xmin, align 4
  %348 = fsub float %346, %347
  %349 = fpext float %348 to double
  %350 = load double, double* @xconversion, align 8
  %351 = fmul double %349, %350
  %352 = fptosi double %351 to i32
  store i32 %352, i32* %19, align 4
  %353 = load float, float* @graphics_ymax, align 4
  %354 = load float*, float** @y_float, align 8
  %355 = load i32, i32* %11, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds float, float* %354, i64 %356
  %358 = load float, float* %357, align 4
  %359 = fsub float %353, %358
  %360 = fpext float %359 to double
  %361 = load double, double* @yconversion, align 8
  %362 = fmul double %360, %361
  %363 = fptosi double %362 to i32
  store i32 %363, i32* %20, align 4
  %364 = load float, float* @graphics_ymax, align 4
  %365 = load float*, float** @y_float, align 8
  %366 = load i32, i32* %11, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds float, float* %365, i64 %367
  %369 = load float, float* %368, align 4
  %370 = load float*, float** @dy_float, align 8
  %371 = load i32, i32* %11, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds float, float* %370, i64 %372
  %374 = load float, float* %373, align 4
  %375 = fadd float %369, %374
  %376 = fsub float %364, %375
  %377 = fpext float %376 to double
  %378 = load double, double* @yconversion, align 8
  %379 = fmul double %377, %378
  %380 = fptosi double %379 to i32
  store i32 %380, i32* %21, align 4
  %381 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %382 = load i32, i32* %18, align 4
  %383 = load i32, i32* %21, align 4
  %384 = load i32, i32* %19, align 4
  %385 = load i32, i32* %21, align 4
  %386 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %381, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %382, i32 noundef %383, i32 noundef %384, i32 noundef %385)
  %387 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %388 = load i32, i32* %18, align 4
  %389 = load i32, i32* %20, align 4
  %390 = load i32, i32* %19, align 4
  %391 = load i32, i32* %20, align 4
  %392 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %387, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %388, i32 noundef %389, i32 noundef %390, i32 noundef %391)
  %393 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %394 = load i32, i32* %18, align 4
  %395 = load i32, i32* %20, align 4
  %396 = load i32, i32* %18, align 4
  %397 = load i32, i32* %21, align 4
  %398 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %393, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %394, i32 noundef %395, i32 noundef %396, i32 noundef %397)
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %400 = load i32, i32* %19, align 4
  %401 = load i32, i32* %20, align 4
  %402 = load i32, i32* %19, align 4
  %403 = load i32, i32* %21, align 4
  %404 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %399, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %400, i32 noundef %401, i32 noundef %402, i32 noundef %403)
  br label %405

405:                                              ; preds = %248
  %406 = load i32, i32* %11, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %11, align 4
  br label %244, !llvm.loop !6

408:                                              ; preds = %244
  br label %409

409:                                              ; preds = %408, %242
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %411 = call i32 @fclose(%struct._IO_FILE* noundef %410)
  %412 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %413 = call i32 @fclose(%struct._IO_FILE* noundef %412)
  %414 = load i32, i32* @iteration, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* @iteration, align 4
  br label %426

416:                                              ; preds = %67, %60
  %417 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %418 = icmp eq %struct._IO_FILE* %417, null
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = getelementptr inbounds [50 x i8], [50 x i8]* %22, i64 0, i64 0
  %421 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* noundef %420)
  br label %425

422:                                              ; preds = %416
  %423 = getelementptr inbounds [50 x i8], [50 x i8]* %23, i64 0, i64 0
  %424 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* noundef %423)
  br label %425

425:                                              ; preds = %422, %419
  br label %426

426:                                              ; preds = %425, %409
  br label %427

427:                                              ; preds = %426, %5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @DisplayStateToFile(i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [50 x i8], align 16
  %16 = alloca [50 x i8], align 16
  %17 = alloca %struct._IO_FILE*, align 8
  %18 = alloca %struct._IO_FILE*, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %28 = load i32, i32* @graphics_type, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %534

30:                                               ; preds = %5
  store double 2.500000e+01, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %35 = load i8*, i8** @graphics_directory, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %34, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef %35, i32 noundef %36, i32 noundef %37) #4
  %39 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %40 = load i8*, i8** @graphics_directory, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %39, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef %40, i32 noundef %41, i32 noundef %42) #4
  br label %53

44:                                               ; preds = %30
  %45 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %46 = load i8*, i8** @graphics_directory, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %45, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %46, i32 noundef %47) #4
  %49 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %50 = load i8*, i8** @graphics_directory, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %49, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %50, i32 noundef %51) #4
  br label %53

53:                                               ; preds = %44, %33
  %54 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %55 = call noalias %struct._IO_FILE* @fopen(i8* noundef %54, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %55, %struct._IO_FILE** %17, align 8
  %56 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %57 = call noalias %struct._IO_FILE* @fopen(i8* noundef %56, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %57, %struct._IO_FILE** %18, align 8
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %59 = icmp ne %struct._IO_FILE* %58, null
  br i1 %59, label %60, label %523

60:                                               ; preds = %53
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %62 = icmp ne %struct._IO_FILE* %61, null
  br i1 %62, label %63, label %523

63:                                               ; preds = %60
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load double, double* %8, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %65, double noundef %66)
  %68 = load i32, i32* @autoscale, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %154

70:                                               ; preds = %63
  store double -1.000000e+30, double* %11, align 8
  store double 1.000000e+30, double* %12, align 8
  %71 = load i32, i32* @data_type, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %111

73:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %107, %73
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @graphics_mysize, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %74
  %79 = load double*, double** @data_double, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %79, i64 %81
  %83 = load double, double* %82, align 8
  %84 = load double, double* %11, align 8
  %85 = fcmp ogt double %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load double*, double** @data_double, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  %91 = load double, double* %90, align 8
  store double %91, double* %11, align 8
  br label %92

92:                                               ; preds = %86, %78
  %93 = load double*, double** @data_double, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  %97 = load double, double* %96, align 8
  %98 = load double, double* %12, align 8
  %99 = fcmp olt double %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load double*, double** @data_double, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  %105 = load double, double* %104, align 8
  store double %105, double* %12, align 8
  br label %106

106:                                              ; preds = %100, %92
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %74, !llvm.loop !7

110:                                              ; preds = %74
  br label %153

111:                                              ; preds = %70
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %149, %111
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @graphics_mysize, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %152

116:                                              ; preds = %112
  %117 = load float*, float** @data_float, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  %121 = load float, float* %120, align 4
  %122 = fpext float %121 to double
  %123 = load double, double* %11, align 8
  %124 = fcmp ogt double %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %116
  %126 = load float*, float** @data_float, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %126, i64 %128
  %130 = load float, float* %129, align 4
  %131 = fpext float %130 to double
  store double %131, double* %11, align 8
  br label %132

132:                                              ; preds = %125, %116
  %133 = load float*, float** @data_float, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fpext float %137 to double
  %139 = load double, double* %12, align 8
  %140 = fcmp olt double %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %132
  %142 = load float*, float** @data_float, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %142, i64 %144
  %146 = load float, float* %145, align 4
  %147 = fpext float %146 to double
  store double %147, double* %12, align 8
  br label %148

148:                                              ; preds = %141, %132
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %13, align 4
  br label %112, !llvm.loop !8

152:                                              ; preds = %112
  br label %153

153:                                              ; preds = %152, %110
  br label %154

154:                                              ; preds = %153, %63
  %155 = load i32, i32* @Ncolors, align 4
  %156 = sitofp i32 %155 to double
  %157 = load double, double* %11, align 8
  %158 = load double, double* %12, align 8
  %159 = fsub double %157, %158
  %160 = fdiv double %156, %159
  store double %160, double* %19, align 8
  store i32 0, i32* %13, align 4
  br label %161

161:                                              ; preds = %513, %154
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @graphics_mysize, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %516

165:                                              ; preds = %161
  %166 = load i32, i32* @data_type, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %165
  %169 = load double*, double** @data_double, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %169, i64 %171
  %173 = load double, double* %172, align 8
  %174 = load double, double* %12, align 8
  %175 = fsub double %173, %174
  %176 = fptosi double %175 to i32
  %177 = sitofp i32 %176 to double
  %178 = load double, double* %19, align 8
  %179 = fmul double %177, %178
  %180 = fptosi double %179 to i32
  store i32 %180, i32* %14, align 4
  br label %195

181:                                              ; preds = %165
  %182 = load float*, float** @data_float, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %182, i64 %184
  %186 = load float, float* %185, align 4
  %187 = fpext float %186 to double
  %188 = load double, double* %12, align 8
  %189 = fsub double %187, %188
  %190 = fptosi double %189 to i32
  %191 = sitofp i32 %190 to double
  %192 = load double, double* %19, align 8
  %193 = fmul double %191, %192
  %194 = fptosi double %193 to i32
  store i32 %194, i32* %14, align 4
  br label %195

195:                                              ; preds = %181, %168
  %196 = load i32, i32* @Ncolors, align 4
  %197 = load i32, i32* %14, align 4
  %198 = sub nsw i32 %196, %197
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %14, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  store i32 0, i32* %14, align 4
  br label %202

202:                                              ; preds = %201, %195
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* @Ncolors, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i32, i32* @Ncolors, align 4
  %208 = sub nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %206, %202
  %210 = load i32, i32* @data_type, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %362

212:                                              ; preds = %209
  %213 = load double*, double** @x_double, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, double* %213, i64 %215
  %217 = load double, double* %216, align 8
  %218 = load float, float* @graphics_xmin, align 4
  %219 = fpext float %218 to double
  %220 = fsub double %217, %219
  %221 = load double, double* @xconversion, align 8
  %222 = fmul double %220, %221
  %223 = fptosi double %222 to i32
  store i32 %223, i32* %20, align 4
  %224 = load double*, double** @x_double, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds double, double* %224, i64 %226
  %228 = load double, double* %227, align 8
  %229 = load double*, double** @dx_double, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds double, double* %229, i64 %231
  %233 = load double, double* %232, align 8
  %234 = fadd double %228, %233
  %235 = load float, float* @graphics_xmin, align 4
  %236 = fpext float %235 to double
  %237 = fsub double %234, %236
  %238 = load double, double* @xconversion, align 8
  %239 = load i32, i32* %20, align 4
  %240 = sitofp i32 %239 to double
  %241 = fneg double %240
  %242 = call double @llvm.fmuladd.f64(double %237, double %238, double %241)
  %243 = fptosi double %242 to i32
  store i32 %243, i32* %21, align 4
  %244 = load float, float* @graphics_ymax, align 4
  %245 = fpext float %244 to double
  %246 = load double*, double** @y_double, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds double, double* %246, i64 %248
  %250 = load double, double* %249, align 8
  %251 = load double*, double** @dy_double, align 8
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds double, double* %251, i64 %253
  %255 = load double, double* %254, align 8
  %256 = fadd double %250, %255
  %257 = fsub double %245, %256
  %258 = load double, double* @yconversion, align 8
  %259 = fmul double %257, %258
  %260 = fptosi double %259 to i32
  store i32 %260, i32* %22, align 4
  %261 = load float, float* @graphics_ymax, align 4
  %262 = fpext float %261 to double
  %263 = load double*, double** @y_double, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds double, double* %263, i64 %265
  %267 = load double, double* %266, align 8
  %268 = fsub double %262, %267
  %269 = load double, double* @yconversion, align 8
  %270 = fmul double %268, %269
  %271 = fptosi double %270 to i32
  store i32 %271, i32* %23, align 4
  %272 = load i32, i32* %22, align 4
  %273 = load i32, i32* %23, align 4
  %274 = sub nsw i32 %273, %272
  store i32 %274, i32* %23, align 4
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %276 = load i32, i32* %20, align 4
  %277 = load i32, i32* %22, align 4
  %278 = load i32, i32* %21, align 4
  %279 = load i32, i32* %23, align 4
  %280 = load i32, i32* %14, align 4
  %281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %275, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %276, i32 noundef %277, i32 noundef %278, i32 noundef %279, i32 noundef %280)
  %282 = load double*, double** @x_double, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds double, double* %282, i64 %284
  %286 = load double, double* %285, align 8
  %287 = load float, float* @graphics_xmin, align 4
  %288 = fpext float %287 to double
  %289 = fsub double %286, %288
  %290 = load double, double* @xconversion, align 8
  %291 = fmul double %289, %290
  %292 = fptosi double %291 to i32
  store i32 %292, i32* %24, align 4
  %293 = load double*, double** @x_double, align 8
  %294 = load i32, i32* %13, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds double, double* %293, i64 %295
  %297 = load double, double* %296, align 8
  %298 = load double*, double** @dx_double, align 8
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds double, double* %298, i64 %300
  %302 = load double, double* %301, align 8
  %303 = fadd double %297, %302
  %304 = load float, float* @graphics_xmin, align 4
  %305 = fpext float %304 to double
  %306 = fsub double %303, %305
  %307 = load double, double* @xconversion, align 8
  %308 = fmul double %306, %307
  %309 = fptosi double %308 to i32
  store i32 %309, i32* %25, align 4
  %310 = load float, float* @graphics_ymax, align 4
  %311 = fpext float %310 to double
  %312 = load double*, double** @y_double, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds double, double* %312, i64 %314
  %316 = load double, double* %315, align 8
  %317 = fsub double %311, %316
  %318 = load double, double* @yconversion, align 8
  %319 = fmul double %317, %318
  %320 = fptosi double %319 to i32
  store i32 %320, i32* %26, align 4
  %321 = load float, float* @graphics_ymax, align 4
  %322 = fpext float %321 to double
  %323 = load double*, double** @y_double, align 8
  %324 = load i32, i32* %13, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds double, double* %323, i64 %325
  %327 = load double, double* %326, align 8
  %328 = load double*, double** @dy_double, align 8
  %329 = load i32, i32* %13, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds double, double* %328, i64 %330
  %332 = load double, double* %331, align 8
  %333 = fadd double %327, %332
  %334 = fsub double %322, %333
  %335 = load double, double* @yconversion, align 8
  %336 = fmul double %334, %335
  %337 = fptosi double %336 to i32
  store i32 %337, i32* %27, align 4
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %339 = load i32, i32* %24, align 4
  %340 = load i32, i32* %27, align 4
  %341 = load i32, i32* %25, align 4
  %342 = load i32, i32* %27, align 4
  %343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %338, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %339, i32 noundef %340, i32 noundef %341, i32 noundef %342)
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %345 = load i32, i32* %24, align 4
  %346 = load i32, i32* %26, align 4
  %347 = load i32, i32* %25, align 4
  %348 = load i32, i32* %26, align 4
  %349 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %344, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %345, i32 noundef %346, i32 noundef %347, i32 noundef %348)
  %350 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %351 = load i32, i32* %24, align 4
  %352 = load i32, i32* %26, align 4
  %353 = load i32, i32* %24, align 4
  %354 = load i32, i32* %27, align 4
  %355 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %350, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %351, i32 noundef %352, i32 noundef %353, i32 noundef %354)
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %357 = load i32, i32* %25, align 4
  %358 = load i32, i32* %26, align 4
  %359 = load i32, i32* %25, align 4
  %360 = load i32, i32* %27, align 4
  %361 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %356, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %357, i32 noundef %358, i32 noundef %359, i32 noundef %360)
  br label %512

362:                                              ; preds = %209
  %363 = load float*, float** @x_float, align 8
  %364 = load i32, i32* %13, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float, float* %363, i64 %365
  %367 = load float, float* %366, align 4
  %368 = load float, float* @graphics_xmin, align 4
  %369 = fsub float %367, %368
  %370 = fpext float %369 to double
  %371 = load double, double* @xconversion, align 8
  %372 = fmul double %370, %371
  %373 = fptosi double %372 to i32
  store i32 %373, i32* %20, align 4
  %374 = load float*, float** @x_float, align 8
  %375 = load i32, i32* %13, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds float, float* %374, i64 %376
  %378 = load float, float* %377, align 4
  %379 = load float*, float** @dx_float, align 8
  %380 = load i32, i32* %13, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %379, i64 %381
  %383 = load float, float* %382, align 4
  %384 = fadd float %378, %383
  %385 = load float, float* @graphics_xmin, align 4
  %386 = fsub float %384, %385
  %387 = fpext float %386 to double
  %388 = load double, double* @xconversion, align 8
  %389 = load i32, i32* %20, align 4
  %390 = sitofp i32 %389 to double
  %391 = fneg double %390
  %392 = call double @llvm.fmuladd.f64(double %387, double %388, double %391)
  %393 = fptosi double %392 to i32
  store i32 %393, i32* %21, align 4
  %394 = load float, float* @graphics_ymax, align 4
  %395 = load float*, float** @y_float, align 8
  %396 = load i32, i32* %13, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds float, float* %395, i64 %397
  %399 = load float, float* %398, align 4
  %400 = load float*, float** @dy_float, align 8
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds float, float* %400, i64 %402
  %404 = load float, float* %403, align 4
  %405 = fadd float %399, %404
  %406 = fsub float %394, %405
  %407 = fpext float %406 to double
  %408 = load double, double* @yconversion, align 8
  %409 = fmul double %407, %408
  %410 = fptosi double %409 to i32
  store i32 %410, i32* %22, align 4
  %411 = load float, float* @graphics_ymax, align 4
  %412 = load float*, float** @y_float, align 8
  %413 = load i32, i32* %13, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds float, float* %412, i64 %414
  %416 = load float, float* %415, align 4
  %417 = fsub float %411, %416
  %418 = fpext float %417 to double
  %419 = load double, double* @yconversion, align 8
  %420 = fmul double %418, %419
  %421 = fptosi double %420 to i32
  store i32 %421, i32* %23, align 4
  %422 = load i32, i32* %22, align 4
  %423 = load i32, i32* %23, align 4
  %424 = sub nsw i32 %423, %422
  store i32 %424, i32* %23, align 4
  %425 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %426 = load i32, i32* %20, align 4
  %427 = load i32, i32* %22, align 4
  %428 = load i32, i32* %21, align 4
  %429 = load i32, i32* %23, align 4
  %430 = load i32, i32* %14, align 4
  %431 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %425, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %426, i32 noundef %427, i32 noundef %428, i32 noundef %429, i32 noundef %430)
  %432 = load float*, float** @x_float, align 8
  %433 = load i32, i32* %13, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds float, float* %432, i64 %434
  %436 = load float, float* %435, align 4
  %437 = load float, float* @graphics_xmin, align 4
  %438 = fsub float %436, %437
  %439 = fpext float %438 to double
  %440 = load double, double* @xconversion, align 8
  %441 = fmul double %439, %440
  %442 = fptosi double %441 to i32
  store i32 %442, i32* %24, align 4
  %443 = load float*, float** @x_float, align 8
  %444 = load i32, i32* %13, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds float, float* %443, i64 %445
  %447 = load float, float* %446, align 4
  %448 = load float*, float** @dx_float, align 8
  %449 = load i32, i32* %13, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds float, float* %448, i64 %450
  %452 = load float, float* %451, align 4
  %453 = fadd float %447, %452
  %454 = load float, float* @graphics_xmin, align 4
  %455 = fsub float %453, %454
  %456 = fpext float %455 to double
  %457 = load double, double* @xconversion, align 8
  %458 = fmul double %456, %457
  %459 = fptosi double %458 to i32
  store i32 %459, i32* %25, align 4
  %460 = load float, float* @graphics_ymax, align 4
  %461 = load float*, float** @y_float, align 8
  %462 = load i32, i32* %13, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds float, float* %461, i64 %463
  %465 = load float, float* %464, align 4
  %466 = fsub float %460, %465
  %467 = fpext float %466 to double
  %468 = load double, double* @yconversion, align 8
  %469 = fmul double %467, %468
  %470 = fptosi double %469 to i32
  store i32 %470, i32* %26, align 4
  %471 = load float, float* @graphics_ymax, align 4
  %472 = load float*, float** @y_float, align 8
  %473 = load i32, i32* %13, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds float, float* %472, i64 %474
  %476 = load float, float* %475, align 4
  %477 = load float*, float** @dy_float, align 8
  %478 = load i32, i32* %13, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds float, float* %477, i64 %479
  %481 = load float, float* %480, align 4
  %482 = fadd float %476, %481
  %483 = fsub float %471, %482
  %484 = fpext float %483 to double
  %485 = load double, double* @yconversion, align 8
  %486 = fmul double %484, %485
  %487 = fptosi double %486 to i32
  store i32 %487, i32* %27, align 4
  %488 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %489 = load i32, i32* %24, align 4
  %490 = load i32, i32* %27, align 4
  %491 = load i32, i32* %25, align 4
  %492 = load i32, i32* %27, align 4
  %493 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %488, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %489, i32 noundef %490, i32 noundef %491, i32 noundef %492)
  %494 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %495 = load i32, i32* %24, align 4
  %496 = load i32, i32* %26, align 4
  %497 = load i32, i32* %25, align 4
  %498 = load i32, i32* %26, align 4
  %499 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %494, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %495, i32 noundef %496, i32 noundef %497, i32 noundef %498)
  %500 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %501 = load i32, i32* %24, align 4
  %502 = load i32, i32* %26, align 4
  %503 = load i32, i32* %24, align 4
  %504 = load i32, i32* %27, align 4
  %505 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %500, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %501, i32 noundef %502, i32 noundef %503, i32 noundef %504)
  %506 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %507 = load i32, i32* %25, align 4
  %508 = load i32, i32* %26, align 4
  %509 = load i32, i32* %25, align 4
  %510 = load i32, i32* %27, align 4
  %511 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %506, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %507, i32 noundef %508, i32 noundef %509, i32 noundef %510)
  br label %512

512:                                              ; preds = %362, %212
  br label %513

513:                                              ; preds = %512
  %514 = load i32, i32* %13, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %13, align 4
  br label %161, !llvm.loop !9

516:                                              ; preds = %161
  %517 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %518 = call i32 @fclose(%struct._IO_FILE* noundef %517)
  %519 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %520 = call i32 @fclose(%struct._IO_FILE* noundef %519)
  %521 = load i32, i32* @iteration, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* @iteration, align 4
  br label %533

523:                                              ; preds = %60, %53
  %524 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %525 = icmp eq %struct._IO_FILE* %524, null
  br i1 %525, label %526, label %529

526:                                              ; preds = %523
  %527 = getelementptr inbounds [50 x i8], [50 x i8]* %15, i64 0, i64 0
  %528 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* noundef %527)
  br label %532

529:                                              ; preds = %523
  %530 = getelementptr inbounds [50 x i8], [50 x i8]* %16, i64 0, i64 0
  %531 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* noundef %530)
  br label %532

532:                                              ; preds = %529, %526
  br label %533

533:                                              ; preds = %532, %516
  br label %534

534:                                              ; preds = %533, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @write_graphics_info(i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @graphics_view_mode, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load double, double* %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  call void @DrawSquaresToFile(i32 noundef %14, i32 noundef %15, double noundef %16, i32 noundef %17, i32 noundef %18)
  br label %25

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load double, double* %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  call void @DisplayStateToFile(i32 noundef %20, i32 noundef %21, double noundef %22, i32 noundef %23, i32 noundef %24)
  br label %25

25:                                               ; preds = %19, %13
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
