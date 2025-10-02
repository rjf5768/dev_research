; ModuleID = './GridInit.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/XSBench/GridInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.NuclideGridPoint = type { double, double, double, double, double, double }
%struct.GridPoint = type { double, i32* }

@.str = private unnamed_addr constant [37 x i8] c"Generating Unionized Energy Grid...\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Copying and Sorting all nuclide grids...\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Assigning energies to unionized grid...\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"ERROR - Out Of Memory!\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Assigning pointers to Unionized Energy Grid...\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str = private unnamed_addr constant [36 x i8] c"Generating Unionized Energy Grid...\00", align 1
@str.1 = private unnamed_addr constant [41 x i8] c"Copying and Sorting all nuclide grids...\00", align 1
@str.2 = private unnamed_addr constant [40 x i8] c"Assigning energies to unionized grid...\00", align 1
@str.3 = private unnamed_addr constant [47 x i8] c"Assigning pointers to Unionized Energy Grid...\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_grids(%struct.NuclideGridPoint** nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %49, %3
  %.01 = phi i64 [ 0, %3 ], [ %50, %49 ]
  %5 = icmp slt i64 %.01, %1
  br i1 %5, label %6, label %51

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %46, %6
  %.0 = phi i64 [ 0, %6 ], [ %47, %46 ]
  %8 = icmp slt i64 %.0, %2
  br i1 %8, label %9, label %48

9:                                                ; preds = %7
  %10 = call i32 @rand() #6
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %11, 0x41DFFFFFFFC00000
  %13 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %14 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %13, align 8
  %15 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %14, i64 %.0, i32 0
  store double %12, double* %15, align 8
  %16 = call i32 @rand() #6
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 0x41DFFFFFFFC00000
  %19 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %20 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %21 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %20, i64 %.0, i32 1
  store double %18, double* %21, align 8
  %22 = call i32 @rand() #6
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %23, 0x41DFFFFFFFC00000
  %25 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %26 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %25, align 8
  %27 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %26, i64 %.0, i32 2
  store double %24, double* %27, align 8
  %28 = call i32 @rand() #6
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 0x41DFFFFFFFC00000
  %31 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %32 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %31, align 8
  %33 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %32, i64 %.0, i32 3
  store double %30, double* %33, align 8
  %34 = call i32 @rand() #6
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %35, 0x41DFFFFFFFC00000
  %37 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %38 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %37, align 8
  %39 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %38, i64 %.0, i32 4
  store double %36, double* %39, align 8
  %40 = call i32 @rand() #6
  %41 = sitofp i32 %40 to double
  %42 = fdiv double %41, 0x41DFFFFFFFC00000
  %43 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %44 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %43, align 8
  %45 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %44, i64 %.0, i32 5
  store double %42, double* %45, align 8
  br label %46

46:                                               ; preds = %9
  %47 = add nuw nsw i64 %.0, 1
  br label %7, !llvm.loop !4

48:                                               ; preds = %7
  br label %49

49:                                               ; preds = %48
  %50 = add nuw nsw i64 %.01, 1
  br label %4, !llvm.loop !6

51:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_grids_v(%struct.NuclideGridPoint** nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %37, %3
  %.01 = phi i64 [ 0, %3 ], [ %38, %37 ]
  %5 = icmp slt i64 %.01, %1
  br i1 %5, label %6, label %39

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %34, %6
  %.0 = phi i64 [ 0, %6 ], [ %35, %34 ]
  %8 = icmp slt i64 %.0, %2
  br i1 %8, label %9, label %36

9:                                                ; preds = %7
  %10 = call double @rn_v() #6
  %11 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %12 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %11, align 8
  %13 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %12, i64 %.0, i32 0
  store double %10, double* %13, align 8
  %14 = call double @rn_v() #6
  %15 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %16 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %15, align 8
  %17 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %16, i64 %.0, i32 1
  store double %14, double* %17, align 8
  %18 = call double @rn_v() #6
  %19 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %20 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %21 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %20, i64 %.0, i32 2
  store double %18, double* %21, align 8
  %22 = call double @rn_v() #6
  %23 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %24 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %23, align 8
  %25 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %24, i64 %.0, i32 3
  store double %22, double* %25, align 8
  %26 = call double @rn_v() #6
  %27 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %28 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %27, align 8
  %29 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %28, i64 %.0, i32 4
  store double %26, double* %29, align 8
  %30 = call double @rn_v() #6
  %31 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.01
  %32 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %31, align 8
  %33 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %32, i64 %.0, i32 5
  store double %30, double* %33, align 8
  br label %34

34:                                               ; preds = %9
  %35 = add nuw nsw i64 %.0, 1
  br label %7, !llvm.loop !7

36:                                               ; preds = %7
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i64 %.01, 1
  br label %4, !llvm.loop !8

39:                                               ; preds = %4
  ret void
}

declare dso_local double @rn_v() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sort_nuclide_grids(%struct.NuclideGridPoint** nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %10, %3
  %.0 = phi i64 [ 0, %3 ], [ %11, %10 ]
  %5 = icmp slt i64 %.0, %1
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %0, i64 %.0
  %8 = bitcast %struct.NuclideGridPoint** %7 to i8**
  %9 = load i8*, i8** %8, align 8
  call void @qsort(i8* noundef %9, i64 noundef %2, i64 noundef 48, i32 (i8*, i8*)* noundef nonnull @NGP_compare) #6
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i64 %.0, 1
  br label %4, !llvm.loop !9

12:                                               ; preds = %4
  ret void
}

declare dso_local i32 @NGP_compare(i8* noundef, i8* noundef) #2

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.GridPoint* @generate_energy_grid(i64 noundef %0, i64 noundef %1, %struct.NuclideGridPoint** nocapture noundef readonly %2) #0 {
  br i1 true, label %4, label %5

4:                                                ; preds = %3
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %4, %3
  %6 = mul nsw i64 %0, %1
  %7 = shl i64 %6, 4
  %8 = call noalias i8* @malloc(i64 noundef %7) #6
  %9 = bitcast i8* %8 to %struct.GridPoint*
  br i1 true, label %10, label %11

10:                                               ; preds = %5
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %5
  %12 = call %struct.NuclideGridPoint** @gpmatrix(i64 noundef %0, i64 noundef %1) #6
  %13 = bitcast %struct.NuclideGridPoint** %12 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast %struct.NuclideGridPoint** %2 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = mul nsw i64 %0, %1
  %18 = mul i64 %17, 48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %16, i64 %18, i1 false)
  %19 = bitcast %struct.NuclideGridPoint** %12 to i8**
  %20 = load i8*, i8** %19, align 8
  call void @qsort(i8* noundef %20, i64 noundef %6, i64 noundef 48, i32 (i8*, i8*)* noundef nonnull @NGP_compare) #6
  br i1 true, label %21, label %22

21:                                               ; preds = %11
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %21, %11
  br label %23

23:                                               ; preds = %30, %22
  %.01 = phi i64 [ 0, %22 ], [ %31, %30 ]
  %24 = icmp slt i64 %.01, %6
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %12, align 8
  %27 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %26, i64 %.01, i32 0
  %28 = load double, double* %27, align 8
  %29 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %9, i64 %.01, i32 0
  store double %28, double* %29, align 8
  br label %30

30:                                               ; preds = %25
  %31 = add nuw nsw i64 %.01, 1
  br label %23, !llvm.loop !10

32:                                               ; preds = %23
  call void @gpmatrix_free(%struct.NuclideGridPoint** noundef %12) #6
  %33 = mul nsw i64 %6, %0
  %34 = shl i64 %33, 2
  %35 = call noalias i8* @malloc(i64 noundef %34) #6
  %36 = bitcast i8* %35 to i32*
  %37 = icmp eq i8* %35, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %39) #7
  call void @exit(i32 noundef 1) #8
  unreachable

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %48, %41
  %.0 = phi i64 [ 0, %41 ], [ %49, %48 ]
  %43 = icmp slt i64 %.0, %6
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = mul nsw i64 %.0, %0
  %46 = getelementptr inbounds i32, i32* %36, i64 %45
  %47 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %9, i64 %.0, i32 1
  store i32* %46, i32** %47, align 8
  br label %48

48:                                               ; preds = %44
  %49 = add nuw nsw i64 %.0, 1
  br label %42, !llvm.loop !11

50:                                               ; preds = %42
  ret %struct.GridPoint* %9
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local %struct.NuclideGridPoint** @gpmatrix(i64 noundef, i64 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @gpmatrix_free(%struct.NuclideGridPoint** noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_grid_ptrs(%struct.GridPoint* nocapture noundef readonly %0, %struct.NuclideGridPoint** nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #0 {
  br i1 true, label %5, label %6

5:                                                ; preds = %4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([47 x i8], [47 x i8]* @str.3, i64 0, i64 0))
  br label %6

6:                                                ; preds = %5, %4
  br label %7

7:                                                ; preds = %26, %6
  %.01 = phi i64 [ 0, %6 ], [ %27, %26 ]
  %8 = mul nsw i64 %2, %3
  %9 = icmp slt i64 %.01, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %0, i64 %.01, i32 0
  %12 = load double, double* %11, align 8
  br label %13

13:                                               ; preds = %23, %10
  %.0 = phi i64 [ 0, %10 ], [ %24, %23 ]
  %14 = icmp slt i64 %.0, %2
  br i1 %14, label %15, label %25

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %1, i64 %.0
  %17 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %16, align 8
  %18 = trunc i64 %3 to i32
  %19 = call i32 @binary_search(%struct.NuclideGridPoint* noundef %17, double noundef %12, i32 noundef %18) #6
  %20 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %0, i64 %.01, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 %.0
  store i32 %19, i32* %22, align 4
  br label %23

23:                                               ; preds = %15
  %24 = add nuw nsw i64 %.0, 1
  br label %13, !llvm.loop !12

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i64 %.01, 1
  br label %7, !llvm.loop !13

28:                                               ; preds = %7
  br i1 true, label %29, label %30

29:                                               ; preds = %28
  %putchar = call i32 @putchar(i32 10)
  br label %30

30:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @binary_search(%struct.NuclideGridPoint* noundef, double noundef, i32 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { noreturn nounwind }

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
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
