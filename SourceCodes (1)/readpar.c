; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readpar.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readpar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@wireEstimateOnly = dso_local global i32 0, align 4
@attpercell = external dso_local global i32, align 4
@lapFactor = external dso_local global double, align 8
@cost_only = external dso_local global i32, align 4
@maxWeight = external dso_local global i32, align 4
@baseWeight = external dso_local global i32, align 4
@chipaspect = external dso_local global double, align 8
@pinSpacing = external dso_local global i32, align 4
@trackspacing = external dso_local global i32, align 4
@doPlacement = external dso_local global i32, align 4
@doChannelGraph = external dso_local global i32, align 4
@doGlobalRoute = external dso_local global i32, align 4
@doCompaction = external dso_local global i32, align 4
@coreGiven = external dso_local global i32, align 4
@gOffsetX = external dso_local global i32, align 4
@gOffsetY = external dso_local global i32, align 4
@gridX = external dso_local global i32, align 4
@gridY = external dso_local global i32, align 4
@defaultTracks = dso_local global i32 0, align 4
@routerMaxPaths = dso_local global i32 0, align 4
@routerExtraS = dso_local global i32 0, align 4
@core_expansion_given = dso_local global i32 0, align 4
@spot_control = external dso_local global double, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s.par\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"initialT\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %lf \00", align 1
@T = external dso_local global double, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"The value of initialT was not properly\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"entered in the .par file\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"spot.control\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"The value of spot.control was not properly\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"core.expansion\00", align 1
@core_expansion = dso_local global double 0.000000e+00, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"The value of core.expansion was not properly\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"wire.estimation.factor\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@wire_est_factor = dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [45 x i8] c"The value of wire.estimation.factor was not \00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"properly entered in the .par file\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"cost_only\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"random.seed\00", align 1
@randVar = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"The value of random.seed was not properly\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"att.per.cell\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"The value of att.per.cell was not properly\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"track.spacing\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"The value for track.spacing was not properly\00", align 1
@pitch = external dso_local global i32, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"pin.spacing\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"The value for pin.spacing was not properly\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"chip.aspect.ratio\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"The value for chip.aspect.ratio was not\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c" properly entered in the .par file\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"router.max.paths\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"The value for router.max.paths was\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c" not properly entered in the .par file\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"router.extra.sources\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"The value for router.extra.sources was\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"default.tracks.per.channel\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"The value for default.tracks.per.channel was\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"wire.estimation.only\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"do.placement\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"do.channel.graph\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"do.global.route\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"do.compaction\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"The value for do.compaction was not properly\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c" %d %d %d %d \00", align 1
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@.str.43 = private unnamed_addr constant [40 x i8] c"The 4 values for core were not properly\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"gridOffsetX\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"The value for gridOffsetX was not properly\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"gridOffsetY\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"The value for gridOffsetY was not properly\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"gridX\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"The value for gridX was not properly\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"gridY\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"The value for gridY was not properly\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"Unexpected keyword in the .par file\0A\00", align 1
@.str.53 = private unnamed_addr constant [41 x i8] c"Error: It appears as though the grid is\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"not fully specified\0A\00", align 1
@gridGiven = external dso_local global i32, align 4
@.str.55 = private unnamed_addr constant [47 x i8] c"att.per.cell was not entered in the .par file\0A\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"att.per.cell: %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"track.spacing was not entered in .par file\0A\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"track.spacing: %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"pin.spacing was not entered in the .par file\0A\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"pin.spacing: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"chip.aspect.ratio was not entered \00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"in the .par file\0A\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"chip.aspect.ratio: %g\0A\00", align 1
@.str.64 = private unnamed_addr constant [42 x i8] c"Using default value of spot.control: 1.0\0A\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"spot.control set to: %f\0A\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"TimberWolf instructed to do \00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"placement of circuit:<%s>\0A\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"TimberWolf instructed to generate \00", align 1
@.str.69 = private unnamed_addr constant [32 x i8] c"channel graph for circuit:<%s>\0A\00", align 1
@.str.70 = private unnamed_addr constant [33 x i8] c"TimberWolf assumes input files: \00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"<%s.geo> and <%s.pin> are present in\0A\00", align 1
@.str.72 = private unnamed_addr constant [47 x i8] c"router.max.paths was not entered in .par file\0A\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"router.max.paths: %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [46 x i8] c"router.max.paths set to BARE MINIMUM version\0A\00", align 1
@bareFlag = dso_local global i32 0, align 4
@.str.75 = private unnamed_addr constant [51 x i8] c"router.extra.sources was not entered in .par file\0A\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"router.extra.sources: %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"default.tracks.per.channel \0A\00", align 1
@.str.78 = private unnamed_addr constant [30 x i8] c"was not entered in .par file\0A\00", align 1
@.str.79 = private unnamed_addr constant [32 x i8] c"default.tracks.per.channel: %d\0A\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"global route for circuit:<%s>\0A\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"<%s.gph> and <%s.twf> are present in \00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"the working directory\0A\00", align 1
@.str.83 = private unnamed_addr constant [44 x i8] c"post-placement compaction for circuit:<%s>\0A\00", align 1
@.str.84 = private unnamed_addr constant [40 x i8] c"Error: TimberWolf cannot do compaction\0A\00", align 1
@.str.85 = private unnamed_addr constant [42 x i8] c"without request to also do: doPlacement,\0A\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"doChannelGraph and doGlobalRoute\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"Hence, request is cancelled\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @readpar() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  store i32 0, i32* @wireEstimateOnly, align 4
  store i32 -1, i32* @attpercell, align 4
  store double 1.000000e+00, double* @lapFactor, align 8
  store i32 0, i32* @cost_only, align 4
  store i32 2, i32* @maxWeight, align 4
  store i32 1, i32* @baseWeight, align 4
  store double -1.000000e+00, double* @chipaspect, align 8
  store i32 -1, i32* @pinSpacing, align 4
  store i32 -1, i32* @trackspacing, align 4
  store i32 0, i32* @doPlacement, align 4
  store i32 0, i32* @doChannelGraph, align 4
  store i32 0, i32* @doGlobalRoute, align 4
  store i32 0, i32* @doCompaction, align 4
  store i32 0, i32* @coreGiven, align 4
  store i32 -1000000, i32* @gOffsetX, align 4
  store i32 -1000000, i32* @gOffsetY, align 4
  store i32 -1000000, i32* @gridX, align 4
  store i32 -1000000, i32* @gridY, align 4
  store i32 -1, i32* @defaultTracks, align 4
  store i32 -1, i32* @routerMaxPaths, align 4
  store i32 -1, i32* @routerExtraS, align 4
  store i32 0, i32* @core_expansion_given, align 4
  store double -1.000000e+00, double* @spot_control, align 8
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %6 = load i8*, i8** @cktName, align 8
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %5, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %6) #5
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %9 = call noalias %struct._IO_FILE* @fopen(i8* noundef %8, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %1, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %12, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %13)
  call void @exit(i32 noundef 0) #6
  unreachable

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %342, %15
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %343

21:                                               ; preds = %16
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %23 = call i32 @strcmp(i8* noundef %22, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double* noundef @T)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

35:                                               ; preds = %25
  br label %342

36:                                               ; preds = %21
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %38 = call i32 @strcmp(i8* noundef %37, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double* noundef @spot_control)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %46, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %48, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

50:                                               ; preds = %40
  br label %341

51:                                               ; preds = %36
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %53 = call i32 @strcmp(i8* noundef %52, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double* noundef @core_expansion)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

65:                                               ; preds = %55
  store i32 1, i32* @core_expansion_given, align 4
  br label %340

66:                                               ; preds = %51
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %68 = call i32 @strcmp(i8* noundef %67, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @wire_est_factor)
  store i32 %72, i32* %2, align 4
  %73 = load i32, i32* %2, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

80:                                               ; preds = %70
  br label %339

81:                                               ; preds = %66
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %83 = call i32 @strcmp(i8* noundef %82, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #7
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* @cost_only, align 4
  br label %338

86:                                               ; preds = %81
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %88 = call i32 @strcmp(i8* noundef %87, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0)) #7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %91, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @randVar)
  store i32 %92, i32* %2, align 4
  %93 = load i32, i32* %2, align 4
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %96, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %98, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

100:                                              ; preds = %90
  br label %337

101:                                              ; preds = %86
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %103 = call i32 @strcmp(i8* noundef %102, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0)) #7
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %106, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @attpercell)
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0))
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %113, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

115:                                              ; preds = %105
  br label %336

116:                                              ; preds = %101
  %117 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %118 = call i32 @strcmp(i8* noundef %117, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0)) #7
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @trackspacing)
  store i32 %122, i32* %2, align 4
  %123 = load i32, i32* %2, align 4
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %126, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0))
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %128, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

130:                                              ; preds = %120
  %131 = load i32, i32* @trackspacing, align 4
  store i32 %131, i32* @pitch, align 4
  br label %335

132:                                              ; preds = %116
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %134 = call i32 @strcmp(i8* noundef %133, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0)) #7
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %137, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @pinSpacing)
  store i32 %138, i32* %2, align 4
  %139 = load i32, i32* %2, align 4
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %142, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0))
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %144, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

146:                                              ; preds = %136
  br label %334

147:                                              ; preds = %132
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %149 = call i32 @strcmp(i8* noundef %148, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0)) #7
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %152, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double* noundef @chipaspect)
  store i32 %153, i32* %2, align 4
  %154 = load i32, i32* %2, align 4
  %155 = icmp ne i32 %154, 1
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %157, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0))
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %159, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

161:                                              ; preds = %151
  br label %333

162:                                              ; preds = %147
  %163 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %164 = call i32 @strcmp(i8* noundef %163, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0)) #7
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %162
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %167, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @routerMaxPaths)
  store i32 %168, i32* %2, align 4
  %169 = load i32, i32* %2, align 4
  %170 = icmp ne i32 %169, 1
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %172, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0))
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %174, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

176:                                              ; preds = %166
  br label %332

177:                                              ; preds = %162
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %179 = call i32 @strcmp(i8* noundef %178, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0)) #7
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %177
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %182, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @routerExtraS)
  store i32 %183, i32* %2, align 4
  %184 = load i32, i32* %2, align 4
  %185 = icmp ne i32 %184, 1
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %188 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %187, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0))
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %189, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

191:                                              ; preds = %181
  br label %331

192:                                              ; preds = %177
  %193 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %194 = call i32 @strcmp(i8* noundef %193, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0)) #7
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %197, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @defaultTracks)
  store i32 %198, i32* %2, align 4
  %199 = load i32, i32* %2, align 4
  %200 = icmp ne i32 %199, 1
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %202, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0))
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %204, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

206:                                              ; preds = %196
  br label %330

207:                                              ; preds = %192
  %208 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %209 = call i32 @strcmp(i8* noundef %208, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0)) #7
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  store i32 1, i32* @wireEstimateOnly, align 4
  br label %329

212:                                              ; preds = %207
  %213 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %214 = call i32 @strcmp(i8* noundef %213, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0)) #7
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 1, i32* @doPlacement, align 4
  br label %328

217:                                              ; preds = %212
  %218 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %219 = call i32 @strcmp(i8* noundef %218, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0)) #7
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  store i32 1, i32* @doChannelGraph, align 4
  br label %327

222:                                              ; preds = %217
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %224 = call i32 @strcmp(i8* noundef %223, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0)) #7
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  store i32 1, i32* @doGlobalRoute, align 4
  br label %326

227:                                              ; preds = %222
  %228 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %229 = call i32 @strcmp(i8* noundef %228, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0)) #7
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %227
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %233 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %232, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @doCompaction)
  store i32 %233, i32* %2, align 4
  %234 = load i32, i32* %2, align 4
  %235 = icmp ne i32 %234, 1
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %237, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0))
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %239, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

241:                                              ; preds = %231
  br label %325

242:                                              ; preds = %227
  %243 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %244 = call i32 @strcmp(i8* noundef %243, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0)) #7
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %242
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %248 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %247, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i32* noundef @blockl, i32* noundef @blockr, i32* noundef @blockb, i32* noundef @blockt)
  store i32 %248, i32* %2, align 4
  %249 = load i32, i32* %2, align 4
  %250 = icmp ne i32 %249, 4
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %252, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0))
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %254, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

256:                                              ; preds = %246
  store i32 1, i32* @coreGiven, align 4
  br label %324

257:                                              ; preds = %242
  %258 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %259 = call i32 @strcmp(i8* noundef %258, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0)) #7
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %257
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %263 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %262, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @gOffsetX)
  store i32 %263, i32* %2, align 4
  %264 = load i32, i32* %2, align 4
  %265 = icmp ne i32 %264, 1
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %267, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i64 0, i64 0))
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %270 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %269, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

271:                                              ; preds = %261
  br label %323

272:                                              ; preds = %257
  %273 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %274 = call i32 @strcmp(i8* noundef %273, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0)) #7
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %272
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %278 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %277, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @gOffsetY)
  store i32 %278, i32* %2, align 4
  %279 = load i32, i32* %2, align 4
  %280 = icmp ne i32 %279, 1
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %283 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %282, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.47, i64 0, i64 0))
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %284, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

286:                                              ; preds = %276
  br label %322

287:                                              ; preds = %272
  %288 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %289 = call i32 @strcmp(i8* noundef %288, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0)) #7
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %302

291:                                              ; preds = %287
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %293 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %292, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @gridX)
  store i32 %293, i32* %2, align 4
  %294 = load i32, i32* %2, align 4
  %295 = icmp ne i32 %294, 1
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %298 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %297, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0))
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %299, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

301:                                              ; preds = %291
  br label %321

302:                                              ; preds = %287
  %303 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %304 = call i32 @strcmp(i8* noundef %303, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0)) #7
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %317

306:                                              ; preds = %302
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %308 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %307, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef @gridY)
  store i32 %308, i32* %2, align 4
  %309 = load i32, i32* %2, align 4
  %310 = icmp ne i32 %309, 1
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %313 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %312, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0))
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %314, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

316:                                              ; preds = %306
  br label %320

317:                                              ; preds = %302
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %318, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

320:                                              ; preds = %316
  br label %321

321:                                              ; preds = %320, %301
  br label %322

322:                                              ; preds = %321, %286
  br label %323

323:                                              ; preds = %322, %271
  br label %324

324:                                              ; preds = %323, %256
  br label %325

325:                                              ; preds = %324, %241
  br label %326

326:                                              ; preds = %325, %226
  br label %327

327:                                              ; preds = %326, %221
  br label %328

328:                                              ; preds = %327, %216
  br label %329

329:                                              ; preds = %328, %211
  br label %330

330:                                              ; preds = %329, %206
  br label %331

331:                                              ; preds = %330, %191
  br label %332

332:                                              ; preds = %331, %176
  br label %333

333:                                              ; preds = %332, %161
  br label %334

334:                                              ; preds = %333, %146
  br label %335

335:                                              ; preds = %334, %130
  br label %336

336:                                              ; preds = %335, %115
  br label %337

337:                                              ; preds = %336, %100
  br label %338

338:                                              ; preds = %337, %85
  br label %339

339:                                              ; preds = %338, %80
  br label %340

340:                                              ; preds = %339, %65
  br label %341

341:                                              ; preds = %340, %50
  br label %342

342:                                              ; preds = %341, %35
  br label %16, !llvm.loop !4

343:                                              ; preds = %16
  %344 = load i32, i32* @doPlacement, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %430

346:                                              ; preds = %343
  %347 = load i32, i32* @gridX, align 4
  %348 = icmp sge i32 %347, 0
  br i1 %348, label %358, label %349

349:                                              ; preds = %346
  %350 = load i32, i32* @gridY, align 4
  %351 = icmp sge i32 %350, 0
  br i1 %351, label %358, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* @gOffsetX, align 4
  %354 = icmp sge i32 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %352
  %356 = load i32, i32* @gOffsetY, align 4
  %357 = icmp sge i32 %356, 0
  br i1 %357, label %358, label %377

358:                                              ; preds = %355, %352, %349, %346
  %359 = load i32, i32* @gridX, align 4
  %360 = icmp sge i32 %359, 0
  br i1 %360, label %361, label %370

361:                                              ; preds = %358
  %362 = load i32, i32* @gridY, align 4
  %363 = icmp sge i32 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %361
  %365 = load i32, i32* @gOffsetX, align 4
  %366 = icmp sge i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load i32, i32* @gOffsetY, align 4
  %369 = icmp sge i32 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %367, %364, %361, %358
  %371 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %372 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %371, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i64 0, i64 0))
  %373 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %374 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %373, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

375:                                              ; preds = %367
  store i32 1, i32* @gridGiven, align 4
  br label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376, %355
  %378 = load i32, i32* @attpercell, align 4
  %379 = icmp eq i32 %378, -1
  br i1 %379, label %380, label %383

380:                                              ; preds = %377
  %381 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %382 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %381, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.55, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

383:                                              ; preds = %377
  %384 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %385 = load i32, i32* @attpercell, align 4
  %386 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %384, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i64 0, i64 0), i32 noundef %385)
  br label %387

387:                                              ; preds = %383
  %388 = load i32, i32* @trackspacing, align 4
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %387
  %391 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %392 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %391, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

393:                                              ; preds = %387
  %394 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %395 = load i32, i32* @trackspacing, align 4
  %396 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %394, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0), i32 noundef %395)
  br label %397

397:                                              ; preds = %393
  %398 = load i32, i32* @pinSpacing, align 4
  %399 = icmp slt i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %397
  %401 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %402 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %401, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.59, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

403:                                              ; preds = %397
  %404 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %405 = load i32, i32* @pinSpacing, align 4
  %406 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %404, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), i32 noundef %405)
  br label %407

407:                                              ; preds = %403
  %408 = load double, double* @chipaspect, align 8
  %409 = fcmp olt double %408, 0.000000e+00
  br i1 %409, label %410, label %415

410:                                              ; preds = %407
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %412 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %411, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i64 0, i64 0))
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %414 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %413, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

415:                                              ; preds = %407
  %416 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %417 = load double, double* @chipaspect, align 8
  %418 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %416, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), double noundef %417)
  br label %419

419:                                              ; preds = %415
  %420 = load double, double* @spot_control, align 8
  %421 = fcmp olt double %420, 0.000000e+00
  br i1 %421, label %422, label %425

422:                                              ; preds = %419
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %424 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %423, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.64, i64 0, i64 0))
  store double 1.000000e+00, double* @spot_control, align 8
  br label %429

425:                                              ; preds = %419
  %426 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %427 = load double, double* @spot_control, align 8
  %428 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %426, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), double noundef %427)
  br label %429

429:                                              ; preds = %425, %422
  br label %430

430:                                              ; preds = %429, %343
  %431 = load i32, i32* @doPlacement, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %439

433:                                              ; preds = %430
  %434 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %435 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %434, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i64 0, i64 0))
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %437 = load i8*, i8** @cktName, align 8
  %438 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %436, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0), i8* noundef %437)
  br label %439

439:                                              ; preds = %433, %430
  %440 = load i32, i32* @doChannelGraph, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %458

442:                                              ; preds = %439
  %443 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %444 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %443, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i64 0, i64 0))
  %445 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %446 = load i8*, i8** @cktName, align 8
  %447 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %445, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.69, i64 0, i64 0), i8* noundef %446)
  %448 = load i32, i32* @doPlacement, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %457, label %450

450:                                              ; preds = %442
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %452 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %451, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i64 0, i64 0))
  %453 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %454 = load i8*, i8** @cktName, align 8
  %455 = load i8*, i8** @cktName, align 8
  %456 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %453, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.71, i64 0, i64 0), i8* noundef %454, i8* noundef %455)
  br label %457

457:                                              ; preds = %450, %442
  br label %458

458:                                              ; preds = %457, %439
  %459 = load i32, i32* @doGlobalRoute, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %532

461:                                              ; preds = %458
  %462 = load i32, i32* @routerMaxPaths, align 4
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %464, label %467

464:                                              ; preds = %461
  %465 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %466 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %465, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.72, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

467:                                              ; preds = %461
  %468 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %469 = load i32, i32* @routerMaxPaths, align 4
  %470 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %468, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i64 0, i64 0), i32 noundef %469)
  br label %471

471:                                              ; preds = %467
  %472 = load i32, i32* @routerMaxPaths, align 4
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %471
  %475 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %475, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.74, i64 0, i64 0))
  store i32 1, i32* @routerMaxPaths, align 4
  store i32 1, i32* @bareFlag, align 4
  br label %478

477:                                              ; preds = %471
  store i32 0, i32* @bareFlag, align 4
  br label %478

478:                                              ; preds = %477, %474
  %479 = load i32, i32* @routerExtraS, align 4
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %481, label %484

481:                                              ; preds = %478
  %482 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %483 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %482, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.75, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

484:                                              ; preds = %478
  %485 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %486 = load i32, i32* @routerExtraS, align 4
  %487 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %485, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i64 0, i64 0), i32 noundef %486)
  br label %488

488:                                              ; preds = %484
  %489 = load i32, i32* @doChannelGraph, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %514

491:                                              ; preds = %488
  %492 = load i32, i32* @trackspacing, align 4
  %493 = icmp slt i32 %492, 0
  br i1 %493, label %494, label %497

494:                                              ; preds = %491
  %495 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %496 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %495, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

497:                                              ; preds = %491
  %498 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %499 = load i32, i32* @trackspacing, align 4
  %500 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %498, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0), i32 noundef %499)
  br label %501

501:                                              ; preds = %497
  %502 = load i32, i32* @defaultTracks, align 4
  %503 = icmp slt i32 %502, 0
  br i1 %503, label %504, label %509

504:                                              ; preds = %501
  %505 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %506 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %505, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i64 0, i64 0))
  %507 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %508 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %507, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.78, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

509:                                              ; preds = %501
  %510 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %511 = load i32, i32* @defaultTracks, align 4
  %512 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %510, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i64 0, i64 0), i32 noundef %511)
  br label %513

513:                                              ; preds = %509
  br label %514

514:                                              ; preds = %513, %488
  %515 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %516 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %515, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i64 0, i64 0))
  %517 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %518 = load i8*, i8** @cktName, align 8
  %519 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %517, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.80, i64 0, i64 0), i8* noundef %518)
  %520 = load i32, i32* @doChannelGraph, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %531, label %522

522:                                              ; preds = %514
  %523 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %524 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %523, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i64 0, i64 0))
  %525 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %526 = load i8*, i8** @cktName, align 8
  %527 = load i8*, i8** @cktName, align 8
  %528 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %525, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i64 0, i64 0), i8* noundef %526, i8* noundef %527)
  %529 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %530 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %529, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0))
  br label %531

531:                                              ; preds = %522, %514
  br label %532

532:                                              ; preds = %531, %458
  %533 = load i32, i32* @doCompaction, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %559

535:                                              ; preds = %532
  %536 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %537 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %536, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i64 0, i64 0))
  %538 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %539 = load i8*, i8** @cktName, align 8
  %540 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %538, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.83, i64 0, i64 0), i8* noundef %539)
  %541 = load i32, i32* @doPlacement, align 4
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %549

543:                                              ; preds = %535
  %544 = load i32, i32* @doChannelGraph, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %549

546:                                              ; preds = %543
  %547 = load i32, i32* @doGlobalRoute, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %558, label %549

549:                                              ; preds = %546, %543, %535
  %550 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %551 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %550, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.84, i64 0, i64 0))
  %552 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %553 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %552, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i64 0, i64 0))
  %554 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %555 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %554, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i64 0, i64 0))
  %556 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %557 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %556, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i64 0, i64 0))
  store i32 0, i32* @doCompaction, align 4
  br label %558

558:                                              ; preds = %549, %546
  br label %559

559:                                              ; preds = %558, %532
  %560 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %561 = call i32 @fflush(%struct._IO_FILE* noundef %560)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
