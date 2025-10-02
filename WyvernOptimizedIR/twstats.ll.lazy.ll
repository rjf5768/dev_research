; ModuleID = './twstats.ll'
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
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 noundef %2, i32 noundef %3) #3
  %5 = load i32, i32* @icost, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %17, label %6

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %8 = load i32, i32* @fcost, align 4
  %9 = sitofp i32 %8 to double
  %10 = load i32, i32* @icost, align 4
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %9, %11
  %13 = fmul double %12, 1.000000e+02
  %14 = fptosi double %13 to i32
  %15 = sub nsw i32 100, %14
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %7, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 noundef %15) #3
  br label %17

17:                                               ; preds = %6, %0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %19 = load i32, i32* @iwire, align 4
  %20 = load i32, i32* @fwire, align 4
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 noundef %19, i32 noundef %20) #3
  %22 = load i32, i32* @icost, align 4
  %.not1 = icmp eq i32 %22, 0
  br i1 %.not1, label %34, label %23

23:                                               ; preds = %17
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %25 = load i32, i32* @fwire, align 4
  %26 = sitofp i32 %25 to double
  %27 = load i32, i32* @iwire, align 4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %26, %28
  %30 = fmul double %29, 1.000000e+02
  %31 = fptosi double %30 to i32
  %32 = sub nsw i32 100, %31
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 noundef %32) #3
  br label %34

34:                                               ; preds = %23, %17
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %36 = load i32, i32* @iwirex, align 4
  %37 = load i32, i32* @fwirex, align 4
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef %36, i32 noundef %37) #3
  %39 = load i32, i32* @iwirex, align 4
  %.not2 = icmp eq i32 %39, 0
  br i1 %.not2, label %51, label %40

40:                                               ; preds = %34
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %42 = load i32, i32* @fwirex, align 4
  %43 = sitofp i32 %42 to double
  %44 = load i32, i32* @iwirex, align 4
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %43, %45
  %47 = fmul double %46, 1.000000e+02
  %48 = fptosi double %47 to i32
  %49 = sub nsw i32 100, %48
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 noundef %49) #3
  br label %51

51:                                               ; preds = %40, %34
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %53 = load i32, i32* @iwirey, align 4
  %54 = load i32, i32* @fwirey, align 4
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %52, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 noundef %53, i32 noundef %54) #3
  %56 = load i32, i32* @iwirey, align 4
  %.not3 = icmp eq i32 %56, 0
  br i1 %.not3, label %68, label %57

57:                                               ; preds = %51
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %59 = load i32, i32* @fwirey, align 4
  %60 = sitofp i32 %59 to double
  %61 = load i32, i32* @iwirey, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %60, %62
  %64 = fmul double %63, 1.000000e+02
  %65 = fptosi double %64 to i32
  %66 = sub nsw i32 100, %65
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %58, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 noundef %66) #3
  br label %68

68:                                               ; preds = %57, %51
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %70 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %69)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %72 = load i32, i32* @numcells, align 4
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 noundef %72) #3
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %75 = load i32, i32* @numpads, align 4
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 noundef %75) #3
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %78 = load i32, i32* @numnets, align 4
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %77, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 noundef %78) #3
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %81 = load i32, i32* @maxterm, align 4
  %82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 noundef %81) #3
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
