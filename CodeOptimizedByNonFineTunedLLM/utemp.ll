; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/utemp.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/utemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@Tsave = external dso_local global double, align 8
@count = dso_local global i32 0, align 4
@finalShot = external dso_local global i32, align 4
@T = external dso_local global double, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [45 x i8] c"THE ROUTE COST OF THE CURRENT PLACEMENT: %d\0A\00", align 1
@funccost = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"THE CURRENT PENALTY IS: %d   \00", align 1
@penalty = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"THE CURRENT TOTAL COST IS: %d\0A\00", align 1
@overfill = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"THE CURRENT OVERFILL IS: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"TEMPERATURE = kT where k=1.0 and T=%g   \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"OFFSET: %d\0A\00", align 1
@offset = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"ITERATION NUMBER:%8d\0A\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@doCompaction = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"FINAL ROUTING COST OF THE PLACEMENT: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"FINAL VALUE OF PENALTY IS: %d   \00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"FINAL VALUE OF TOTAL COST IS: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"THE FINAL OVERFILL IS: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"MAX NUMBER OF ATTEMPTED FLIPS PER T:%8d\0A\00", align 1
@attmax = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @utemp() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = load double, double* @Tsave, align 8
  %4 = fdiv double %3, 1.000000e+05
  store double %4, double* %2, align 8
  store i32 0, i32* @count, align 4
  br label %5

5:                                                ; preds = %127, %0
  %6 = load i32, i32* @finalShot, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  %9 = load double, double* @T, align 8
  %10 = load double, double* %2, align 8
  %11 = fmul double 3.000000e+03, %10
  %12 = fcmp ogt double %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store double 8.800000e-01, double* %1, align 8
  br label %29

14:                                               ; preds = %8
  %15 = load double, double* @T, align 8
  %16 = load double, double* %2, align 8
  %17 = fmul double 2.000000e+02, %16
  %18 = fcmp ogt double %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store double 9.550000e-01, double* %1, align 8
  br label %28

20:                                               ; preds = %14
  %21 = load double, double* @T, align 8
  %22 = load double, double* %2, align 8
  %23 = fmul double 2.000000e+01, %22
  %24 = fcmp ogt double %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store double 8.500000e-01, double* %1, align 8
  br label %27

26:                                               ; preds = %20
  store double 8.000000e-01, double* %1, align 8
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %19
  br label %29

29:                                               ; preds = %28, %13
  call void @uloop()
  br label %43

30:                                               ; preds = %5
  %31 = load double, double* @T, align 8
  %32 = load double, double* %2, align 8
  %33 = fmul double 1.000000e+01, %32
  %34 = fcmp olt double %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store double 0x3FE6666666666666, double* %1, align 8
  br label %37

36:                                               ; preds = %30
  store double 8.200000e-01, double* %1, align 8
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* @finalShot, align 4
  %39 = icmp sge i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @fuloop()
  br label %42

41:                                               ; preds = %37
  call void @uloop()
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %45 = load i32, i32* @funccost, align 4
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 noundef %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %48 = load i32, i32* @penalty, align 4
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %47, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %51 = load i32, i32* @penalty, align 4
  %52 = load i32, i32* @overfill, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @funccost, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 noundef %55)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %58 = load i32, i32* @overfill, align 4
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef %58)
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %61 = load double, double* @T, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), double noundef %61)
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %64 = load i32, i32* @offset, align 4
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef %64)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %67 = load i32, i32* @count, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @count, align 4
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 noundef %68)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %71 = call i32 @fflush(%struct._IO_FILE* noundef %70)
  %72 = load i32, i32* @count, align 4
  %73 = sub nsw i32 %72, 1
  %74 = srem i32 %73, 15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %43
  %77 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %43
  %79 = load i32, i32* @count, align 4
  %80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %79)
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %82 = call i32 @fflush(%struct._IO_FILE* noundef %81)
  %83 = load double, double* %1, align 8
  %84 = load double, double* @T, align 8
  %85 = fmul double %83, %84
  store double %85, double* @T, align 8
  %86 = load i32, i32* @finalShot, align 4
  %87 = load i32, i32* @doCompaction, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load double, double* @T, align 8
  %91 = fcmp olt double %90, 8.000000e-01
  br i1 %91, label %107, label %92

92:                                               ; preds = %89, %78
  %93 = load i32, i32* @finalShot, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load double, double* @T, align 8
  %97 = load double, double* %2, align 8
  %98 = fmul double 5.000000e+00, %97
  %99 = fcmp olt double %96, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %95, %92
  %101 = load i32, i32* @finalShot, align 4
  %102 = load i32, i32* @doCompaction, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = load double, double* @T, align 8
  %106 = fcmp olt double %105, 2.000000e-01
  br i1 %106, label %107, label %127

107:                                              ; preds = %104, %95, %89
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %109 = load i32, i32* @funccost, align 4
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 noundef %109)
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %112 = load i32, i32* @penalty, align 4
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %111, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %112)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %115 = load i32, i32* @funccost, align 4
  %116 = load i32, i32* @penalty, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32, i32* @overfill, align 4
  %119 = add nsw i32 %117, %118
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %114, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 noundef %119)
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %122 = load i32, i32* @overfill, align 4
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 noundef %122)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %125 = load i32, i32* @attmax, align 4
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %124, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 noundef %125)
  br label %128

127:                                              ; preds = %104, %100
  br label %5

128:                                              ; preds = %107
  ret void
}

declare dso_local void @uloop() #1

declare dso_local void @fuloop() #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
