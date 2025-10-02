; ModuleID = './KS-1.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._Module = type { %struct._Module*, i64 }
%struct._Net = type { %struct._Net*, i64 }
%struct._ModuleList = type { %struct._ModuleRec*, %struct._ModuleRec* }
%struct._ModuleRec = type { %struct._ModuleRec*, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"(%s:%s():%d): \00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-1.c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ReadData\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unable to open input file [%s]\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%lu %lu\00", align 1
@numNets = dso_local global i64 0, align 8
@numModules = dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"unable to parse header in file [%s]\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"unable to allocate a module list node\00", align 1
@nets = dso_local global [1024 x %struct._Module*] zeroinitializer, align 16
@modules = dso_local global [1024 x %struct._Net*] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [14 x i8] c"NetsToModules\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unable to allocate net list node\00", align 1
@cost = dso_local global [1024 x float] zeroinitializer, align 16
@groupA = dso_local global %struct._ModuleList zeroinitializer, align 8
@groupB = dso_local global %struct._ModuleList zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"unable to allocate ModuleRec\00", align 1
@moduleToGroup = dso_local global [1024 x i32] zeroinitializer, align 16
@swapToA = dso_local global %struct._ModuleList zeroinitializer, align 8
@swapToB = dso_local global %struct._ModuleList zeroinitializer, align 8
@.str.14 = private unnamed_addr constant [46 x i8] c"moduleToGroup[(*groupNode).module] == myGroup\00", align 1
@__PRETTY_FUNCTION__.ComputeDs = private unnamed_addr constant [46 x i8] c"void ComputeDs(ModuleListPtr, Groups, Groups)\00", align 1
@D = dso_local global [1024 x float] zeroinitializer, align 16
@GP = dso_local global [1024 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReadNetList(i8* noundef %0) #0 {
  %2 = alloca [1024 x i8], align 16
  %3 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #7
  %.not = icmp eq %struct._IO_FILE* %3, null
  br i1 %.not, label %4, label %10

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef 46) #8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* noundef %3, i32 noundef 0, i32 noundef 0) #8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %9)
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %12 = call i8* @fgets(i8* noundef nonnull %11, i32 noundef 1024, %struct._IO_FILE* noundef nonnull %3) #7
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef nonnull %13, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64* noundef nonnull @numNets, i64* noundef nonnull @numModules) #7
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef 51) #8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* noundef nonnull %3, i32 noundef 0, i32 noundef 0) #8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc2 = call i32 @fputc(i32 10, %struct._IO_FILE* %21)
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %67, %22
  %.01 = phi i64 [ 0, %22 ], [ %68, %67 ]
  %24 = load i64, i64* @numNets, align 8
  %25 = icmp ult i64 %.01, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %28 = call i8* @fgets(i8* noundef nonnull %27, i32 noundef 1024, %struct._IO_FILE* noundef nonnull %3) #7
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %30 = call i8* @strtok(i8* noundef nonnull %29, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #7
  %31 = call i64 @atol(i8* noundef %30) #10
  %32 = add nsw i64 %31, -1
  %33 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %34 = bitcast i8* %33 to %struct._Module*
  %.not3 = icmp eq i8* %33, null
  br i1 %.not3, label %35, label %41

35:                                               ; preds = %26
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef 63) #8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc4 = call i32 @fputc(i32 10, %struct._IO_FILE* %40)
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %26
  %42 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #7
  %43 = call i64 @atol(i8* noundef %42) #10
  %44 = add nsw i64 %43, -1
  %45 = getelementptr inbounds %struct._Module, %struct._Module* %34, i64 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct._Module, %struct._Module* %34, i64 0, i32 0
  store %struct._Module* null, %struct._Module** %46, align 8
  br label %47

47:                                               ; preds = %58, %41
  %.0 = phi %struct._Module* [ %34, %41 ], [ %51, %58 ]
  %48 = call i8* @strtok(i8* noundef null, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #7
  %.not5 = icmp eq i8* %48, null
  br i1 %.not5, label %64, label %49

49:                                               ; preds = %47
  %50 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %51 = bitcast i8* %50 to %struct._Module*
  %.not6 = icmp eq i8* %50, null
  br i1 %.not6, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 noundef 70) #8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc7 = call i32 @fputc(i32 10, %struct._IO_FILE* %57)
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

58:                                               ; preds = %49
  %59 = call i64 @atol(i8* noundef nonnull %48) #10
  %60 = add nsw i64 %59, -1
  %61 = getelementptr inbounds %struct._Module, %struct._Module* %51, i64 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct._Module, %struct._Module* %51, i64 0, i32 0
  store %struct._Module* null, %struct._Module** %62, align 8
  %63 = bitcast %struct._Module* %.0 to i8**
  store i8* %50, i8** %63, align 8
  br label %47, !llvm.loop !4

64:                                               ; preds = %47
  %65 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %32
  %66 = bitcast %struct._Module** %65 to i8**
  store i8* %33, i8** %66, align 8
  br label %67

67:                                               ; preds = %64
  %68 = add i64 %.01, 1
  br label %23, !llvm.loop !6

69:                                               ; preds = %23
  ret void

UnifiedUnreachableBlock:                          ; preds = %52, %35, %16, %4
  unreachable
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @atol(i8* noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @NetsToModules() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.01 = phi i64 [ 0, %0 ], [ %7, %6 ]
  %2 = load i64, i64* @numModules, align 8
  %3 = icmp ult i64 %.01, %2
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %.01
  store %struct._Net* null, %struct._Net** %5, align 8
  br label %6

6:                                                ; preds = %4
  %7 = add i64 %.01, 1
  br label %1, !llvm.loop !7

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %38, %8
  %.0 = phi i64 [ 0, %8 ], [ %39, %38 ]
  %10 = load i64, i64* @numNets, align 8
  %11 = icmp ult i64 %.0, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %.0
  br label %14

14:                                               ; preds = %35, %12
  %.02.in = phi %struct._Module** [ %13, %12 ], [ %36, %35 ]
  %.02 = load %struct._Module*, %struct._Module** %.02.in, align 8
  %.not = icmp eq %struct._Module* %.02, null
  br i1 %.not, label %37, label %15

15:                                               ; preds = %14
  %16 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %17 = bitcast i8* %16 to %struct._Net*
  %.not3 = icmp eq i8* %16, null
  br i1 %.not3, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 noundef 96) #8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %23)
  call void @exit(i32 noundef 1) #9
  unreachable

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct._Net, %struct._Net* %17, i64 0, i32 1
  store i64 %.0, i64* %25, align 8
  %26 = getelementptr inbounds %struct._Module, %struct._Module* %.02, i64 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %27
  %29 = load %struct._Net*, %struct._Net** %28, align 8
  %30 = getelementptr inbounds %struct._Net, %struct._Net* %17, i64 0, i32 0
  store %struct._Net* %29, %struct._Net** %30, align 8
  %31 = getelementptr inbounds %struct._Module, %struct._Module* %.02, i64 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %32
  %34 = bitcast %struct._Net** %33 to i8**
  store i8* %16, i8** %34, align 8
  br label %35

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct._Module, %struct._Module* %.02, i64 0, i32 0
  br label %14, !llvm.loop !8

37:                                               ; preds = %14
  br label %38

38:                                               ; preds = %37
  %39 = add i64 %.0, 1
  br label %9, !llvm.loop !9

40:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ComputeNetCosts() #5 {
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i64 [ 0, %0 ], [ %7, %6 ]
  %2 = load i64, i64* @numNets, align 8
  %3 = icmp ult i64 %.0, %2
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %.0
  store float 1.000000e+00, float* %5, align 4
  br label %6

6:                                                ; preds = %4
  %7 = add i64 %.0, 1
  br label %1, !llvm.loop !10

8:                                                ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitLists() #0 {
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 0), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 0), align 8
  br label %1

1:                                                ; preds = %50, %0
  %.0 = phi i64 [ 0, %0 ], [ %51, %50 ]
  %2 = load i64, i64* @numModules, align 8
  %3 = lshr i64 %2, 1
  %4 = icmp ult i64 %.0, %3
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %7 = bitcast i8* %6 to %struct._ModuleRec*
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 noundef 145) #8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %13)
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %7, i64 0, i32 1
  store i64 %.0, i64* %15, align 8
  %16 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 0), align 8
  %17 = icmp eq %struct._ModuleRec* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  store i8* %6, i8** bitcast (%struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 1) to i8**), align 8
  store i8* %6, i8** bitcast (%struct._ModuleList* @groupA to i8**), align 8
  %19 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %7, i64 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %19, align 8
  br label %23

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %7, i64 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %21, align 8
  %22 = load i8**, i8*** bitcast (%struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 1) to i8***), align 8
  store i8* %6, i8** %22, align 8
  store i8* %6, i8** bitcast (%struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupA, i64 0, i32 1) to i8**), align 8
  br label %23

23:                                               ; preds = %20, %18
  %24 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %.0
  store i32 0, i32* %24, align 4
  %25 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %26 = bitcast i8* %25 to %struct._ModuleRec*
  %.not1 = icmp eq i8* %25, null
  br i1 %.not1, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 noundef 164) #8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %fputc2 = call i32 @fputc(i32 10, %struct._IO_FILE* %32)
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %23
  %34 = load i64, i64* @numModules, align 8
  %35 = lshr i64 %34, 1
  %36 = add i64 %35, %.0
  %37 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %26, i64 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load %struct._ModuleRec*, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 0), align 8
  %39 = icmp eq %struct._ModuleRec* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  store i8* %25, i8** bitcast (%struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 1) to i8**), align 8
  store i8* %25, i8** bitcast (%struct._ModuleList* @groupB to i8**), align 8
  %41 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %26, i64 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %41, align 8
  br label %45

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %26, i64 0, i32 0
  store %struct._ModuleRec* null, %struct._ModuleRec** %43, align 8
  %44 = load i8**, i8*** bitcast (%struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 1) to i8***), align 8
  store i8* %25, i8** %44, align 8
  store i8* %25, i8** bitcast (%struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @groupB, i64 0, i32 1) to i8**), align 8
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i64, i64* @numModules, align 8
  %47 = lshr i64 %46, 1
  %48 = add i64 %47, %.0
  %49 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %48
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %45
  %51 = add i64 %.0, 1
  br label %1, !llvm.loop !11

52:                                               ; preds = %1
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i64 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToA, i64 0, i32 0), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i64 0, i32 1), align 8
  store %struct._ModuleRec* null, %struct._ModuleRec** getelementptr inbounds (%struct._ModuleList, %struct._ModuleList* @swapToB, i64 0, i32 0), align 8
  ret void

UnifiedUnreachableBlock:                          ; preds = %27, %8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ComputeDs(%struct._ModuleList* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct._ModuleList, %struct._ModuleList* %0, i64 0, i32 0
  br label %5

5:                                                ; preds = %65, %3
  %.0.in = phi %struct._ModuleRec** [ %4, %3 ], [ %66, %65 ]
  %.0 = load %struct._ModuleRec*, %struct._ModuleRec** %.0.in, align 8
  %.not = icmp eq %struct._ModuleRec* %.0, null
  br i1 %.not, label %67, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.0, i64 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %14

13:                                               ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 noundef 246, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.ComputeDs, i64 0, i64 0)) #9
  unreachable

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.0, i64 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds [1024 x %struct._Net*], [1024 x %struct._Net*]* @modules, i64 0, i64 %16
  br label %18

18:                                               ; preds = %58, %14
  %.04 = phi float [ 0.000000e+00, %14 ], [ %.15, %58 ]
  %.03 = phi float [ 0.000000e+00, %14 ], [ %.1, %58 ]
  %.02.in = phi %struct._Net** [ %17, %14 ], [ %59, %58 ]
  %.02 = load %struct._Net*, %struct._Net** %.02.in, align 8
  %.not8 = icmp eq %struct._Net* %.02, null
  br i1 %.not8, label %60, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct._Net, %struct._Net* %.02, i64 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds [1024 x %struct._Module*], [1024 x %struct._Module*]* @nets, i64 0, i64 %21
  br label %23

23:                                               ; preds = %55, %19
  %.15 = phi float [ %.04, %19 ], [ %.37, %55 ]
  %.1 = phi float [ %.03, %19 ], [ %.3, %55 ]
  %.01.in = phi %struct._Module** [ %22, %19 ], [ %56, %55 ]
  %.01 = load %struct._Module*, %struct._Module** %.01.in, align 8
  %.not9 = icmp eq %struct._Module* %.01, null
  br i1 %.not9, label %57, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct._Module, %struct._Module* %.01, i64 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.0, i64 0, i32 1
  %28 = load i64, i64* %27, align 8
  %.not10 = icmp eq i64 %26, %28
  br i1 %.not10, label %54, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._Module, %struct._Module* %.01, i64 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct._Module, %struct._Module* %.01, i64 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [1024 x i32], [1024 x i32]* @moduleToGroup, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct._Net, %struct._Net* %.02, i64 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fadd float %.1, %45
  br label %53

47:                                               ; preds = %35
  %48 = getelementptr inbounds %struct._Net, %struct._Net* %.02, i64 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [1024 x float], [1024 x float]* @cost, i64 0, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fadd float %.15, %51
  br label %53

53:                                               ; preds = %47, %41
  %.26 = phi float [ %.15, %41 ], [ %52, %47 ]
  %.2 = phi float [ %46, %41 ], [ %.1, %47 ]
  br label %54

54:                                               ; preds = %53, %29, %24
  %.37 = phi float [ %.26, %53 ], [ %.15, %29 ], [ %.15, %24 ]
  %.3 = phi float [ %.2, %53 ], [ %.1, %29 ], [ %.1, %24 ]
  br label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct._Module, %struct._Module* %.01, i64 0, i32 0
  br label %23, !llvm.loop !12

57:                                               ; preds = %23
  br label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct._Net, %struct._Net* %.02, i64 0, i32 0
  br label %18, !llvm.loop !13

60:                                               ; preds = %18
  %61 = fsub float %.04, %.03
  %62 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.0, i64 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds [1024 x float], [1024 x float]* @D, i64 0, i64 %63
  store float %61, float* %64, align 4
  br label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct._ModuleRec, %struct._ModuleRec* %.0, i64 0, i32 0
  br label %5, !llvm.loop !14

67:                                               ; preds = %5
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly willreturn }

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
!14 = distinct !{!14, !5}
