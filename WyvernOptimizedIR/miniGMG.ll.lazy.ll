; ModuleID = './miniGMG.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniGMG/miniGMG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.domain_type = type { %struct.anon, i32, i32, i32, i32, [27 x i32], [10 x %struct.bufferCopy_type*], i32, i32, i32, i32, i32, i32, %struct.anon.2, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, i32, i32, i32, i32, i32, [10 x double], [10 x double], %struct.subdomain_type* }
%struct.anon = type { [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], [10 x i64], i64, i64, i64 }
%struct.bufferCopy_type = type { i32, i32, i32, %struct.anon.0, %struct.anon.1, %struct.anon.1 }
%struct.anon.0 = type { i32, i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, double* }
%struct.anon.2 = type { i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32 }
%struct.anon.5 = type { i32, i32, i32 }
%struct.anon.6 = type { i32, i32, i32 }
%struct.subdomain_type = type { %struct.anon.7, %struct.anon.8, i32, i32, [27 x %struct.neighbor_type], %struct.box_type* }
%struct.anon.7 = type { i32, i32, i32 }
%struct.anon.8 = type { i32, i32, i32 }
%struct.neighbor_type = type { i32, i32 }
%struct.box_type = type { double, %struct.anon.9, %struct.anon.10, %struct.anon.11, i32, i32, i32, i32, i32, [27 x i32], double**, i64*, [2 x double*], i8* }
%struct.anon.9 = type { i32, i32, i32 }
%struct.anon.10 = type { i32, i32, i32 }
%struct.anon.11 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [88 x i8] c"usage: ./a.out [log2_subdomain_dim]   [subdomains per rank in i,j,k]  [ranks in i,j,k]\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"error, ranks_in_i*ranks_in_j*ranks_in_k(%d*%d*%d=%d) != MPI_Tasks(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%d MPI Tasks of %d threads\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"truncating the v-cycle at %d^3 subdomains\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"initializing alpha, beta, RHS for the ``hard problem''...\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Error test: h = %e, max = %e\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Error test: h = %e, L2  = %e\0A\00", align 1
@str = private unnamed_addr constant [5 x i8] c"done\00", align 1
@str.1 = private unnamed_addr constant [87 x i8] c"usage: ./a.out [log2_subdomain_dim]   [subdomains per rank in i,j,k]  [ranks in i,j,k]\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.domain_type, align 8
  %4 = alloca [3 x i32], align 4
  %5 = icmp eq i32 %0, 2
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8*, i8** %1, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @atoi(i8* noundef %8) #7
  %10 = lshr i32 256, %9
  %11 = lshr i32 256, %9
  %12 = lshr i32 256, %9
  br label %59

13:                                               ; preds = %2
  %14 = icmp eq i32 %0, 5
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8*, i8** %1, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @atoi(i8* noundef %17) #7
  %19 = getelementptr inbounds i8*, i8** %1, i64 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* noundef %20) #7
  %22 = getelementptr inbounds i8*, i8** %1, i64 3
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @atoi(i8* noundef %23) #7
  %25 = getelementptr inbounds i8*, i8** %1, i64 4
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* noundef %26) #7
  br label %58

28:                                               ; preds = %13
  %29 = icmp eq i32 %0, 8
  br i1 %29, label %30, label %52

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8*, i8** %1, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* noundef %32) #7
  %34 = getelementptr inbounds i8*, i8** %1, i64 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @atoi(i8* noundef %35) #7
  %37 = getelementptr inbounds i8*, i8** %1, i64 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @atoi(i8* noundef %38) #7
  %40 = getelementptr inbounds i8*, i8** %1, i64 4
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @atoi(i8* noundef %41) #7
  %43 = getelementptr inbounds i8*, i8** %1, i64 5
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @atoi(i8* noundef %44) #7
  %46 = getelementptr inbounds i8*, i8** %1, i64 6
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @atoi(i8* noundef %47) #7
  %49 = getelementptr inbounds i8*, i8** %1, i64 7
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @atoi(i8* noundef %50) #7
  br label %57

52:                                               ; preds = %28
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %56, label %53

53:                                               ; preds = %52
  br i1 true, label %54, label %55

54:                                               ; preds = %53
  %puts21 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([87 x i8], [87 x i8]* @str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %54, %53
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %30
  %.017 = phi i32 [ %36, %30 ], [ 4, %56 ]
  %.014 = phi i32 [ %33, %30 ], [ 6, %56 ]
  %.011 = phi i32 [ %39, %30 ], [ 4, %56 ]
  %.08 = phi i32 [ %42, %30 ], [ 4, %56 ]
  %.05 = phi i32 [ %45, %30 ], [ 1, %56 ]
  %.02 = phi i32 [ %48, %30 ], [ 1, %56 ]
  %.01 = phi i32 [ %51, %30 ], [ 1, %56 ]
  br label %58

58:                                               ; preds = %57, %15
  %.118 = phi i32 [ %21, %15 ], [ %.017, %57 ]
  %.115 = phi i32 [ %18, %15 ], [ %.014, %57 ]
  %.112 = phi i32 [ %24, %15 ], [ %.011, %57 ]
  %.19 = phi i32 [ %27, %15 ], [ %.08, %57 ]
  %.16 = phi i32 [ 1, %15 ], [ %.05, %57 ]
  %.13 = phi i32 [ 1, %15 ], [ %.02, %57 ]
  %.1 = phi i32 [ 1, %15 ], [ %.01, %57 ]
  br label %59

59:                                               ; preds = %58, %6
  %.219 = phi i32 [ %10, %6 ], [ %.118, %58 ]
  %.216 = phi i32 [ %9, %6 ], [ %.115, %58 ]
  %.213 = phi i32 [ %11, %6 ], [ %.112, %58 ]
  %.210 = phi i32 [ %12, %6 ], [ %.19, %58 ]
  %.27 = phi i32 [ 1, %6 ], [ %.16, %58 ]
  %.24 = phi i32 [ 1, %6 ], [ %.13, %58 ]
  %.2 = phi i32 [ 1, %6 ], [ %.1, %58 ]
  %60 = mul nsw i32 %.27, %.24
  %61 = mul nsw i32 %60, %.2
  %.not20 = icmp eq i32 %61, 1
  br i1 %.not20, label %68, label %62

62:                                               ; preds = %59
  br i1 true, label %63, label %67

63:                                               ; preds = %62
  %64 = mul nsw i32 %.27, %.24
  %65 = mul nsw i32 %64, %.2
  %66 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.27, i32 noundef %.24, i32 noundef %.2, i32 noundef %65, i32 noundef 1) #9
  br label %67

67:                                               ; preds = %63, %62
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %59
  br i1 true, label %69, label %71

69:                                               ; preds = %68
  %70 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 noundef 1, i32 noundef 1) #9
  br label %71

71:                                               ; preds = %69, %68
  %72 = shl i32 1, %.216
  %73 = shl i32 1, %.216
  %74 = shl i32 1, %.216
  br i1 true, label %75, label %79

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 noundef 2) #9
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %78 = call i32 @fflush(%struct._IO_FILE* noundef %77) #9
  br label %79

79:                                               ; preds = %75, %71
  %80 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %80, i8 0, i64 12, i1 false)
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %82 = call i32 @create_domain(%struct.domain_type* noundef nonnull %3, i32 noundef %72, i32 noundef %73, i32 noundef %74, i32 noundef %.219, i32 noundef %.213, i32 noundef %.210, i32 noundef %.27, i32 noundef %.24, i32 noundef %.2, i32 noundef 0, i32* noundef nonnull %81, i32 noundef 12, i32 noundef 1, i32 noundef %.216) #9
  %83 = getelementptr inbounds %struct.domain_type, %struct.domain_type* %3, i64 0, i32 13, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sitofp i32 %84 to double
  %86 = fdiv double 1.000000e+00, %85
  br i1 true, label %87, label %91

87:                                               ; preds = %79
  %88 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0)) #9
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %90 = call i32 @fflush(%struct._IO_FILE* noundef %89) #9
  br label %91

91:                                               ; preds = %87, %79
  call void @initialize_problem(%struct.domain_type* noundef nonnull %3, i32 noundef 0, double noundef %86, double noundef 9.000000e-01, double noundef 9.000000e-01) #9
  br i1 true, label %92, label %95

92:                                               ; preds = %91
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @str, i64 0, i64 0))
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %94 = call i32 @fflush(%struct._IO_FILE* noundef %93) #9
  br label %95

95:                                               ; preds = %92, %91
  call void @MGBuild(%struct.domain_type* noundef nonnull %3, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef %86) #9
  call void @MGResetTimers(%struct.domain_type* noundef nonnull %3) #9
  br label %96

96:                                               ; preds = %99, %95
  %.0 = phi i32 [ 0, %95 ], [ %100, %99 ]
  %97 = icmp ult i32 %.0, 2
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  call void @zero_grid(%struct.domain_type* noundef nonnull %3, i32 noundef 0, i32 noundef 0) #9
  call void @MGSolve(%struct.domain_type* noundef nonnull %3, i32 noundef 0, i32 noundef 1, double noundef 9.000000e-01, double noundef 9.000000e-01, double noundef 1.000000e-15) #9
  br label %99

99:                                               ; preds = %98
  %100 = add nuw nsw i32 %.0, 1
  br label %96, !llvm.loop !4

101:                                              ; preds = %96
  call void @print_timing(%struct.domain_type* noundef nonnull %3) #9
  %102 = fmul double %86, %86
  %103 = fmul double %102, %86
  call void @add_grids(%struct.domain_type* noundef nonnull %3, i32 noundef 0, i32 noundef 10, double noundef 1.000000e+00, i32 noundef 11, double noundef -1.000000e+00, i32 noundef 0) #9
  %104 = call double @norm(%struct.domain_type* noundef nonnull %3, i32 noundef 0, i32 noundef 10) #9
  %105 = call double @dot(%struct.domain_type* noundef nonnull %3, i32 noundef 0, i32 noundef 10, i32 noundef 10) #9
  %106 = fmul double %105, %103
  %107 = call double @sqrt(double noundef %106) #9
  br i1 true, label %108, label %110

108:                                              ; preds = %101
  %109 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), double noundef %86, double noundef %104) #9
  br label %110

110:                                              ; preds = %108, %101
  br i1 true, label %111, label %113

111:                                              ; preds = %110
  %112 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), double noundef %86, double noundef %107) #9
  br label %113

113:                                              ; preds = %111, %110
  call void @destroy_domain(%struct.domain_type* noundef nonnull %3) #9
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %67, %55
  unreachable
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fflush(%struct._IO_FILE* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i32 @create_domain(%struct.domain_type* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32* noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @initialize_problem(%struct.domain_type* noundef, i32 noundef, double noundef, double noundef, double noundef) #2

declare dso_local void @MGBuild(%struct.domain_type* noundef, double noundef, double noundef, double noundef) #2

declare dso_local void @MGResetTimers(%struct.domain_type* noundef) #2

declare dso_local void @zero_grid(%struct.domain_type* noundef, i32 noundef, i32 noundef) #2

declare dso_local void @MGSolve(%struct.domain_type* noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef) #2

declare dso_local void @print_timing(%struct.domain_type* noundef) #2

declare dso_local void @add_grids(%struct.domain_type* noundef, i32 noundef, i32 noundef, double noundef, i32 noundef, double noundef, i32 noundef) #2

declare dso_local double @norm(%struct.domain_type* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #5

declare dso_local double @dot(%struct.domain_type* noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @destroy_domain(%struct.domain_type* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
