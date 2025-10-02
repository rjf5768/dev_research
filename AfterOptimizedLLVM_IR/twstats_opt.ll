; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/twstats.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/twstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [50 x i8] c"\0AInitial Wiring Cost: %d   Final Wiring Cost: %d\0A\00", align 1
@icost = external dso_local global i32, align 4
@fcost = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"############ Percent Wire Cost Reduction: %d\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\0AInitial Wire Length: %d   Final Wire Length: %d\0A\00", align 1
@iwire = external dso_local global i32, align 4
@fwire = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"*********** Percent Wire Length Reduction: %d\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\0AInitial Horiz. Wire: %d   Final Horiz. Wire: %d\0A\00", align 1
@iwirex = external dso_local global i32, align 4
@fwirex = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"$$$$$$$$$ Percent H-Wire Length Reduction: %d\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\0AInitial Vert. Wire: %d   Final Vert. Wire: %d\0A\00", align 1
@iwirey = external dso_local global i32, align 4
@fwirey = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"@@@@@@@@@ Percent V-Wire Length Reduction: %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\0AStatistics:\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Number of Cells: %d\0A\00", align 1
@numcells = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"Number of Pads: %d\0A\00", align 1
@numpads = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"Number of Nets: %d \0A\00", align 1
@numnets = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"Number of Pins: %d \0A\00", align 1
@maxterm = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @twstats() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %2 = load i32, i32* @icost, align 4
  %3 = load i32, i32* @fcost, align 4
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i32 noundef %3)
  %5 = load i32, i32* @icost, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %9 = load i32, i32* @fcost, align 4
  %10 = sitofp i32 %9 to double
  %11 = load i32, i32* @icost, align 4
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %10, %12
  %14 = fmul double %13, 1.000000e+02
  %15 = fptosi double %14 to i32
  %16 = sub nsw i32 100, %15
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 noundef %16)
  br label %18

18:                                               ; preds = %7, %0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %20 = load i32, i32* @iwire, align 4
  %21 = load i32, i32* @fwire, align 4
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %19, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 noundef %20, i32 noundef %21)
  %23 = load i32, i32* @icost, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %27 = load i32, i32* @fwire, align 4
  %28 = sitofp i32 %27 to double
  %29 = load i32, i32* @iwire, align 4
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %28, %30
  %32 = fmul double %31, 1.000000e+02
  %33 = fptosi double %32 to i32
  %34 = sub nsw i32 100, %33
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %26, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 noundef %34)
  br label %36

36:                                               ; preds = %25, %18
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %38 = load i32, i32* @iwirex, align 4
  %39 = load i32, i32* @fwirex, align 4
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %37, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef %38, i32 noundef %39)
  %41 = load i32, i32* @iwirex, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %45 = load i32, i32* @fwirex, align 4
  %46 = sitofp i32 %45 to double
  %47 = load i32, i32* @iwirex, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %46, %48
  %50 = fmul double %49, 1.000000e+02
  %51 = fptosi double %50 to i32
  %52 = sub nsw i32 100, %51
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 noundef %52)
  br label %54

54:                                               ; preds = %43, %36
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %56 = load i32, i32* @iwirey, align 4
  %57 = load i32, i32* @fwirey, align 4
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 noundef %56, i32 noundef %57)
  %59 = load i32, i32* @iwirey, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %63 = load i32, i32* @fwirey, align 4
  %64 = sitofp i32 %63 to double
  %65 = load i32, i32* @iwirey, align 4
  %66 = sitofp i32 %65 to double
  %67 = fdiv double %64, %66
  %68 = fmul double %67, 1.000000e+02
  %69 = fptosi double %68 to i32
  %70 = sub nsw i32 100, %69
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %62, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 noundef %70)
  br label %72

72:                                               ; preds = %61, %54
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %73, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %76 = load i32, i32* @numcells, align 4
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %75, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 noundef %76)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %79 = load i32, i32* @numpads, align 4
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 noundef %79)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %82 = load i32, i32* @numnets, align 4
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %81, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef %82)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %85 = load i32, i32* @maxterm, align 4
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %85)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
