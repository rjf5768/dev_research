; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/scimark2.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/scimark2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }

@RESOLUTION_DEFAULT = dso_local constant double 2.000000e+00, align 8
@RANDOM_SEED = dso_local constant i32 101010, align 4
@FFT_SIZE = dso_local constant i32 1024, align 4
@SOR_SIZE = dso_local constant i32 100, align 4
@SPARSE_SIZE_M = dso_local constant i32 1000, align 4
@SPARSE_SIZE_nz = dso_local constant i32 5000, align 4
@LU_SIZE = dso_local constant i32 100, align 4
@LG_FFT_SIZE = dso_local constant i32 1048576, align 4
@LG_SOR_SIZE = dso_local constant i32 1000, align 4
@LG_SPARSE_SIZE_M = dso_local constant i32 100000, align 4
@LG_SPARSE_SIZE_nz = dso_local constant i32 1000000, align 4
@LG_LU_SIZE = dso_local constant i32 1000, align 4
@TINY_FFT_SIZE = dso_local constant i32 16, align 4
@TINY_SOR_SIZE = dso_local constant i32 10, align 4
@TINY_SPARSE_SIZE_M = dso_local constant i32 10, align 4
@TINY_SPARSE_SIZE_N = dso_local constant i32 10, align 4
@TINY_SPARSE_SIZE_nz = dso_local constant i32 50, align 4
@TINY_LU_SIZE = dso_local constant i32 10, align 4
@.str = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Usage: [-large] [minimum_time]\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-large\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Using %10.2f seconds min time per kenel.\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"NOTE!!! All Mflops disabled to prevent diffs from failing!\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Composite Score:        %8.2f\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"FFT             Mflops: %8.2f    (N=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"SOR             Mflops: %8.2f    (%d x %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"MonteCarlo:     Mflops: %8.2f\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Sparse matmult  Mflops: %8.2f    (N=%d, nz=%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"LU              Mflops: %8.2f    (M=%d, N=%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"**                                                              **\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"** SciMark2 Numeric Benchmark, see http://math.nist.gov/scimark **\0A\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"** for details. (Results can be submitted to pozo@nist.gov)     **\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x double], align 16
  %14 = alloca %struct.Random_struct*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 2.000000e+00, double* %6, align 8
  store i32 1024, i32* %7, align 4
  store i32 100, i32* %8, align 4
  store i32 1000, i32* %9, align 4
  store i32 5000, i32* %10, align 4
  store i32 100, i32* %11, align 4
  %16 = bitcast [6 x double]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 48, i1 false)
  %17 = call %struct.Random_struct* @new_Random_seed(i32 noundef 101010)
  store %struct.Random_struct* %17, %struct.Random_struct** %14, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  store i32 1, i32* %15, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* noundef %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* noundef %29, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

35:                                               ; preds = %26
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* noundef %38, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  store i32 1048576, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  store i32 100000, i32* %9, align 4
  store i32 1000000, i32* %10, align 4
  store i32 1000, i32* %11, align 4
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call double @atof(i8* noundef %53) #5
  store double %54, double* %6, align 8
  br label %55

55:                                               ; preds = %48, %44
  br label %56

56:                                               ; preds = %55, %2
  call void @print_banner()
  %57 = load double, double* %6, align 8
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), double noundef %57)
  %59 = load i32, i32* %7, align 4
  %60 = load double, double* %6, align 8
  %61 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  %62 = call double @kernel_measureFFT(i32 noundef %59, double noundef %60, %struct.Random_struct* noundef %61)
  %63 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 1
  store double %62, double* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load double, double* %6, align 8
  %66 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  %67 = call double @kernel_measureSOR(i32 noundef %64, double noundef %65, %struct.Random_struct* noundef %66)
  %68 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 2
  store double %67, double* %68, align 16
  %69 = load double, double* %6, align 8
  %70 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  %71 = call double @kernel_measureMonteCarlo(double noundef %69, %struct.Random_struct* noundef %70)
  %72 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 3
  store double %71, double* %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load double, double* %6, align 8
  %76 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  %77 = call double @kernel_measureSparseMatMult(i32 noundef %73, i32 noundef %74, double noundef %75, %struct.Random_struct* noundef %76)
  %78 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 4
  store double %77, double* %78, align 16
  %79 = load i32, i32* %11, align 4
  %80 = load double, double* %6, align 8
  %81 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  %82 = call double @kernel_measureLU(i32 noundef %79, double noundef %80, %struct.Random_struct* noundef %81)
  %83 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 5
  store double %82, double* %83, align 8
  store i32 10000000, i32* %12, align 4
  %84 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 1
  %85 = load double, double* %84, align 8
  %86 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 2
  %87 = load double, double* %86, align 16
  %88 = fadd double %85, %87
  %89 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 3
  %90 = load double, double* %89, align 8
  %91 = fadd double %88, %90
  %92 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 4
  %93 = load double, double* %92, align 16
  %94 = fadd double %91, %93
  %95 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 5
  %96 = load double, double* %95, align 8
  %97 = fadd double %94, %96
  %98 = fdiv double %97, 5.000000e+00
  %99 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 0
  store double %98, double* %99, align 16
  %100 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %101 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 0
  %102 = load double, double* %101, align 16
  %103 = load i32, i32* %12, align 4
  %104 = sitofp i32 %103 to double
  %105 = fdiv double %102, %104
  %106 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), double noundef %105)
  %107 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 1
  %108 = load double, double* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %108, %110
  %112 = load i32, i32* %7, align 4
  %113 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), double noundef %111, i32 noundef %112)
  %114 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 2
  %115 = load double, double* %114, align 16
  %116 = load i32, i32* %12, align 4
  %117 = sitofp i32 %116 to double
  %118 = fdiv double %115, %117
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), double noundef %118, i32 noundef %119, i32 noundef %120)
  %122 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 3
  %123 = load double, double* %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sitofp i32 %124 to double
  %126 = fdiv double %123, %125
  %127 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), double noundef %126)
  %128 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 4
  %129 = load double, double* %128, align 16
  %130 = load i32, i32* %12, align 4
  %131 = sitofp i32 %130 to double
  %132 = fdiv double %129, %131
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), double noundef %132, i32 noundef %133, i32 noundef %134)
  %136 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 5
  %137 = load double, double* %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sitofp i32 %138 to double
  %140 = fdiv double %137, %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), double noundef %140, i32 noundef %141, i32 noundef %142)
  %144 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  call void @Random_delete(%struct.Random_struct* noundef %144)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.Random_struct* @new_Random_seed(i32 noundef) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local double @atof(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_banner() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local double @kernel_measureFFT(i32 noundef, double noundef, %struct.Random_struct* noundef) #2

declare dso_local double @kernel_measureSOR(i32 noundef, double noundef, %struct.Random_struct* noundef) #2

declare dso_local double @kernel_measureMonteCarlo(double noundef, %struct.Random_struct* noundef) #2

declare dso_local double @kernel_measureSparseMatMult(i32 noundef, i32 noundef, double noundef, %struct.Random_struct* noundef) #2

declare dso_local double @kernel_measureLU(i32 noundef, double noundef, %struct.Random_struct* noundef) #2

declare dso_local void @Random_delete(%struct.Random_struct* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
