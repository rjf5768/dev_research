; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/viterbi/read_dmatrix.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @read_dmatrix(%struct.dvarray* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.dvarray*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvarray* %0, %struct.dvarray** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call noalias %struct._IO_FILE* @fopen(i8* noundef %11, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @mybasename(i8* noundef %13)
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* noundef %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* noundef %10, i32* noundef %9)
  %18 = load %struct.dvarray*, %struct.dvarray** %3, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  call void @dvarray_init(%struct.dvarray* noundef %18, i64 noundef %20, i64 noundef %22)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %51, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double* noundef %6)
  %35 = load double, double* %6, align 8
  %36 = load %struct.dvarray*, %struct.dvarray** %3, align 8
  %37 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %36, i32 0, i32 1
  %38 = load %struct.dvector*, %struct.dvector** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dvector, %struct.dvector* %38, i64 %40
  %42 = getelementptr inbounds %struct.dvector, %struct.dvector* %41, i32 0, i32 1
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  store double %35, double* %46, align 8
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %28, !llvm.loop !4

50:                                               ; preds = %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %23, !llvm.loop !6

54:                                               ; preds = %23
  %55 = load %struct.dvarray*, %struct.dvarray** %3, align 8
  %56 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %55, i32 0, i32 1
  %57 = load %struct.dvector*, %struct.dvector** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.dvector, %struct.dvector* %57, i64 %60
  %62 = getelementptr inbounds %struct.dvector, %struct.dvector* %61, i32 0, i32 1
  %63 = load double*, double** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %63, i64 %66
  %68 = load double, double* %67, align 8
  %69 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double noundef %68)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %71 = call i32 @fclose(%struct._IO_FILE* noundef %70)
  %72 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  ret i64 %76
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @mybasename(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strrchr(i8* noundef %4, i32 noundef 47) #5
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  br label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i8* [ %10, %8 ], [ %12, %11 ]
  ret i8* %14
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @dvarray_init(%struct.dvarray* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.dvarray*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dvarray* %0, %struct.dvarray** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.dvarray*, %struct.dvarray** %4, align 8
  %10 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = mul i64 %14, 16
  %16 = call noalias i8* @malloc(i64 noundef %15) #6
  %17 = bitcast i8* %16 to %struct.dvector*
  %18 = load %struct.dvarray*, %struct.dvarray** %4, align 8
  %19 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %18, i32 0, i32 1
  store %struct.dvector* %17, %struct.dvector** %19, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load %struct.dvarray*, %struct.dvarray** %4, align 8
  %22 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %21, i32 0, i32 1
  store %struct.dvector* null, %struct.dvector** %22, align 8
  br label %23

23:                                               ; preds = %20, %13
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %35, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.dvarray*, %struct.dvarray** %4, align 8
  %30 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %29, i32 0, i32 1
  %31 = load %struct.dvector*, %struct.dvector** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.dvector, %struct.dvector* %31, i64 %32
  %34 = load i64, i64* %6, align 8
  call void @dvector_init(%struct.dvector* noundef %33, i64 noundef %34)
  br label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %24, !llvm.loop !7

38:                                               ; preds = %24
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal void @dvector_init(%struct.dvector* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.dvector*, align 8
  %4 = alloca i64, align 8
  store %struct.dvector* %0, %struct.dvector** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.dvector*, %struct.dvector** %3, align 8
  %7 = getelementptr inbounds %struct.dvector, %struct.dvector* %6, i32 0, i32 0
  store i64 %5, i64* %7, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @malloc(i64 noundef %12) #6
  %14 = bitcast i8* %13 to double*
  %15 = load %struct.dvector*, %struct.dvector** %3, align 8
  %16 = getelementptr inbounds %struct.dvector, %struct.dvector* %15, i32 0, i32 1
  store double* %14, double** %16, align 8
  %17 = load %struct.dvector*, %struct.dvector** %3, align 8
  %18 = getelementptr inbounds %struct.dvector, %struct.dvector* %17, i32 0, i32 1
  %19 = load double*, double** %18, align 8
  %20 = bitcast double* %19 to i8*
  %21 = load i64, i64* %4, align 8
  %22 = mul i64 %21, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 %22, i1 false)
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.dvector*, %struct.dvector** %3, align 8
  %25 = getelementptr inbounds %struct.dvector, %struct.dvector* %24, i32 0, i32 1
  store double* null, double** %25, align 8
  br label %26

26:                                               ; preds = %23, %10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
