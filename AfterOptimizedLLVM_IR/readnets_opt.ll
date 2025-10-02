; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readnets.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readnets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"allnets\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"The keyword allnets was \00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"not properly entered in the .net file\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"HVweights\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"The keyword HVweights was \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%lf %lf\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"The net weights for allnets were \00", align 1
@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@Hdefault = dso_local global double 0.000000e+00, align 8
@Vdefault = dso_local global double 0.000000e+00, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"The net named: %s  in the .net file\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"was not encountered while reading\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"the .cel file --- FATAL error\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"The critical net weights were \00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"not properly entered\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"in the .net file after net: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Neither the keyword HVweights nor \00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"the keyword nofeeds was entered\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"unexpected keyword in the .net file\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @readnets(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [1024 x i8], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %10)
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %13 = call i32 @strcmp(i8* noundef %12, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 0) #5
  unreachable

20:                                               ; preds = %1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %22)
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %25 = call i32 @strcmp(i8* noundef %24, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 0) #5
  unreachable

32:                                               ; preds = %20
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double* noundef %6, double* noundef %7)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %38, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 noundef 0) #5
  unreachable

42:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @numnets, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load double, double* %6, align 8
  %49 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %49, i64 %51
  %53 = load %struct.dimbox*, %struct.dimbox** %52, align 8
  %54 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %53, i32 0, i32 11
  store double %48, double* %54, align 8
  %55 = load double, double* %7, align 8
  %56 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %56, i64 %58
  %60 = load %struct.dimbox*, %struct.dimbox** %59, align 8
  %61 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %60, i32 0, i32 12
  store double %55, double* %61, align 8
  br label %62

62:                                               ; preds = %47
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %43, !llvm.loop !4

65:                                               ; preds = %43
  %66 = load double, double* %6, align 8
  store double %66, double* @Hdefault, align 8
  %67 = load double, double* %7, align 8
  store double %67, double* @Vdefault, align 8
  br label %68

68:                                               ; preds = %140, %65
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %69, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %70)
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %141

73:                                               ; preds = %68
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %75 = call i32 @strcmp(i8* noundef %74, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %137

77:                                               ; preds = %73
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %79 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %78, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %79)
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %82 = call i32 @hashfind(i8* noundef %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %86, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* noundef %87)
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %91, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  call void @exit(i32 noundef 0) #5
  unreachable

93:                                               ; preds = %77
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %95)
  %97 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %98 = call i32 @strcmp(i8* noundef %97, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)) #4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %93
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %101, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double* noundef %6, double* noundef %7)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 2
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %106, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %108, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %110, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* noundef %111)
  call void @exit(i32 noundef 0) #5
  unreachable

113:                                              ; preds = %100
  %114 = load double, double* %6, align 8
  %115 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %115, i64 %117
  %119 = load %struct.dimbox*, %struct.dimbox** %118, align 8
  %120 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %119, i32 0, i32 11
  store double %114, double* %120, align 8
  %121 = load double, double* %7, align 8
  %122 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %122, i64 %124
  %126 = load %struct.dimbox*, %struct.dimbox** %125, align 8
  %127 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %126, i32 0, i32 12
  store double %121, double* %127, align 8
  br label %136

128:                                              ; preds = %93
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %129, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %131, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %134 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %133, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* noundef %134)
  call void @exit(i32 noundef 0) #5
  unreachable

136:                                              ; preds = %113
  br label %140

137:                                              ; preds = %73
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %138, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  call void @exit(i32 noundef 0) #5
  unreachable

140:                                              ; preds = %136
  br label %68, !llvm.loop !6

141:                                              ; preds = %68
  ret void
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @hashfind(i8* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
