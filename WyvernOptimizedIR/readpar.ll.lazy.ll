; ModuleID = './readpar.ll'
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
  %1 = alloca [1024 x i8], align 16
  %2 = alloca [1024 x i8], align 16
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
  %3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %4 = load i8*, i8** @cktName, align 8
  %5 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %3, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %4) #7
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %7 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %6, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7
  %8 = icmp eq %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %11) #7
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %262, %13
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull %15) #7
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %263

18:                                               ; preds = %14
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %19, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 9)
  %20 = icmp eq i32 %bcmp, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double* noundef nonnull @T) #7
  %.not50 = icmp eq i32 %22, 1
  br i1 %.not50, label %28, label %23

23:                                               ; preds = %21
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %27 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %26)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %21
  br label %262

29:                                               ; preds = %18
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp11 = call i32 @bcmp(i8* noundef nonnull dereferenceable(13) %30, i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 13)
  %31 = icmp eq i32 %bcmp11, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double* noundef nonnull @spot_control) #7
  %.not49 = icmp eq i32 %33, 1
  br i1 %.not49, label %39, label %34

34:                                               ; preds = %32
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %36 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %35)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %38 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %37)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %32
  br label %261

40:                                               ; preds = %29
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp12 = call i32 @bcmp(i8* noundef nonnull dereferenceable(15) %41, i8* noundef nonnull dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i64 15)
  %42 = icmp eq i32 %bcmp12, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double* noundef nonnull @core_expansion) #7
  %.not48 = icmp eq i32 %44, 1
  br i1 %.not48, label %50, label %45

45:                                               ; preds = %43
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %47 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %46)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %49 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %48)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %43
  store i32 1, i32* @core_expansion_given, align 4
  br label %260

51:                                               ; preds = %40
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp13 = call i32 @bcmp(i8* noundef nonnull dereferenceable(23) %52, i8* noundef nonnull dereferenceable(23) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 23)
  %53 = icmp eq i32 %bcmp13, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @wire_est_factor) #7
  %.not47 = icmp eq i32 %55, 1
  br i1 %.not47, label %61, label %56

56:                                               ; preds = %54
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %58 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %57)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %60 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %59)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %54
  br label %259

62:                                               ; preds = %51
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp14 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %63, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i64 10)
  %64 = icmp eq i32 %bcmp14, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* @cost_only, align 4
  br label %258

66:                                               ; preds = %62
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp15 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %67, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 12)
  %68 = icmp eq i32 %bcmp15, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @randVar) #7
  %.not46 = icmp eq i32 %70, 1
  br i1 %.not46, label %76, label %71

71:                                               ; preds = %69
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %73 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %72)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %75 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %74)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %69
  br label %257

77:                                               ; preds = %66
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp16 = call i32 @bcmp(i8* noundef nonnull dereferenceable(13) %78, i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i64 13)
  %79 = icmp eq i32 %bcmp16, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @attpercell) #7
  %.not45 = icmp eq i32 %81, 1
  br i1 %.not45, label %87, label %82

82:                                               ; preds = %80
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %84 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %83)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %86 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %85)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %80
  br label %256

88:                                               ; preds = %77
  %89 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp17 = call i32 @bcmp(i8* noundef nonnull dereferenceable(14) %89, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i64 14)
  %90 = icmp eq i32 %bcmp17, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @trackspacing) #7
  %.not44 = icmp eq i32 %92, 1
  br i1 %.not44, label %98, label %93

93:                                               ; preds = %91
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %95 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %94)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %97 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %96)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

98:                                               ; preds = %91
  %99 = load i32, i32* @trackspacing, align 4
  store i32 %99, i32* @pitch, align 4
  br label %255

100:                                              ; preds = %88
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp18 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %101, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i64 12)
  %102 = icmp eq i32 %bcmp18, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @pinSpacing) #7
  %.not43 = icmp eq i32 %104, 1
  br i1 %.not43, label %110, label %105

105:                                              ; preds = %103
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %107 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.24, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %106)
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %109 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %108)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

110:                                              ; preds = %103
  br label %254

111:                                              ; preds = %100
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp19 = call i32 @bcmp(i8* noundef nonnull dereferenceable(18) %112, i8* noundef nonnull dereferenceable(18) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i64 18)
  %113 = icmp eq i32 %bcmp19, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double* noundef nonnull @chipaspect) #7
  %.not42 = icmp eq i32 %115, 1
  br i1 %.not42, label %121, label %116

116:                                              ; preds = %114
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %118 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %117)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %120 = call i64 @fwrite(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0), i64 35, i64 1, %struct._IO_FILE* %119)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

121:                                              ; preds = %114
  br label %253

122:                                              ; preds = %111
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp20 = call i32 @bcmp(i8* noundef nonnull dereferenceable(17) %123, i8* noundef nonnull dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i64 17)
  %124 = icmp eq i32 %bcmp20, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @routerMaxPaths) #7
  %.not41 = icmp eq i32 %126, 1
  br i1 %.not41, label %132, label %127

127:                                              ; preds = %125
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %129 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %128)
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %131 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %130)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

132:                                              ; preds = %125
  br label %252

133:                                              ; preds = %122
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp21 = call i32 @bcmp(i8* noundef nonnull dereferenceable(21) %134, i8* noundef nonnull dereferenceable(21) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0), i64 21)
  %135 = icmp eq i32 %bcmp21, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @routerExtraS) #7
  %.not40 = icmp eq i32 %137, 1
  br i1 %.not40, label %143, label %138

138:                                              ; preds = %136
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %140 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %139)
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %142 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %141)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

143:                                              ; preds = %136
  br label %251

144:                                              ; preds = %133
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp22 = call i32 @bcmp(i8* noundef nonnull dereferenceable(27) %145, i8* noundef nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i64 27)
  %146 = icmp eq i32 %bcmp22, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @defaultTracks) #7
  %.not39 = icmp eq i32 %148, 1
  br i1 %.not39, label %154, label %149

149:                                              ; preds = %147
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %151 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %150)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %153 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %152)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

154:                                              ; preds = %147
  br label %250

155:                                              ; preds = %144
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp23 = call i32 @bcmp(i8* noundef nonnull dereferenceable(21) %156, i8* noundef nonnull dereferenceable(21) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i64 21)
  %157 = icmp eq i32 %bcmp23, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 1, i32* @wireEstimateOnly, align 4
  br label %249

159:                                              ; preds = %155
  %160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp24 = call i32 @bcmp(i8* noundef nonnull dereferenceable(13) %160, i8* noundef nonnull dereferenceable(13) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0), i64 13)
  %161 = icmp eq i32 %bcmp24, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 1, i32* @doPlacement, align 4
  br label %248

163:                                              ; preds = %159
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp25 = call i32 @bcmp(i8* noundef nonnull dereferenceable(17) %164, i8* noundef nonnull dereferenceable(17) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i64 17)
  %165 = icmp eq i32 %bcmp25, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 1, i32* @doChannelGraph, align 4
  br label %247

167:                                              ; preds = %163
  %168 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp26 = call i32 @bcmp(i8* noundef nonnull dereferenceable(16) %168, i8* noundef nonnull dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i64 16)
  %169 = icmp eq i32 %bcmp26, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 1, i32* @doGlobalRoute, align 4
  br label %246

171:                                              ; preds = %167
  %172 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp27 = call i32 @bcmp(i8* noundef nonnull dereferenceable(14) %172, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i64 14)
  %173 = icmp eq i32 %bcmp27, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @doCompaction) #7
  %.not38 = icmp eq i32 %175, 1
  br i1 %.not38, label %181, label %176

176:                                              ; preds = %174
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %178 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %177)
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %180 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %179)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

181:                                              ; preds = %174
  br label %245

182:                                              ; preds = %171
  %183 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp28 = call i32 @bcmp(i8* noundef nonnull dereferenceable(5) %183, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i64 5)
  %184 = icmp eq i32 %bcmp28, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i32* noundef nonnull @blockl, i32* noundef nonnull @blockr, i32* noundef nonnull @blockb, i32* noundef nonnull @blockt) #7
  %.not37 = icmp eq i32 %186, 4
  br i1 %.not37, label %192, label %187

187:                                              ; preds = %185
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %189 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %188)
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %191 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %190)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

192:                                              ; preds = %185
  store i32 1, i32* @coreGiven, align 4
  br label %244

193:                                              ; preds = %182
  %194 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp29 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %194, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i64 12)
  %195 = icmp eq i32 %bcmp29, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %193
  %197 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @gOffsetX) #7
  %.not36 = icmp eq i32 %197, 1
  br i1 %.not36, label %203, label %198

198:                                              ; preds = %196
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %200 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %199)
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %202 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %201)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

203:                                              ; preds = %196
  br label %243

204:                                              ; preds = %193
  %205 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp30 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %205, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i64 12)
  %206 = icmp eq i32 %bcmp30, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @gOffsetY) #7
  %.not35 = icmp eq i32 %208, 1
  br i1 %.not35, label %214, label %209

209:                                              ; preds = %207
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %211 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.47, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %210)
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %213 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %212)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

214:                                              ; preds = %207
  br label %242

215:                                              ; preds = %204
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp31 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %216, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), i64 6)
  %217 = icmp eq i32 %bcmp31, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %215
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @gridX) #7
  %.not34 = icmp eq i32 %219, 1
  br i1 %.not34, label %225, label %220

220:                                              ; preds = %218
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %222 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.49, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %221)
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %224 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %223)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

225:                                              ; preds = %218
  br label %241

226:                                              ; preds = %215
  %227 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %bcmp32 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %227, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i64 6)
  %228 = icmp eq i32 %bcmp32, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef nonnull %7, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* noundef nonnull @gridY) #7
  %.not33 = icmp eq i32 %230, 1
  br i1 %.not33, label %236, label %231

231:                                              ; preds = %229
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %233 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %232)
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %235 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %234)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

236:                                              ; preds = %229
  br label %240

237:                                              ; preds = %226
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %239 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %238)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %225
  br label %242

242:                                              ; preds = %241, %214
  br label %243

243:                                              ; preds = %242, %203
  br label %244

244:                                              ; preds = %243, %192
  br label %245

245:                                              ; preds = %244, %181
  br label %246

246:                                              ; preds = %245, %170
  br label %247

247:                                              ; preds = %246, %166
  br label %248

248:                                              ; preds = %247, %162
  br label %249

249:                                              ; preds = %248, %158
  br label %250

250:                                              ; preds = %249, %154
  br label %251

251:                                              ; preds = %250, %143
  br label %252

252:                                              ; preds = %251, %132
  br label %253

253:                                              ; preds = %252, %121
  br label %254

254:                                              ; preds = %253, %110
  br label %255

255:                                              ; preds = %254, %98
  br label %256

256:                                              ; preds = %255, %87
  br label %257

257:                                              ; preds = %256, %76
  br label %258

258:                                              ; preds = %257, %65
  br label %259

259:                                              ; preds = %258, %61
  br label %260

260:                                              ; preds = %259, %50
  br label %261

261:                                              ; preds = %260, %39
  br label %262

262:                                              ; preds = %261, %28
  br label %14, !llvm.loop !4

263:                                              ; preds = %14
  %264 = load i32, i32* @doPlacement, align 4
  %.not = icmp eq i32 %264, 0
  br i1 %.not, label %349, label %265

265:                                              ; preds = %263
  %266 = load i32, i32* @gridX, align 4
  %267 = icmp sgt i32 %266, -1
  br i1 %267, label %277, label %268

268:                                              ; preds = %265
  %269 = load i32, i32* @gridY, align 4
  %270 = icmp sgt i32 %269, -1
  br i1 %270, label %277, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* @gOffsetX, align 4
  %273 = icmp sgt i32 %272, -1
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* @gOffsetY, align 4
  %276 = icmp sgt i32 %275, -1
  br i1 %276, label %277, label %296

277:                                              ; preds = %274, %271, %268, %265
  %278 = load i32, i32* @gridX, align 4
  %279 = icmp sgt i32 %278, -1
  br i1 %279, label %280, label %289

280:                                              ; preds = %277
  %281 = load i32, i32* @gridY, align 4
  %282 = icmp sgt i32 %281, -1
  br i1 %282, label %283, label %289

283:                                              ; preds = %280
  %284 = load i32, i32* @gOffsetX, align 4
  %285 = icmp sgt i32 %284, -1
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i32, i32* @gOffsetY, align 4
  %288 = icmp sgt i32 %287, -1
  br i1 %288, label %294, label %289

289:                                              ; preds = %286, %283, %280, %277
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %291 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.53, i64 0, i64 0), i64 40, i64 1, %struct._IO_FILE* %290)
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %293 = call i64 @fwrite(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %292)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

294:                                              ; preds = %286
  store i32 1, i32* @gridGiven, align 4
  br label %295

295:                                              ; preds = %294
  br label %296

296:                                              ; preds = %295, %274
  %297 = load i32, i32* @attpercell, align 4
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %301 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.55, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %300)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

302:                                              ; preds = %296
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %304 = load i32, i32* @attpercell, align 4
  %305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %303, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.56, i64 0, i64 0), i32 noundef %304) #7
  br label %306

306:                                              ; preds = %302
  %307 = load i32, i32* @trackspacing, align 4
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %311 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %310)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

312:                                              ; preds = %306
  %313 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %314 = load i32, i32* @trackspacing, align 4
  %315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %313, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0), i32 noundef %314) #7
  br label %316

316:                                              ; preds = %312
  %317 = load i32, i32* @pinSpacing, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %321 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.59, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %320)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

322:                                              ; preds = %316
  %323 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %324 = load i32, i32* @pinSpacing, align 4
  %325 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %323, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), i32 noundef %324) #7
  br label %326

326:                                              ; preds = %322
  %327 = load double, double* @chipaspect, align 8
  %328 = fcmp olt double %327, 0.000000e+00
  br i1 %328, label %329, label %334

329:                                              ; preds = %326
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %331 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %330)
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %333 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %332)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

334:                                              ; preds = %326
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %336 = load double, double* @chipaspect, align 8
  %337 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %335, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i64 0, i64 0), double noundef %336) #7
  br label %338

338:                                              ; preds = %334
  %339 = load double, double* @spot_control, align 8
  %340 = fcmp olt double %339, 0.000000e+00
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %343 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.64, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %342)
  store double 1.000000e+00, double* @spot_control, align 8
  br label %348

344:                                              ; preds = %338
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %346 = load double, double* @spot_control, align 8
  %347 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %345, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.65, i64 0, i64 0), double noundef %346) #7
  br label %348

348:                                              ; preds = %344, %341
  br label %349

349:                                              ; preds = %348, %263
  %350 = load i32, i32* @doPlacement, align 4
  %.not1 = icmp eq i32 %350, 0
  br i1 %.not1, label %357, label %351

351:                                              ; preds = %349
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %353 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %352)
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %355 = load i8*, i8** @cktName, align 8
  %356 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %354, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0), i8* noundef %355) #7
  br label %357

357:                                              ; preds = %351, %349
  %358 = load i32, i32* @doChannelGraph, align 4
  %.not2 = icmp eq i32 %358, 0
  br i1 %.not2, label %373, label %359

359:                                              ; preds = %357
  %360 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %361 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.68, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %360)
  %362 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %363 = load i8*, i8** @cktName, align 8
  %364 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %362, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.69, i64 0, i64 0), i8* noundef %363) #7
  %365 = load i32, i32* @doPlacement, align 4
  %.not10 = icmp eq i32 %365, 0
  br i1 %.not10, label %366, label %372

366:                                              ; preds = %359
  %367 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %368 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %367)
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %370 = load i8*, i8** @cktName, align 8
  %371 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %369, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.71, i64 0, i64 0), i8* noundef %370, i8* noundef %370) #7
  br label %372

372:                                              ; preds = %366, %359
  br label %373

373:                                              ; preds = %372, %357
  %374 = load i32, i32* @doGlobalRoute, align 4
  %.not3 = icmp eq i32 %374, 0
  br i1 %.not3, label %443, label %375

375:                                              ; preds = %373
  %376 = load i32, i32* @routerMaxPaths, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %380 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.72, i64 0, i64 0), i64 46, i64 1, %struct._IO_FILE* %379)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

381:                                              ; preds = %375
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %383 = load i32, i32* @routerMaxPaths, align 4
  %384 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %382, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i64 0, i64 0), i32 noundef %383) #7
  br label %385

385:                                              ; preds = %381
  %386 = load i32, i32* @routerMaxPaths, align 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %385
  %389 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %390 = call i64 @fwrite(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.74, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %389)
  store i32 1, i32* @routerMaxPaths, align 4
  br label %392

391:                                              ; preds = %385
  br label %392

392:                                              ; preds = %391, %388
  %storemerge = phi i32 [ 0, %391 ], [ 1, %388 ]
  store i32 %storemerge, i32* @bareFlag, align 4
  %393 = load i32, i32* @routerExtraS, align 4
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %392
  %396 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %397 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.75, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %396)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

398:                                              ; preds = %392
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %400 = load i32, i32* @routerExtraS, align 4
  %401 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %399, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i64 0, i64 0), i32 noundef %400) #7
  br label %402

402:                                              ; preds = %398
  %403 = load i32, i32* @doChannelGraph, align 4
  %.not8 = icmp eq i32 %403, 0
  br i1 %.not8, label %427, label %404

404:                                              ; preds = %402
  %405 = load i32, i32* @trackspacing, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %404
  %408 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %409 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.57, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %408)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

410:                                              ; preds = %404
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %412 = load i32, i32* @trackspacing, align 4
  %413 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %411, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0), i32 noundef %412) #7
  br label %414

414:                                              ; preds = %410
  %415 = load i32, i32* @defaultTracks, align 4
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %414
  %418 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %419 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %418)
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %421 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.78, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %420)
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

422:                                              ; preds = %414
  %423 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %424 = load i32, i32* @defaultTracks, align 4
  %425 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %423, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i64 0, i64 0), i32 noundef %424) #7
  br label %426

426:                                              ; preds = %422
  br label %427

427:                                              ; preds = %426, %402
  %428 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %429 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %428)
  %430 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %431 = load i8*, i8** @cktName, align 8
  %432 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %430, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.80, i64 0, i64 0), i8* noundef %431) #7
  %433 = load i32, i32* @doChannelGraph, align 4
  %.not9 = icmp eq i32 %433, 0
  br i1 %.not9, label %434, label %442

434:                                              ; preds = %427
  %435 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %436 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.70, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %435)
  %437 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %438 = load i8*, i8** @cktName, align 8
  %439 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %437, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i64 0, i64 0), i8* noundef %438, i8* noundef %438) #7
  %440 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %441 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %440)
  br label %442

442:                                              ; preds = %434, %427
  br label %443

443:                                              ; preds = %442, %373
  %444 = load i32, i32* @doCompaction, align 4
  %.not4 = icmp eq i32 %444, 0
  br i1 %.not4, label %466, label %445

445:                                              ; preds = %443
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %447 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %446)
  %448 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %449 = load i8*, i8** @cktName, align 8
  %450 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %448, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.83, i64 0, i64 0), i8* noundef %449) #7
  %451 = load i32, i32* @doPlacement, align 4
  %.not5 = icmp eq i32 %451, 0
  br i1 %.not5, label %456, label %452

452:                                              ; preds = %445
  %453 = load i32, i32* @doChannelGraph, align 4
  %.not6 = icmp eq i32 %453, 0
  br i1 %.not6, label %456, label %454

454:                                              ; preds = %452
  %455 = load i32, i32* @doGlobalRoute, align 4
  %.not7 = icmp eq i32 %455, 0
  br i1 %.not7, label %456, label %465

456:                                              ; preds = %454, %452, %445
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %458 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.84, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %457)
  %459 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %460 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %459)
  %461 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %462 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.86, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %461)
  %463 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %464 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %463)
  store i32 0, i32* @doCompaction, align 4
  br label %465

465:                                              ; preds = %456, %454
  br label %466

466:                                              ; preds = %465, %443
  %467 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %468 = call i32 @fflush(%struct._IO_FILE* noundef %467) #7
  ret void

UnifiedUnreachableBlock:                          ; preds = %417, %407, %395, %378, %329, %319, %309, %299, %289, %237, %231, %220, %209, %198, %187, %176, %149, %138, %127, %116, %105, %93, %82, %71, %56, %45, %34, %23, %9
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
