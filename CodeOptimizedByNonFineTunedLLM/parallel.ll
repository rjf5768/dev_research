; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/parallel.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.RankReduceDataSt = type { double, i32 }

@nRanks = internal global i32 1, align 4
@myRank = internal global i32 0, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"source == dest\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/parallel.c\00", align 1
@__PRETTY_FUNCTION__.sendReceiveParallel = private unnamed_addr constant [60 x i8] c"int sendReceiveParallel(void *, int, int, void *, int, int)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getNRanks() #0 {
  %1 = load i32, i32* @nRanks, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getMyRank() #0 {
  %1 = load i32, i32* @myRank, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @printRank() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @myRank, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32, i32* %1, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timestampBarrier(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @barrierParallel()
  %5 = call i32 @printRank()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %21

8:                                                ; preds = %1
  %9 = call i64 @time(i64* noundef null) #5
  store i64 %9, i64* %3, align 8
  %10 = call i8* @ctime(i64* noundef %3) #5
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 24
  store i8 0, i8* %12, align 1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef %16, i8* noundef %17)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = call i32 @fflush(%struct._IO_FILE* noundef %19)
  br label %21

21:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @barrierParallel() #0 {
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64* noundef) #1

; Function Attrs: nounwind
declare dso_local i8* @ctime(i64* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @initParallel(i32* noundef %0, i8*** noundef %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroyParallel() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sendReceiveParallel(i8* noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %18

17:                                               ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 noundef 110, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.sendReceiveParallel, i64 0, i64 0)) #6
  unreachable

18:                                               ; preds = %16
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 %20, i64 %22, i1 false)
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @addIntParallel(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8, !llvm.loop !4

25:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @addRealParallel(double* noundef %0, double* noundef %1, i32 noundef %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load double*, double** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, double* %13, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  store double %17, double* %21, align 8
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8, !llvm.loop !6

25:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @addDoubleParallel(double* noundef %0, double* noundef %1, i32 noundef %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load double*, double** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds double, double* %13, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load double*, double** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  store double %17, double* %21, align 8
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8, !llvm.loop !7

25:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @maxIntParallel(i32* noundef %0, i32* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8, !llvm.loop !8

25:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @minRankDoubleParallel(%struct.RankReduceDataSt* noundef %0, %struct.RankReduceDataSt* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.RankReduceDataSt*, align 8
  %5 = alloca %struct.RankReduceDataSt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.RankReduceDataSt* %0, %struct.RankReduceDataSt** %4, align 8
  store %struct.RankReduceDataSt* %1, %struct.RankReduceDataSt** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %35, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.RankReduceDataSt*, %struct.RankReduceDataSt** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %13, i64 %15
  %17 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = load %struct.RankReduceDataSt*, %struct.RankReduceDataSt** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %19, i64 %21
  %23 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %22, i32 0, i32 0
  store double %18, double* %23, align 8
  %24 = load %struct.RankReduceDataSt*, %struct.RankReduceDataSt** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %24, i64 %26
  %28 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.RankReduceDataSt*, %struct.RankReduceDataSt** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %30, i64 %32
  %34 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %33, i32 0, i32 1
  store i32 %29, i32* %34, align 8
  br label %35

35:                                               ; preds = %12
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %8, !llvm.loop !9

38:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @maxRankDoubleParallel(%struct.RankReduceDataSt* noundef %0, %struct.RankReduceDataSt* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.RankReduceDataSt*, align 8
  %5 = alloca %struct.RankReduceDataSt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.RankReduceDataSt* %0, %struct.RankReduceDataSt** %4, align 8
  store %struct.RankReduceDataSt* %1, %struct.RankReduceDataSt** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %35, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.RankReduceDataSt*, %struct.RankReduceDataSt** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %13, i64 %15
  %17 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = load %struct.RankReduceDataSt*, %struct.RankReduceDataSt** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %19, i64 %21
  %23 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %22, i32 0, i32 0
  store double %18, double* %23, align 8
  %24 = load %struct.RankReduceDataSt*, %struct.RankReduceDataSt** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %24, i64 %26
  %28 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.RankReduceDataSt*, %struct.RankReduceDataSt** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %30, i64 %32
  %34 = getelementptr inbounds %struct.RankReduceDataSt, %struct.RankReduceDataSt* %33, i32 0, i32 1
  store i32 %29, i32* %34, align 8
  br label %35

35:                                               ; preds = %12
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %8, !llvm.loop !10

38:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bcastParallel(i8* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @builtWithMpi() #0 {
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
