; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/NPB-serial/dc/dc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/NPB-serial/dc/dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ADCpar = type { i32, i32, i32, i64, i32, i8*, i8 }
%struct.ADC_VIEW_PARS = type { i32, i8, [512 x i8], [512 x i8], i32, i32, i32, i32, i32 }
%struct.PAR_VIEW_ST = type { i32, i32, i64, i32, i64 }
%struct.ADC_VIEW_CNTL = type { [512 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i8*, i32*, %struct.RBTree*, i32, %struct.chunks*, [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], [512 x i8], %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, [4 x i64], [20 x i32], [4 x i64], [4 x i64], %struct.job_pool*, %struct.layer*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.RBTree = type { %struct.treeNode, %struct.treeNode*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.treeNode**, i8* }
%struct.treeNode = type { %struct.treeNode*, %struct.treeNode*, i32, [1 x i64] }
%struct.chunks = type { i32, i64, i32, i32 }
%struct.job_pool = type { i32, i32, i32, i64 }
%struct.layer = type { i32, i32, i32 }

@input_tuples = dso_local global i64 1000, align 8
@attrnum = dso_local global i64 5, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [57 x i8] c"\0A\0A NAS Parallel Benchmarks (NPB3.3-SER) - DC Benchmark\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c" No Paramter file. Using compiled defaults\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Usage: <program name> <amount of memory>\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"       <file of parameters>\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Example: bin/dc.S 1000000 DC/ADC.par\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"The last argument, (a parameter file) can be skipped\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" %s, errno = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"main: malloc failed\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"main.ParseParFile failed\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"main.GenerateAdc failed\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Estimated rb-tree size = %d \0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"main.DC failed\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"main.ParRun failed: retcode = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"ParRun.NewAdcViewCntl: returned NULL\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"DC.NewAdcViewCntl: return code = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"DC.PartitionCube failed\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"DC.ComputeGivenGroupbys failed\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"ParRun.CloseAdcView: is failed\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\0A*** DC Benchmark Results:\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c" Input Tuples     =         %12d\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c" Number of Views  =         %12d\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c" Number of Tasks  =         %12d\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c" Tuples Generated = %20.0f\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c" Verification failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Tuples generated\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"3.3\00", align 1
@checksumS = dso_local global i64 464620213, align 8
@checksumWlo = dso_local global i64 434318, align 8
@checksumWhi = dso_local global i64 1401796, align 8
@checksumAlo = dso_local global i64 178042, align 8
@checksumAhi = dso_local global i64 7141688, align 8
@checksumBlo = dso_local global i64 700453, align 8
@checksumBhi = dso_local global i64 9348365, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ADCpar*, align 8
  %7 = alloca %struct.ADC_VIEW_PARS*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %37, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = call i16** @__ctype_b_loc() #6
  %24 = load i16*, i16** %23, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %24, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 2048
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %22, %16
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %42, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 noundef 1) #7
  unreachable

46:                                               ; preds = %22, %19
  %47 = call noalias i8* @malloc(i64 noundef 48) #8
  %48 = bitcast i8* %47 to %struct.ADCpar*
  store %struct.ADCpar* %48, %struct.ADCpar** %6, align 8
  %49 = icmp ne %struct.ADCpar* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = call noalias i8* @malloc(i64 noundef 1052) #8
  %52 = bitcast i8* %51 to %struct.ADC_VIEW_PARS*
  store %struct.ADC_VIEW_PARS* %52, %struct.ADC_VIEW_PARS** %7, align 8
  %53 = icmp ne %struct.ADC_VIEW_PARS* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50, %46
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = call i32* @__errno_location() #6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 noundef %57)
  call void @exit(i32 noundef 1) #7
  unreachable

59:                                               ; preds = %50
  %60 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  call void @initADCpar(%struct.ADCpar* noundef %60)
  %61 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %62 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %61, i32 0, i32 6
  store i8 87, i8* %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 3
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i64, i64* @attrnum, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %69 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i64, i64* @input_tuples, align 8
  %71 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %72 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  br label %89

73:                                               ; preds = %59
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %81 = call i32 @ParseParFile(i8* noundef %79, %struct.ADCpar* noundef %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %85 = call i32* @__errno_location() #6
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef %86)
  call void @exit(i32 noundef 1) #7
  unreachable

88:                                               ; preds = %76, %73
  br label %89

89:                                               ; preds = %88, %65
  %90 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  call void @ShowADCPar(%struct.ADCpar* noundef %90)
  %91 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %92 = call i32 @GenerateADC(%struct.ADCpar* noundef %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %96 = call i32* @__errno_location() #6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %95, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %97)
  call void @exit(i32 noundef 1) #7
  unreachable

99:                                               ; preds = %89
  %100 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %101 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %104 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %106 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %105, i32 0, i32 6
  %107 = load i8, i8* %106, align 8
  %108 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %109 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %108, i32 0, i32 1
  store i8 %107, i8* %109, align 4
  %110 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %111 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %114 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %116 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %119 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %121 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %120, i32 0, i32 8
  store i32 1, i32* %121, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp sge i32 %122, 2
  br i1 %123, label %124, label %131

124:                                              ; preds = %99
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @atoi(i8* noundef %127) #9
  %129 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %130 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 4
  br label %134

131:                                              ; preds = %99
  %132 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %133 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %132, i32 0, i32 7
  store i32 0, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %124
  %135 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %136 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = icmp ule i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %134
  %140 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %141 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %144 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 5, %145
  %147 = add nsw i32 50, %146
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %142, %148
  %150 = trunc i64 %149 to i32
  %151 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %152 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 4
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %154 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %155 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %153, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 noundef %156)
  br label %158

158:                                              ; preds = %139, %134
  %159 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %160 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %164 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %166 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %165, i32 0, i32 2
  %167 = getelementptr inbounds [512 x i8], [512 x i8]* %166, i64 0, i64 0
  %168 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %169 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %168, i32 0, i32 5
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @strcpy(i8* noundef %167, i8* noundef %170) #8
  %172 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %173 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %172, i32 0, i32 3
  %174 = getelementptr inbounds [512 x i8], [512 x i8]* %173, i64 0, i64 0
  %175 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %176 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %175, i32 0, i32 5
  %177 = load i8*, i8** %176, align 8
  %178 = call i8* @strcpy(i8* noundef %174, i8* noundef %177) #8
  %179 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %180 = call i32 @DC(%struct.ADC_VIEW_PARS* noundef %179)
  store i32 %180, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %158
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %184 = call i32* @__errno_location() #6
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %183, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 noundef %185)
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %187, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 noundef %188)
  call void @exit(i32 noundef 1) #7
  unreachable

190:                                              ; preds = %158
  %191 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %192 = icmp ne %struct.ADCpar* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.ADCpar*, %struct.ADCpar** %6, align 8
  %195 = bitcast %struct.ADCpar* %194 to i8*
  call void @free(i8* noundef %195) #8
  store %struct.ADCpar* null, %struct.ADCpar** %6, align 8
  br label %196

196:                                              ; preds = %193, %190
  %197 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %198 = icmp ne %struct.ADC_VIEW_PARS* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %7, align 8
  %201 = bitcast %struct.ADC_VIEW_PARS* %200 to i8*
  call void @free(i8* noundef %201) #8
  store %struct.ADC_VIEW_PARS* null, %struct.ADC_VIEW_PARS** %7, align 8
  br label %202

202:                                              ; preds = %199, %196
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #2

declare dso_local void @initADCpar(%struct.ADCpar* noundef) #1

declare dso_local i32 @ParseParFile(i8* noundef, %struct.ADCpar* noundef) #1

declare dso_local void @ShowADCPar(%struct.ADCpar* noundef) #1

declare dso_local i32 @GenerateADC(%struct.ADCpar* noundef) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DC(%struct.ADC_VIEW_PARS* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ADC_VIEW_PARS*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.PAR_VIEW_ST*, align 8
  %7 = alloca %struct.ADC_VIEW_CNTL*, align 8
  store %struct.ADC_VIEW_PARS* %0, %struct.ADC_VIEW_PARS** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = call noalias i8* @malloc(i64 noundef 32) #8
  %9 = bitcast i8* %8 to %struct.PAR_VIEW_ST*
  store %struct.PAR_VIEW_ST* %9, %struct.PAR_VIEW_ST** %6, align 8
  %10 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %11 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %13 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %15 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %17 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %16, i32 0, i32 3
  store i32 0, i32* %17, align 8
  %18 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %19 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.ADC_VIEW_CNTL* @NewAdcViewCntl(%struct.ADC_VIEW_PARS* noundef %20, i32 noundef %21)
  store %struct.ADC_VIEW_CNTL* %22, %struct.ADC_VIEW_CNTL** %7, align 8
  %23 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %24 = icmp ne %struct.ADC_VIEW_CNTL* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32* @__errno_location() #6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 noundef %28)
  store i32 2, i32* %2, align 4
  br label %173

30:                                               ; preds = %1
  %31 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %32 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %38 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 noundef %39)
  br label %41

41:                                               ; preds = %35, %30
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %44 = call i32 @PartitionCube(%struct.ADC_VIEW_CNTL* noundef %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i32* @__errno_location() #6
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 noundef %49)
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %53 = call i32 @ComputeGivenGroupbys(%struct.ADC_VIEW_CNTL* noundef %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = call i32* @__errno_location() #6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %58)
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %62 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %65 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %69 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %102, label %72

72:                                               ; preds = %60
  %73 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %74 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %73, i32 0, i32 52
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %77 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = add i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %81 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %80, i32 0, i32 51
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %84 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, %82
  store i64 %86, i64* %84, align 8
  %87 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %88 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %87, i32 0, i32 13
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %91 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %95 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %94, i32 0, i32 42
  %96 = getelementptr inbounds [4 x i64], [4 x i64]* %95, i64 0, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %99 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, %97
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %72, %60
  %103 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %104 = call i32 @CloseAdcView(%struct.ADC_VIEW_CNTL* noundef %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %108 = call i32* @__errno_location() #6
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %107, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 noundef %109)
  %111 = load %struct.ADC_VIEW_CNTL*, %struct.ADC_VIEW_CNTL** %7, align 8
  %112 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %111, i32 0, i32 2
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %102
  %114 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %115 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %3, align 8
  %118 = call i32 @Verify(i64 noundef %116, %struct.ADC_VIEW_PARS* noundef %117)
  %119 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %120 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %122 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  br label %133

126:                                              ; preds = %113
  %127 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %128 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 1, i32 0
  br label %133

133:                                              ; preds = %126, %125
  %134 = phi i32 [ -1, %125 ], [ %132, %126 ]
  store i32 %134, i32* %5, align 4
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %135, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0))
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %138 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %3, align 8
  %139 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %137, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 noundef %140)
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %143 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %144 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %142, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 noundef %145)
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %148 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %3, align 8
  %149 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %147, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 noundef %150)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %153 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %154 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = uitofp i32 %155 to double
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %152, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), double noundef %156)
  %158 = load %struct.PAR_VIEW_ST*, %struct.PAR_VIEW_ST** %6, align 8
  %159 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %133
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %164 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %163, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %133
  %166 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %3, align 8
  %167 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %166, i32 0, i32 1
  %168 = load i8, i8* %167, align 4
  %169 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %3, align 8
  %170 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %5, align 4
  call void @c_print_results(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8 noundef signext %168, i32 noundef %171, i32 noundef 0, i32 noundef 0, i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 noundef %172, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %165, %25
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

declare dso_local %struct.ADC_VIEW_CNTL* @NewAdcViewCntl(%struct.ADC_VIEW_PARS* noundef, i32 noundef) #1

declare dso_local i32 @PartitionCube(%struct.ADC_VIEW_CNTL* noundef) #1

declare dso_local i32 @ComputeGivenGroupbys(%struct.ADC_VIEW_CNTL* noundef) #1

declare dso_local i32 @CloseAdcView(%struct.ADC_VIEW_CNTL* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Verify(i64 noundef %0, %struct.ADC_VIEW_PARS* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ADC_VIEW_PARS*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.ADC_VIEW_PARS* %1, %struct.ADC_VIEW_PARS** %5, align 8
  %6 = load %struct.ADC_VIEW_PARS*, %struct.ADC_VIEW_PARS** %5, align 8
  %7 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %6, i32 0, i32 1
  %8 = load i8, i8* %7, align 4
  %9 = sext i8 %8 to i32
  switch i32 %9, label %43 [
    i32 83, label %10
    i32 87, label %16
    i32 65, label %25
    i32 66, label %34
  ]

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @checksumS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %45

15:                                               ; preds = %10
  br label %44

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @checksumWlo, align 8
  %19 = load i64, i64* @checksumWhi, align 8
  %20 = mul nsw i64 1000000, %19
  %21 = add nsw i64 %18, %20
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %45

24:                                               ; preds = %16
  br label %44

25:                                               ; preds = %2
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @checksumAlo, align 8
  %28 = load i64, i64* @checksumAhi, align 8
  %29 = mul nsw i64 1000000, %28
  %30 = add nsw i64 %27, %29
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %45

33:                                               ; preds = %25
  br label %44

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @checksumBlo, align 8
  %37 = load i64, i64* @checksumBhi, align 8
  %38 = mul nsw i64 1000000, %37
  %39 = add nsw i64 %36, %38
  %40 = icmp eq i64 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %45

42:                                               ; preds = %34
  br label %44

43:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

44:                                               ; preds = %42, %33, %24, %15
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %43, %41, %32, %23, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local void @c_print_results(i8* noundef, i8 noundef signext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
