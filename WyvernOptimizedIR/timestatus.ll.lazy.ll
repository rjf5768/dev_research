; ModuleID = './timestatus.ll'
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
  %3 = call i64 @time(i64* noundef nonnull %2) #6
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  store i64 %6, i64* @ts_real_time.initial_time, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @ts_real_time.initial_time, align 8
  %10 = call double @difftime(i64 noundef %8, i64 noundef %9) #7
  %11 = fptrunc double %10 to float
  ret float %11
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local double @difftime(i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local float @ts_process_time(i64 noundef %0) #0 {
  %2 = call i64 @clock() #6
  %3 = icmp eq i64 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i64 %2, i64* @ts_process_time.initial_time, align 8
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i64, i64* @ts_process_time.initial_time, align 8
  %7 = sub nsw i64 %2, %6
  %8 = sitofp i64 %7 to float
  %9 = fdiv float %8, 1.000000e+06
  ret float %9
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ts_calc_times(%struct.ts_times* nocapture noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) #3 {
  %6 = icmp sgt i64 %2, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 0
  %9 = load float, float* %8, align 4
  %10 = sitofp i64 %3 to float
  %11 = fmul float %9, %10
  %12 = sitofp i64 %2 to float
  %13 = fdiv float %11, %12
  %14 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 1
  store float %13, float* %14, align 4
  %15 = sitofp i32 %1 to float
  %16 = fmul float %13, %15
  %17 = fcmp ogt float %16, 0.000000e+00
  br i1 %17, label %18, label %28

18:                                               ; preds = %7
  %19 = sext i32 %4 to i64
  %20 = mul nsw i64 %19, %3
  %21 = sitofp i64 %20 to float
  %22 = sitofp i32 %1 to float
  %23 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 1
  %24 = load float, float* %23, align 4
  %25 = fmul float %24, %22
  %26 = fdiv float %21, %25
  %27 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 2
  store float %26, float* %27, align 4
  br label %30

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 2
  store float 0.000000e+00, float* %29, align 4
  br label %30

30:                                               ; preds = %28, %18
  %31 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 1
  %32 = load float, float* %31, align 4
  %33 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 0
  %34 = load float, float* %33, align 4
  %35 = fsub float %32, %34
  %36 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 3
  store float %35, float* %36, align 4
  br label %41

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 1
  store float 0.000000e+00, float* %38, align 4
  %39 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 2
  store float 0.000000e+00, float* %39, align 4
  %40 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %0, i64 0, i32 3
  store float 0.000000e+00, float* %40, align 4
  br label %41

41:                                               ; preds = %37, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timestatus(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.ts_times, align 4
  %6 = alloca %struct.ts_times, align 4
  %7 = call float @ts_real_time(i64 noundef %1)
  %8 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i64 0, i32 0
  store float %7, float* %8, align 4
  %9 = call float @ts_process_time(i64 noundef %1)
  %10 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %6, i64 0, i32 0
  store float %9, float* %10, align 4
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i64 74, i64 1, %struct._IO_FILE* %13) #8
  br label %144

15:                                               ; preds = %4
  call void @ts_calc_times(%struct.ts_times* noundef nonnull %5, i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  call void @ts_calc_times(%struct.ts_times* noundef nonnull %6, i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  %16 = icmp sgt i64 %2, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %15
  %18 = sitofp i64 %1 to double
  %19 = fmul double %18, 1.000000e+02
  %20 = add nsw i64 %2, -1
  %21 = sitofp i64 %20 to double
  %22 = fdiv double %19, %21
  %23 = fptosi double %22 to i32
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %17
  %.0 = phi i32 [ %23, %17 ], [ 100, %24 ]
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = add nsw i64 %2, -1
  %28 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %6, i64 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = fpext float %29 to double
  %31 = fadd double %30, 5.000000e-01
  %32 = fptosi double %31 to i64
  %33 = sdiv i64 %32, 3600
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %6, i64 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = fpext float %36 to double
  %38 = fadd double %37, 5.000000e-01
  %39 = fdiv double %38, 6.000000e+01
  %40 = fptosi double %39 to i64
  %41 = srem i64 %40, 60
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %6, i64 0, i32 0
  %44 = load float, float* %43, align 4
  %45 = fpext float %44 to double
  %46 = fadd double %45, 5.000000e-01
  %47 = fptosi double %46 to i64
  %48 = srem i64 %47, 60
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %6, i64 0, i32 1
  %51 = load float, float* %50, align 4
  %52 = fpext float %51 to double
  %53 = fadd double %52, 5.000000e-01
  %54 = fptosi double %53 to i64
  %55 = sdiv i64 %54, 3600
  %56 = trunc i64 %55 to i32
  %57 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %6, i64 0, i32 1
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  %60 = fadd double %59, 5.000000e-01
  %61 = fdiv double %60, 6.000000e+01
  %62 = fptosi double %61 to i64
  %63 = srem i64 %62, 60
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %6, i64 0, i32 1
  %66 = load float, float* %65, align 4
  %67 = fpext float %66 to double
  %68 = fadd double %67, 5.000000e-01
  %69 = fptosi double %68 to i64
  %70 = srem i64 %69, 60
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i64 0, i32 0
  %73 = load float, float* %72, align 4
  %74 = fpext float %73 to double
  %75 = fadd double %74, 5.000000e-01
  %76 = fptosi double %75 to i64
  %77 = sdiv i64 %76, 3600
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i64 0, i32 0
  %80 = load float, float* %79, align 4
  %81 = fpext float %80 to double
  %82 = fadd double %81, 5.000000e-01
  %83 = fdiv double %82, 6.000000e+01
  %84 = fptosi double %83 to i64
  %85 = srem i64 %84, 60
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i64 0, i32 0
  %88 = load float, float* %87, align 4
  %89 = fpext float %88 to double
  %90 = fadd double %89, 5.000000e-01
  %91 = fptosi double %90 to i64
  %92 = srem i64 %91, 60
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i64 0, i32 1
  %95 = load float, float* %94, align 4
  %96 = fpext float %95 to double
  %97 = fadd double %96, 5.000000e-01
  %98 = fptosi double %97 to i64
  %99 = sdiv i64 %98, 3600
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i64 0, i32 1
  %102 = load float, float* %101, align 4
  %103 = fpext float %102 to double
  %104 = fadd double %103, 5.000000e-01
  %105 = fdiv double %104, 6.000000e+01
  %106 = fptosi double %105 to i64
  %107 = srem i64 %106, 60
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i64 0, i32 1
  %110 = load float, float* %109, align 4
  %111 = fpext float %110 to double
  %112 = fadd double %111, 5.000000e-01
  %113 = fptosi double %112 to i64
  %114 = srem i64 %113, 60
  %115 = trunc i64 %114 to i32
  %116 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %6, i64 0, i32 2
  %117 = load float, float* %116, align 4
  %118 = fpext float %117 to double
  %119 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i64 0, i32 3
  %120 = load float, float* %119, align 4
  %121 = fpext float %120 to double
  %122 = fadd double %121, 5.000000e-01
  %123 = fptosi double %122 to i64
  %124 = sdiv i64 %123, 3600
  %125 = trunc i64 %124 to i32
  %126 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i64 0, i32 3
  %127 = load float, float* %126, align 4
  %128 = fpext float %127 to double
  %129 = fadd double %128, 5.000000e-01
  %130 = fdiv double %129, 6.000000e+01
  %131 = fptosi double %130 to i64
  %132 = srem i64 %131, 60
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds %struct.ts_times, %struct.ts_times* %5, i64 0, i32 3
  %135 = load float, float* %134, align 4
  %136 = fpext float %135 to double
  %137 = fadd double %136, 5.000000e-01
  %138 = fptosi double %137 to i64
  %139 = srem i64 %138, 60
  %140 = trunc i64 %139 to i32
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0), i64 noundef %1, i64 noundef %27, i32 noundef %.0, i32 noundef %34, i32 noundef %42, i32 noundef %49, i32 noundef %56, i32 noundef %64, i32 noundef %71, i32 noundef %78, i32 noundef %86, i32 noundef %93, i32 noundef %100, i32 noundef %108, i32 noundef %115, double noundef %118, i32 noundef %125, i32 noundef %133, i32 noundef %140) #9
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %143 = call i32 @fflush(%struct._IO_FILE* noundef %142) #6
  br label %144

144:                                              ; preds = %25, %12
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
