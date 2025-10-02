; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/Large/fasta.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/BenchmarkGame/Large/fasta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aminoacid_t = type { float, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@main.iub = internal global [15 x %struct.aminoacid_t] [%struct.aminoacid_t { float 0x3FD147AE20000000, i8 97 }, %struct.aminoacid_t { float 0x3FBEB851E0000000, i8 99 }, %struct.aminoacid_t { float 0x3FBEB851E0000000, i8 103 }, %struct.aminoacid_t { float 0x3FD147AE20000000, i8 116 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 66 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 68 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 72 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 75 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 77 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 78 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 82 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 83 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 86 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 87 }, %struct.aminoacid_t { float 0x3F947AE140000000, i8 89 }], align 16
@main.homosapiens = internal global [4 x %struct.aminoacid_t] [%struct.aminoacid_t { float 0x3FD3639D20000000, i8 97 }, %struct.aminoacid_t { float 0x3FC957AE40000000, i8 99 }, %struct.aminoacid_t { float 0x3FC9493AE0000000, i8 103 }, %struct.aminoacid_t { float 0x3FD34BEE40000000, i8 116 }], align 16
@main.alu = internal constant i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [288 x i8] c"GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c">ONE Homo sapiens alu\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c">TWO IUB ambiguity codes\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c">THREE Homo sapiens frequency\0A\00", align 1
@myrandom.last = internal global i64 42, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 5000000, i64* %6, align 8
  call void @accumulate_probabilities(%struct.aminoacid_t* noundef getelementptr inbounds ([15 x %struct.aminoacid_t], [15 x %struct.aminoacid_t]* @main.iub, i64 0, i64 0), i64 noundef 15)
  call void @accumulate_probabilities(%struct.aminoacid_t* noundef getelementptr inbounds ([4 x %struct.aminoacid_t], [4 x %struct.aminoacid_t]* @main.homosapiens, i64 0, i64 0), i64 noundef 4)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = call i32 @fputs(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* noundef %7)
  %9 = load i64, i64* %6, align 8
  %10 = mul i64 2, %9
  call void @repeat_fasta(i8* noundef getelementptr inbounds ([288 x i8], [288 x i8]* @.str, i32 0, i32 0), i64 noundef %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = call i32 @fputs(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* noundef %11)
  %13 = load i64, i64* %6, align 8
  %14 = mul i64 3, %13
  call void @random_fasta(%struct.aminoacid_t* noundef getelementptr inbounds ([15 x %struct.aminoacid_t], [15 x %struct.aminoacid_t]* @main.iub, i64 0, i64 0), i64 noundef %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = call i32 @fputs(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* noundef %15)
  %17 = load i64, i64* %6, align 8
  %18 = mul i64 5, %17
  call void @random_fasta(%struct.aminoacid_t* noundef getelementptr inbounds ([4 x %struct.aminoacid_t], [4 x %struct.aminoacid_t]* @main.homosapiens, i64 0, i64 0), i64 noundef %18)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @accumulate_probabilities(%struct.aminoacid_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.aminoacid_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  %6 = alloca i64, align 8
  store %struct.aminoacid_t* %0, %struct.aminoacid_t** %3, align 8
  store i64 %1, i64* %4, align 8
  store float 0.000000e+00, float* %5, align 4
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load %struct.aminoacid_t*, %struct.aminoacid_t** %3, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %12, i64 %13
  %15 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = load float, float* %5, align 4
  %18 = fadd float %17, %16
  store float %18, float* %5, align 4
  %19 = load float, float* %5, align 4
  %20 = load %struct.aminoacid_t*, %struct.aminoacid_t** %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %20, i64 %21
  %23 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %22, i32 0, i32 0
  store float %19, float* %23, align 4
  br label %24

24:                                               ; preds = %11
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %6, align 8
  br label %7, !llvm.loop !4

27:                                               ; preds = %7
  ret void
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @repeat_fasta(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* noundef %9) #5
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %11, 60
  %13 = call noalias i8* @malloc(i64 noundef %12) #6
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i64, i64* %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %15, i64 %16, i1 false)
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8*, i8** %3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 %20, i64 60, i1 false)
  br label %21

21:                                               ; preds = %50, %2
  %22 = load i64, i64* %4, align 8
  %23 = icmp ule i64 60, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %27

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i64 [ 60, %24 ], [ %26, %25 ]
  store i64 %28, i64* %8, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i64, i64* %8, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = call i64 @fwrite(i8* noundef %31, i64 noundef 1, i64 noundef %32, %struct._IO_FILE* noundef %33)
  %35 = call i32 @putchar(i32 noundef 10)
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %42, %27
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %4, align 8
  %49 = sub i64 %48, %47
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %21, label %53, !llvm.loop !6

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %54) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @random_fasta(%struct.aminoacid_t* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.aminoacid_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [61 x i8], align 16
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  store %struct.aminoacid_t* %0, %struct.aminoacid_t** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %10

10:                                               ; preds = %55, %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ule i64 60, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %16

14:                                               ; preds = %10
  %15 = load i64, i64* %4, align 8
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i64 [ 60, %13 ], [ %15, %14 ]
  store i64 %17, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %40, %16
  %19 = call float @myrandom(float noundef 1.000000e+00)
  store float %19, float* %8, align 4
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %28, %18
  %21 = load %struct.aminoacid_t*, %struct.aminoacid_t** %3, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %21, i64 %22
  %24 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = load float, float* %8, align 4
  %27 = fcmp olt float %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %9, align 8
  br label %20, !llvm.loop !7

31:                                               ; preds = %20
  %32 = load %struct.aminoacid_t*, %struct.aminoacid_t** %3, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %32, i64 %33
  %35 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 4
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %6, align 8
  %39 = getelementptr inbounds [61 x i8], [61 x i8]* %7, i64 0, i64 %37
  store i8 %36, i8* %39, align 1
  br label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %18, label %44, !llvm.loop !8

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds [61 x i8], [61 x i8]* %7, i64 0, i64 %45
  store i8 10, i8* %46, align 1
  %47 = getelementptr inbounds [61 x i8], [61 x i8]* %7, i64 0, i64 0
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %51 = call i64 @fwrite(i8* noundef %47, i64 noundef 1, i64 noundef %49, %struct._IO_FILE* noundef %50)
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %4, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %10, label %58, !llvm.loop !9

58:                                               ; preds = %55
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @putchar(i32 noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal float @myrandom(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store float %0, float* %2, align 4
  store i64 139968, i64* %3, align 8
  store i64 3877, i64* %4, align 8
  store i64 29573, i64* %5, align 8
  %6 = load i64, i64* @myrandom.last, align 8
  %7 = mul i64 %6, 3877
  %8 = add i64 %7, 29573
  %9 = urem i64 %8, 139968
  store i64 %9, i64* @myrandom.last, align 8
  %10 = load float, float* %2, align 4
  %11 = load i64, i64* @myrandom.last, align 8
  %12 = sitofp i64 %11 to float
  %13 = fmul float %10, %12
  %14 = fdiv float %13, 1.399680e+05
  ret float %14
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn }
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
