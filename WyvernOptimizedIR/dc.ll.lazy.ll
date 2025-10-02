; ModuleID = './dc.ll'
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
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %3)
  %.not = icmp eq i32 %0, 3
  br i1 %.not, label %8, label %5

5:                                                ; preds = %2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 43, i64 1, %struct._IO_FILE* %6)
  br label %8

8:                                                ; preds = %5, %2
  %9 = icmp sgt i32 %0, 3
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = icmp sgt i32 %0, 1
  br i1 %11, label %12, label %31

12:                                               ; preds = %10
  %13 = call i16** @__ctype_b_loc() #8
  %14 = load i16*, i16** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %1, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i64
  %19 = getelementptr inbounds i16, i16* %14, i64 %18
  %20 = load i16, i16* %19, align 2
  %21 = and i16 %20, 2048
  %.not7 = icmp eq i16 %21, 0
  br i1 %.not7, label %22, label %31

22:                                               ; preds = %12, %8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i64 @fwrite(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %23) #9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %25) #9
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 37, i64 1, %struct._IO_FILE* %27) #9
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i64 @fwrite(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i64 53, i64 1, %struct._IO_FILE* %29) #9
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %12, %10
  %32 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #11
  %33 = bitcast i8* %32 to %struct.ADCpar*
  %.not1 = icmp eq i8* %32, null
  br i1 %.not1, label %37, label %34

34:                                               ; preds = %31
  %35 = call noalias dereferenceable_or_null(1052) i8* @malloc(i64 noundef 1052) #11
  %36 = bitcast i8* %35 to %struct.ADC_VIEW_PARS*
  %.not2 = icmp eq i8* %35, null
  br i1 %.not2, label %37, label %42

37:                                               ; preds = %34, %31
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32* @__errno_location() #8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 noundef %40) #12
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %34
  call void @initADCpar(%struct.ADCpar* noundef nonnull %33) #11
  %43 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 6
  store i8 87, i8* %43, align 8
  %.not3 = icmp eq i32 %0, 3
  br i1 %.not3, label %50, label %44

44:                                               ; preds = %42
  %45 = load i64, i64* @attrnum, align 8
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i64, i64* @input_tuples, align 8
  %49 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 3
  store i64 %48, i64* %49, align 8
  br label %61

50:                                               ; preds = %42
  br i1 true, label %51, label %60

51:                                               ; preds = %50
  %52 = getelementptr inbounds i8*, i8** %1, i64 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @ParseParFile(i8* noundef %53, %struct.ADCpar* noundef nonnull %33) #11
  %.not6 = icmp eq i32 %54, 0
  br i1 %.not6, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = call i32* @__errno_location() #8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %56, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 noundef %58) #12
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %51, %50
  br label %61

61:                                               ; preds = %60, %44
  call void @ShowADCPar(%struct.ADCpar* noundef nonnull %33) #11
  %62 = call i32 @GenerateADC(%struct.ADCpar* noundef nonnull %33) #11
  %.not4 = icmp eq i32 %62, 0
  br i1 %.not4, label %63, label %68

63:                                               ; preds = %61
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = call i32* @__errno_location() #8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 noundef %66) #12
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 6
  %73 = load i8, i8* %72, align 8
  %74 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 1
  store i8 %73, i8* %74, align 4
  %75 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 4
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 5
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 8
  store i32 1, i32* %81, align 4
  %82 = icmp sgt i32 %0, 1
  br i1 %82, label %83, label %88

83:                                               ; preds = %68
  %84 = getelementptr inbounds i8*, i8** %1, i64 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @atoi(i8* noundef %85) #13
  %87 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 7
  store i32 %86, i32* %87, align 4
  br label %90

88:                                               ; preds = %68
  %89 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 7
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %88, %83
  %91 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, 5
  %100 = add nsw i32 %99, 50
  %101 = trunc i64 %96 to i32
  %102 = mul i32 %100, %101
  %103 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 7
  store i32 %102, i32* %103, align 4
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %104, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 noundef %102) #11
  br label %106

106:                                              ; preds = %94, %90
  %107 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 6
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 2, i64 0
  %112 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 5
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @strcpy(i8* noundef nonnull %111, i8* noundef nonnull dereferenceable(1) %113) #11
  %115 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %36, i64 0, i32 3, i64 0
  %116 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %33, i64 0, i32 5
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @strcpy(i8* noundef nonnull %115, i8* noundef nonnull dereferenceable(1) %117) #11
  %119 = call i32 @DC(%struct.ADC_VIEW_PARS* noundef nonnull %36)
  %.not5 = icmp eq i32 %119, 0
  br i1 %.not5, label %127, label %120

120:                                              ; preds = %106
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %122 = call i32* @__errno_location() #8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 noundef %123) #12
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %125, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 noundef %119) #12
  call void @exit(i32 noundef 1) #10
  br label %UnifiedUnreachableBlock

127:                                              ; preds = %106
  br i1 true, label %128, label %129

128:                                              ; preds = %127
  call void @free(i8* noundef %32) #11
  br label %129

129:                                              ; preds = %128, %127
  br i1 true, label %130, label %131

130:                                              ; preds = %129
  call void @free(i8* noundef %35) #11
  br label %131

131:                                              ; preds = %130, %129
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %120, %63, %55, %37, %22
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i32* @__errno_location() #2

declare dso_local void @initADCpar(%struct.ADCpar* noundef) #1

declare dso_local i32 @ParseParFile(i8* noundef, %struct.ADCpar* noundef) #1

declare dso_local void @ShowADCPar(%struct.ADCpar* noundef) #1

declare dso_local i32 @GenerateADC(%struct.ADCpar* noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DC(%struct.ADC_VIEW_PARS* noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #11
  %3 = bitcast i8* %2 to %struct.PAR_VIEW_ST*
  %4 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 3
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = call %struct.ADC_VIEW_CNTL* @NewAdcViewCntl(%struct.ADC_VIEW_PARS* noundef %0, i32 noundef 0) #11
  %.not = icmp eq %struct.ADC_VIEW_CNTL* %9, null
  br i1 %.not, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32* @__errno_location() #8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 noundef %13) #12
  br label %116

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %9, i64 0, i32 1
  %17 = load i32, i32* %16, align 8
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %23, label %18

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %9, i64 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0), i32 noundef %21) #12
  br label %23

23:                                               ; preds = %18, %15
  br label %24

24:                                               ; preds = %23
  %25 = call i32 @PartitionCube(%struct.ADC_VIEW_CNTL* noundef nonnull %9) #11
  %.not2 = icmp eq i32 %25, 0
  br i1 %.not2, label %31, label %26

26:                                               ; preds = %24
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32* @__errno_location() #8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 noundef %29) #12
  br label %31

31:                                               ; preds = %26, %24
  %32 = call i32 @ComputeGivenGroupbys(%struct.ADC_VIEW_CNTL* noundef nonnull %9) #11
  %.not3 = icmp eq i32 %32, 0
  br i1 %.not3, label %38, label %33

33:                                               ; preds = %31
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32* @__errno_location() #8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 noundef %36) #12
  br label %38

38:                                               ; preds = %33, %31
  %39 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %9, i64 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add i32 %42, %40
  store i32 %43, i32* %41, align 8
  %.not4 = icmp eq i32 %40, 0
  br i1 %.not4, label %44, label %65

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %9, i64 0, i32 52
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = add i32 %48, %46
  store i32 %49, i32* %47, align 8
  %50 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %9, i64 0, i32 51
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %51
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %9, i64 0, i32 13
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %9, i64 0, i32 42, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %61
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %44, %38
  %66 = call i32 @CloseAdcView(%struct.ADC_VIEW_CNTL* noundef nonnull %9) #11
  %.not5 = icmp eq i32 %66, 0
  br i1 %.not5, label %73, label %67

67:                                               ; preds = %65
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = call i32* @__errno_location() #8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 noundef %70) #12
  %72 = getelementptr inbounds %struct.ADC_VIEW_CNTL, %struct.ADC_VIEW_CNTL* %9, i64 0, i32 2
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %65
  %74 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @Verify(i64 noundef %75, %struct.ADC_VIEW_PARS* noundef %0)
  %77 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = icmp eq i32 %76, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %85

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  br label %85

85:                                               ; preds = %80, %79
  %86 = phi i32 [ -1, %79 ], [ %84, %80 ]
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %88 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %87)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %90 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %0, i64 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0), i32 noundef %91) #11
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %94 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0), i32 noundef %95) #11
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %98 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %0, i64 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %97, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 noundef %99) #11
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %102 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = uitofp i32 %103 to double
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), double noundef %104) #11
  %106 = getelementptr inbounds %struct.PAR_VIEW_ST, %struct.PAR_VIEW_ST* %3, i64 0, i32 0
  %107 = load i32, i32* %106, align 8
  %.not6 = icmp eq i32 %107, 0
  br i1 %.not6, label %111, label %108

108:                                              ; preds = %85
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %110 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %109)
  br label %111

111:                                              ; preds = %108, %85
  %112 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %0, i64 0, i32 1
  %113 = load i8, i8* %112, align 4
  %114 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %0, i64 0, i32 6
  %115 = load i32, i32* %114, align 4
  call void @c_print_results(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8 noundef signext %113, i32 noundef %115, i32 noundef 0, i32 noundef 0, i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 noundef %86, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #11
  br label %116

116:                                              ; preds = %111, %10
  %.0 = phi i32 [ 0, %111 ], [ 2, %10 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

declare dso_local %struct.ADC_VIEW_CNTL* @NewAdcViewCntl(%struct.ADC_VIEW_PARS* noundef, i32 noundef) #1

declare dso_local i32 @PartitionCube(%struct.ADC_VIEW_CNTL* noundef) #1

declare dso_local i32 @ComputeGivenGroupbys(%struct.ADC_VIEW_CNTL* noundef) #1

declare dso_local i32 @CloseAdcView(%struct.ADC_VIEW_CNTL* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @Verify(i64 noundef %0, %struct.ADC_VIEW_PARS* nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.ADC_VIEW_PARS, %struct.ADC_VIEW_PARS* %1, i64 0, i32 1
  %4 = load i8, i8* %3, align 4
  %5 = sext i8 %4 to i32
  switch i32 %5, label %35 [
    i32 83, label %6
    i32 87, label %11
    i32 65, label %19
    i32 66, label %27
  ]

6:                                                ; preds = %2
  %7 = load i64, i64* @checksumS, align 8
  %8 = icmp eq i64 %7, %0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %37

10:                                               ; preds = %6
  br label %36

11:                                               ; preds = %2
  %12 = load i64, i64* @checksumWlo, align 8
  %13 = load i64, i64* @checksumWhi, align 8
  %14 = mul nsw i64 %13, 1000000
  %15 = add nsw i64 %12, %14
  %16 = icmp eq i64 %15, %0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %37

18:                                               ; preds = %11
  br label %36

19:                                               ; preds = %2
  %20 = load i64, i64* @checksumAlo, align 8
  %21 = load i64, i64* @checksumAhi, align 8
  %22 = mul nsw i64 %21, 1000000
  %23 = add nsw i64 %20, %22
  %24 = icmp eq i64 %23, %0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %37

26:                                               ; preds = %19
  br label %36

27:                                               ; preds = %2
  %28 = load i64, i64* @checksumBlo, align 8
  %29 = load i64, i64* @checksumBhi, align 8
  %30 = mul nsw i64 %29, 1000000
  %31 = add nsw i64 %28, %30
  %32 = icmp eq i64 %31, %0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %37

34:                                               ; preds = %27
  br label %36

35:                                               ; preds = %2
  br label %37

36:                                               ; preds = %34, %26, %18, %10
  br label %37

37:                                               ; preds = %36, %35, %33, %25, %17, %9
  %.0 = phi i32 [ -1, %35 ], [ 0, %33 ], [ 1, %36 ], [ 0, %25 ], [ 0, %17 ], [ 0, %9 ]
  ret i32 %.0
}

declare dso_local void @c_print_results(i8* noundef, i8 noundef signext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind readnone willreturn }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
