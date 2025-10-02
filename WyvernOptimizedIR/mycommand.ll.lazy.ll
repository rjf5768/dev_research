; ModuleID = './mycommand.ll'
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
  %5 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1024) %5, i8 0, i64 1024, i1 false)
  %6 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 1, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1024) %6, i8 0, i64 1024, i1 false)
  %7 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 2, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  %8 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(5) %8, i8* noundef nonnull align 1 dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 5, i1 false) #8
  %9 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 1, i64 0
  store i8 0, i8* %9, align 8
  %10 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 2, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(7) %10, i8* noundef nonnull align 1 dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 7, i1 false) #8
  %11 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 3
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 4
  store i32 20, i32* %12, align 4
  %13 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 5
  store i32 20, i32* %13, align 8
  %14 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 6
  store i32 20, i32* %14, align 4
  %15 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 7
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 8
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 9
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 10
  store i32 100, i32* %18, align 4
  %19 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 11
  store i32 10, i32* %19, align 8
  %20 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 12
  store double 1.000000e+00, double* %20, align 8
  %21 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 13
  store double -1.000000e+00, double* %21, align 8
  %22 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 14
  store double 6.000000e+02, double* %22, align 8
  %23 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 15
  store double 0.000000e+00, double* %23, align 8
  store i32 0, i32* %4, align 4
  %24 = bitcast i32* %4 to i8*
  %25 = call i32 @addArg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8 noundef signext 104, i32 noundef 0, i8 noundef signext 105, i8* noundef nonnull %24, i32 noundef 0, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0)) #8
  %26 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 0, i64 0
  %27 = call i32 @addArg(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8 noundef signext 100, i32 noundef 1, i8 noundef signext 115, i8* noundef %26, i32 noundef 1024, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #8
  %28 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 1, i64 0
  %29 = call i32 @addArg(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8 noundef signext 112, i32 noundef 1, i8 noundef signext 115, i8* noundef nonnull %28, i32 noundef 1024, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0)) #8
  %30 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 2, i64 0
  %31 = call i32 @addArg(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8 noundef signext 116, i32 noundef 1, i8 noundef signext 115, i8* noundef nonnull %30, i32 noundef 1024, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0)) #8
  %32 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 3
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 @addArg(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8 noundef signext 101, i32 noundef 0, i8 noundef signext 105, i8* noundef nonnull %33, i32 noundef 0, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #8
  %35 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 4
  %36 = bitcast i32* %35 to i8*
  %37 = call i32 @addArg(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8 noundef signext 120, i32 noundef 1, i8 noundef signext 105, i8* noundef nonnull %36, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0)) #8
  %38 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 5
  %39 = bitcast i32* %38 to i8*
  %40 = call i32 @addArg(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8 noundef signext 121, i32 noundef 1, i8 noundef signext 105, i8* noundef nonnull %39, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0)) #8
  %41 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 6
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 @addArg(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8 noundef signext 122, i32 noundef 1, i8 noundef signext 105, i8* noundef nonnull %42, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0)) #8
  %44 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 7
  %45 = bitcast i32* %44 to i8*
  %46 = call i32 @addArg(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8 noundef signext 105, i32 noundef 1, i8 noundef signext 105, i8* noundef nonnull %45, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0)) #8
  %47 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 8
  %48 = bitcast i32* %47 to i8*
  %49 = call i32 @addArg(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8 noundef signext 106, i32 noundef 1, i8 noundef signext 105, i8* noundef nonnull %48, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0)) #8
  %50 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 9
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @addArg(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8 noundef signext 107, i32 noundef 1, i8 noundef signext 105, i8* noundef nonnull %51, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0)) #8
  %53 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 10
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @addArg(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8 noundef signext 78, i32 noundef 1, i8 noundef signext 105, i8* noundef nonnull %54, i32 noundef 0, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #8
  %56 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 11
  %57 = bitcast i32* %56 to i8*
  %58 = call i32 @addArg(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8 noundef signext 110, i32 noundef 1, i8 noundef signext 105, i8* noundef nonnull %57, i32 noundef 0, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0)) #8
  %59 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 12
  %60 = bitcast double* %59 to i8*
  %61 = call i32 @addArg(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8 noundef signext 68, i32 noundef 1, i8 noundef signext 100, i8* noundef nonnull %60, i32 noundef 0, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0)) #8
  %62 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 13
  %63 = bitcast double* %62 to i8*
  %64 = call i32 @addArg(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8 noundef signext 108, i32 noundef 1, i8 noundef signext 100, i8* noundef nonnull %63, i32 noundef 0, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0)) #8
  %65 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 14
  %66 = bitcast double* %65 to i8*
  %67 = call i32 @addArg(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8 noundef signext 84, i32 noundef 1, i8 noundef signext 100, i8* noundef nonnull %66, i32 noundef 0, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0)) #8
  %68 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 15
  %69 = bitcast double* %68 to i8*
  %70 = call i32 @addArg(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i8 noundef signext 114, i32 noundef 1, i8 noundef signext 100, i8* noundef nonnull %69, i32 noundef 0, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0)) #8
  call void @processArgs(i32 noundef %1, i8** noundef %2) #8
  %71 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 1, i64 0
  %72 = call i64 @strlen(i8* noundef nonnull %71) #9
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %3
  %75 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 2, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %75, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i64 6)
  %76 = icmp eq i32 %bcmp, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 1, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(15) %78, i8* noundef nonnull align 1 dereferenceable(15) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i64 15, i1 false) #8
  br label %79

79:                                               ; preds = %77, %74
  %80 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 2, i64 0
  %bcmp1 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %80, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 7)
  %81 = icmp eq i32 %bcmp1, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %0, i64 0, i32 1, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(10) %83, i8* noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i64 10, i1 false) #8
  br label %84

84:                                               ; preds = %82, %79
  br label %85

85:                                               ; preds = %84, %3
  %86 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %86, 0
  br i1 %.not, label %88, label %87

87:                                               ; preds = %85
  call void @printArgs() #8
  call void @freeArgs() #8
  call void @exit(i32 noundef 2) #10
  unreachable

88:                                               ; preds = %85
  call void @freeArgs() #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i32 @addArg(i8* noundef, i8 noundef signext, i32 noundef, i8 noundef signext, i8* noundef, i32 noundef, i8* noundef) #3

declare dso_local void @processArgs(i32 noundef, i8** noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

declare dso_local void @printArgs() #3

declare dso_local void @freeArgs() #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @printCmdYaml(%struct._IO_FILE* noundef %0, %struct.CommandSt* noundef %1) #0 {
  %3 = call i32 @printRank() #8
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %2
  br label %36

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 1, i64 0
  %9 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 2, i64 0
  %10 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 13
  %23 = load double, double* %22, align 8
  %24 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 12
  %29 = load double, double* %28, align 8
  %30 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 14
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds %struct.CommandSt, %struct.CommandSt* %1, i64 0, i32 15
  %33 = load double, double* %32, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([282 x i8], [282 x i8]* @.str.40, i64 0, i64 0), i32 noundef %7, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i8* noundef nonnull %8, i8* noundef nonnull %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, double noundef %23, i32 noundef %25, i32 noundef %27, double noundef %29, double noundef %31, double noundef %33) #8
  %35 = call i32 @fflush(%struct._IO_FILE* noundef %0) #8
  br label %36

36:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @printRank() #3

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
