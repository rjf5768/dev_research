; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/mycommand.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/mycommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandSt = type { [1024 x i8], [1024 x i8], [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [5 x i8] c"pots\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"funcfl\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"print this message\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"potDir\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"potential directory\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"potName\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"potential name\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"potType\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"potential type (funcfl or setfl)\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"doeam\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"compute eam potentials\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"number of unit cells in x\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"number of unit cells in y\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"number of unit cells in z\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"xproc\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"processors in x direction\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"yproc\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"processors in y direction\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"zproc\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"processors in z direction\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"nSteps\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"number of time steps\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"printRate\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"number of steps between output\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"time step (in fs)\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"lattice parameter (Angstroms)\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"initial temperature (K)\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"initial delta (Angstroms)\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"setfl\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Cu01.eam.alloy\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Cu_u6.eam\00", align 1
@.str.40 = private unnamed_addr constant [282 x i8] c"Command Line Parameters:\0A  doeam: %d\0A  potDir: %s\0A  potName: %s\0A  potType: %s\0A  nx: %d\0A  ny: %d\0A  nz: %d\0A  xproc: %d\0A  yproc: %d\0A  zproc: %d\0A  Lattice constant: %g Angstroms\0A  nSteps: %d\0A  printRate: %d\0A  Time step: %g fs\0A  Initial Temperature: %g K\0A  Initial Delta: %g Angstroms\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @parseCommandLine(%struct.CommandSt* noalias sret(%struct.CommandSt) align 8 %0, i32 noundef %1, i8** noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  store i8** %2, i8*** %5, align 8
  %7 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 0
  %8 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 1024, i1 false)
  %9 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 1
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 1024, i1 false)
  %11 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 2
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 1024, i1 false)
  %13 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 0
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %15 = call i8* @strcpy(i8* noundef %14, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #6
  %16 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 1
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %18 = call i8* @strcpy(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %19 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 2
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %21 = call i8* @strcpy(i8* noundef %20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #6
  %22 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 4
  store i32 20, i32* %23, align 4
  %24 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 5
  store i32 20, i32* %24, align 8
  %25 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 6
  store i32 20, i32* %25, align 4
  %26 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 7
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 8
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 9
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 10
  store i32 100, i32* %29, align 4
  %30 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 11
  store i32 10, i32* %30, align 8
  %31 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 12
  store double 1.000000e+00, double* %31, align 8
  %32 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 13
  store double -1.000000e+00, double* %32, align 8
  %33 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 14
  store double 6.000000e+02, double* %33, align 8
  %34 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 15
  store double 0.000000e+00, double* %34, align 8
  store i32 0, i32* %6, align 4
  %35 = bitcast i32* %6 to i8*
  %36 = call i32 @addArg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 104, i32 noundef 0, i8 noundef signext 105, i8* noundef %35, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 0
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %37, i64 0, i64 0
  %39 = call i32 @addArg(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 100, i32 noundef 1, i8 noundef signext 115, i8* noundef %38, i32 noundef 1024, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 1
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %40, i64 0, i64 0
  %42 = call i32 @addArg(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8 noundef signext 112, i32 noundef 1, i8 noundef signext 115, i8* noundef %41, i32 noundef 1024, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 2
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %43, i64 0, i64 0
  %45 = call i32 @addArg(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8 noundef signext 116, i32 noundef 1, i8 noundef signext 115, i8* noundef %44, i32 noundef 1024, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %46 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 3
  %47 = bitcast i32* %46 to i8*
  %48 = call i32 @addArg(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8 noundef signext 101, i32 noundef 0, i8 noundef signext 105, i8* noundef %47, i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %49 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 4
  %50 = bitcast i32* %49 to i8*
  %51 = call i32 @addArg(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8 noundef signext 120, i32 noundef 1, i8 noundef signext 105, i8* noundef %50, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %52 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 5
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 @addArg(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8 noundef signext 121, i32 noundef 1, i8 noundef signext 105, i8* noundef %53, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %55 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 6
  %56 = bitcast i32* %55 to i8*
  %57 = call i32 @addArg(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8 noundef signext 122, i32 noundef 1, i8 noundef signext 105, i8* noundef %56, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 7
  %59 = bitcast i32* %58 to i8*
  %60 = call i32 @addArg(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8 noundef signext 105, i32 noundef 1, i8 noundef signext 105, i8* noundef %59, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 8
  %62 = bitcast i32* %61 to i8*
  %63 = call i32 @addArg(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8 noundef signext 106, i32 noundef 1, i8 noundef signext 105, i8* noundef %62, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 9
  %65 = bitcast i32* %64 to i8*
  %66 = call i32 @addArg(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8 noundef signext 107, i32 noundef 1, i8 noundef signext 105, i8* noundef %65, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  %67 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 10
  %68 = bitcast i32* %67 to i8*
  %69 = call i32 @addArg(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8 noundef signext 78, i32 noundef 1, i8 noundef signext 105, i8* noundef %68, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0))
  %70 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 11
  %71 = bitcast i32* %70 to i8*
  %72 = call i32 @addArg(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8 noundef signext 110, i32 noundef 1, i8 noundef signext 105, i8* noundef %71, i32 noundef 0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 12
  %74 = bitcast double* %73 to i8*
  %75 = call i32 @addArg(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8 noundef signext 68, i32 noundef 1, i8 noundef signext 100, i8* noundef %74, i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %76 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 13
  %77 = bitcast double* %76 to i8*
  %78 = call i32 @addArg(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8 noundef signext 108, i32 noundef 1, i8 noundef signext 100, i8* noundef %77, i32 noundef 0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0))
  %79 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 14
  %80 = bitcast double* %79 to i8*
  %81 = call i32 @addArg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8 noundef signext 84, i32 noundef 1, i8 noundef signext 100, i8* noundef %80, i32 noundef 0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0))
  %82 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 15
  %83 = bitcast double* %82 to i8*
  %84 = call i32 @addArg(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8 noundef signext 114, i32 noundef 1, i8 noundef signext 100, i8* noundef %83, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0))
  %85 = load i32, i32* %4, align 4
  %86 = load i8**, i8*** %5, align 8
  call void @processArgs(i32 noundef %85, i8** noundef %86)
  %87 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 1
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %87, i64 0, i64 0
  %89 = call i64 @strlen(i8* noundef %88) #7
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %3
  %92 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 2
  %93 = getelementptr inbounds [1024 x i8], [1024 x i8]* %92, i64 0, i64 0
  %94 = call i32 @strcmp(i8* noundef %93, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #7
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 1
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %97, i64 0, i64 0
  %99 = call i8* @strcpy(i8* noundef %98, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0)) #6
  br label %100

100:                                              ; preds = %96, %91
  %101 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 2
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %101, i64 0, i64 0
  %103 = call i32 @strcmp(i8* noundef %102, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #7
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i32 0, i32 1
  %107 = getelementptr inbounds [1024 x i8], [1024 x i8]* %106, i64 0, i64 0
  %108 = call i8* @strcpy(i8* noundef %107, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0)) #6
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %109, %3
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call void @printArgs()
  call void @freeArgs()
  call void @exit(i32 noundef 2) #8
  unreachable

114:                                              ; preds = %110
  call void @freeArgs()
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i32 @addArg(i8* noundef, i8 noundef signext, i32 noundef, i8 noundef signext, i8* noundef, i32 noundef, i8* noundef) #3

declare dso_local void @processArgs(i32 noundef, i8** noundef) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

declare dso_local void @printArgs() #3

declare dso_local void @freeArgs() #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @printCmdYaml(%struct._IO_FILE* noundef %0, %struct.CommandSt* noundef %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.CommandSt*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.CommandSt* %1, %struct.CommandSt** %4, align 8
  %5 = call i32 @printRank()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %58

8:                                                ; preds = %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %10 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %11 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %14 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %13, i32 0, i32 1
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %16 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %17 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %16, i32 0, i32 2
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %19 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %20 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %23 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %26 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %29 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %32 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %35 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %38 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %37, i32 0, i32 13
  %39 = load double, double* %38, align 8
  %40 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %41 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %44 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %47 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %46, i32 0, i32 12
  %48 = load double, double* %47, align 8
  %49 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %50 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %49, i32 0, i32 14
  %51 = load double, double* %50, align 8
  %52 = load %struct.CommandSt*, %struct.CommandSt** %4, align 8
  %53 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %52, i32 0, i32 15
  %54 = load double, double* %53, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([282 x i8], [282 x i8]* @.str.40, i64 0, i64 0), i32 noundef %12, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i8* noundef %15, i8* noundef %18, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %36, double noundef %39, i32 noundef %42, i32 noundef %45, double noundef %48, double noundef %51, double noundef %54)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %57 = call i32 @fflush(%struct._IO_FILE* noundef %56)
  br label %58

58:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @printRank() #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
