; ModuleID = './CoMD.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/CoMD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.CommandSt = type { [1024 x i8], [1024 x i8], [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double }
%struct.SimFlatSt = type { i32, i32, double, %struct.DomainSt*, %struct.LinkCellSt*, %struct.AtomsSt*, %struct.SpeciesDataSt*, double, double, %struct.BasePotentialSt*, %struct.HaloExchangeSt* }
%struct.DomainSt = type { [3 x i32], [3 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }
%struct.LinkCellSt = type { [3 x i32], i32, i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], i32* }
%struct.AtomsSt = type { i32, i32, i32*, i32*, [3 x double]*, [3 x double]*, [3 x double]*, double* }
%struct.SpeciesDataSt = type { [3 x i8], i32, double }
%struct.BasePotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, i32 (%struct.SimFlatSt*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt*)*, void (%struct.BasePotentialSt**)* }
%struct.HaloExchangeSt = type { [6 x i32], i32, i32 (i8*, i8*, i32, i8*)*, void (i8*, i8*, i32, i32, i8*)*, void (i8*)*, i8* }
%struct.ValidateSt = type { double, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Starting Initialization\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Initialization Finished\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Starting simulation\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Ending simulation\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"CoMD Ending\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pot\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/CoMD.c\00", align 1
@__PRETTY_FUNCTION__.initPotential = private unnamed_addr constant [76 x i8] c"BasePotential *initPotential(int, const char *, const char *, const char *)\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"\0ANumber of MPI ranks must match xproc * yproc * zproc\0A\00", align 1
@.str.8 = private unnamed_addr constant [135 x i8] c"\0ASimulation too small.\0A  Increase the number of unit cells to make the simulation\0A  at least (%3.2f, %3.2f. %3.2f) Ansgstroms in size\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"FCC\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"\0AOnly FCC Lattice type supported, not %s. Fatal Error.\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"checkCode == failCode\00", align 1
@__PRETTY_FUNCTION__.sanityChecks = private unnamed_addr constant [51 x i8] c"void sanityChecks(Command, double, double, char *)\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Initial energy : %14.12f, atom count : %d \0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Simulation Validation:\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"  Initial energy  : %14.12f\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"  Final energy    : %14.12f\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"  eFinal/eInitial : %f\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"  Final atom count : %d, no atoms lost\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"#############################\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"# WARNING: %6d atoms lost #\0A\00", align 1
@printThings.iStepPrev = internal global i32 -1, align 4
@printThings.firstCall = internal global i32 1, align 4
@.str.21 = private unnamed_addr constant [216 x i8] c"#                                                                                         Performance\0A#  Loop   Time(fs)       Total Energy   Potential Energy     Kinetic Energy  Temperature   (us/atom)     # Atoms\0A\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c" %6d %10.2f %18.12f %18.12f %18.12f %12.4f %10.4f %12d\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Simulation data: \0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"  Total atoms        : %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"  Min global bounds  : [ %14.10f, %14.10f, %14.10f ]\0A\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"  Max global bounds  : [ %14.10f, %14.10f, %14.10f ]\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Decomposition data: \0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"  Processors         : %6d,%6d,%6d\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"  Local boxes        : %6d,%6d,%6d = %8d\0A\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"  Box size           : [ %14.10f, %14.10f, %14.10f ]\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"  Box factor         : [ %14.10f, %14.10f, %14.10f ] \0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"  Max Link Cell Occupancy: %d of %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Potential data: \0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"Memory data: \0A\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"  Intrinsic atom footprint = %4d B/atom \0A\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"  Total atom footprint     = %7.3f MB (%6.2f MB/node)\0A\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"  Link cell atom footprint = %7.3f MB/node\0A\00", align 1
@.str.38 = private unnamed_addr constant [70 x i8] c"  Link cell atom footprint = %7.3f MB/node (including halo cell data\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.CommandSt, align 8
  %6 = alloca %struct.SimFlatSt*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  call void @initParallel(i32* noundef nonnull %3, i8*** noundef nonnull %4) #7
  call void @profileStart(i32 noundef 0) #7
  call void @timestampBarrier(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0)) #7
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @yamlAppInfo(%struct._IO_FILE* noundef %7) #7
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  call void @parseCommandLine(%struct.CommandSt* nonnull sret(%struct.CommandSt) align 8 %5, i32 noundef %8, i8** noundef %9) #7
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @printCmdYaml(%struct._IO_FILE* noundef %10, %struct.CommandSt* noundef nonnull %5) #7
  %11 = call %struct.SimFlatSt* @initSimulation(%struct.CommandSt* noundef nonnull byval(%struct.CommandSt) align 8 %5)
  store %struct.SimFlatSt* %11, %struct.SimFlatSt** %6, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @printSimulationDataYaml(%struct._IO_FILE* noundef %12, %struct.SimFlatSt* noundef %11)
  %13 = load %struct.SimFlatSt*, %struct.SimFlatSt** %6, align 8
  %14 = call %struct.ValidateSt* @initValidate(%struct.SimFlatSt* noundef %13)
  call void @timestampBarrier(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)) #7
  call void @timestampBarrier(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #7
  %15 = load %struct.SimFlatSt*, %struct.SimFlatSt** %6, align 8
  %16 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %15, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %15, i64 0, i32 1
  %19 = load i32, i32* %18, align 4
  call void @profileStart(i32 noundef 1) #7
  br label %20

20:                                               ; preds = %37, %2
  %.0 = phi i32 [ 0, %2 ], [ %38, %37 ]
  %21 = icmp slt i32 %.0, %17
  br i1 %21, label %22, label %39

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22
  call void @profileStart(i32 noundef 10) #7
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.SimFlatSt*, %struct.SimFlatSt** %6, align 8
  call void @sumAtoms(%struct.SimFlatSt* noundef %25)
  br label %26

26:                                               ; preds = %24
  call void @profileStop(i32 noundef 10) #7
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.SimFlatSt*, %struct.SimFlatSt** %6, align 8
  %29 = call double @getElapsedTime(i32 noundef 2) #7
  call void @printThings(%struct.SimFlatSt* noundef %28, i32 noundef %.0, double noundef %29)
  br label %30

30:                                               ; preds = %27
  call void @profileStart(i32 noundef 2) #7
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.SimFlatSt*, %struct.SimFlatSt** %6, align 8
  %33 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %32, i64 0, i32 2
  %34 = load double, double* %33, align 8
  %35 = call double @timestep(%struct.SimFlatSt* noundef %32, i32 noundef %19, double noundef %34) #7
  br label %36

36:                                               ; preds = %31
  call void @profileStop(i32 noundef 2) #7
  br label %37

37:                                               ; preds = %36
  %38 = add nsw i32 %.0, %19
  br label %20, !llvm.loop !4

39:                                               ; preds = %20
  call void @profileStop(i32 noundef 1) #7
  %40 = load %struct.SimFlatSt*, %struct.SimFlatSt** %6, align 8
  call void @sumAtoms(%struct.SimFlatSt* noundef %40)
  %41 = load %struct.SimFlatSt*, %struct.SimFlatSt** %6, align 8
  %42 = call double @getElapsedTime(i32 noundef 2) #7
  call void @printThings(%struct.SimFlatSt* noundef %41, i32 noundef %.0, double noundef %42)
  call void @timestampBarrier(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)) #7
  %43 = load %struct.SimFlatSt*, %struct.SimFlatSt** %6, align 8
  call void @validateResult(%struct.ValidateSt* noundef %14, %struct.SimFlatSt* noundef %43)
  call void @profileStop(i32 noundef 0) #7
  call void @destroySimulation(%struct.SimFlatSt** noundef nonnull %6)
  %44 = bitcast %struct.ValidateSt* %14 to i8*
  call void @comdFree(i8* noundef %44)
  call void @timestampBarrier(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)) #7
  call void @destroyParallel() #7
  ret i32 0
}

declare dso_local void @initParallel(i32* noundef, i8*** noundef) #1

declare dso_local void @profileStart(i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @initSubsystems() #2 {
  ret void
}

declare dso_local void @timestampBarrier(i8* noundef) #1

declare dso_local void @yamlAppInfo(%struct._IO_FILE* noundef) #1

declare dso_local void @parseCommandLine(%struct.CommandSt* sret(%struct.CommandSt) align 8, i32 noundef, i8** noundef) #1

declare dso_local void @printCmdYaml(%struct._IO_FILE* noundef, %struct.CommandSt* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.SimFlatSt* @initSimulation(%struct.CommandSt* noundef byval(%struct.CommandSt) align 8 %0) #0 {
  %2 = alloca [3 x double], align 16
  %3 = call i8* @comdMalloc(i64 noundef 80)
  %4 = bitcast i8* %3 to %struct.SimFlatSt*
  %5 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 10
  %6 = load i32, i32* %5, align 4
  %7 = bitcast i8* %3 to i32*
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 11
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds i8, i8* %3, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 %9, i32* %11, align 4
  %12 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 12
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds i8, i8* %3, i64 8
  %15 = bitcast i8* %14 to double*
  store double %13, double* %15, align 8
  %16 = getelementptr inbounds i8, i8* %3, i64 16
  %17 = bitcast i8* %16 to %struct.DomainSt**
  store %struct.DomainSt* null, %struct.DomainSt** %17, align 8
  %18 = getelementptr inbounds i8, i8* %3, i64 24
  %19 = bitcast i8* %18 to %struct.LinkCellSt**
  store %struct.LinkCellSt* null, %struct.LinkCellSt** %19, align 8
  %20 = getelementptr inbounds i8, i8* %3, i64 32
  %21 = bitcast i8* %20 to %struct.AtomsSt**
  store %struct.AtomsSt* null, %struct.AtomsSt** %21, align 8
  %22 = getelementptr inbounds i8, i8* %3, i64 48
  %23 = bitcast i8* %22 to double*
  store double 0.000000e+00, double* %23, align 8
  %24 = getelementptr inbounds i8, i8* %3, i64 56
  %25 = bitcast i8* %24 to double*
  store double 0.000000e+00, double* %25, align 8
  %26 = getelementptr inbounds i8, i8* %3, i64 72
  %27 = bitcast i8* %26 to %struct.HaloExchangeSt**
  store %struct.HaloExchangeSt* null, %struct.HaloExchangeSt** %27, align 8
  %28 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 0, i64 0
  %31 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 1, i64 0
  %32 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 2, i64 0
  %33 = call %struct.BasePotentialSt* @initPotential(i32 noundef %29, i8* noundef nonnull %30, i8* noundef nonnull %31, i8* noundef nonnull %32)
  %34 = getelementptr inbounds i8, i8* %3, i64 64
  %35 = bitcast i8* %34 to %struct.BasePotentialSt**
  store %struct.BasePotentialSt* %33, %struct.BasePotentialSt** %35, align 8
  %36 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 13
  %37 = load double, double* %36, align 8
  %38 = fcmp olt double %37, 0.000000e+00
  br i1 %38, label %39, label %45

39:                                               ; preds = %1
  %40 = getelementptr inbounds i8, i8* %3, i64 64
  %41 = bitcast i8* %40 to %struct.BasePotentialSt**
  %42 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %41, align 8
  %43 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %42, i64 0, i32 2
  %44 = load double, double* %43, align 8
  br label %45

45:                                               ; preds = %39, %1
  %.0 = phi double [ %44, %39 ], [ %37, %1 ]
  %46 = getelementptr inbounds i8, i8* %3, i64 64
  %47 = bitcast i8* %46 to %struct.BasePotentialSt**
  %48 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %47, align 8
  %49 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %48, i64 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %48, i64 0, i32 3, i64 0
  call void @sanityChecks(%struct.CommandSt* noundef nonnull byval(%struct.CommandSt) align 8 %0, double noundef %50, double noundef %.0, i8* noundef nonnull %51)
  %52 = getelementptr inbounds i8, i8* %3, i64 64
  %53 = bitcast i8* %52 to %struct.BasePotentialSt**
  %54 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %53, align 8
  %55 = call %struct.SpeciesDataSt* @initSpecies(%struct.BasePotentialSt* noundef %54)
  %56 = getelementptr inbounds i8, i8* %3, i64 40
  %57 = bitcast i8* %56 to %struct.SpeciesDataSt**
  store %struct.SpeciesDataSt* %55, %struct.SpeciesDataSt** %57, align 8
  %58 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to double
  %61 = fmul double %.0, %60
  %62 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 0, i64 0
  store double %61, double* %62, align 16
  %63 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = sitofp i32 %64 to double
  %66 = fmul double %.0, %65
  %67 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 0, i64 1
  store double %66, double* %67, align 8
  %68 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = sitofp i32 %69 to double
  %71 = fmul double %.0, %70
  %72 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 0, i64 2
  store double %71, double* %72, align 16
  %73 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 9
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 0, i64 0
  %80 = call %struct.DomainSt* @initDecomposition(i32 noundef %74, i32 noundef %76, i32 noundef %78, double* noundef nonnull %79) #7
  %81 = getelementptr inbounds i8, i8* %3, i64 16
  %82 = bitcast i8* %81 to %struct.DomainSt**
  store %struct.DomainSt* %80, %struct.DomainSt** %82, align 8
  %83 = getelementptr inbounds i8, i8* %3, i64 64
  %84 = bitcast i8* %83 to %struct.BasePotentialSt**
  %85 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %84, align 8
  %86 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %85, i64 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = call %struct.LinkCellSt* @initLinkCells(%struct.DomainSt* noundef %80, double noundef %87) #7
  %89 = getelementptr inbounds i8, i8* %3, i64 24
  %90 = bitcast i8* %89 to %struct.LinkCellSt**
  store %struct.LinkCellSt* %88, %struct.LinkCellSt** %90, align 8
  %91 = call %struct.AtomsSt* @initAtoms(%struct.LinkCellSt* noundef %88) #7
  %92 = getelementptr inbounds i8, i8* %3, i64 32
  %93 = bitcast i8* %92 to %struct.AtomsSt**
  store %struct.AtomsSt* %91, %struct.AtomsSt** %93, align 8
  %94 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 6
  %99 = load i32, i32* %98, align 4
  call void @createFccLattice(i32 noundef %95, i32 noundef %97, i32 noundef %99, double noundef %.0, %struct.SimFlatSt* noundef %4) #7
  %100 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 14
  %101 = load double, double* %100, align 8
  call void @setTemperature(%struct.SimFlatSt* noundef %4, double noundef %101) #7
  %102 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 15
  %103 = load double, double* %102, align 8
  call void @randomDisplacements(%struct.SimFlatSt* noundef %4, double noundef %103) #7
  %104 = getelementptr inbounds i8, i8* %3, i64 16
  %105 = bitcast i8* %104 to %struct.DomainSt**
  %106 = load %struct.DomainSt*, %struct.DomainSt** %105, align 8
  %107 = getelementptr inbounds i8, i8* %3, i64 24
  %108 = bitcast i8* %107 to %struct.LinkCellSt**
  %109 = load %struct.LinkCellSt*, %struct.LinkCellSt** %108, align 8
  %110 = call %struct.HaloExchangeSt* @initAtomHaloExchange(%struct.DomainSt* noundef %106, %struct.LinkCellSt* noundef %109) #7
  %111 = getelementptr inbounds i8, i8* %3, i64 72
  %112 = bitcast i8* %111 to %struct.HaloExchangeSt**
  store %struct.HaloExchangeSt* %110, %struct.HaloExchangeSt** %112, align 8
  br label %113

113:                                              ; preds = %45
  call void @profileStart(i32 noundef 5) #7
  br label %114

114:                                              ; preds = %113
  call void @redistributeAtoms(%struct.SimFlatSt* noundef %4) #7
  br label %115

115:                                              ; preds = %114
  call void @profileStop(i32 noundef 5) #7
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  call void @profileStart(i32 noundef 7) #7
  br label %118

118:                                              ; preds = %117
  call void @computeForce(%struct.SimFlatSt* noundef %4) #7
  br label %119

119:                                              ; preds = %118
  call void @profileStop(i32 noundef 7) #7
  br label %120

120:                                              ; preds = %119
  call void @kineticEnergy(%struct.SimFlatSt* noundef %4) #7
  ret %struct.SimFlatSt* %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @printSimulationDataYaml(%struct._IO_FILE* noundef %0, %struct.SimFlatSt* noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %4 = load %struct.LinkCellSt*, %struct.LinkCellSt** %3, align 8
  %5 = call i32 @maxOccupancy(%struct.LinkCellSt* noundef %4) #7
  %6 = call i32 @printRank() #7
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %8

7:                                                ; preds = %2
  br label %166

8:                                                ; preds = %2
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %0)
  %10 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 5
  %11 = load %struct.AtomsSt*, %struct.AtomsSt** %10, align 8
  %12 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %11, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 noundef %13) #7
  %15 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 3
  %16 = load %struct.DomainSt*, %struct.DomainSt** %15, align 8
  %17 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %16, i64 0, i32 2, i64 0
  %18 = load double, double* %17, align 8
  %19 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %16, i64 0, i32 2, i64 1
  %20 = load double, double* %19, align 8
  %21 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %16, i64 0, i32 2, i64 2
  %22 = load double, double* %21, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i64 0, i64 0), double noundef %18, double noundef %20, double noundef %22) #7
  %24 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 3
  %25 = load %struct.DomainSt*, %struct.DomainSt** %24, align 8
  %26 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %25, i64 0, i32 3, i64 0
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %25, i64 0, i32 3, i64 1
  %29 = load double, double* %28, align 8
  %30 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %25, i64 0, i32 3, i64 2
  %31 = load double, double* %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0), double noundef %27, double noundef %29, double noundef %31) #7
  call void @printSeparator(%struct._IO_FILE* noundef %0) #7
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %0)
  %34 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 3
  %35 = load %struct.DomainSt*, %struct.DomainSt** %34, align 8
  %36 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %35, i64 0, i32 0, i64 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %35, i64 0, i32 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %35, i64 0, i32 0, i64 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i32 noundef %37, i32 noundef %39, i32 noundef %41) #7
  %43 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %44 = load %struct.LinkCellSt*, %struct.LinkCellSt** %43, align 8
  %45 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %44, i64 0, i32 0, i64 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %44, i64 0, i32 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %44, i64 0, i32 0, i64 2
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %52 = load %struct.LinkCellSt*, %struct.LinkCellSt** %51, align 8
  %53 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %52, i64 0, i32 0, i64 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %52, i64 0, i32 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %54, %56
  %58 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %59 = load %struct.LinkCellSt*, %struct.LinkCellSt** %58, align 8
  %60 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %59, i64 0, i32 0, i64 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %57, %61
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0), i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %62) #7
  %64 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %65 = load %struct.LinkCellSt*, %struct.LinkCellSt** %64, align 8
  %66 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %65, i64 0, i32 6, i64 0
  %67 = load double, double* %66, align 8
  %68 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %65, i64 0, i32 6, i64 1
  %69 = load double, double* %68, align 8
  %70 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %65, i64 0, i32 6, i64 2
  %71 = load double, double* %70, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i64 0, i64 0), double noundef %67, double noundef %69, double noundef %71) #7
  %73 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %74 = load %struct.LinkCellSt*, %struct.LinkCellSt** %73, align 8
  %75 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %74, i64 0, i32 6, i64 0
  %76 = load double, double* %75, align 8
  %77 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 9
  %78 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %77, align 8
  %79 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %78, i64 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = fdiv double %76, %80
  %82 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %83 = load %struct.LinkCellSt*, %struct.LinkCellSt** %82, align 8
  %84 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %83, i64 0, i32 6, i64 1
  %85 = load double, double* %84, align 8
  %86 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 9
  %87 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %86, align 8
  %88 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %87, i64 0, i32 0
  %89 = load double, double* %88, align 8
  %90 = fdiv double %85, %89
  %91 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %92 = load %struct.LinkCellSt*, %struct.LinkCellSt** %91, align 8
  %93 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %92, i64 0, i32 6, i64 2
  %94 = load double, double* %93, align 8
  %95 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 9
  %96 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %95, align 8
  %97 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %96, i64 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = fdiv double %94, %98
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0), double noundef %81, double noundef %90, double noundef %99) #7
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0), i32 noundef %5, i32 noundef 64) #7
  call void @printSeparator(%struct._IO_FILE* noundef %0) #7
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %0)
  %103 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 9
  %104 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %103, align 8
  %105 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %104, i64 0, i32 7
  %106 = load void (%struct._IO_FILE*, %struct.BasePotentialSt*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt*)** %105, align 8
  call void %106(%struct._IO_FILE* noundef %0, %struct.BasePotentialSt* noundef %104) #7
  %107 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 5
  %108 = load %struct.AtomsSt*, %struct.AtomsSt** %107, align 8
  %109 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %108, i64 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %110, 88
  %112 = sitofp i32 %111 to float
  %113 = fmul float %112, 0x3F50000000000000
  %114 = fmul float %113, 0x3F50000000000000
  %115 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 5
  %116 = load %struct.AtomsSt*, %struct.AtomsSt** %115, align 8
  %117 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %116, i64 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 88
  %120 = sitofp i32 %119 to float
  %121 = fmul float %120, 0x3F50000000000000
  %122 = fmul float %121, 0x3F50000000000000
  %123 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %124 = load %struct.LinkCellSt*, %struct.LinkCellSt** %123, align 8
  %125 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %124, i64 0, i32 0, i64 0
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %124, i64 0, i32 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %126, %128
  %130 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %131 = load %struct.LinkCellSt*, %struct.LinkCellSt** %130, align 8
  %132 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %131, i64 0, i32 0, i64 2
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 %129, %133
  %135 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %131, i64 0, i32 0, i64 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 2
  %138 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 4
  %139 = load %struct.LinkCellSt*, %struct.LinkCellSt** %138, align 8
  %140 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %139, i64 0, i32 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 2
  %143 = mul nsw i32 %137, %142
  %144 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %139, i64 0, i32 0, i64 2
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 2
  %147 = mul nsw i32 %143, %146
  %148 = sitofp i32 %134 to float
  %149 = fmul float %148, 5.632000e+03
  %150 = fmul float %149, 0x3F50000000000000
  %151 = fmul float %150, 0x3F50000000000000
  %152 = sitofp i32 %147 to float
  %153 = fmul float %152, 5.632000e+03
  %154 = fmul float %153, 0x3F50000000000000
  %155 = fmul float %154, 0x3F50000000000000
  call void @printSeparator(%struct._IO_FILE* noundef %0) #7
  %156 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %0)
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i64 0, i64 0), i32 noundef 88) #7
  %158 = fpext float %122 to double
  %159 = fpext float %114 to double
  %160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i64 0, i64 0), double noundef %158, double noundef %159) #7
  %161 = fpext float %151 to double
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i64 0, i64 0), double noundef %161) #7
  %163 = fpext float %155 to double
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.38, i64 0, i64 0), double noundef %163) #7
  %165 = call i32 @fflush(%struct._IO_FILE* noundef %0) #7
  br label %166

166:                                              ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal noalias %struct.ValidateSt* @initValidate(%struct.SimFlatSt* nocapture noundef readonly %0) #0 {
  call void @sumAtoms(%struct.SimFlatSt* noundef %0)
  %2 = call i8* @comdMalloc(i64 noundef 16)
  %3 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 7
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 8
  %6 = load double, double* %5, align 8
  %7 = fadd double %4, %6
  %8 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %9 = load %struct.AtomsSt*, %struct.AtomsSt** %8, align 8
  %10 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %9, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 8
  %15 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %16 = load %struct.AtomsSt*, %struct.AtomsSt** %15, align 8
  %17 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %16, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds i8, i8* %2, i64 8
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 8
  %21 = call i32 @printRank() #7
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %33, label %22

22:                                               ; preds = %1
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @printSeparator(%struct._IO_FILE* noundef %24) #7
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = bitcast i8* %2 to double*
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds i8, i8* %2, i64 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), double noundef %27, i32 noundef %30) #7
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %fputc1 = call i32 @fputc(i32 10, %struct._IO_FILE* %32)
  br label %33

33:                                               ; preds = %22, %1
  %34 = bitcast i8* %2 to %struct.ValidateSt*
  ret %struct.ValidateSt* %34
}

; Function Attrs: noinline nounwind uwtable
define internal void @sumAtoms(%struct.SimFlatSt* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %3 = load %struct.AtomsSt*, %struct.AtomsSt** %2, align 8
  %4 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %3, i64 0, i32 0
  store i32 0, i32* %4, align 8
  br label %5

5:                                                ; preds = %24, %1
  %.0 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %6 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %7 = load %struct.LinkCellSt*, %struct.LinkCellSt** %6, align 8
  %8 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %7, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %.0, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 4
  %13 = load %struct.LinkCellSt*, %struct.LinkCellSt** %12, align 8
  %14 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %13, i64 0, i32 8
  %15 = load i32*, i32** %14, align 8
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %20 = load %struct.AtomsSt*, %struct.AtomsSt** %19, align 8
  %21 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %20, i64 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, %18
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %11
  %25 = add nuw nsw i32 %.0, 1
  br label %5, !llvm.loop !6

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26
  call void @profileStart(i32 noundef 10) #7
  br label %28

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %30 = load %struct.AtomsSt*, %struct.AtomsSt** %29, align 8
  %31 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %30, i64 0, i32 0
  %32 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %30, i64 0, i32 1
  call void @addIntParallel(i32* noundef %31, i32* noundef nonnull %32, i32 noundef 1) #7
  br label %33

33:                                               ; preds = %28
  call void @profileStop(i32 noundef 10) #7
  br label %34

34:                                               ; preds = %33
  ret void
}

declare dso_local void @profileStop(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @printThings(%struct.SimFlatSt* nocapture noundef readonly %0, i32 noundef %1, double noundef %2) #0 {
  store i32 %1, i32* @printThings.iStepPrev, align 4
  %4 = call i32 @printRank() #7
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %3
  br label %60

6:                                                ; preds = %3
  %7 = load i32, i32* @printThings.firstCall, align 4
  %.not1 = icmp eq i32 %7, 0
  br i1 %.not1, label %13, label %8

8:                                                ; preds = %6
  store i32 0, i32* @printThings.firstCall, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.21, i64 0, i64 0), i64 215, i64 1, %struct._IO_FILE* %9)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %12 = call i32 @fflush(%struct._IO_FILE* noundef %11) #7
  br label %13

13:                                               ; preds = %8, %6
  %14 = sitofp i32 %1 to double
  %15 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 2
  %16 = load double, double* %15, align 8
  %17 = fmul double %16, %14
  %18 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 7
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 8
  %21 = load double, double* %20, align 8
  %22 = fadd double %19, %21
  %23 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %24 = load %struct.AtomsSt*, %struct.AtomsSt** %23, align 8
  %25 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %24, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %22, %27
  %29 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 8
  %30 = load double, double* %29, align 8
  %31 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %32 = load %struct.AtomsSt*, %struct.AtomsSt** %31, align 8
  %33 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %32, i64 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double %30, %35
  %37 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 7
  %38 = load double, double* %37, align 8
  %39 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %40 = load %struct.AtomsSt*, %struct.AtomsSt** %39, align 8
  %41 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %40, i64 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %38, %43
  %45 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 8
  %46 = load double, double* %45, align 8
  %47 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %48 = load %struct.AtomsSt*, %struct.AtomsSt** %47, align 8
  %49 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %48, i64 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sitofp i32 %50 to double
  %52 = fdiv double %46, %51
  %53 = fdiv double %52, 0x3F20F13ED339F07F
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %55 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %0, i64 0, i32 5
  %56 = load %struct.AtomsSt*, %struct.AtomsSt** %55, align 8
  %57 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %56, i64 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i64 0, i64 0), i32 noundef %1, double noundef %17, double noundef %28, double noundef %44, double noundef %36, double noundef %53, double noundef 0.000000e+00, i32 noundef %58) #7
  br label %60

60:                                               ; preds = %13, %5
  ret void
}

declare dso_local double @getElapsedTime(i32 noundef) #1

declare dso_local double @timestep(%struct.SimFlatSt* noundef, i32 noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @validateResult(%struct.ValidateSt* nocapture noundef readonly %0, %struct.SimFlatSt* nocapture noundef readonly %1) #0 {
  %3 = call i32 @printRank() #7
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %50, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 7
  %6 = load double, double* %5, align 8
  %7 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 8
  %8 = load double, double* %7, align 8
  %9 = fadd double %6, %8
  %10 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 5
  %11 = load %struct.AtomsSt*, %struct.AtomsSt** %10, align 8
  %12 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %11, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sitofp i32 %13 to double
  %15 = fdiv double %9, %14
  %16 = getelementptr inbounds %struct.ValidateSt, %struct.ValidateSt* %0, i64 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %13, %17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %fputc1 = call i32 @fputc(i32 10, %struct._IO_FILE* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = getelementptr inbounds %struct.ValidateSt, %struct.ValidateSt* %0, i64 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), double noundef %25) #7
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), double noundef %15) #7
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = getelementptr inbounds %struct.ValidateSt, %struct.ValidateSt* %0, i64 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = fdiv double %15, %31
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), double noundef %32) #7
  %34 = icmp eq i32 %18, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %1, i64 0, i32 5
  %38 = load %struct.AtomsSt*, %struct.AtomsSt** %37, align 8
  %39 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %38, i64 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i32 noundef %40) #7
  br label %49

42:                                               ; preds = %4
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %43)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %45, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 noundef %18) #7
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %47)
  br label %49

49:                                               ; preds = %42, %35
  br label %50

50:                                               ; preds = %49, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @destroySimulation(%struct.SimFlatSt** noundef %0) #0 {
  %2 = alloca %struct.BasePotentialSt*, align 8
  %.not = icmp eq %struct.SimFlatSt** %0, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %1
  br label %26

4:                                                ; preds = %1
  %5 = load %struct.SimFlatSt*, %struct.SimFlatSt** %0, align 8
  %.not1 = icmp eq %struct.SimFlatSt* %5, null
  br i1 %.not1, label %6, label %7

6:                                                ; preds = %4
  br label %26

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %5, i64 0, i32 9
  %9 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %8, align 8
  store %struct.BasePotentialSt* %9, %struct.BasePotentialSt** %2, align 8
  %.not2 = icmp eq %struct.BasePotentialSt* %9, null
  br i1 %.not2, label %14, label %10

10:                                               ; preds = %7
  %11 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %2, align 8
  %12 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %11, i64 0, i32 8
  %13 = load void (%struct.BasePotentialSt**)*, void (%struct.BasePotentialSt**)** %12, align 8
  call void %13(%struct.BasePotentialSt** noundef nonnull %2) #7
  br label %14

14:                                               ; preds = %10, %7
  %15 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %5, i64 0, i32 4
  call void @destroyLinkCells(%struct.LinkCellSt** noundef nonnull %15) #7
  %16 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %5, i64 0, i32 5
  %17 = load %struct.AtomsSt*, %struct.AtomsSt** %16, align 8
  call void @destroyAtoms(%struct.AtomsSt* noundef %17) #7
  %18 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %5, i64 0, i32 10
  call void @destroyHaloExchange(%struct.HaloExchangeSt** noundef nonnull %18) #7
  %19 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %5, i64 0, i32 6
  %20 = bitcast %struct.SpeciesDataSt** %19 to i8**
  %21 = load i8*, i8** %20, align 8
  call void @comdFree(i8* noundef %21)
  %22 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %5, i64 0, i32 3
  %23 = bitcast %struct.DomainSt** %22 to i8**
  %24 = load i8*, i8** %23, align 8
  call void @comdFree(i8* noundef %24)
  %25 = bitcast %struct.SimFlatSt* %5 to i8*
  call void @comdFree(i8* noundef nonnull %25)
  store %struct.SimFlatSt* null, %struct.SimFlatSt** %0, align 8
  br label %26

26:                                               ; preds = %14, %6, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @comdFree(i8* noundef %0) #0 {
  call void @free(i8* noundef %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @finalizeSubsystems() #2 {
  ret void
}

declare dso_local void @destroyParallel() #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @comdMalloc(i64 noundef %0) #0 {
  %2 = call noalias i8* @malloc(i64 noundef %0) #7
  ret i8* %2
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.BasePotentialSt* @initPotential(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %7, label %5

5:                                                ; preds = %4
  %6 = call %struct.BasePotentialSt* @initEamPot(i8* noundef %1, i8* noundef %2, i8* noundef %3) #7
  br label %9

7:                                                ; preds = %4
  %8 = call %struct.BasePotentialSt* @initLjPot() #7
  br label %9

9:                                                ; preds = %7, %5
  %.0 = phi %struct.BasePotentialSt* [ %6, %5 ], [ %8, %7 ]
  %.not1 = icmp eq %struct.BasePotentialSt* %.0, null
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %9
  br label %12

11:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.initPotential, i64 0, i64 0)) #8
  unreachable

12:                                               ; preds = %10
  ret %struct.BasePotentialSt* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @sanityChecks(%struct.CommandSt* nocapture noundef readonly byval(%struct.CommandSt) align 8 %0, double noundef %1, double noundef %2, i8* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 7
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %7, %9
  %11 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %10, %12
  %14 = call i32 @getNRanks() #7
  %.not = icmp eq i32 %13, %14
  br i1 %.not, label %21, label %15

15:                                               ; preds = %4
  %16 = call i32 @printRank() #7
  %.not5 = icmp eq i32 %16, 0
  br i1 %.not5, label %20, label %17

17:                                               ; preds = %15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i64 54, i64 1, %struct._IO_FILE* %18)
  br label %20

20:                                               ; preds = %17, %15
  br label %21

21:                                               ; preds = %20, %4
  %.0 = phi i32 [ 1, %20 ], [ 0, %4 ]
  %22 = fmul double %1, 2.000000e+00
  %23 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = sitofp i32 %24 to double
  %26 = fmul double %22, %25
  %27 = fmul double %1, 2.000000e+00
  %28 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = sitofp i32 %29 to double
  %31 = fmul double %27, %30
  %32 = fmul double %1, 2.000000e+00
  %33 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = sitofp i32 %34 to double
  %36 = fmul double %32, %35
  %37 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = sitofp i32 %38 to double
  %40 = fmul double %39, %2
  %41 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to double
  %44 = fmul double %43, %2
  %45 = fcmp olt double %40, %26
  br i1 %45, label %54, label %46

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = sitofp i32 %48 to double
  %50 = fmul double %49, %2
  %51 = fcmp olt double %50, %31
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = fcmp olt double %44, %36
  br i1 %53, label %54, label %61

54:                                               ; preds = %52, %46, %21
  %55 = or i32 %.0, 2
  %56 = call i32 @printRank() #7
  %.not4 = icmp eq i32 %56, 0
  br i1 %.not4, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @.str.8, i64 0, i64 0), double noundef %26, double noundef %31, double noundef %36) #7
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %52
  %.1 = phi i32 [ %55, %60 ], [ %.0, %52 ]
  %62 = call i32 @strcasecmp(i8* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #9
  %.not1 = icmp eq i32 %62, 0
  br i1 %.not1, label %70, label %63

63:                                               ; preds = %61
  %64 = or i32 %.1, 4
  %65 = call i32 @printRank() #7
  %.not3 = icmp eq i32 %65, 0
  br i1 %.not3, label %69, label %66

66:                                               ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i8* noundef %3) #7
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69, %61
  %.2 = phi i32 [ %64, %69 ], [ %.1, %61 ]
  store i32 %.2, i32* %5, align 4
  %71 = bitcast i32* %5 to i8*
  call void @bcastParallel(i8* noundef nonnull %71, i32 noundef 4, i32 noundef 0) #7
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, %.2
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %76

75:                                               ; preds = %70
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 noundef 497, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.sanityChecks, i64 0, i64 0)) #8
  br label %UnifiedUnreachableBlock

76:                                               ; preds = %74
  %.not2 = icmp eq i32 %.2, 0
  br i1 %.not2, label %78, label %77

77:                                               ; preds = %76
  call void @exit(i32 noundef %.2) #8
  br label %UnifiedUnreachableBlock

78:                                               ; preds = %76
  ret void

UnifiedUnreachableBlock:                          ; preds = %77, %75
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.SpeciesDataSt* @initSpecies(%struct.BasePotentialSt* noundef %0) #0 {
  %2 = call i8* @comdMalloc(i64 noundef 16)
  %3 = bitcast i8* %2 to %struct.SpeciesDataSt*
  %4 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %0, i64 0, i32 4, i64 0
  %5 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %2, i8* noundef nonnull %4) #7
  %6 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %0, i64 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds i8, i8* %2, i64 4
  %9 = bitcast i8* %8 to i32*
  store i32 %7, i32* %9, align 4
  %10 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %0, i64 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds i8, i8* %2, i64 8
  %13 = bitcast i8* %12 to double*
  store double %11, double* %13, align 8
  ret %struct.SpeciesDataSt* %3
}

declare dso_local %struct.DomainSt* @initDecomposition(i32 noundef, i32 noundef, i32 noundef, double* noundef) #1

declare dso_local %struct.LinkCellSt* @initLinkCells(%struct.DomainSt* noundef, double noundef) #1

declare dso_local %struct.AtomsSt* @initAtoms(%struct.LinkCellSt* noundef) #1

declare dso_local void @createFccLattice(i32 noundef, i32 noundef, i32 noundef, double noundef, %struct.SimFlatSt* noundef) #1

declare dso_local void @setTemperature(%struct.SimFlatSt* noundef, double noundef) #1

declare dso_local void @randomDisplacements(%struct.SimFlatSt* noundef, double noundef) #1

declare dso_local %struct.HaloExchangeSt* @initAtomHaloExchange(%struct.DomainSt* noundef, %struct.LinkCellSt* noundef) #1

declare dso_local void @redistributeAtoms(%struct.SimFlatSt* noundef) #1

declare dso_local void @computeForce(%struct.SimFlatSt* noundef) #1

declare dso_local void @kineticEnergy(%struct.SimFlatSt* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

declare dso_local %struct.BasePotentialSt* @initEamPot(i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local %struct.BasePotentialSt* @initLjPot() #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #4

declare dso_local i32 @getNRanks() #1

declare dso_local i32 @printRank() #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) #5

declare dso_local void @bcastParallel(i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #3

declare dso_local void @destroyLinkCells(%struct.LinkCellSt** noundef) #1

declare dso_local void @destroyAtoms(%struct.AtomsSt* noundef) #1

declare dso_local void @destroyHaloExchange(%struct.HaloExchangeSt** noundef) #1

declare dso_local void @printSeparator(%struct._IO_FILE* noundef) #1

declare dso_local void @addIntParallel(i32* noundef, i32* noundef, i32 noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @maxOccupancy(%struct.LinkCellSt* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
