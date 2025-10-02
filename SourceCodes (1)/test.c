; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/SimpleMOC/test.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/SimpleMOC/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Input = type { i32, i32, i32, i32, i32, float, float, i32, i32, i32, i8, i32, i64, float, float, float, float, i64, i64, i32, i64, i32, i32, i64, i64, i8, i8*, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"INPUT STRUCT\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"END INPUT STRUCT\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"gen_points.txt\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Random numbers generated for a normal distribution\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Mean = %f\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Standard deviation = %f\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Generated points:\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_Input_struct(%struct.Input* noundef byval(%struct.Input) align 8 %0) #0 {
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %3 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %4)
  %6 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %7)
  %9 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %10)
  %12 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %13)
  %15 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %16)
  %18 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %20)
  %22 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %23 = load float, float* %22, align 8
  %24 = fpext float %23 to double
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %24)
  %26 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %27)
  %29 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %30)
  %32 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %33)
  %35 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %36)
  %38 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %39)
  %41 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 13
  %42 = load float, float* %41, align 8
  %43 = fpext float %42 to double
  %44 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %43)
  %45 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 14
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %47)
  %49 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 15
  %50 = load float, float* %49, align 8
  %51 = fpext float %50 to double
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %51)
  %53 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 16
  %54 = load float, float* %53, align 4
  %55 = fpext float %54 to double
  %56 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %55)
  %57 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 17
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %58)
  %60 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %61)
  %63 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %64)
  %66 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %67)
  %69 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 21
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %70)
  %72 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 22
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 noundef %73)
  %75 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 23
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %76)
  %78 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 noundef %79)
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gen_norm_pts(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %10, %struct._IO_FILE** %7, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %14 = load float, float* %4, align 4
  %15 = fpext float %14 to double
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), double noundef %15)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %18 = load float, float* %5, align 4
  %19 = fpext float %18 to double
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), double noundef %19)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %35, %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load float, float* %4, align 4
  %29 = load float, float* %5, align 4
  %30 = call float @nrand(float noundef %28, float noundef %29)
  store float %30, float* %9, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %32 = load float, float* %9, align 4
  %33 = fpext float %32 to double
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), double noundef %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %23, !llvm.loop !4

38:                                               ; preds = %23
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %40 = call i32 @fclose(%struct._IO_FILE* noundef %39)
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local float @nrand(float noundef, float noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

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
