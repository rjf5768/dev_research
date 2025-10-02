; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/CoMD.c'
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
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.CommandSt, align 8
  %7 = alloca %struct.SimFlatSt*, align 8
  %8 = alloca %struct.ValidateSt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @initParallel(i32* noundef %4, i8*** noundef %5)
  call void @profileStart(i32 noundef 0)
  call void @initSubsystems()
  call void @timestampBarrier(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @yamlAppInfo(%struct._IO_FILE* noundef %12)
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  call void @parseCommandLine(%struct.CommandSt* sret(%struct.CommandSt) align 8 %6, i32 noundef %13, i8** noundef %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @printCmdYaml(%struct._IO_FILE* noundef %15, %struct.CommandSt* noundef %6)
  %16 = call %struct.SimFlatSt* @initSimulation(%struct.CommandSt* noundef byval(%struct.CommandSt) align 8 %6)
  store %struct.SimFlatSt* %16, %struct.SimFlatSt** %7, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  call void @printSimulationDataYaml(%struct._IO_FILE* noundef %17, %struct.SimFlatSt* noundef %18)
  %19 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  %20 = call %struct.ValidateSt* @initValidate(%struct.SimFlatSt* noundef %19)
  store %struct.ValidateSt* %20, %struct.ValidateSt** %8, align 8
  call void @timestampBarrier(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  call void @timestampBarrier(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  %22 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  %25 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %11, align 4
  call void @profileStart(i32 noundef 1)
  br label %27

27:                                               ; preds = %49, %2
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  call void @profileStart(i32 noundef 10)
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  call void @sumAtoms(%struct.SimFlatSt* noundef %34)
  br label %35

35:                                               ; preds = %33
  call void @profileStop(i32 noundef 10)
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call double @getElapsedTime(i32 noundef 2)
  call void @printThings(%struct.SimFlatSt* noundef %37, i32 noundef %38, double noundef %39)
  br label %40

40:                                               ; preds = %36
  call void @profileStart(i32 noundef 2)
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  %45 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = call double @timestep(%struct.SimFlatSt* noundef %42, i32 noundef %43, double noundef %46)
  br label %48

48:                                               ; preds = %41
  call void @profileStop(i32 noundef 2)
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %11, align 4
  br label %27, !llvm.loop !4

53:                                               ; preds = %27
  call void @profileStop(i32 noundef 1)
  %54 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  call void @sumAtoms(%struct.SimFlatSt* noundef %54)
  %55 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call double @getElapsedTime(i32 noundef 2)
  call void @printThings(%struct.SimFlatSt* noundef %55, i32 noundef %56, double noundef %57)
  call void @timestampBarrier(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.ValidateSt*, %struct.ValidateSt** %8, align 8
  %59 = load %struct.SimFlatSt*, %struct.SimFlatSt** %7, align 8
  call void @validateResult(%struct.ValidateSt* noundef %58, %struct.SimFlatSt* noundef %59)
  call void @profileStop(i32 noundef 0)
  call void @destroySimulation(%struct.SimFlatSt** noundef %7)
  %60 = load %struct.ValidateSt*, %struct.ValidateSt** %8, align 8
  %61 = bitcast %struct.ValidateSt* %60 to i8*
  call void @comdFree(i8* noundef %61)
  call void @finalizeSubsystems()
  call void @timestampBarrier(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  call void @destroyParallel()
  ret i32 0
}

declare dso_local void @initParallel(i32* noundef, i8*** noundef) #1

declare dso_local void @profileStart(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @initSubsystems() #0 {
  ret void
}

declare dso_local void @timestampBarrier(i8* noundef) #1

declare dso_local void @yamlAppInfo(%struct._IO_FILE* noundef) #1

declare dso_local void @parseCommandLine(%struct.CommandSt* sret(%struct.CommandSt) align 8, i32 noundef, i8** noundef) #1

declare dso_local void @printCmdYaml(%struct._IO_FILE* noundef, %struct.CommandSt* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.SimFlatSt* @initSimulation(%struct.CommandSt* noundef byval(%struct.CommandSt) align 8 %0) #0 {
  %2 = alloca %struct.SimFlatSt*, align 8
  %3 = alloca double, align 8
  %4 = alloca [3 x double], align 16
  %5 = call i8* @comdMalloc(i64 noundef 80)
  %6 = bitcast i8* %5 to %struct.SimFlatSt*
  store %struct.SimFlatSt* %6, %struct.SimFlatSt** %2, align 8
  %7 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 10
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %10 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 11
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %14 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 12
  %16 = load double, double* %15, align 8
  %17 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %18 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %17, i32 0, i32 2
  store double %16, double* %18, align 8
  %19 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %20 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %19, i32 0, i32 3
  store %struct.DomainSt* null, %struct.DomainSt** %20, align 8
  %21 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %22 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %21, i32 0, i32 4
  store %struct.LinkCellSt* null, %struct.LinkCellSt** %22, align 8
  %23 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %24 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %23, i32 0, i32 5
  store %struct.AtomsSt* null, %struct.AtomsSt** %24, align 8
  %25 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %26 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %25, i32 0, i32 7
  store double 0.000000e+00, double* %26, align 8
  %27 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %28 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %27, i32 0, i32 8
  store double 0.000000e+00, double* %28, align 8
  %29 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %30 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %29, i32 0, i32 10
  store %struct.HaloExchangeSt* null, %struct.HaloExchangeSt** %30, align 8
  %31 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 0
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %33, i64 0, i64 0
  %35 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 1
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %35, i64 0, i64 0
  %37 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 2
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %37, i64 0, i64 0
  %39 = call %struct.BasePotentialSt* @initPotential(i32 noundef %32, i8* noundef %34, i8* noundef %36, i8* noundef %38)
  %40 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %41 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %40, i32 0, i32 9
  store %struct.BasePotentialSt* %39, %struct.BasePotentialSt** %41, align 8
  %42 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 13
  %43 = load double, double* %42, align 8
  store double %43, double* %3, align 8
  %44 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 13
  %45 = load double, double* %44, align 8
  %46 = fcmp olt double %45, 0.000000e+00
  br i1 %46, label %47, label %53

47:                                               ; preds = %1
  %48 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %49 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %48, i32 0, i32 9
  %50 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %49, align 8
  %51 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %50, i32 0, i32 2
  %52 = load double, double* %51, align 8
  store double %52, double* %3, align 8
  br label %53

53:                                               ; preds = %47, %1
  %54 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %55 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %54, i32 0, i32 9
  %56 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %55, align 8
  %57 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = load double, double* %3, align 8
  %60 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %61 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %60, i32 0, i32 9
  %62 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %61, align 8
  %63 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %62, i32 0, i32 3
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %63, i64 0, i64 0
  call void @sanityChecks(%struct.CommandSt* noundef byval(%struct.CommandSt) align 8 %0, double noundef %58, double noundef %59, i8* noundef %64)
  %65 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %66 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %65, i32 0, i32 9
  %67 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %66, align 8
  %68 = call %struct.SpeciesDataSt* @initSpecies(%struct.BasePotentialSt* noundef %67)
  %69 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %70 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %69, i32 0, i32 6
  store %struct.SpeciesDataSt* %68, %struct.SpeciesDataSt** %70, align 8
  %71 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = sitofp i32 %72 to double
  %74 = load double, double* %3, align 8
  %75 = fmul double %73, %74
  %76 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  store double %75, double* %76, align 16
  %77 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = sitofp i32 %78 to double
  %80 = load double, double* %3, align 8
  %81 = fmul double %79, %80
  %82 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 1
  store double %81, double* %82, align 8
  %83 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = sitofp i32 %84 to double
  %86 = load double, double* %3, align 8
  %87 = fmul double %85, %86
  %88 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 2
  store double %87, double* %88, align 16
  %89 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 0, i64 0
  %96 = call %struct.DomainSt* @initDecomposition(i32 noundef %90, i32 noundef %92, i32 noundef %94, double* noundef %95)
  %97 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %98 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %97, i32 0, i32 3
  store %struct.DomainSt* %96, %struct.DomainSt** %98, align 8
  %99 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %100 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %99, i32 0, i32 3
  %101 = load %struct.DomainSt*, %struct.DomainSt** %100, align 8
  %102 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %103 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %102, i32 0, i32 9
  %104 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %103, align 8
  %105 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %104, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = call %struct.LinkCellSt* @initLinkCells(%struct.DomainSt* noundef %101, double noundef %106)
  %108 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %109 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %108, i32 0, i32 4
  store %struct.LinkCellSt* %107, %struct.LinkCellSt** %109, align 8
  %110 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %111 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %110, i32 0, i32 4
  %112 = load %struct.LinkCellSt*, %struct.LinkCellSt** %111, align 8
  %113 = call %struct.AtomsSt* @initAtoms(%struct.LinkCellSt* noundef %112)
  %114 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %115 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %114, i32 0, i32 5
  store %struct.AtomsSt* %113, %struct.AtomsSt** %115, align 8
  %116 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load double, double* %3, align 8
  %123 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  call void @createFccLattice(i32 noundef %117, i32 noundef %119, i32 noundef %121, double noundef %122, %struct.SimFlatSt* noundef %123)
  %124 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %125 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 14
  %126 = load double, double* %125, align 8
  call void @setTemperature(%struct.SimFlatSt* noundef %124, double noundef %126)
  %127 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %128 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 15
  %129 = load double, double* %128, align 8
  call void @randomDisplacements(%struct.SimFlatSt* noundef %127, double noundef %129)
  %130 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %131 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %130, i32 0, i32 3
  %132 = load %struct.DomainSt*, %struct.DomainSt** %131, align 8
  %133 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %134 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %133, i32 0, i32 4
  %135 = load %struct.LinkCellSt*, %struct.LinkCellSt** %134, align 8
  %136 = call %struct.HaloExchangeSt* @initAtomHaloExchange(%struct.DomainSt* noundef %132, %struct.LinkCellSt* noundef %135)
  %137 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %138 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %137, i32 0, i32 10
  store %struct.HaloExchangeSt* %136, %struct.HaloExchangeSt** %138, align 8
  br label %139

139:                                              ; preds = %53
  call void @profileStart(i32 noundef 5)
  br label %140

140:                                              ; preds = %139
  %141 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  call void @redistributeAtoms(%struct.SimFlatSt* noundef %141)
  br label %142

142:                                              ; preds = %140
  call void @profileStop(i32 noundef 5)
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143
  call void @profileStart(i32 noundef 7)
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  call void @computeForce(%struct.SimFlatSt* noundef %146)
  br label %147

147:                                              ; preds = %145
  call void @profileStop(i32 noundef 7)
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  call void @kineticEnergy(%struct.SimFlatSt* noundef %149)
  %150 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  ret %struct.SimFlatSt* %150
}

; Function Attrs: noinline nounwind uwtable
define internal void @printSimulationDataYaml(%struct._IO_FILE* noundef %0, %struct.SimFlatSt* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.SimFlatSt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.SimFlatSt* %1, %struct.SimFlatSt** %4, align 8
  %14 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %15 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %14, i32 0, i32 4
  %16 = load %struct.LinkCellSt*, %struct.LinkCellSt** %15, align 8
  %17 = call i32 @maxOccupancy(%struct.LinkCellSt* noundef %16)
  store i32 %17, i32* %5, align 4
  %18 = call i32 @printRank()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %312

21:                                               ; preds = %2
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %25 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %26 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %25, i32 0, i32 5
  %27 = load %struct.AtomsSt*, %struct.AtomsSt** %26, align 8
  %28 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 noundef %29)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %32 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %33 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %32, i32 0, i32 3
  %34 = load %struct.DomainSt*, %struct.DomainSt** %33, align 8
  %35 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %34, i32 0, i32 2
  %36 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 0, i64 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %39 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %38, i32 0, i32 3
  %40 = load %struct.DomainSt*, %struct.DomainSt** %39, align 8
  %41 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %40, i32 0, i32 2
  %42 = getelementptr inbounds [3 x double], [3 x double]* %41, i64 0, i64 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %45 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %44, i32 0, i32 3
  %46 = load %struct.DomainSt*, %struct.DomainSt** %45, align 8
  %47 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %46, i32 0, i32 2
  %48 = getelementptr inbounds [3 x double], [3 x double]* %47, i64 0, i64 2
  %49 = load double, double* %48, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %31, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i64 0, i64 0), double noundef %37, double noundef %43, double noundef %49)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %52 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %53 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %52, i32 0, i32 3
  %54 = load %struct.DomainSt*, %struct.DomainSt** %53, align 8
  %55 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %54, i32 0, i32 3
  %56 = getelementptr inbounds [3 x double], [3 x double]* %55, i64 0, i64 0
  %57 = load double, double* %56, align 8
  %58 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %59 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %58, i32 0, i32 3
  %60 = load %struct.DomainSt*, %struct.DomainSt** %59, align 8
  %61 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %60, i32 0, i32 3
  %62 = getelementptr inbounds [3 x double], [3 x double]* %61, i64 0, i64 1
  %63 = load double, double* %62, align 8
  %64 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %65 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %64, i32 0, i32 3
  %66 = load %struct.DomainSt*, %struct.DomainSt** %65, align 8
  %67 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %66, i32 0, i32 3
  %68 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 0, i64 2
  %69 = load double, double* %68, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i64 0, i64 0), double noundef %57, double noundef %63, double noundef %69)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @printSeparator(%struct._IO_FILE* noundef %71)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %72, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %75 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %76 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %75, i32 0, i32 3
  %77 = load %struct.DomainSt*, %struct.DomainSt** %76, align 8
  %78 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %77, i32 0, i32 0
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %78, i64 0, i64 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %82 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %81, i32 0, i32 3
  %83 = load %struct.DomainSt*, %struct.DomainSt** %82, align 8
  %84 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %83, i32 0, i32 0
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %84, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %88 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %87, i32 0, i32 3
  %89 = load %struct.DomainSt*, %struct.DomainSt** %88, align 8
  %90 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %89, i32 0, i32 0
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %90, i64 0, i64 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i32 noundef %80, i32 noundef %86, i32 noundef %92)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %95 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %96 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %95, i32 0, i32 4
  %97 = load %struct.LinkCellSt*, %struct.LinkCellSt** %96, align 8
  %98 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %97, i32 0, i32 0
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %98, i64 0, i64 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %102 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %101, i32 0, i32 4
  %103 = load %struct.LinkCellSt*, %struct.LinkCellSt** %102, align 8
  %104 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %103, i32 0, i32 0
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %104, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %108 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %107, i32 0, i32 4
  %109 = load %struct.LinkCellSt*, %struct.LinkCellSt** %108, align 8
  %110 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %109, i32 0, i32 0
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %110, i64 0, i64 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %114 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %113, i32 0, i32 4
  %115 = load %struct.LinkCellSt*, %struct.LinkCellSt** %114, align 8
  %116 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %115, i32 0, i32 0
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %116, i64 0, i64 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %120 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %119, i32 0, i32 4
  %121 = load %struct.LinkCellSt*, %struct.LinkCellSt** %120, align 8
  %122 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %121, i32 0, i32 0
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %122, i64 0, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %118, %124
  %126 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %127 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %126, i32 0, i32 4
  %128 = load %struct.LinkCellSt*, %struct.LinkCellSt** %127, align 8
  %129 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %128, i32 0, i32 0
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %129, i64 0, i64 2
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %125, %131
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0), i32 noundef %100, i32 noundef %106, i32 noundef %112, i32 noundef %132)
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %135 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %136 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %135, i32 0, i32 4
  %137 = load %struct.LinkCellSt*, %struct.LinkCellSt** %136, align 8
  %138 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %137, i32 0, i32 6
  %139 = getelementptr inbounds [3 x double], [3 x double]* %138, i64 0, i64 0
  %140 = load double, double* %139, align 8
  %141 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %142 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %141, i32 0, i32 4
  %143 = load %struct.LinkCellSt*, %struct.LinkCellSt** %142, align 8
  %144 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %143, i32 0, i32 6
  %145 = getelementptr inbounds [3 x double], [3 x double]* %144, i64 0, i64 1
  %146 = load double, double* %145, align 8
  %147 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %148 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %147, i32 0, i32 4
  %149 = load %struct.LinkCellSt*, %struct.LinkCellSt** %148, align 8
  %150 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %149, i32 0, i32 6
  %151 = getelementptr inbounds [3 x double], [3 x double]* %150, i64 0, i64 2
  %152 = load double, double* %151, align 8
  %153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %134, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i64 0, i64 0), double noundef %140, double noundef %146, double noundef %152)
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %155 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %156 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %155, i32 0, i32 4
  %157 = load %struct.LinkCellSt*, %struct.LinkCellSt** %156, align 8
  %158 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %157, i32 0, i32 6
  %159 = getelementptr inbounds [3 x double], [3 x double]* %158, i64 0, i64 0
  %160 = load double, double* %159, align 8
  %161 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %162 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %161, i32 0, i32 9
  %163 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %162, align 8
  %164 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %163, i32 0, i32 0
  %165 = load double, double* %164, align 8
  %166 = fdiv double %160, %165
  %167 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %168 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %167, i32 0, i32 4
  %169 = load %struct.LinkCellSt*, %struct.LinkCellSt** %168, align 8
  %170 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %169, i32 0, i32 6
  %171 = getelementptr inbounds [3 x double], [3 x double]* %170, i64 0, i64 1
  %172 = load double, double* %171, align 8
  %173 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %174 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %173, i32 0, i32 9
  %175 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %174, align 8
  %176 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %175, i32 0, i32 0
  %177 = load double, double* %176, align 8
  %178 = fdiv double %172, %177
  %179 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %180 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %179, i32 0, i32 4
  %181 = load %struct.LinkCellSt*, %struct.LinkCellSt** %180, align 8
  %182 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %181, i32 0, i32 6
  %183 = getelementptr inbounds [3 x double], [3 x double]* %182, i64 0, i64 2
  %184 = load double, double* %183, align 8
  %185 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %186 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %185, i32 0, i32 9
  %187 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %186, align 8
  %188 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %187, i32 0, i32 0
  %189 = load double, double* %188, align 8
  %190 = fdiv double %184, %189
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %154, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0), double noundef %166, double noundef %178, double noundef %190)
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %193 = load i32, i32* %5, align 4
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %192, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0), i32 noundef %193, i32 noundef 64)
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @printSeparator(%struct._IO_FILE* noundef %195)
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %196, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  %198 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %199 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %198, i32 0, i32 9
  %200 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %199, align 8
  %201 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %200, i32 0, i32 7
  %202 = load void (%struct._IO_FILE*, %struct.BasePotentialSt*)*, void (%struct._IO_FILE*, %struct.BasePotentialSt*)** %201, align 8
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %204 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %205 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %204, i32 0, i32 9
  %206 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %205, align 8
  call void %202(%struct._IO_FILE* noundef %203, %struct.BasePotentialSt* noundef %206)
  store i32 88, i32* %6, align 4
  %207 = load i32, i32* %6, align 4
  %208 = sdiv i32 %207, 1024
  %209 = sdiv i32 %208, 1024
  %210 = sitofp i32 %209 to float
  store float %210, float* %7, align 4
  %211 = load i32, i32* %6, align 4
  %212 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %213 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %212, i32 0, i32 5
  %214 = load %struct.AtomsSt*, %struct.AtomsSt** %213, align 8
  %215 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = mul nsw i32 %211, %216
  %218 = sitofp i32 %217 to float
  %219 = fdiv float %218, 1.024000e+03
  %220 = fdiv float %219, 1.024000e+03
  store float %220, float* %8, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %223 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %222, i32 0, i32 5
  %224 = load %struct.AtomsSt*, %struct.AtomsSt** %223, align 8
  %225 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %221, %226
  %228 = sitofp i32 %227 to float
  %229 = fdiv float %228, 1.024000e+03
  %230 = fdiv float %229, 1.024000e+03
  store float %230, float* %9, align 4
  %231 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %232 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %231, i32 0, i32 4
  %233 = load %struct.LinkCellSt*, %struct.LinkCellSt** %232, align 8
  %234 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %233, i32 0, i32 0
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %234, i64 0, i64 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %238 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %237, i32 0, i32 4
  %239 = load %struct.LinkCellSt*, %struct.LinkCellSt** %238, align 8
  %240 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %239, i32 0, i32 0
  %241 = getelementptr inbounds [3 x i32], [3 x i32]* %240, i64 0, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = mul nsw i32 %236, %242
  %244 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %245 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %244, i32 0, i32 4
  %246 = load %struct.LinkCellSt*, %struct.LinkCellSt** %245, align 8
  %247 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %246, i32 0, i32 0
  %248 = getelementptr inbounds [3 x i32], [3 x i32]* %247, i64 0, i64 2
  %249 = load i32, i32* %248, align 8
  %250 = mul nsw i32 %243, %249
  store i32 %250, i32* %10, align 4
  %251 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %252 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %251, i32 0, i32 4
  %253 = load %struct.LinkCellSt*, %struct.LinkCellSt** %252, align 8
  %254 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %253, i32 0, i32 0
  %255 = getelementptr inbounds [3 x i32], [3 x i32]* %254, i64 0, i64 0
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, 2
  %258 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %259 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %258, i32 0, i32 4
  %260 = load %struct.LinkCellSt*, %struct.LinkCellSt** %259, align 8
  %261 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %260, i32 0, i32 0
  %262 = getelementptr inbounds [3 x i32], [3 x i32]* %261, i64 0, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 2
  %265 = mul nsw i32 %257, %264
  %266 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %267 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %266, i32 0, i32 4
  %268 = load %struct.LinkCellSt*, %struct.LinkCellSt** %267, align 8
  %269 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %268, i32 0, i32 0
  %270 = getelementptr inbounds [3 x i32], [3 x i32]* %269, i64 0, i64 2
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 2
  %273 = mul nsw i32 %265, %272
  store i32 %273, i32* %11, align 4
  %274 = load i32, i32* %10, align 4
  %275 = sitofp i32 %274 to float
  %276 = load i32, i32* %6, align 4
  %277 = mul nsw i32 %276, 64
  %278 = sitofp i32 %277 to float
  %279 = fmul float %275, %278
  %280 = fdiv float %279, 1.024000e+03
  %281 = fdiv float %280, 1.024000e+03
  store float %281, float* %12, align 4
  %282 = load i32, i32* %11, align 4
  %283 = sitofp i32 %282 to float
  %284 = load i32, i32* %6, align 4
  %285 = mul nsw i32 %284, 64
  %286 = sitofp i32 %285 to float
  %287 = fmul float %283, %286
  %288 = fdiv float %287, 1.024000e+03
  %289 = fdiv float %288, 1.024000e+03
  store float %289, float* %13, align 4
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @printSeparator(%struct._IO_FILE* noundef %290)
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %291, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0))
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %294 = load i32, i32* %6, align 4
  %295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %293, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i64 0, i64 0), i32 noundef %294)
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %297 = load float, float* %9, align 4
  %298 = fpext float %297 to double
  %299 = load float, float* %8, align 4
  %300 = fpext float %299 to double
  %301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %296, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i64 0, i64 0), double noundef %298, double noundef %300)
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %303 = load float, float* %12, align 4
  %304 = fpext float %303 to double
  %305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %302, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.37, i64 0, i64 0), double noundef %304)
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %307 = load float, float* %13, align 4
  %308 = fpext float %307 to double
  %309 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %306, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.38, i64 0, i64 0), double noundef %308)
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %311 = call i32 @fflush(%struct._IO_FILE* noundef %310)
  br label %312

312:                                              ; preds = %21, %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.ValidateSt* @initValidate(%struct.SimFlatSt* noundef %0) #0 {
  %2 = alloca %struct.SimFlatSt*, align 8
  %3 = alloca %struct.ValidateSt*, align 8
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %2, align 8
  %4 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  call void @sumAtoms(%struct.SimFlatSt* noundef %4)
  %5 = call i8* @comdMalloc(i64 noundef 16)
  %6 = bitcast i8* %5 to %struct.ValidateSt*
  store %struct.ValidateSt* %6, %struct.ValidateSt** %3, align 8
  %7 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %8 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %7, i32 0, i32 7
  %9 = load double, double* %8, align 8
  %10 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %11 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %10, i32 0, i32 8
  %12 = load double, double* %11, align 8
  %13 = fadd double %9, %12
  %14 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %15 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %14, i32 0, i32 5
  %16 = load %struct.AtomsSt*, %struct.AtomsSt** %15, align 8
  %17 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %13, %19
  %21 = load %struct.ValidateSt*, %struct.ValidateSt** %3, align 8
  %22 = getelementptr inbounds %struct.ValidateSt, %struct.ValidateSt* %21, i32 0, i32 0
  store double %20, double* %22, align 8
  %23 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %24 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %23, i32 0, i32 5
  %25 = load %struct.AtomsSt*, %struct.AtomsSt** %24, align 8
  %26 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ValidateSt*, %struct.ValidateSt** %3, align 8
  %29 = getelementptr inbounds %struct.ValidateSt, %struct.ValidateSt* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = call i32 @printRank()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %1
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @printSeparator(%struct._IO_FILE* noundef %35)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = load %struct.ValidateSt*, %struct.ValidateSt** %3, align 8
  %38 = getelementptr inbounds %struct.ValidateSt, %struct.ValidateSt* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = load %struct.ValidateSt*, %struct.ValidateSt** %3, align 8
  %41 = getelementptr inbounds %struct.ValidateSt, %struct.ValidateSt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), double noundef %39, i32 noundef %42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %46

46:                                               ; preds = %32, %1
  %47 = load %struct.ValidateSt*, %struct.ValidateSt** %3, align 8
  ret %struct.ValidateSt* %47
}

; Function Attrs: noinline nounwind uwtable
define internal void @sumAtoms(%struct.SimFlatSt* noundef %0) #0 {
  %2 = alloca %struct.SimFlatSt*, align 8
  %3 = alloca i32, align 4
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %2, align 8
  %4 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %5 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %4, i32 0, i32 5
  %6 = load %struct.AtomsSt*, %struct.AtomsSt** %5, align 8
  %7 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %11 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %10, i32 0, i32 4
  %12 = load %struct.LinkCellSt*, %struct.LinkCellSt** %11, align 8
  %13 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %8
  %17 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %18 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %17, i32 0, i32 4
  %19 = load %struct.LinkCellSt*, %struct.LinkCellSt** %18, align 8
  %20 = getelementptr inbounds %struct.LinkCellSt, %struct.LinkCellSt* %19, i32 0, i32 8
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %27 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %26, i32 0, i32 5
  %28 = load %struct.AtomsSt*, %struct.AtomsSt** %27, align 8
  %29 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, %25
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %16
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %8, !llvm.loop !6

35:                                               ; preds = %8
  br label %36

36:                                               ; preds = %35
  call void @profileStart(i32 noundef 10)
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %39 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %38, i32 0, i32 5
  %40 = load %struct.AtomsSt*, %struct.AtomsSt** %39, align 8
  %41 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %40, i32 0, i32 0
  %42 = load %struct.SimFlatSt*, %struct.SimFlatSt** %2, align 8
  %43 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %42, i32 0, i32 5
  %44 = load %struct.AtomsSt*, %struct.AtomsSt** %43, align 8
  %45 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %44, i32 0, i32 1
  call void @addIntParallel(i32* noundef %41, i32* noundef %45, i32 noundef 1)
  br label %46

46:                                               ; preds = %37
  call void @profileStop(i32 noundef 10)
  br label %47

47:                                               ; preds = %46
  ret void
}

declare dso_local void @profileStop(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @printThings(%struct.SimFlatSt* noundef %0, i32 noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.SimFlatSt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.SimFlatSt* %0, %struct.SimFlatSt** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @printThings.iStepPrev, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* @printThings.iStepPrev, align 4
  %18 = call i32 @printRank()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %106

21:                                               ; preds = %3
  %22 = load i32, i32* @printThings.firstCall, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  store i32 0, i32* @printThings.firstCall, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([216 x i8], [216 x i8]* @.str.21, i64 0, i64 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = call i32 @fflush(%struct._IO_FILE* noundef %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %5, align 4
  %31 = sitofp i32 %30 to double
  %32 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %33 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %32, i32 0, i32 2
  %34 = load double, double* %33, align 8
  %35 = fmul double %31, %34
  store double %35, double* %8, align 8
  %36 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %37 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %36, i32 0, i32 7
  %38 = load double, double* %37, align 8
  %39 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %40 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %39, i32 0, i32 8
  %41 = load double, double* %40, align 8
  %42 = fadd double %38, %41
  %43 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %44 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %43, i32 0, i32 5
  %45 = load %struct.AtomsSt*, %struct.AtomsSt** %44, align 8
  %46 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %42, %48
  store double %49, double* %9, align 8
  %50 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %51 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %50, i32 0, i32 8
  %52 = load double, double* %51, align 8
  %53 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %54 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %53, i32 0, i32 5
  %55 = load %struct.AtomsSt*, %struct.AtomsSt** %54, align 8
  %56 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %52, %58
  store double %59, double* %10, align 8
  %60 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %61 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %60, i32 0, i32 7
  %62 = load double, double* %61, align 8
  %63 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %64 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %63, i32 0, i32 5
  %65 = load %struct.AtomsSt*, %struct.AtomsSt** %64, align 8
  %66 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %62, %68
  store double %69, double* %11, align 8
  %70 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %71 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %70, i32 0, i32 8
  %72 = load double, double* %71, align 8
  %73 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %74 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %73, i32 0, i32 5
  %75 = load %struct.AtomsSt*, %struct.AtomsSt** %74, align 8
  %76 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sitofp i32 %77 to double
  %79 = fdiv double %72, %78
  %80 = fdiv double %79, 0x3F20F13ED339F07F
  store double %80, double* %12, align 8
  %81 = load double, double* %6, align 8
  %82 = fmul double 1.000000e+06, %81
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %85 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %84, i32 0, i32 5
  %86 = load %struct.AtomsSt*, %struct.AtomsSt** %85, align 8
  %87 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %83, %88
  %90 = sitofp i32 %89 to double
  %91 = fdiv double %82, %90
  store double %91, double* %13, align 8
  store double 0.000000e+00, double* %13, align 8
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load double, double* %8, align 8
  %95 = load double, double* %9, align 8
  %96 = load double, double* %11, align 8
  %97 = load double, double* %10, align 8
  %98 = load double, double* %12, align 8
  %99 = load double, double* %13, align 8
  %100 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %101 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %100, i32 0, i32 5
  %102 = load %struct.AtomsSt*, %struct.AtomsSt** %101, align 8
  %103 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %92, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i64 0, i64 0), i32 noundef %93, double noundef %94, double noundef %95, double noundef %96, double noundef %97, double noundef %98, double noundef %99, i32 noundef %104)
  br label %106

106:                                              ; preds = %29, %20
  ret void
}

declare dso_local double @getElapsedTime(i32 noundef) #1

declare dso_local double @timestep(%struct.SimFlatSt* noundef, i32 noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @validateResult(%struct.ValidateSt* noundef %0, %struct.SimFlatSt* noundef %1) #0 {
  %3 = alloca %struct.ValidateSt*, align 8
  %4 = alloca %struct.SimFlatSt*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store %struct.ValidateSt* %0, %struct.ValidateSt** %3, align 8
  store %struct.SimFlatSt* %1, %struct.SimFlatSt** %4, align 8
  %7 = call i32 @printRank()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %73

9:                                                ; preds = %2
  %10 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %11 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %10, i32 0, i32 7
  %12 = load double, double* %11, align 8
  %13 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %14 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %13, i32 0, i32 8
  %15 = load double, double* %14, align 8
  %16 = fadd double %12, %15
  %17 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %18 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %17, i32 0, i32 5
  %19 = load %struct.AtomsSt*, %struct.AtomsSt** %18, align 8
  %20 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %16, %22
  store double %23, double* %5, align 8
  %24 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %25 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %24, i32 0, i32 5
  %26 = load %struct.AtomsSt*, %struct.AtomsSt** %25, align 8
  %27 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ValidateSt*, %struct.ValidateSt** %3, align 8
  %30 = getelementptr inbounds %struct.ValidateSt, %struct.ValidateSt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %40 = load %struct.ValidateSt*, %struct.ValidateSt** %3, align 8
  %41 = getelementptr inbounds %struct.ValidateSt, %struct.ValidateSt* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), double noundef %42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %45 = load double, double* %5, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), double noundef %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = load double, double* %5, align 8
  %49 = load %struct.ValidateSt*, %struct.ValidateSt** %3, align 8
  %50 = getelementptr inbounds %struct.ValidateSt, %struct.ValidateSt* %49, i32 0, i32 0
  %51 = load double, double* %50, align 8
  %52 = fdiv double %48, %51
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), double noundef %52)
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %9
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %58 = load %struct.SimFlatSt*, %struct.SimFlatSt** %4, align 8
  %59 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %58, i32 0, i32 5
  %60 = load %struct.AtomsSt*, %struct.AtomsSt** %59, align 8
  %61 = getelementptr inbounds %struct.AtomsSt, %struct.AtomsSt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i32 noundef %62)
  br label %72

64:                                               ; preds = %9
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %65, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %67, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 noundef %68)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  br label %72

72:                                               ; preds = %64, %56
  br label %73

73:                                               ; preds = %72, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @destroySimulation(%struct.SimFlatSt** noundef %0) #0 {
  %2 = alloca %struct.SimFlatSt**, align 8
  %3 = alloca %struct.SimFlatSt*, align 8
  %4 = alloca %struct.BasePotentialSt*, align 8
  store %struct.SimFlatSt** %0, %struct.SimFlatSt*** %2, align 8
  %5 = load %struct.SimFlatSt**, %struct.SimFlatSt*** %2, align 8
  %6 = icmp ne %struct.SimFlatSt** %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = load %struct.SimFlatSt**, %struct.SimFlatSt*** %2, align 8
  %10 = load %struct.SimFlatSt*, %struct.SimFlatSt** %9, align 8
  store %struct.SimFlatSt* %10, %struct.SimFlatSt** %3, align 8
  %11 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %12 = icmp ne %struct.SimFlatSt* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %43

14:                                               ; preds = %8
  %15 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %16 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %15, i32 0, i32 9
  %17 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %16, align 8
  store %struct.BasePotentialSt* %17, %struct.BasePotentialSt** %4, align 8
  %18 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %4, align 8
  %19 = icmp ne %struct.BasePotentialSt* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %4, align 8
  %22 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %21, i32 0, i32 8
  %23 = load void (%struct.BasePotentialSt**)*, void (%struct.BasePotentialSt**)** %22, align 8
  call void %23(%struct.BasePotentialSt** noundef %4)
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %26 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %25, i32 0, i32 4
  call void @destroyLinkCells(%struct.LinkCellSt** noundef %26)
  %27 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %28 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %27, i32 0, i32 5
  %29 = load %struct.AtomsSt*, %struct.AtomsSt** %28, align 8
  call void @destroyAtoms(%struct.AtomsSt* noundef %29)
  %30 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %31 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %30, i32 0, i32 10
  call void @destroyHaloExchange(%struct.HaloExchangeSt** noundef %31)
  %32 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %33 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %32, i32 0, i32 6
  %34 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %33, align 8
  %35 = bitcast %struct.SpeciesDataSt* %34 to i8*
  call void @comdFree(i8* noundef %35)
  %36 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %37 = getelementptr inbounds %struct.SimFlatSt, %struct.SimFlatSt* %36, i32 0, i32 3
  %38 = load %struct.DomainSt*, %struct.DomainSt** %37, align 8
  %39 = bitcast %struct.DomainSt* %38 to i8*
  call void @comdFree(i8* noundef %39)
  %40 = load %struct.SimFlatSt*, %struct.SimFlatSt** %3, align 8
  %41 = bitcast %struct.SimFlatSt* %40 to i8*
  call void @comdFree(i8* noundef %41)
  %42 = load %struct.SimFlatSt**, %struct.SimFlatSt*** %2, align 8
  store %struct.SimFlatSt* null, %struct.SimFlatSt** %42, align 8
  br label %43

43:                                               ; preds = %24, %13, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @comdFree(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finalizeSubsystems() #0 {
  ret void
}

declare dso_local void @destroyParallel() #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @comdMalloc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #5
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.BasePotentialSt* @initPotential(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.BasePotentialSt*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.BasePotentialSt* null, %struct.BasePotentialSt** %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call %struct.BasePotentialSt* @initEamPot(i8* noundef %13, i8* noundef %14, i8* noundef %15)
  store %struct.BasePotentialSt* %16, %struct.BasePotentialSt** %9, align 8
  br label %19

17:                                               ; preds = %4
  %18 = call %struct.BasePotentialSt* @initLjPot()
  store %struct.BasePotentialSt* %18, %struct.BasePotentialSt** %9, align 8
  br label %19

19:                                               ; preds = %17, %12
  %20 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %9, align 8
  %21 = icmp ne %struct.BasePotentialSt* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %24

23:                                               ; preds = %19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 noundef 277, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @__PRETTY_FUNCTION__.initPotential, i64 0, i64 0)) #6
  unreachable

24:                                               ; preds = %22
  %25 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %9, align 8
  ret %struct.BasePotentialSt* %25
}

; Function Attrs: noinline nounwind uwtable
define internal void @sanityChecks(%struct.CommandSt* noundef byval(%struct.CommandSt) align 8 %0, double noundef %1, double noundef %2, i8* noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  store i8* %3, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %18, %20
  %22 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %21, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @getNRanks()
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = call i32 @printRank()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36, %4
  %38 = load double, double* %5, align 8
  %39 = fmul double 2.000000e+00, %38
  %40 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = sitofp i32 %41 to double
  %43 = fmul double %39, %42
  store double %43, double* %10, align 8
  %44 = load double, double* %5, align 8
  %45 = fmul double 2.000000e+00, %44
  %46 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = sitofp i32 %47 to double
  %49 = fmul double %45, %48
  store double %49, double* %11, align 8
  %50 = load double, double* %5, align 8
  %51 = fmul double 2.000000e+00, %50
  %52 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = sitofp i32 %53 to double
  %55 = fmul double %51, %54
  store double %55, double* %12, align 8
  %56 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = sitofp i32 %57 to double
  %59 = load double, double* %6, align 8
  %60 = fmul double %58, %59
  store double %60, double* %13, align 8
  %61 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = sitofp i32 %62 to double
  %64 = load double, double* %6, align 8
  %65 = fmul double %63, %64
  store double %65, double* %14, align 8
  %66 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = sitofp i32 %67 to double
  %69 = load double, double* %6, align 8
  %70 = fmul double %68, %69
  store double %70, double* %15, align 8
  %71 = load double, double* %13, align 8
  %72 = load double, double* %10, align 8
  %73 = fcmp olt double %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %37
  %75 = load double, double* %14, align 8
  %76 = load double, double* %11, align 8
  %77 = fcmp olt double %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load double, double* %15, align 8
  %80 = load double, double* %12, align 8
  %81 = fcmp olt double %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78, %74, %37
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, 2
  store i32 %84, i32* %8, align 4
  %85 = call i32 @printRank()
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = load double, double* %10, align 8
  %90 = load double, double* %11, align 8
  %91 = load double, double* %12, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([135 x i8], [135 x i8]* @.str.8, i64 0, i64 0), double noundef %89, double noundef %90, double noundef %91)
  br label %93

93:                                               ; preds = %87, %82
  br label %94

94:                                               ; preds = %93, %78
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @strcasecmp(i8* noundef %95, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #7
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, 4
  store i32 %100, i32* %8, align 4
  %101 = call i32 @printRank()
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %104, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i8* noundef %105)
  br label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107, %94
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %16, align 4
  %110 = bitcast i32* %16 to i8*
  call void @bcastParallel(i8* noundef %110, i32 noundef 4, i32 noundef 0)
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %116

115:                                              ; preds = %108
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 noundef 497, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.sanityChecks, i64 0, i64 0)) #6
  unreachable

116:                                              ; preds = %114
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* %8, align 4
  call void @exit(i32 noundef %120) #6
  unreachable

121:                                              ; preds = %116
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.SpeciesDataSt* @initSpecies(%struct.BasePotentialSt* noundef %0) #0 {
  %2 = alloca %struct.BasePotentialSt*, align 8
  %3 = alloca %struct.SpeciesDataSt*, align 8
  store %struct.BasePotentialSt* %0, %struct.BasePotentialSt** %2, align 8
  %4 = call i8* @comdMalloc(i64 noundef 16)
  %5 = bitcast i8* %4 to %struct.SpeciesDataSt*
  store %struct.SpeciesDataSt* %5, %struct.SpeciesDataSt** %3, align 8
  %6 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %3, align 8
  %7 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %6, i32 0, i32 0
  %8 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %9 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %2, align 8
  %10 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %9, i32 0, i32 4
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %12 = call i8* @strcpy(i8* noundef %8, i8* noundef %11) #5
  %13 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %2, align 8
  %14 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %3, align 8
  %17 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.BasePotentialSt*, %struct.BasePotentialSt** %2, align 8
  %19 = getelementptr inbounds %struct.BasePotentialSt, %struct.BasePotentialSt* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %3, align 8
  %22 = getelementptr inbounds %struct.SpeciesDataSt, %struct.SpeciesDataSt* %21, i32 0, i32 2
  store double %20, double* %22, align 8
  %23 = load %struct.SpeciesDataSt*, %struct.SpeciesDataSt** %3, align 8
  ret %struct.SpeciesDataSt* %23
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
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local %struct.BasePotentialSt* @initEamPot(i8* noundef, i8* noundef, i8* noundef) #1

declare dso_local %struct.BasePotentialSt* @initLjPot() #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

declare dso_local i32 @getNRanks() #1

declare dso_local i32 @printRank() #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8* noundef, i8* noundef) #4

declare dso_local void @bcastParallel(i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local void @destroyLinkCells(%struct.LinkCellSt** noundef) #1

declare dso_local void @destroyAtoms(%struct.AtomsSt* noundef) #1

declare dso_local void @destroyHaloExchange(%struct.HaloExchangeSt** noundef) #1

declare dso_local void @printSeparator(%struct._IO_FILE* noundef) #1

declare dso_local void @addIntParallel(i32* noundef, i32* noundef, i32 noundef) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @maxOccupancy(%struct.LinkCellSt* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
!7 = !{!8, !9}
!8 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
!9 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noinline nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = !{!10, !11, !12}
!10 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
!11 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
!12 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { noreturn nounwind }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = !{!13, !14}
!13 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
!14 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { noreturn nounwind }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn nounwind }
attributes #5 = !{!15, !16}
!15 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
!16 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { noreturn nounwind }
attributes #3 = { noreturn nounwind }
attributes #4 = !{!17, !18}
!17 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
!18 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = { noreturn nounwind }
attributes #3 = !{noreturn nounwind}
attributes #4 = !{noreturn nounwind}
attributes #5 = !{!19, !20}
!19 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
!20 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = !{noreturn nounwind}
attributes #3 = !{noreturn nounwind}
attributes #4 = !{noreturn nounwind}
attributes #5 = !{noreturn nounwind}
attributes #6 = !{noreturn nounwind}
attributes #7 = !{noreturn nounwind}
attributes #8 = !{!21, !22}
!21 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
!22 = !{i32 1, !"frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind }
attributes #2 = !{noreturn nounwind}
attributes #3 = !{noreturn nounwind}
attributes #4 = !{noreturn nounwind}
