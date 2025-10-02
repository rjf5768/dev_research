; ModuleID = './graphics.ll'
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
  %11 = fsub float %6, %7
  %12 = fpext float %11 to double
  %13 = fdiv double 8.000000e+02, %12
  store double %13, double* @xconversion, align 8
  %14 = load float, float* @graphics_ymax, align 4
  %15 = load float, float* @graphics_ymin, align 4
  %16 = fsub float %14, %15
  %17 = fpext float %16 to double
  %18 = fdiv double 8.000000e+02, %17
  store double %18, double* @yconversion, align 8
  %19 = load i8*, i8** @graphics_directory, align 8
  %20 = call i32 @stat(i8* noundef %19, %struct.stat* noundef nonnull %1) #6
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %0
  %23 = load i8*, i8** @graphics_directory, align 8
  %24 = call i32 @mkdir(i8* noundef %23, i32 noundef 511) #6
  br label %25

25:                                               ; preds = %22, %0
  %26 = load i32, i32* @graphics_type, align 4
  %.not = icmp eq i32 %26, 1
  br i1 %.not, label %30, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* @graphics_type, align 4
  %.not1 = icmp eq i32 %28, 0
  br i1 %.not1, label %30, label %29

29:                                               ; preds = %27
  store i32 1, i32* @magick_on, align 4
  br label %30

30:                                               ; preds = %29, %27, %25
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @mkdir(i8* noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @terminate_graphics_output() #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_graphics_window(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #3 {
  store float %0, float* @graphics_xmin, align 4
  store float %1, float* @graphics_xmax, align 4
  store float %2, float* @graphics_ymin, align 4
  store float %3, float* @graphics_ymax, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_graphics_cell_data_double(double* noundef %0) #3 {
  store i32 0, i32* @data_type, align 4
  store double* %0, double** @data_double, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_graphics_cell_data_float(float* noundef %0) #3 {
  store i32 1, i32* @data_type, align 4
  store float* %0, float** @data_float, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_graphics_cell_proc(i32* noundef %0) #3 {
  store i32* %0, i32** @graphics_proc, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_graphics_cell_coordinates_double(double* noundef %0, double* noundef %1, double* noundef %2, double* noundef %3) #3 {
  store i32 0, i32* @spatial_type, align 4
  store double* %0, double** @x_double, align 8
  store double* %1, double** @dx_double, align 8
  store double* %2, double** @y_double, align 8
  store double* %3, double** @dy_double, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_graphics_cell_coordinates_float(float* noundef %0, float* noundef %1, float* noundef %2, float* noundef %3) #3 {
  store i32 1, i32* @spatial_type, align 4
  store float* %0, float** @x_float, align 8
  store float* %1, float** @dx_float, align 8
  store float* %2, float** @y_float, align 8
  store float* %3, float** @dy_float, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_graphics_viewmode(i32 noundef %0) #3 {
  store i32 %0, i32* @graphics_view_mode, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_graphics_mysize(i32 noundef %0) #3 {
  store i32 %0, i32* @graphics_mysize, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_graphics_outline(i32 noundef %0) #3 {
  store i32 %0, i32* @graphics_outline, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DrawSquaresToFile(i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [50 x i8], align 16
  %7 = alloca [50 x i8], align 16
  %8 = load i32, i32* @graphics_type, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %301

10:                                               ; preds = %5
  %11 = load i32, i32* @Ncolors, align 4
  %12 = load i32*, i32** @graphics_proc, align 8
  %13 = load i32, i32* @graphics_mysize, align 4
  %14 = add nsw i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = sdiv i32 %11, %18
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %27, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %22 = load i8*, i8** @graphics_directory, align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %21, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef %22, i32 noundef %0, i32 noundef %4) #6
  %24 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %25 = load i8*, i8** @graphics_directory, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %24, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef %25, i32 noundef %0, i32 noundef %4) #6
  br label %34

27:                                               ; preds = %10
  %28 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %29 = load i8*, i8** @graphics_directory, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %28, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %29, i32 noundef %0) #6
  %31 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %32 = load i8*, i8** @graphics_directory, align 8
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %31, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %32, i32 noundef %0) #6
  br label %34

34:                                               ; preds = %27, %20
  %35 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %36 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6
  %37 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %38 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %37, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6
  %.not1 = icmp eq %struct._IO_FILE* %36, null
  br i1 %.not1, label %291, label %39

39:                                               ; preds = %34
  %.not2 = icmp eq %struct._IO_FILE* %38, null
  br i1 %.not2, label %291, label %40

40:                                               ; preds = %39
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %36, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %1, double noundef %2) #6
  %42 = load i32, i32* @data_type, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %165

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %162, %44
  %.0 = phi i32 [ 0, %44 ], [ %163, %162 ]
  %46 = load i32, i32* @graphics_mysize, align 4
  %47 = icmp slt i32 %.0, %46
  br i1 %47, label %48, label %164

48:                                               ; preds = %45
  %49 = load double*, double** @x_double, align 8
  %50 = zext i32 %.0 to i64
  %51 = getelementptr inbounds double, double* %49, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load float, float* @graphics_xmin, align 4
  %54 = fpext float %53 to double
  %55 = fsub double %52, %54
  %56 = load double, double* @xconversion, align 8
  %57 = fmul double %55, %56
  %58 = fptosi double %57 to i32
  %59 = load double*, double** @x_double, align 8
  %60 = zext i32 %.0 to i64
  %61 = getelementptr inbounds double, double* %59, i64 %60
  %62 = load double, double* %61, align 8
  %63 = load double*, double** @dx_double, align 8
  %64 = zext i32 %.0 to i64
  %65 = getelementptr inbounds double, double* %63, i64 %64
  %66 = load double, double* %65, align 8
  %67 = fadd double %62, %66
  %68 = load float, float* @graphics_xmin, align 4
  %69 = fpext float %68 to double
  %70 = fsub double %67, %69
  %71 = load double, double* @xconversion, align 8
  %72 = sitofp i32 %58 to double
  %73 = fneg double %72
  %74 = call double @llvm.fmuladd.f64(double %70, double %71, double %73)
  %75 = fptosi double %74 to i32
  %76 = load float, float* @graphics_ymax, align 4
  %77 = fpext float %76 to double
  %78 = load double*, double** @y_double, align 8
  %79 = zext i32 %.0 to i64
  %80 = getelementptr inbounds double, double* %78, i64 %79
  %81 = load double, double* %80, align 8
  %82 = load double*, double** @dy_double, align 8
  %83 = zext i32 %.0 to i64
  %84 = getelementptr inbounds double, double* %82, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fadd double %81, %85
  %87 = fsub double %77, %86
  %88 = load double, double* @yconversion, align 8
  %89 = fmul double %87, %88
  %90 = fptosi double %89 to i32
  %91 = load float, float* @graphics_ymax, align 4
  %92 = fpext float %91 to double
  %93 = load double*, double** @y_double, align 8
  %94 = zext i32 %.0 to i64
  %95 = getelementptr inbounds double, double* %93, i64 %94
  %96 = load double, double* %95, align 8
  %97 = fsub double %92, %96
  %98 = load double, double* @yconversion, align 8
  %99 = fmul double %97, %98
  %100 = fptosi double %99 to i32
  %101 = sub nsw i32 %100, %90
  %102 = load i32*, i32** @graphics_proc, align 8
  %103 = zext i32 %.0 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, %19
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %36, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %58, i32 noundef %90, i32 noundef %75, i32 noundef %101, i32 noundef %106) #6
  %108 = load double*, double** @x_double, align 8
  %109 = zext i32 %.0 to i64
  %110 = getelementptr inbounds double, double* %108, i64 %109
  %111 = load double, double* %110, align 8
  %112 = load float, float* @graphics_xmin, align 4
  %113 = fpext float %112 to double
  %114 = fsub double %111, %113
  %115 = load double, double* @xconversion, align 8
  %116 = fmul double %114, %115
  %117 = fptosi double %116 to i32
  %118 = load double*, double** @x_double, align 8
  %119 = zext i32 %.0 to i64
  %120 = getelementptr inbounds double, double* %118, i64 %119
  %121 = load double, double* %120, align 8
  %122 = load double*, double** @dx_double, align 8
  %123 = zext i32 %.0 to i64
  %124 = getelementptr inbounds double, double* %122, i64 %123
  %125 = load double, double* %124, align 8
  %126 = fadd double %121, %125
  %127 = load float, float* @graphics_xmin, align 4
  %128 = fpext float %127 to double
  %129 = fsub double %126, %128
  %130 = load double, double* @xconversion, align 8
  %131 = fmul double %129, %130
  %132 = fptosi double %131 to i32
  %133 = load float, float* @graphics_ymax, align 4
  %134 = fpext float %133 to double
  %135 = load double*, double** @y_double, align 8
  %136 = zext i32 %.0 to i64
  %137 = getelementptr inbounds double, double* %135, i64 %136
  %138 = load double, double* %137, align 8
  %139 = fsub double %134, %138
  %140 = load double, double* @yconversion, align 8
  %141 = fmul double %139, %140
  %142 = fptosi double %141 to i32
  %143 = load float, float* @graphics_ymax, align 4
  %144 = fpext float %143 to double
  %145 = load double*, double** @y_double, align 8
  %146 = zext i32 %.0 to i64
  %147 = getelementptr inbounds double, double* %145, i64 %146
  %148 = load double, double* %147, align 8
  %149 = load double*, double** @dy_double, align 8
  %150 = zext i32 %.0 to i64
  %151 = getelementptr inbounds double, double* %149, i64 %150
  %152 = load double, double* %151, align 8
  %153 = fadd double %148, %152
  %154 = fsub double %144, %153
  %155 = load double, double* @yconversion, align 8
  %156 = fmul double %154, %155
  %157 = fptosi double %156 to i32
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %38, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %117, i32 noundef %157, i32 noundef %132, i32 noundef %157) #6
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %38, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %117, i32 noundef %142, i32 noundef %132, i32 noundef %142) #6
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %38, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %117, i32 noundef %142, i32 noundef %117, i32 noundef %157) #6
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %38, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %132, i32 noundef %142, i32 noundef %132, i32 noundef %157) #6
  br label %162

162:                                              ; preds = %48
  %163 = add nuw nsw i32 %.0, 1
  br label %45, !llvm.loop !4

164:                                              ; preds = %45
  br label %286

165:                                              ; preds = %40
  br label %166

166:                                              ; preds = %283, %165
  %.1 = phi i32 [ 0, %165 ], [ %284, %283 ]
  %167 = load i32, i32* @graphics_mysize, align 4
  %168 = icmp slt i32 %.1, %167
  br i1 %168, label %169, label %285

169:                                              ; preds = %166
  %170 = load float*, float** @x_float, align 8
  %171 = zext i32 %.1 to i64
  %172 = getelementptr inbounds float, float* %170, i64 %171
  %173 = load float, float* %172, align 4
  %174 = load float, float* @graphics_xmin, align 4
  %175 = fsub float %173, %174
  %176 = fpext float %175 to double
  %177 = load double, double* @xconversion, align 8
  %178 = fmul double %177, %176
  %179 = fptosi double %178 to i32
  %180 = load float*, float** @x_float, align 8
  %181 = zext i32 %.1 to i64
  %182 = getelementptr inbounds float, float* %180, i64 %181
  %183 = load float, float* %182, align 4
  %184 = load float*, float** @dx_float, align 8
  %185 = zext i32 %.1 to i64
  %186 = getelementptr inbounds float, float* %184, i64 %185
  %187 = load float, float* %186, align 4
  %188 = fadd float %183, %187
  %189 = load float, float* @graphics_xmin, align 4
  %190 = fsub float %188, %189
  %191 = fpext float %190 to double
  %192 = load double, double* @xconversion, align 8
  %193 = sitofp i32 %179 to double
  %194 = fneg double %193
  %195 = call double @llvm.fmuladd.f64(double %191, double %192, double %194)
  %196 = fptosi double %195 to i32
  %197 = load float, float* @graphics_ymax, align 4
  %198 = load float*, float** @y_float, align 8
  %199 = zext i32 %.1 to i64
  %200 = getelementptr inbounds float, float* %198, i64 %199
  %201 = load float, float* %200, align 4
  %202 = load float*, float** @dy_float, align 8
  %203 = zext i32 %.1 to i64
  %204 = getelementptr inbounds float, float* %202, i64 %203
  %205 = load float, float* %204, align 4
  %206 = fadd float %201, %205
  %207 = fsub float %197, %206
  %208 = fpext float %207 to double
  %209 = load double, double* @yconversion, align 8
  %210 = fmul double %209, %208
  %211 = fptosi double %210 to i32
  %212 = load float, float* @graphics_ymax, align 4
  %213 = load float*, float** @y_float, align 8
  %214 = zext i32 %.1 to i64
  %215 = getelementptr inbounds float, float* %213, i64 %214
  %216 = load float, float* %215, align 4
  %217 = fsub float %212, %216
  %218 = fpext float %217 to double
  %219 = load double, double* @yconversion, align 8
  %220 = fmul double %219, %218
  %221 = fptosi double %220 to i32
  %222 = sub nsw i32 %221, %211
  %223 = load i32*, i32** @graphics_proc, align 8
  %224 = zext i32 %.1 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %226, %19
  %228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %36, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %179, i32 noundef %211, i32 noundef %196, i32 noundef %222, i32 noundef %227) #6
  %229 = load float*, float** @x_float, align 8
  %230 = zext i32 %.1 to i64
  %231 = getelementptr inbounds float, float* %229, i64 %230
  %232 = load float, float* %231, align 4
  %233 = load float, float* @graphics_xmin, align 4
  %234 = fsub float %232, %233
  %235 = fpext float %234 to double
  %236 = load double, double* @xconversion, align 8
  %237 = fmul double %236, %235
  %238 = fptosi double %237 to i32
  %239 = load float*, float** @x_float, align 8
  %240 = zext i32 %.1 to i64
  %241 = getelementptr inbounds float, float* %239, i64 %240
  %242 = load float, float* %241, align 4
  %243 = load float*, float** @dx_float, align 8
  %244 = zext i32 %.1 to i64
  %245 = getelementptr inbounds float, float* %243, i64 %244
  %246 = load float, float* %245, align 4
  %247 = fadd float %242, %246
  %248 = load float, float* @graphics_xmin, align 4
  %249 = fsub float %247, %248
  %250 = fpext float %249 to double
  %251 = load double, double* @xconversion, align 8
  %252 = fmul double %251, %250
  %253 = fptosi double %252 to i32
  %254 = load float, float* @graphics_ymax, align 4
  %255 = load float*, float** @y_float, align 8
  %256 = zext i32 %.1 to i64
  %257 = getelementptr inbounds float, float* %255, i64 %256
  %258 = load float, float* %257, align 4
  %259 = fsub float %254, %258
  %260 = fpext float %259 to double
  %261 = load double, double* @yconversion, align 8
  %262 = fmul double %261, %260
  %263 = fptosi double %262 to i32
  %264 = load float, float* @graphics_ymax, align 4
  %265 = load float*, float** @y_float, align 8
  %266 = zext i32 %.1 to i64
  %267 = getelementptr inbounds float, float* %265, i64 %266
  %268 = load float, float* %267, align 4
  %269 = load float*, float** @dy_float, align 8
  %270 = zext i32 %.1 to i64
  %271 = getelementptr inbounds float, float* %269, i64 %270
  %272 = load float, float* %271, align 4
  %273 = fadd float %268, %272
  %274 = fsub float %264, %273
  %275 = fpext float %274 to double
  %276 = load double, double* @yconversion, align 8
  %277 = fmul double %276, %275
  %278 = fptosi double %277 to i32
  %279 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %38, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %238, i32 noundef %278, i32 noundef %253, i32 noundef %278) #6
  %280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %38, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %238, i32 noundef %263, i32 noundef %253, i32 noundef %263) #6
  %281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %38, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %238, i32 noundef %263, i32 noundef %238, i32 noundef %278) #6
  %282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %38, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %253, i32 noundef %263, i32 noundef %253, i32 noundef %278) #6
  br label %283

283:                                              ; preds = %169
  %284 = add nuw nsw i32 %.1, 1
  br label %166, !llvm.loop !6

285:                                              ; preds = %166
  br label %286

286:                                              ; preds = %285, %164
  %287 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %36) #6
  %288 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %38) #6
  %289 = load i32, i32* @iteration, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* @iteration, align 4
  br label %300

291:                                              ; preds = %39, %34
  %292 = icmp eq %struct._IO_FILE* %36, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %291
  %294 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %295 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %294) #6
  br label %299

296:                                              ; preds = %291
  %297 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %298 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %297) #6
  br label %299

299:                                              ; preds = %296, %293
  br label %300

300:                                              ; preds = %299, %286
  br label %301

301:                                              ; preds = %300, %5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #4

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #5

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @DisplayStateToFile(i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [50 x i8], align 16
  %7 = alloca [50 x i8], align 16
  %8 = load i32, i32* @graphics_type, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %373

10:                                               ; preds = %5
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %18, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %13 = load i8*, i8** @graphics_directory, align 8
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %12, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* noundef %13, i32 noundef %0, i32 noundef %4) #6
  %15 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %16 = load i8*, i8** @graphics_directory, align 8
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %15, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* noundef %16, i32 noundef %0, i32 noundef %4) #6
  br label %25

18:                                               ; preds = %10
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %20 = load i8*, i8** @graphics_directory, align 8
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %19, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* noundef %20, i32 noundef %0) #6
  %22 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %23 = load i8*, i8** @graphics_directory, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %22, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* noundef %23, i32 noundef %0) #6
  br label %25

25:                                               ; preds = %18, %11
  %26 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %27 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %26, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6
  %28 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %29 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6
  %.not13 = icmp eq %struct._IO_FILE* %27, null
  br i1 %.not13, label %363, label %30

30:                                               ; preds = %25
  %.not14 = icmp eq %struct._IO_FILE* %29, null
  br i1 %.not14, label %363, label %31

31:                                               ; preds = %30
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %27, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 noundef %1, double noundef %2) #6
  %33 = load i32, i32* @autoscale, align 4
  %.not15 = icmp eq i32 %33, 0
  br i1 %.not15, label %102, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @data_type, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %64, %37
  %.07 = phi i32 [ 0, %37 ], [ %65, %64 ]
  %.01 = phi double [ 1.000000e+30, %37 ], [ %.12, %64 ]
  %.0 = phi double [ -1.000000e+30, %37 ], [ %.1, %64 ]
  %39 = load i32, i32* @graphics_mysize, align 4
  %40 = icmp slt i32 %.07, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load double*, double** @data_double, align 8
  %43 = zext i32 %.07 to i64
  %44 = getelementptr inbounds double, double* %42, i64 %43
  %45 = load double, double* %44, align 8
  %46 = fcmp ogt double %45, %.0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load double*, double** @data_double, align 8
  %49 = zext i32 %.07 to i64
  %50 = getelementptr inbounds double, double* %48, i64 %49
  %51 = load double, double* %50, align 8
  br label %52

52:                                               ; preds = %47, %41
  %.1 = phi double [ %51, %47 ], [ %.0, %41 ]
  %53 = load double*, double** @data_double, align 8
  %54 = zext i32 %.07 to i64
  %55 = getelementptr inbounds double, double* %53, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fcmp olt double %56, %.01
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load double*, double** @data_double, align 8
  %60 = zext i32 %.07 to i64
  %61 = getelementptr inbounds double, double* %59, i64 %60
  %62 = load double, double* %61, align 8
  br label %63

63:                                               ; preds = %58, %52
  %.12 = phi double [ %62, %58 ], [ %.01, %52 ]
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.07, 1
  br label %38, !llvm.loop !7

66:                                               ; preds = %38
  br label %101

67:                                               ; preds = %34
  br label %68

68:                                               ; preds = %98, %67
  %.18 = phi i32 [ 0, %67 ], [ %99, %98 ]
  %.23 = phi double [ 1.000000e+30, %67 ], [ %.34, %98 ]
  %.2 = phi double [ -1.000000e+30, %67 ], [ %.3, %98 ]
  %69 = load i32, i32* @graphics_mysize, align 4
  %70 = icmp slt i32 %.18, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %68
  %72 = load float*, float** @data_float, align 8
  %73 = zext i32 %.18 to i64
  %74 = getelementptr inbounds float, float* %72, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fpext float %75 to double
  %77 = fcmp olt double %.2, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load float*, float** @data_float, align 8
  %80 = zext i32 %.18 to i64
  %81 = getelementptr inbounds float, float* %79, i64 %80
  %82 = load float, float* %81, align 4
  %83 = fpext float %82 to double
  br label %84

84:                                               ; preds = %78, %71
  %.3 = phi double [ %83, %78 ], [ %.2, %71 ]
  %85 = load float*, float** @data_float, align 8
  %86 = zext i32 %.18 to i64
  %87 = getelementptr inbounds float, float* %85, i64 %86
  %88 = load float, float* %87, align 4
  %89 = fpext float %88 to double
  %90 = fcmp ogt double %.23, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load float*, float** @data_float, align 8
  %93 = zext i32 %.18 to i64
  %94 = getelementptr inbounds float, float* %92, i64 %93
  %95 = load float, float* %94, align 4
  %96 = fpext float %95 to double
  br label %97

97:                                               ; preds = %91, %84
  %.34 = phi double [ %96, %91 ], [ %.23, %84 ]
  br label %98

98:                                               ; preds = %97
  %99 = add nuw nsw i32 %.18, 1
  br label %68, !llvm.loop !8

100:                                              ; preds = %68
  br label %101

101:                                              ; preds = %100, %66
  %.45 = phi double [ %.01, %66 ], [ %.23, %100 ]
  %.4 = phi double [ %.0, %66 ], [ %.2, %100 ]
  br label %102

102:                                              ; preds = %101, %31
  %.56 = phi double [ %.45, %101 ], [ 0.000000e+00, %31 ]
  %.5 = phi double [ %.4, %101 ], [ 2.500000e+01, %31 ]
  %103 = load i32, i32* @Ncolors, align 4
  %104 = sitofp i32 %103 to double
  %105 = fsub double %.5, %.56
  %106 = fdiv double %104, %105
  br label %107

107:                                              ; preds = %356, %102
  %.29 = phi i32 [ 0, %102 ], [ %357, %356 ]
  %108 = load i32, i32* @graphics_mysize, align 4
  %109 = icmp slt i32 %.29, %108
  br i1 %109, label %110, label %358

110:                                              ; preds = %107
  %111 = load i32, i32* @data_type, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load double*, double** @data_double, align 8
  %115 = zext i32 %.29 to i64
  %116 = getelementptr inbounds double, double* %114, i64 %115
  %117 = load double, double* %116, align 8
  br label %124

118:                                              ; preds = %110
  %119 = load float*, float** @data_float, align 8
  %120 = zext i32 %.29 to i64
  %121 = getelementptr inbounds float, float* %119, i64 %120
  %122 = load float, float* %121, align 4
  %123 = fpext float %122 to double
  br label %124

124:                                              ; preds = %118, %113
  %.pn17 = phi double [ %117, %113 ], [ %123, %118 ]
  %.pn.in.in = fsub double %.pn17, %.56
  %.pn.in = fptosi double %.pn.in.in to i32
  %.pn = sitofp i32 %.pn.in to double
  %.010.in = fmul double %106, %.pn
  %.010 = fptosi double %.010.in to i32
  %125 = load i32, i32* @Ncolors, align 4
  %126 = sub nsw i32 %125, %.010
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128, %124
  %.111 = phi i32 [ 0, %128 ], [ %126, %124 ]
  %130 = load i32, i32* @Ncolors, align 4
  %.not16 = icmp slt i32 %.111, %130
  br i1 %.not16, label %134, label %131

131:                                              ; preds = %129
  %132 = load i32, i32* @Ncolors, align 4
  %133 = add nsw i32 %132, -1
  br label %134

134:                                              ; preds = %131, %129
  %.212 = phi i32 [ %133, %131 ], [ %.111, %129 ]
  %135 = load i32, i32* @data_type, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %246

137:                                              ; preds = %134
  %138 = load double*, double** @x_double, align 8
  %139 = zext i32 %.29 to i64
  %140 = getelementptr inbounds double, double* %138, i64 %139
  %141 = load double, double* %140, align 8
  %142 = load float, float* @graphics_xmin, align 4
  %143 = fpext float %142 to double
  %144 = fsub double %141, %143
  %145 = load double, double* @xconversion, align 8
  %146 = fmul double %144, %145
  %147 = fptosi double %146 to i32
  %148 = load double*, double** @x_double, align 8
  %149 = zext i32 %.29 to i64
  %150 = getelementptr inbounds double, double* %148, i64 %149
  %151 = load double, double* %150, align 8
  %152 = load double*, double** @dx_double, align 8
  %153 = zext i32 %.29 to i64
  %154 = getelementptr inbounds double, double* %152, i64 %153
  %155 = load double, double* %154, align 8
  %156 = fadd double %151, %155
  %157 = load float, float* @graphics_xmin, align 4
  %158 = fpext float %157 to double
  %159 = fsub double %156, %158
  %160 = load double, double* @xconversion, align 8
  %161 = sitofp i32 %147 to double
  %162 = fneg double %161
  %163 = call double @llvm.fmuladd.f64(double %159, double %160, double %162)
  %164 = fptosi double %163 to i32
  %165 = load float, float* @graphics_ymax, align 4
  %166 = fpext float %165 to double
  %167 = load double*, double** @y_double, align 8
  %168 = zext i32 %.29 to i64
  %169 = getelementptr inbounds double, double* %167, i64 %168
  %170 = load double, double* %169, align 8
  %171 = load double*, double** @dy_double, align 8
  %172 = zext i32 %.29 to i64
  %173 = getelementptr inbounds double, double* %171, i64 %172
  %174 = load double, double* %173, align 8
  %175 = fadd double %170, %174
  %176 = fsub double %166, %175
  %177 = load double, double* @yconversion, align 8
  %178 = fmul double %176, %177
  %179 = fptosi double %178 to i32
  %180 = load float, float* @graphics_ymax, align 4
  %181 = fpext float %180 to double
  %182 = load double*, double** @y_double, align 8
  %183 = zext i32 %.29 to i64
  %184 = getelementptr inbounds double, double* %182, i64 %183
  %185 = load double, double* %184, align 8
  %186 = fsub double %181, %185
  %187 = load double, double* @yconversion, align 8
  %188 = fmul double %186, %187
  %189 = fptosi double %188 to i32
  %190 = sub nsw i32 %189, %179
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %27, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %147, i32 noundef %179, i32 noundef %164, i32 noundef %190, i32 noundef %.212) #6
  %192 = load double*, double** @x_double, align 8
  %193 = zext i32 %.29 to i64
  %194 = getelementptr inbounds double, double* %192, i64 %193
  %195 = load double, double* %194, align 8
  %196 = load float, float* @graphics_xmin, align 4
  %197 = fpext float %196 to double
  %198 = fsub double %195, %197
  %199 = load double, double* @xconversion, align 8
  %200 = fmul double %198, %199
  %201 = fptosi double %200 to i32
  %202 = load double*, double** @x_double, align 8
  %203 = zext i32 %.29 to i64
  %204 = getelementptr inbounds double, double* %202, i64 %203
  %205 = load double, double* %204, align 8
  %206 = load double*, double** @dx_double, align 8
  %207 = zext i32 %.29 to i64
  %208 = getelementptr inbounds double, double* %206, i64 %207
  %209 = load double, double* %208, align 8
  %210 = fadd double %205, %209
  %211 = load float, float* @graphics_xmin, align 4
  %212 = fpext float %211 to double
  %213 = fsub double %210, %212
  %214 = load double, double* @xconversion, align 8
  %215 = fmul double %213, %214
  %216 = fptosi double %215 to i32
  %217 = load float, float* @graphics_ymax, align 4
  %218 = fpext float %217 to double
  %219 = load double*, double** @y_double, align 8
  %220 = zext i32 %.29 to i64
  %221 = getelementptr inbounds double, double* %219, i64 %220
  %222 = load double, double* %221, align 8
  %223 = fsub double %218, %222
  %224 = load double, double* @yconversion, align 8
  %225 = fmul double %223, %224
  %226 = fptosi double %225 to i32
  %227 = load float, float* @graphics_ymax, align 4
  %228 = fpext float %227 to double
  %229 = load double*, double** @y_double, align 8
  %230 = zext i32 %.29 to i64
  %231 = getelementptr inbounds double, double* %229, i64 %230
  %232 = load double, double* %231, align 8
  %233 = load double*, double** @dy_double, align 8
  %234 = zext i32 %.29 to i64
  %235 = getelementptr inbounds double, double* %233, i64 %234
  %236 = load double, double* %235, align 8
  %237 = fadd double %232, %236
  %238 = fsub double %228, %237
  %239 = load double, double* @yconversion, align 8
  %240 = fmul double %238, %239
  %241 = fptosi double %240 to i32
  %242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %29, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %201, i32 noundef %241, i32 noundef %216, i32 noundef %241) #6
  %243 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %29, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %201, i32 noundef %226, i32 noundef %216, i32 noundef %226) #6
  %244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %29, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %201, i32 noundef %226, i32 noundef %201, i32 noundef %241) #6
  %245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %29, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %216, i32 noundef %226, i32 noundef %216, i32 noundef %241) #6
  br label %355

246:                                              ; preds = %134
  %247 = load float*, float** @x_float, align 8
  %248 = zext i32 %.29 to i64
  %249 = getelementptr inbounds float, float* %247, i64 %248
  %250 = load float, float* %249, align 4
  %251 = load float, float* @graphics_xmin, align 4
  %252 = fsub float %250, %251
  %253 = fpext float %252 to double
  %254 = load double, double* @xconversion, align 8
  %255 = fmul double %254, %253
  %256 = fptosi double %255 to i32
  %257 = load float*, float** @x_float, align 8
  %258 = zext i32 %.29 to i64
  %259 = getelementptr inbounds float, float* %257, i64 %258
  %260 = load float, float* %259, align 4
  %261 = load float*, float** @dx_float, align 8
  %262 = zext i32 %.29 to i64
  %263 = getelementptr inbounds float, float* %261, i64 %262
  %264 = load float, float* %263, align 4
  %265 = fadd float %260, %264
  %266 = load float, float* @graphics_xmin, align 4
  %267 = fsub float %265, %266
  %268 = fpext float %267 to double
  %269 = load double, double* @xconversion, align 8
  %270 = sitofp i32 %256 to double
  %271 = fneg double %270
  %272 = call double @llvm.fmuladd.f64(double %268, double %269, double %271)
  %273 = fptosi double %272 to i32
  %274 = load float, float* @graphics_ymax, align 4
  %275 = load float*, float** @y_float, align 8
  %276 = zext i32 %.29 to i64
  %277 = getelementptr inbounds float, float* %275, i64 %276
  %278 = load float, float* %277, align 4
  %279 = load float*, float** @dy_float, align 8
  %280 = zext i32 %.29 to i64
  %281 = getelementptr inbounds float, float* %279, i64 %280
  %282 = load float, float* %281, align 4
  %283 = fadd float %278, %282
  %284 = fsub float %274, %283
  %285 = fpext float %284 to double
  %286 = load double, double* @yconversion, align 8
  %287 = fmul double %286, %285
  %288 = fptosi double %287 to i32
  %289 = load float, float* @graphics_ymax, align 4
  %290 = load float*, float** @y_float, align 8
  %291 = zext i32 %.29 to i64
  %292 = getelementptr inbounds float, float* %290, i64 %291
  %293 = load float, float* %292, align 4
  %294 = fsub float %289, %293
  %295 = fpext float %294 to double
  %296 = load double, double* @yconversion, align 8
  %297 = fmul double %296, %295
  %298 = fptosi double %297 to i32
  %299 = sub nsw i32 %298, %288
  %300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %27, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 noundef %256, i32 noundef %288, i32 noundef %273, i32 noundef %299, i32 noundef %.212) #6
  %301 = load float*, float** @x_float, align 8
  %302 = zext i32 %.29 to i64
  %303 = getelementptr inbounds float, float* %301, i64 %302
  %304 = load float, float* %303, align 4
  %305 = load float, float* @graphics_xmin, align 4
  %306 = fsub float %304, %305
  %307 = fpext float %306 to double
  %308 = load double, double* @xconversion, align 8
  %309 = fmul double %308, %307
  %310 = fptosi double %309 to i32
  %311 = load float*, float** @x_float, align 8
  %312 = zext i32 %.29 to i64
  %313 = getelementptr inbounds float, float* %311, i64 %312
  %314 = load float, float* %313, align 4
  %315 = load float*, float** @dx_float, align 8
  %316 = zext i32 %.29 to i64
  %317 = getelementptr inbounds float, float* %315, i64 %316
  %318 = load float, float* %317, align 4
  %319 = fadd float %314, %318
  %320 = load float, float* @graphics_xmin, align 4
  %321 = fsub float %319, %320
  %322 = fpext float %321 to double
  %323 = load double, double* @xconversion, align 8
  %324 = fmul double %323, %322
  %325 = fptosi double %324 to i32
  %326 = load float, float* @graphics_ymax, align 4
  %327 = load float*, float** @y_float, align 8
  %328 = zext i32 %.29 to i64
  %329 = getelementptr inbounds float, float* %327, i64 %328
  %330 = load float, float* %329, align 4
  %331 = fsub float %326, %330
  %332 = fpext float %331 to double
  %333 = load double, double* @yconversion, align 8
  %334 = fmul double %333, %332
  %335 = fptosi double %334 to i32
  %336 = load float, float* @graphics_ymax, align 4
  %337 = load float*, float** @y_float, align 8
  %338 = zext i32 %.29 to i64
  %339 = getelementptr inbounds float, float* %337, i64 %338
  %340 = load float, float* %339, align 4
  %341 = load float*, float** @dy_float, align 8
  %342 = zext i32 %.29 to i64
  %343 = getelementptr inbounds float, float* %341, i64 %342
  %344 = load float, float* %343, align 4
  %345 = fadd float %340, %344
  %346 = fsub float %336, %345
  %347 = fpext float %346 to double
  %348 = load double, double* @yconversion, align 8
  %349 = fmul double %348, %347
  %350 = fptosi double %349 to i32
  %351 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %29, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %310, i32 noundef %350, i32 noundef %325, i32 noundef %350) #6
  %352 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %29, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %310, i32 noundef %335, i32 noundef %325, i32 noundef %335) #6
  %353 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %29, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %310, i32 noundef %335, i32 noundef %310, i32 noundef %350) #6
  %354 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %29, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 noundef %325, i32 noundef %335, i32 noundef %325, i32 noundef %350) #6
  br label %355

355:                                              ; preds = %246, %137
  br label %356

356:                                              ; preds = %355
  %357 = add nuw nsw i32 %.29, 1
  br label %107, !llvm.loop !9

358:                                              ; preds = %107
  %359 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %27) #6
  %360 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %29) #6
  %361 = load i32, i32* @iteration, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* @iteration, align 4
  br label %372

363:                                              ; preds = %30, %25
  %364 = icmp eq %struct._IO_FILE* %27, null
  br i1 %364, label %365, label %368

365:                                              ; preds = %363
  %366 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %367 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %366) #6
  br label %371

368:                                              ; preds = %363
  %369 = getelementptr inbounds [50 x i8], [50 x i8]* %7, i64 0, i64 0
  %370 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8* noundef nonnull %369) #6
  br label %371

371:                                              ; preds = %368, %365
  br label %372

372:                                              ; preds = %371, %358
  br label %373

373:                                              ; preds = %372, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @write_graphics_info(i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load i32, i32* @graphics_view_mode, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @DrawSquaresToFile(i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4)
  br label %10

9:                                                ; preds = %5
  call void @DisplayStateToFile(i32 noundef %0, i32 noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4)
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
