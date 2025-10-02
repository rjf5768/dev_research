; ModuleID = './fasta.ll'
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
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  call void @accumulate_probabilities(%struct.aminoacid_t* noundef getelementptr inbounds ([15 x %struct.aminoacid_t], [15 x %struct.aminoacid_t]* @main.iub, i64 0, i64 0), i64 noundef 15)
  call void @accumulate_probabilities(%struct.aminoacid_t* noundef getelementptr inbounds ([4 x %struct.aminoacid_t], [4 x %struct.aminoacid_t]* @main.homosapiens, i64 0, i64 0), i64 noundef 4)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %3)
  call void @repeat_fasta(i8* noundef getelementptr inbounds ([288 x i8], [288 x i8]* @.str, i64 0, i64 0), i64 noundef 10000000)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %5)
  call void @random_fasta(%struct.aminoacid_t* noundef getelementptr inbounds ([15 x %struct.aminoacid_t], [15 x %struct.aminoacid_t]* @main.iub, i64 0, i64 0), i64 noundef 15000000)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %7)
  call void @random_fasta(%struct.aminoacid_t* noundef getelementptr inbounds ([4 x %struct.aminoacid_t], [4 x %struct.aminoacid_t]* @main.homosapiens, i64 0, i64 0), i64 noundef 25000000)
  ret i32 0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @accumulate_probabilities(%struct.aminoacid_t* nocapture noundef %0, i64 noundef %1) #1 {
  br label %3

3:                                                ; preds = %10, %2
  %.01 = phi float [ 0.000000e+00, %2 ], [ %8, %10 ]
  %.0 = phi i64 [ 0, %2 ], [ %11, %10 ]
  %4 = icmp ult i64 %.0, %1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %0, i64 %.0, i32 0
  %7 = load float, float* %6, align 4
  %8 = fadd float %.01, %7
  %9 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %0, i64 %.0, i32 0
  store float %8, float* %9, align 4
  br label %10

10:                                               ; preds = %5
  %11 = add i64 %.0, 1
  br label %3, !llvm.loop !4

12:                                               ; preds = %3
  ret void
}

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @repeat_fasta(i8* noundef %0, i64 noundef %1) #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #8
  %4 = add i64 %3, 60
  %5 = call noalias i8* @malloc(i64 noundef %4) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %0, i64 %3, i1 false)
  %6 = getelementptr inbounds i8, i8* %5, i64 %3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(60) %6, i8* noundef nonnull align 1 dereferenceable(60) %0, i64 60, i1 false)
  br label %7

7:                                                ; preds = %22, %2
  %.01 = phi i64 [ %1, %2 ], [ %21, %22 ]
  %.0 = phi i64 [ 0, %2 ], [ %.1, %22 ]
  %8 = icmp ugt i64 %.01, 59
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %11

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %10, %9
  %12 = phi i64 [ 60, %9 ], [ %.01, %10 ]
  %13 = getelementptr inbounds i8, i8* %5, i64 %.0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = call i64 @fwrite(i8* noundef %13, i64 noundef 1, i64 noundef %12, %struct._IO_FILE* noundef %14)
  %16 = call i32 @putchar(i32 noundef 10) #9
  %17 = add i64 %.0, %12
  %.not = icmp ult i64 %17, %3
  br i1 %.not, label %20, label %18

18:                                               ; preds = %11
  %19 = sub i64 %17, %3
  br label %20

20:                                               ; preds = %18, %11
  %.1 = phi i64 [ %19, %18 ], [ %17, %11 ]
  %21 = sub i64 %.01, %12
  br label %22

22:                                               ; preds = %20
  %.not2 = icmp eq i64 %21, 0
  br i1 %.not2, label %23, label %7, !llvm.loop !6

23:                                               ; preds = %22
  call void @free(i8* noundef %5) #9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @random_fasta(%struct.aminoacid_t* nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = alloca [61 x i8], align 16
  br label %4

4:                                                ; preds = %32, %2
  %.01 = phi i64 [ %1, %2 ], [ %31, %32 ]
  %5 = icmp ugt i64 %.01, 59
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i64 [ 60, %6 ], [ %.01, %7 ]
  br label %10

10:                                               ; preds = %23, %8
  %.02 = phi i64 [ 0, %8 ], [ %21, %23 ]
  %11 = call float @myrandom(float noundef 1.000000e+00)
  br label %12

12:                                               ; preds = %16, %10
  %.0 = phi i64 [ 0, %10 ], [ %17, %16 ]
  %13 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %0, i64 %.0, i32 0
  %14 = load float, float* %13, align 4
  %15 = fcmp olt float %14, %11
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = add i64 %.0, 1
  br label %12, !llvm.loop !7

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.aminoacid_t, %struct.aminoacid_t* %0, i64 %.0, i32 1
  %20 = load i8, i8* %19, align 4
  %21 = add i64 %.02, 1
  %22 = getelementptr inbounds [61 x i8], [61 x i8]* %3, i64 0, i64 %.02
  store i8 %20, i8* %22, align 1
  br label %23

23:                                               ; preds = %18
  %24 = icmp ult i64 %21, %9
  br i1 %24, label %10, label %25, !llvm.loop !8

25:                                               ; preds = %23
  %26 = getelementptr inbounds [61 x i8], [61 x i8]* %3, i64 0, i64 %9
  store i8 10, i8* %26, align 1
  %27 = getelementptr inbounds [61 x i8], [61 x i8]* %3, i64 0, i64 0
  %28 = add i64 %9, 1
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = call i64 @fwrite(i8* noundef nonnull %27, i64 noundef 1, i64 noundef %28, %struct._IO_FILE* noundef %29)
  %31 = sub i64 %.01, %9
  br label %32

32:                                               ; preds = %25
  %.not = icmp eq i64 %31, 0
  br i1 %.not, label %33, label %4, !llvm.loop !9

33:                                               ; preds = %32
  ret void
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

declare dso_local i32 @putchar(i32 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal float @myrandom(float noundef %0) #7 {
  %2 = load i64, i64* @myrandom.last, align 8
  %3 = mul i64 %2, 3877
  %4 = add i64 %3, 29573
  %5 = urem i64 %4, 139968
  store i64 %5, i64* @myrandom.last, align 8
  %6 = sitofp i64 %5 to float
  %7 = fmul float %6, %0
  %8 = fdiv float %7, 1.399680e+05
  ret float %8
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

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
