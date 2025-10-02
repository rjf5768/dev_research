; ModuleID = './readnets.ll'
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
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %5) #6
  %7 = bitcast [1024 x i8]* %4 to i64*
  %lhsv = load i64, i64* %7, align 16
  %.not = icmp eq i64 %lhsv, 32497601314843745
  br i1 %.not, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 24, i64 1, %struct._IO_FILE* %9)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %11)
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %14) #6
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %16, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 10)
  %.not2 = icmp eq i32 %bcmp, 0
  br i1 %.not2, label %22, label %17

17:                                               ; preds = %13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %19 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %20)
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %13
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double* noundef nonnull %2, double* noundef nonnull %3) #6
  %.not3 = icmp eq i32 %23, 2
  br i1 %.not3, label %29, label %24

24:                                               ; preds = %22
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %25)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %27)
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %45, %29
  %.0 = phi i32 [ 1, %29 ], [ %46, %45 ]
  %31 = load i32, i32* @numnets, align 4
  %.not4 = icmp sgt i32 %.0, %31
  br i1 %.not4, label %47, label %32

32:                                               ; preds = %30
  %33 = load double, double* %2, align 8
  %34 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %34, i64 %35
  %37 = load %struct.dimbox*, %struct.dimbox** %36, align 8
  %38 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %37, i64 0, i32 11
  store double %33, double* %38, align 8
  %39 = load double, double* %3, align 8
  %40 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %41 = zext i32 %.0 to i64
  %42 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %40, i64 %41
  %43 = load %struct.dimbox*, %struct.dimbox** %42, align 8
  %44 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %43, i64 0, i32 12
  store double %39, double* %44, align 8
  br label %45

45:                                               ; preds = %32
  %46 = add nuw nsw i32 %.0, 1
  br label %30, !llvm.loop !4

47:                                               ; preds = %30
  %48 = load double, double* %2, align 8
  store double %48, double* @Hdefault, align 8
  %49 = load double, double* %3, align 8
  store double %49, double* @Vdefault, align 8
  br label %50

50:                                               ; preds = %110, %47
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %51) #6
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %111

54:                                               ; preds = %50
  %55 = bitcast [1024 x i8]* %4 to i32*
  %lhsv5 = load i32, i32* %55, align 16
  %.not7 = icmp eq i32 %lhsv5, 7628142
  br i1 %.not7, label %56, label %107

56:                                               ; preds = %54
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %57) #6
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %60 = call i32 @hashfind(i8* noundef nonnull %59) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %64 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %63, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* noundef nonnull %64) #6
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %66)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %69 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %68)
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %56
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef nonnull %71) #6
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %bcmp8 = call i32 @bcmp(i8* noundef nonnull dereferenceable(10) %73, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i64 10)
  %74 = icmp eq i32 %bcmp8, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double* noundef nonnull %2, double* noundef nonnull %3) #6
  %.not9 = icmp eq i32 %76, 2
  br i1 %.not9, label %85, label %77

77:                                               ; preds = %75
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %79 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %78)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %81 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %80)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %83) #6
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

85:                                               ; preds = %75
  %86 = load double, double* %2, align 8
  %87 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %88 = sext i32 %60 to i64
  %89 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %87, i64 %88
  %90 = load %struct.dimbox*, %struct.dimbox** %89, align 8
  %91 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %90, i64 0, i32 11
  store double %86, double* %91, align 8
  %92 = load double, double* %3, align 8
  %93 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %94 = sext i32 %60 to i64
  %95 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %93, i64 %94
  %96 = load %struct.dimbox*, %struct.dimbox** %95, align 8
  %97 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %96, i64 0, i32 12
  store double %92, double* %97, align 8
  br label %106

98:                                               ; preds = %70
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %100 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %99)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %102 = call i64 @fwrite(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %101)
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %103, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* noundef nonnull %104) #6
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

106:                                              ; preds = %85
  br label %110

107:                                              ; preds = %54
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %109 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %108)
  call void @exit(i32 noundef 0) #7
  br label %UnifiedUnreachableBlock

110:                                              ; preds = %106
  br label %50, !llvm.loop !6

111:                                              ; preds = %50
  ret void

UnifiedUnreachableBlock:                          ; preds = %107, %98, %77, %62, %24, %17, %8
  unreachable
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @hashfind(i8* noundef) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
