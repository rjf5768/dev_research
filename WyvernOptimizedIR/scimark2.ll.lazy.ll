; ModuleID = './scimark2.ll'
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
@str = private unnamed_addr constant [59 x i8] c"NOTE!!! All Mflops disabled to prevent diffs from failing!\00", align 1
@str.1 = private unnamed_addr constant [67 x i8] c"**                                                              **\00", align 1
@str.2 = private unnamed_addr constant [67 x i8] c"** SciMark2 Numeric Benchmark, see http://math.nist.gov/scimark **\00", align 1
@str.3 = private unnamed_addr constant [67 x i8] c"** for details. (Results can be submitted to pozo@nist.gov)     **\00", align 1
@str.4 = private unnamed_addr constant [67 x i8] c"**                                                              **\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca [6 x double], align 16
  %4 = bitcast [6 x double]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %5 = call %struct.Random_struct* @new_Random_seed(i32 noundef 101010) #6
  %6 = icmp sgt i32 %0, 1
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8*, i8** %1, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %9, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8*, i8** %1, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %14, i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %7
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %18) #8
  call void @exit(i32 noundef 0) #9
  unreachable

20:                                               ; preds = %12
  %21 = getelementptr inbounds i8*, i8** %1, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %22, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %20
  %.010 = phi i32 [ 100000, %25 ], [ 1000, %20 ]
  %.06 = phi i32 [ 1048576, %25 ], [ 1024, %20 ]
  %.02 = phi i32 [ 1000000, %25 ], [ 5000, %20 ]
  %.01 = phi i32 [ 1000, %25 ], [ 100, %20 ]
  %.0 = phi i32 [ 2, %25 ], [ 1, %20 ]
  %27 = icmp slt i32 %.0, %0
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call double @atof(i8* noundef %31) #7
  br label %33

33:                                               ; preds = %28, %26
  %.04 = phi double [ %32, %28 ], [ 2.000000e+00, %26 ]
  br label %34

34:                                               ; preds = %33, %2
  %.111 = phi i32 [ %.010, %33 ], [ 1000, %2 ]
  %.17 = phi i32 [ %.06, %33 ], [ 1024, %2 ]
  %.15 = phi double [ %.04, %33 ], [ 2.000000e+00, %2 ]
  %.13 = phi i32 [ %.02, %33 ], [ 5000, %2 ]
  %.1 = phi i32 [ %.01, %33 ], [ 100, %2 ]
  call void @print_banner()
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), double noundef %.15) #6
  %36 = call double @kernel_measureFFT(i32 noundef %.17, double noundef %.15, %struct.Random_struct* noundef %5) #6
  %37 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 1
  store double %36, double* %37, align 8
  %38 = call double @kernel_measureSOR(i32 noundef %.1, double noundef %.15, %struct.Random_struct* noundef %5) #6
  %39 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 2
  store double %38, double* %39, align 16
  %40 = call double @kernel_measureMonteCarlo(double noundef %.15, %struct.Random_struct* noundef %5) #6
  %41 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 3
  store double %40, double* %41, align 8
  %42 = call double @kernel_measureSparseMatMult(i32 noundef %.111, i32 noundef %.13, double noundef %.15, %struct.Random_struct* noundef %5) #6
  %43 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 4
  store double %42, double* %43, align 16
  %44 = call double @kernel_measureLU(i32 noundef %.1, double noundef %.15, %struct.Random_struct* noundef %5) #6
  %45 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 5
  store double %44, double* %45, align 8
  %46 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 1
  %47 = load double, double* %46, align 8
  %48 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 2
  %49 = load double, double* %48, align 16
  %50 = fadd double %47, %49
  %51 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 3
  %52 = load double, double* %51, align 8
  %53 = fadd double %50, %52
  %54 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 4
  %55 = load double, double* %54, align 16
  %56 = fadd double %53, %55
  %57 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 5
  %58 = load double, double* %57, align 8
  %59 = fadd double %56, %58
  %60 = fdiv double %59, 5.000000e+00
  %61 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 0
  store double %60, double* %61, align 16
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([59 x i8], [59 x i8]* @str, i64 0, i64 0))
  %62 = fdiv double %60, 1.000000e+07
  %63 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), double noundef %62) #6
  %64 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 1
  %65 = load double, double* %64, align 8
  %66 = fdiv double %65, 1.000000e+07
  %67 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), double noundef %66, i32 noundef %.17) #6
  %68 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 2
  %69 = load double, double* %68, align 16
  %70 = fdiv double %69, 1.000000e+07
  %71 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), double noundef %70, i32 noundef %.1, i32 noundef %.1) #6
  %72 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 3
  %73 = load double, double* %72, align 8
  %74 = fdiv double %73, 1.000000e+07
  %75 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), double noundef %74) #6
  %76 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 4
  %77 = load double, double* %76, align 16
  %78 = fdiv double %77, 1.000000e+07
  %79 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), double noundef %78, i32 noundef %.111, i32 noundef %.13) #6
  %80 = getelementptr inbounds [6 x double], [6 x double]* %3, i64 0, i64 5
  %81 = load double, double* %80, align 8
  %82 = fdiv double %81, 1.000000e+07
  %83 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), double noundef %82, i32 noundef %.1, i32 noundef %.1) #6
  call void @Random_delete(%struct.Random_struct* noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.Random_struct* @new_Random_seed(i32 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local double @atof(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_banner() #0 {
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @str.1, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @str.2, i64 0, i64 0))
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @str.3, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local double @kernel_measureFFT(i32 noundef, double noundef, %struct.Random_struct* noundef) #2

declare dso_local double @kernel_measureSOR(i32 noundef, double noundef, %struct.Random_struct* noundef) #2

declare dso_local double @kernel_measureMonteCarlo(double noundef, %struct.Random_struct* noundef) #2

declare dso_local double @kernel_measureSparseMatMult(i32 noundef, i32 noundef, double noundef, %struct.Random_struct* noundef) #2

declare dso_local double @kernel_measureLU(i32 noundef, double noundef, %struct.Random_struct* noundef) #2

declare dso_local void @Random_delete(%struct.Random_struct* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
