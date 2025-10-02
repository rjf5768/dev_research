; ModuleID = './read_dmatrix.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/viterbi/read_dmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvarray = type { i64, %struct.dvector* }
%struct.dvector = type { i64, double* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Opened file %s for matrix reading\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"File read and closed\0A\00", align 1
@str = private unnamed_addr constant [21 x i8] c"File read and closed\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @read_dmatrix(%struct.dvarray* nocapture noundef %0, i8* noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #7
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = call i8* @mybasename(i8* noundef %1)
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* noundef %7) #7
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %5, i32* noundef nonnull %4) #7
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  call void @dvarray_init(%struct.dvarray* noundef %0, i64 noundef %11, i64 noundef %13)
  br label %14

14:                                               ; preds = %34, %2
  %.01 = phi i32 [ 0, %2 ], [ %35, %34 ]
  %.0 = phi i32 [ undef, %2 ], [ %.1, %34 ]
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %.01, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %31, %17
  %.1 = phi i32 [ 0, %17 ], [ %32, %31 ]
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %.1, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double* noundef nonnull %3) #7
  %23 = load double, double* %3, align 8
  %24 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %0, i64 0, i32 1
  %25 = load %struct.dvector*, %struct.dvector** %24, align 8
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds %struct.dvector, %struct.dvector* %25, i64 %26, i32 1
  %28 = load double*, double** %27, align 8
  %29 = zext i32 %.1 to i64
  %30 = getelementptr inbounds double, double* %28, i64 %29
  store double %23, double* %30, align 8
  br label %31

31:                                               ; preds = %21
  %32 = add nuw nsw i32 %.1, 1
  br label %18, !llvm.loop !4

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = add nuw nsw i32 %.01, 1
  br label %14, !llvm.loop !6

36:                                               ; preds = %14
  %37 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %0, i64 0, i32 1
  %38 = load %struct.dvector*, %struct.dvector** %37, align 8
  %39 = add nsw i32 %.01, -1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dvector, %struct.dvector* %38, i64 %40, i32 1
  %42 = load double*, double** %41, align 8
  %43 = add nsw i32 %.0, -1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  %46 = load double, double* %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double noundef %46) #7
  %48 = call i32 @fclose(%struct._IO_FILE* noundef %6) #7
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @str, i64 0, i64 0))
  %49 = mul nsw i32 %.01, %.0
  %50 = sext i32 %49 to i64
  ret i64 %50
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i8* @mybasename(i8* noundef readonly %0) #2 {
  %2 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 47) #8
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, i8* %2, i64 1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i8* [ %4, %3 ], [ %0, %5 ]
  ret i8* %7
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dvarray_init(%struct.dvarray* nocapture noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %0, i64 0, i32 0
  store i64 %1, i64* %4, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %10, label %5

5:                                                ; preds = %3
  %6 = shl i64 %1, 4
  %7 = call noalias i8* @malloc(i64 noundef %6) #7
  %8 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %0, i64 0, i32 1
  %9 = bitcast %struct.dvector** %8 to i8**
  store i8* %7, i8** %9, align 8
  br label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %0, i64 0, i32 1
  store %struct.dvector* null, %struct.dvector** %11, align 8
  br label %12

12:                                               ; preds = %10, %5
  br label %13

13:                                               ; preds = %19, %12
  %.0 = phi i64 [ 0, %12 ], [ %20, %19 ]
  %14 = icmp ult i64 %.0, %1
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %0, i64 0, i32 1
  %17 = load %struct.dvector*, %struct.dvector** %16, align 8
  %18 = getelementptr inbounds %struct.dvector, %struct.dvector* %17, i64 %.0
  call void @dvector_init(%struct.dvector* noundef %18, i64 noundef %2)
  br label %19

19:                                               ; preds = %15
  %20 = add i64 %.0, 1
  br label %13, !llvm.loop !7

21:                                               ; preds = %13
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define internal void @dvector_init(%struct.dvector* nocapture noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i64 0, i32 0
  store i64 %1, i64* %3, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %10, label %4

4:                                                ; preds = %2
  %5 = shl i64 %1, 3
  %6 = call noalias i8* @malloc(i64 noundef %5) #7
  %7 = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i64 0, i32 1
  %8 = bitcast double** %7 to i8**
  store i8* %6, i8** %8, align 8
  %9 = shl i64 %1, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 %9, i1 false)
  br label %12

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dvector, %struct.dvector* %0, i64 0, i32 1
  store double* null, double** %11, align 8
  br label %12

12:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
