; ModuleID = './XSutils.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/XSutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NuclideGridPoint = type { double, double, double, double, double, double }
%struct.Inputs = type { i32, i64, i64, i32, i8* }
%struct.GridPoint = type { double, i32* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@rn_v.seed = internal global i64 1337, align 8
@.str = private unnamed_addr constant [12 x i8] c"XS_data.dat\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.NuclideGridPoint** @gpmatrix(i64 noundef %0, i64 noundef %1) #0 {
  %3 = mul i64 %0, %1
  %4 = mul i64 %3, 48
  %5 = call noalias i8* @malloc(i64 noundef %4) #8
  %6 = bitcast i8* %5 to %struct.NuclideGridPoint*
  %7 = shl i64 %0, 3
  %8 = call noalias i8* @malloc(i64 noundef %7) #8
  %9 = bitcast i8* %8 to %struct.NuclideGridPoint**
  br label %10

10:                                               ; preds = %25, %2
  %.01 = phi i32 [ 0, %2 ], [ %26, %25 ]
  %.0 = phi i32 [ 0, %2 ], [ %.1, %25 ]
  %11 = zext i32 %.01 to i64
  %12 = mul i64 %0, %1
  %13 = icmp ugt i64 %12, %11
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = zext i32 %.01 to i64
  %16 = urem i64 %15, %1
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %6, i64 %19
  %21 = add nsw i32 %.0, 1
  %22 = sext i32 %.0 to i64
  %23 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %9, i64 %22
  store %struct.NuclideGridPoint* %20, %struct.NuclideGridPoint** %23, align 8
  br label %24

24:                                               ; preds = %18, %14
  %.1 = phi i32 [ %21, %18 ], [ %.0, %14 ]
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.01, 1
  br label %10, !llvm.loop !4

27:                                               ; preds = %10
  ret %struct.NuclideGridPoint** %9
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gpmatrix_free(%struct.NuclideGridPoint** noundef %0) #0 {
  %2 = bitcast %struct.NuclideGridPoint** %0 to i8**
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #8
  %4 = bitcast %struct.NuclideGridPoint** %0 to i8*
  call void @free(i8* noundef %4) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @NGP_compare(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #2 {
  %3 = bitcast i8* %0 to double*
  %4 = load double, double* %3, align 8
  %5 = bitcast i8* %1 to double*
  %6 = load double, double* %5, align 8
  %7 = fcmp ogt double %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %17

9:                                                ; preds = %2
  %10 = bitcast i8* %0 to double*
  %11 = load double, double* %10, align 8
  %12 = bitcast i8* %1 to double*
  %13 = load double, double* %12, align 8
  %14 = fcmp olt double %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %17

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %15, %8
  %.0 = phi i32 [ 1, %8 ], [ -1, %15 ], [ 0, %16 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @binary_search(%struct.NuclideGridPoint* nocapture noundef readonly %0, double noundef %1, i32 noundef %2) #3 {
  %4 = add nsw i32 %2, -1
  %5 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %0, i64 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = fcmp ogt double %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %45

9:                                                ; preds = %3
  %10 = add nsw i32 %2, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %0, i64 %11, i32 0
  %13 = load double, double* %12, align 8
  %14 = fcmp olt double %13, %1
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = add nsw i32 %2, -2
  br label %45

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %43, %18
  %.02 = phi i32 [ 0, %18 ], [ %.13, %43 ]
  %.01 = phi i32 [ %4, %18 ], [ %.1, %43 ]
  %.not = icmp slt i32 %.01, %.02
  br i1 %.not, label %44, label %20

20:                                               ; preds = %19
  %21 = sitofp i32 %.02 to double
  %22 = sub nsw i32 %.01, %.02
  %23 = sitofp i32 %22 to double
  %24 = fmul double %23, 5.000000e-01
  %25 = call double @llvm.floor.f64(double %24)
  %26 = fadd double %25, %21
  %27 = fptosi double %26 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %0, i64 %28, i32 0
  %30 = load double, double* %29, align 8
  %31 = fcmp olt double %30, %1
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = add nsw i32 %27, 1
  br label %43

34:                                               ; preds = %20
  %35 = sext i32 %27 to i64
  %36 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %0, i64 %35, i32 0
  %37 = load double, double* %36, align 8
  %38 = fcmp ogt double %37, %1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %41

40:                                               ; preds = %34
  br label %45

41:                                               ; preds = %39
  %42 = add nsw i32 %27, -1
  br label %43

43:                                               ; preds = %41, %32
  %.13 = phi i32 [ %33, %32 ], [ %.02, %41 ]
  %.1 = phi i32 [ %.01, %32 ], [ %42, %41 ]
  br label %19, !llvm.loop !6

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44, %40, %15, %8
  %.0 = phi i32 [ 0, %8 ], [ %16, %15 ], [ %27, %40 ], [ %.01, %44 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local double @rn(i64* nocapture noundef %0) #5 {
  %2 = load i64, i64* %0, align 8
  %3 = mul i64 %2, 16807
  %4 = urem i64 %3, 2147483647
  store i64 %4, i64* %0, align 8
  %5 = uitofp i64 %4 to double
  %6 = fdiv double %5, 0x41DFFFFFFFC00000
  ret double %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local double @rn_v() #5 {
  %1 = load i64, i64* @rn_v.seed, align 8
  %2 = mul i64 %1, 16807
  %3 = urem i64 %2, 2147483647
  store i64 %3, i64* @rn_v.seed, align 8
  %4 = uitofp i64 %3 to double
  %5 = fdiv double %4, 0x41DFFFFFFFC00000
  ret double %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @hash(i8* nocapture noundef readonly %0, i32 noundef %1) #6 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi i32 [ 5381, %2 ], [ %9, %5 ]
  %.0 = phi i8* [ %0, %2 ], [ %7, %5 ]
  %4 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %10, label %5

5:                                                ; preds = %3
  %6 = zext i8 %4 to i32
  %7 = getelementptr inbounds i8, i8* %.0, i64 1
  %8 = mul i32 %.01, 33
  %9 = add i32 %8, %6
  br label %3, !llvm.loop !7

10:                                               ; preds = %3
  %11 = urem i32 %.01, %1
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @estimate_mem_usage(%struct.Inputs* nocapture noundef readonly byval(%struct.Inputs) align 8 %0) #2 {
  %2 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i64 0, i32 2
  %3 = load i64, i64* %2, align 8
  %4 = mul i64 %3, 48
  %5 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i64 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = mul i64 %6, %4
  %8 = shl i64 %6, 2
  %9 = add i64 %8, 16
  %10 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i64 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = mul nsw i64 %6, %11
  %13 = mul i64 %12, %9
  %14 = add i64 %7, %13
  %15 = lshr i64 %14, 20
  ret i64 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @binary_dump(i64 noundef %0, i64 noundef %1, %struct.NuclideGridPoint** nocapture noundef readonly %2, %struct.GridPoint* noundef %3) #0 {
  %5 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8
  br label %6

6:                                                ; preds = %13, %4
  %.01 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %7 = icmp slt i64 %.01, %0
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %2, i64 %.01
  %10 = bitcast %struct.NuclideGridPoint** %9 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @fwrite(i8* noundef %11, i64 noundef 48, i64 noundef %1, %struct._IO_FILE* noundef %5) #8
  br label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %.01, 1
  br label %6, !llvm.loop !8

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %27, %15
  %.0 = phi i64 [ 0, %15 ], [ %28, %27 ]
  %17 = mul nsw i64 %0, %1
  %18 = icmp slt i64 %.0, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %3, i64 %.0, i32 0
  %21 = bitcast double* %20 to i8*
  %22 = call i64 @fwrite(i8* noundef %21, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %5) #8
  %23 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %3, i64 %.0, i32 1
  %24 = bitcast i32** %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @fwrite(i8* noundef %25, i64 noundef 4, i64 noundef %0, %struct._IO_FILE* noundef %5) #8
  br label %27

27:                                               ; preds = %19
  %28 = add nuw nsw i64 %.0, 1
  br label %16, !llvm.loop !9

29:                                               ; preds = %16
  %30 = call i32 @fclose(%struct._IO_FILE* noundef %5) #8
  ret void
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #7

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #7

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @binary_read(i64 noundef %0, i64 noundef %1, %struct.NuclideGridPoint** nocapture noundef readonly %2, %struct.GridPoint* noundef %3) #0 {
  %5 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #8
  br label %6

6:                                                ; preds = %13, %4
  %.01 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %7 = icmp slt i64 %.01, %0
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %2, i64 %.01
  %10 = bitcast %struct.NuclideGridPoint** %9 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @fread(i8* noundef %11, i64 noundef 48, i64 noundef %1, %struct._IO_FILE* noundef %5) #8
  br label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i64 %.01, 1
  br label %6, !llvm.loop !10

15:                                               ; preds = %6
  br label %16

16:                                               ; preds = %27, %15
  %.0 = phi i64 [ 0, %15 ], [ %28, %27 ]
  %17 = mul nsw i64 %0, %1
  %18 = icmp slt i64 %.0, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %3, i64 %.0, i32 0
  %21 = bitcast double* %20 to i8*
  %22 = call i64 @fread(i8* noundef %21, i64 noundef 8, i64 noundef 1, %struct._IO_FILE* noundef %5) #8
  %23 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %3, i64 %.0, i32 1
  %24 = bitcast i32** %23 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @fread(i8* noundef %25, i64 noundef 4, i64 noundef %0, %struct._IO_FILE* noundef %5) #8
  br label %27

27:                                               ; preds = %19
  %28 = add nuw nsw i64 %.0, 1
  br label %16, !llvm.loop !11

29:                                               ; preds = %16
  %30 = call i32 @fclose(%struct._IO_FILE* noundef %5) #8
  ret void
}

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
