; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/timestatus.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/timestatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ts_times = type { float, float, float, float }

@ts_real_time.initial_time = internal global i64 0, align 8
@ts_process_time.initial_time = internal global i64 0, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [75 x i8] c"    Frame          |  CPU/estimated  |  time/estimated | play/CPU |   ETA\0A\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"\0D%6ld/%6ld(%3d%%)|%2d:%02d:%02d/%2d:%02d:%02d|%2d:%02d:%02d/%2d:%02d:%02d|%10.4f|%2d:%02d:%02d \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local float @ts_real_time(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i64 @time(i64* noundef %3) #4
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* @ts_real_time.initial_time, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @ts_real_time.initial_time, align 8
  %12 = call double @difftime(i64 noundef %10, i64 noundef %11) #5
  %13 = fptrunc double %12 to float
  ret float %13
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local double @difftime(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local float @ts_process_time(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i64 @clock() #4
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* @ts_process_time.initial_time, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @ts_process_time.initial_time, align 8
  %12 = sub nsw i64 %10, %11
  %13 = sitofp i64 %12 to float
  %14 = fdiv float %13, 1.000000e+06
  ret float %14
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ts_calc_times(%struct.ts_times* noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.ts_times*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ts_times* %0, %struct.ts_times** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* %8, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %5
  %14 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %15 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = load i64, i64* %9, align 8
  %18 = sitofp i64 %17 to float
  %19 = fmul float %16, %18
  %20 = load i64, i64* %8, align 8
  %21 = sitofp i64 %20 to float
  %22 = fdiv float %19, %21
  %23 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %24 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %23, i32 0, i32 1
  store float %22, float* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sitofp i32 %25 to float
  %27 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %28 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %27, i32 0, i32 1
  %29 = load float, float* %28, align 4
  %30 = fmul float %26, %29
  %31 = fcmp ogt float %30, 0.000000e+00
  br i1 %31, label %32, label %47

32:                                               ; preds = %13
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %33, %35
  %37 = sitofp i64 %36 to float
  %38 = load i32, i32* %7, align 4
  %39 = sitofp i32 %38 to float
  %40 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %41 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %40, i32 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = fmul float %39, %42
  %44 = fdiv float %37, %43
  %45 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %46 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %45, i32 0, i32 2
  store float %44, float* %46, align 4
  br label %50

47:                                               ; preds = %13
  %48 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %49 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %48, i32 0, i32 2
  store float 0.000000e+00, float* %49, align 4
  br label %50

50:                                               ; preds = %47, %32
  %51 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %52 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  %54 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %55 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %54, i32 0, i32 0
  %56 = load float, float* %55, align 4
  %57 = fsub float %53, %56
  %58 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %59 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %58, i32 0, i32 3
  store float %57, float* %59, align 4
  br label %67

60:                                               ; preds = %5
  %61 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %62 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %61, i32 0, i32 1
  store float 0.000000e+00, float* %62, align 4
  %63 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %64 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %63, i32 0, i32 2
  store float 0.000000e+00, float* %64, align 4
  %65 = load %struct.ts_times*, %struct.ts_times** %6, align 8
  %66 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %65, i32 0, i32 3
  store float 0.000000e+00, float* %66, align 4
  br label %67

67:                                               ; preds = %60, %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timestatus(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ts_times, align 4
  %10 = alloca %struct.ts_times, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call float @ts_real_time(i64 noundef %12)
  %14 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 0
  store float %13, float* %14, align 4
  %15 = load i64, i64* %6, align 8
  %16 = call float @ts_process_time(i64 noundef %15)
  %17 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 0
  store float %16, float* %17, align 4
  %18 = load i64, i64* %6, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %166

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %8, align 4
  call void @ts_calc_times(%struct.ts_times* noundef %9, i32 noundef %24, i64 noundef %25, i64 noundef %26, i32 noundef %27)
  %28 = load i32, i32* %5, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %8, align 4
  call void @ts_calc_times(%struct.ts_times* noundef %10, i32 noundef %28, i64 noundef %29, i64 noundef %30, i32 noundef %31)
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %32, 1
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load i64, i64* %6, align 8
  %36 = sitofp i64 %35 to double
  %37 = fmul double 1.000000e+02, %36
  %38 = load i64, i64* %7, align 8
  %39 = sub nsw i64 %38, 1
  %40 = sitofp i64 %39 to double
  %41 = fdiv double %37, %40
  %42 = fptosi double %41 to i32
  store i32 %42, i32* %11, align 4
  br label %44

43:                                               ; preds = %23
  store i32 100, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = sub nsw i64 %47, 1
  %49 = load i32, i32* %11, align 4
  %50 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 0
  %51 = load float, float* %50, align 4
  %52 = fpext float %51 to double
  %53 = fadd double %52, 5.000000e-01
  %54 = fptosi double %53 to i64
  %55 = sdiv i64 %54, 3600
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 0
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  %60 = fadd double %59, 5.000000e-01
  %61 = fdiv double %60, 6.000000e+01
  %62 = fptosi double %61 to i64
  %63 = srem i64 %62, 60
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 0
  %66 = load float, float* %65, align 4
  %67 = fpext float %66 to double
  %68 = fadd double %67, 5.000000e-01
  %69 = fptosi double %68 to i64
  %70 = srem i64 %69, 60
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 1
  %73 = load float, float* %72, align 4
  %74 = fpext float %73 to double
  %75 = fadd double %74, 5.000000e-01
  %76 = fptosi double %75 to i64
  %77 = sdiv i64 %76, 3600
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 1
  %80 = load float, float* %79, align 4
  %81 = fpext float %80 to double
  %82 = fadd double %81, 5.000000e-01
  %83 = fdiv double %82, 6.000000e+01
  %84 = fptosi double %83 to i64
  %85 = srem i64 %84, 60
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = fpext float %88 to double
  %90 = fadd double %89, 5.000000e-01
  %91 = fptosi double %90 to i64
  %92 = srem i64 %91, 60
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 0
  %95 = load float, float* %94, align 4
  %96 = fpext float %95 to double
  %97 = fadd double %96, 5.000000e-01
  %98 = fptosi double %97 to i64
  %99 = sdiv i64 %98, 3600
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 0
  %102 = load float, float* %101, align 4
  %103 = fpext float %102 to double
  %104 = fadd double %103, 5.000000e-01
  %105 = fdiv double %104, 6.000000e+01
  %106 = fptosi double %105 to i64
  %107 = srem i64 %106, 60
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 0
  %110 = load float, float* %109, align 4
  %111 = fpext float %110 to double
  %112 = fadd double %111, 5.000000e-01
  %113 = fptosi double %112 to i64
  %114 = srem i64 %113, 60
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 1
  %117 = load float, float* %116, align 4
  %118 = fpext float %117 to double
  %119 = fadd double %118, 5.000000e-01
  %120 = fptosi double %119 to i64
  %121 = sdiv i64 %120, 3600
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 1
  %124 = load float, float* %123, align 4
  %125 = fpext float %124 to double
  %126 = fadd double %125, 5.000000e-01
  %127 = fdiv double %126, 6.000000e+01
  %128 = fptosi double %127 to i64
  %129 = srem i64 %128, 60
  %130 = trunc i64 %129 to i32
  %131 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 1
  %132 = load float, float* %131, align 4
  %133 = fpext float %132 to double
  %134 = fadd double %133, 5.000000e-01
  %135 = fptosi double %134 to i64
  %136 = srem i64 %135, 60
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %10, i32 0, i32 2
  %139 = load float, float* %138, align 4
  %140 = fpext float %139 to double
  %141 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 3
  %142 = load float, float* %141, align 4
  %143 = fpext float %142 to double
  %144 = fadd double %143, 5.000000e-01
  %145 = fptosi double %144 to i64
  %146 = sdiv i64 %145, 3600
  %147 = trunc i64 %146 to i32
  %148 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 3
  %149 = load float, float* %148, align 4
  %150 = fpext float %149 to double
  %151 = fadd double %150, 5.000000e-01
  %152 = fdiv double %151, 6.000000e+01
  %153 = fptosi double %152 to i64
  %154 = srem i64 %153, 60
  %155 = trunc i64 %154 to i32
  %156 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %9, i32 0, i32 3
  %157 = load float, float* %156, align 4
  %158 = fpext float %157 to double
  %159 = fadd double %158, 5.000000e-01
  %160 = fptosi double %159 to i64
  %161 = srem i64 %160, 60
  %162 = trunc i64 %161 to i32
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i64 noundef %46, i64 noundef %48, i32 noundef %49, i32 noundef %56, i32 noundef %64, i32 noundef %71, i32 noundef %78, i32 noundef %86, i32 noundef %93, i32 noundef %100, i32 noundef %108, i32 noundef %115, i32 noundef %122, i32 noundef %130, i32 noundef %137, double noundef %140, i32 noundef %147, i32 noundef %155, i32 noundef %162)
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %165 = call i32 @fflush(%struct._IO_FILE* noundef %164)
  br label %166

166:                                              ; preds = %44, %20
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
