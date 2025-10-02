; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/finalout.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/finalout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@TWsignal = dso_local global i32 0, align 4
@Tsave = external dso_local global double, align 8
@redoFlag = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.cel\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@overlap = external dso_local global i32 (...)*, align 8
@overlapf = external dso_local global i32 (...)*, align 8
@overlapx = external dso_local global i32 (...)*, align 8
@lapFactor = external dso_local global double, align 8
@offset = external dso_local global i32, align 4
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"\0A\0ANew Value for lapFactor: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"New Value for offset: %d\0A\0A\00", align 1
@funccost = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"TimberWolf failed to resolve overlap problem.\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\0A\0APotential Overlap Problem Averted\0A\0A\00", align 1
@doCompaction = external dso_local global i32, align 4
@finalShot = dso_local global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Cannot execute system calls!\0A\00", align 1
@doChannelGraph = external dso_local global i32, align 4
@doGlobalRoute = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @finalout() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32 0, i32* @TWsignal, align 4
  %9 = load double, double* @Tsave, align 8
  %10 = fdiv double %9, 1.000000e+05
  store double %10, double* %7, align 8
  %11 = load double, double* @Tsave, align 8
  %12 = call double @log10(double noundef %11) #4
  store double %12, double* %8, align 8
  %13 = load double, double* %8, align 8
  %14 = fcmp ogt double %13, 6.000000e+00
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load double, double* %8, align 8
  %17 = fsub double %16, 1.000000e+00
  store double %17, double* %8, align 8
  br label %19

18:                                               ; preds = %0
  store double 5.000000e+00, double* %8, align 8
  br label %19

19:                                               ; preds = %18, %15
  %20 = load double, double* %8, align 8
  %21 = call double @pow(double noundef 4.000000e+00, double noundef %20) #4
  store double %21, double* %8, align 8
  store i32 0, i32* @redoFlag, align 4
  call void @prepOutput()
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %23 = load i8*, i8** @cktName, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %23) #4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %26 = call noalias %struct._IO_FILE* @fopen(i8* noundef %25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** %1, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @gpass2(%struct._IO_FILE* noundef %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @grdcell(%struct._IO_FILE* noundef %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %30 = call i32 @fclose(%struct._IO_FILE* noundef %29)
  store i32 (...)* @goverlap, i32 (...)** @overlap, align 8
  store i32 (...)* @goverlapf, i32 (...)** @overlapf, align 8
  store i32 (...)* @goverlapx, i32 (...)** @overlapx, align 8
  call void @rebin(i32 noundef 0)
  %31 = load double, double* @lapFactor, align 8
  %32 = fmul double %31, 2.000000e+00
  store double %32, double* @lapFactor, align 8
  %33 = load double, double* @lapFactor, align 8
  %34 = fdiv double 4.000000e+00, %33
  %35 = fptosi double %34 to i32
  store i32 %35, i32* @offset, align 4
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %37 = load double, double* @lapFactor, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), double noundef %37)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %40 = load i32, i32* @offset, align 4
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 noundef %40)
  %42 = call i32 @findcost()
  store i32 %42, i32* @funccost, align 4
  call void @outgeo()
  call void @outpin()
  %43 = call i32 @checkpen()
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %19
  call void @fixpenal()
  store i32 1, i32* @redoFlag, align 4
  call void @prepOutput()
  call void @rebin(i32 noundef 0)
  %46 = call i32 @findcost()
  store i32 %46, i32* @funccost, align 4
  call void @outgeo()
  call void @outpin()
  %47 = call i32 @checkpen()
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %53 = call i32 @fflush(%struct._IO_FILE* noundef %52)
  br label %76

54:                                               ; preds = %45
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %58 = call i32 @fflush(%struct._IO_FILE* noundef %57)
  br label %59

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %19
  %61 = load i32, i32* @doCompaction, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  store i32 1, i32* @finalShot, align 4
  call void @gmain()
  call void @rmain()
  store i32 0, i32* @redoFlag, align 4
  call void @addpins()
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %64, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  call void @abort() #5
  unreachable

66:                                               ; preds = %60
  %67 = load i32, i32* @doChannelGraph, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  call void @gmain()
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* @doGlobalRoute, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  call void @rmain()
  br label %74

74:                                               ; preds = %73, %70
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75, %49
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log10(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @prepOutput() #0 {
  call void @finalpin()
  call void @prboard()
  call void @outbig()
  call void @outsmall()
  call void @output()
  %1 = load i32, i32* @finalShot, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @savewolf()
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local void @gpass2(%struct._IO_FILE* noundef) #2

declare dso_local void @grdcell(%struct._IO_FILE* noundef) #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local i32 @goverlap(...) #2

declare dso_local i32 @goverlapf(...) #2

declare dso_local i32 @goverlapx(...) #2

declare dso_local void @rebin(i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @findcost() #2

declare dso_local void @outgeo() #2

declare dso_local void @outpin() #2

declare dso_local i32 @checkpen() #2

declare dso_local void @fixpenal() #2

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

declare dso_local void @gmain() #2

declare dso_local void @rmain() #2

declare dso_local void @addpins() #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

declare dso_local void @finalpin() #2

declare dso_local void @prboard() #2

declare dso_local void @outbig() #2

declare dso_local void @outsmall() #2

declare dso_local void @output() #2

declare dso_local void @savewolf() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
