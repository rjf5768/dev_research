; ModuleID = './utemp.ll'
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
  %1 = load double, double* @Tsave, align 8
  %2 = fdiv double %1, 1.000000e+05
  store i32 0, i32* @count, align 4
  br label %3

3:                                                ; preds = %118, %0
  %4 = load i32, i32* @finalShot, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %3
  %7 = load double, double* @T, align 8
  %8 = fmul double %2, 3.000000e+03
  %9 = fcmp ogt double %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %24

11:                                               ; preds = %6
  %12 = load double, double* @T, align 8
  %13 = fmul double %2, 2.000000e+02
  %14 = fcmp ogt double %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %23

16:                                               ; preds = %11
  %17 = load double, double* @T, align 8
  %18 = fmul double %2, 2.000000e+01
  %19 = fcmp ogt double %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %20
  %.0 = phi double [ 8.500000e-01, %20 ], [ 8.000000e-01, %21 ]
  br label %23

23:                                               ; preds = %22, %15
  %.1 = phi double [ 9.550000e-01, %15 ], [ %.0, %22 ]
  br label %24

24:                                               ; preds = %23, %10
  %.2 = phi double [ 8.800000e-01, %10 ], [ %.1, %23 ]
  call void @uloop() #3
  br label %37

25:                                               ; preds = %3
  %26 = load double, double* @T, align 8
  %27 = fmul double %2, 1.000000e+01
  %28 = fcmp olt double %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %31

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %29
  %.3 = phi double [ 0x3FE6666666666666, %29 ], [ 8.200000e-01, %30 ]
  %32 = load i32, i32* @finalShot, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @fuloop() #3
  br label %36

35:                                               ; preds = %31
  call void @uloop() #3
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %24
  %.4 = phi double [ %.2, %24 ], [ %.3, %36 ]
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %39 = load i32, i32* @funccost, align 4
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 noundef %39) #3
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %42 = load i32, i32* @penalty, align 4
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %41, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef %42) #3
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %45 = load i32, i32* @penalty, align 4
  %46 = load i32, i32* @overfill, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @funccost, align 4
  %49 = add nsw i32 %47, %48
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 noundef %49) #3
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %52 = load i32, i32* @overfill, align 4
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %51, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 noundef %52) #3
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %55 = load double, double* @T, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), double noundef %55) #3
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %58 = load i32, i32* @offset, align 4
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 noundef %58) #3
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %61 = load i32, i32* @count, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @count, align 4
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %60, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 noundef %62) #3
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %65 = call i32 @fflush(%struct._IO_FILE* noundef %64) #3
  %66 = load i32, i32* @count, align 4
  %67 = add nsw i32 %66, -1
  %68 = srem i32 %67, 15
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %37
  %putchar = call i32 @putchar(i32 10)
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i32, i32* @count, align 4
  %73 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 noundef %72) #3
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %75 = call i32 @fflush(%struct._IO_FILE* noundef %74) #3
  %76 = load double, double* @T, align 8
  %77 = fmul double %.4, %76
  store double %77, double* @T, align 8
  %78 = load i32, i32* @finalShot, align 4
  %79 = load i32, i32* @doCompaction, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load double, double* @T, align 8
  %83 = fcmp olt double %82, 8.000000e-01
  br i1 %83, label %98, label %84

84:                                               ; preds = %81, %71
  %85 = load i32, i32* @finalShot, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load double, double* @T, align 8
  %89 = fmul double %2, 5.000000e+00
  %90 = fcmp olt double %88, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* @finalShot, align 4
  %93 = load i32, i32* @doCompaction, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = load double, double* @T, align 8
  %97 = fcmp olt double %96, 2.000000e-01
  br i1 %97, label %98, label %118

98:                                               ; preds = %95, %87, %81
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %100 = load i32, i32* @funccost, align 4
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %99, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 noundef %100) #3
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %103 = load i32, i32* @penalty, align 4
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 noundef %103) #3
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %106 = load i32, i32* @funccost, align 4
  %107 = load i32, i32* @penalty, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* @overfill, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %105, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 noundef %110) #3
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %113 = load i32, i32* @overfill, align 4
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %112, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 noundef %113) #3
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %116 = load i32, i32* @attmax, align 4
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %115, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 noundef %116) #3
  br label %119

118:                                              ; preds = %95, %91
  br label %3

119:                                              ; preds = %98
  ret void
}

declare dso_local void @uloop() #1

declare dso_local void @fuloop() #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #2

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
