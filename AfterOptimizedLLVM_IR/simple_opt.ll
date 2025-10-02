; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/simple.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.FV = type { <4 x float> }
%union.DV = type { <2 x double> }

@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%g %g\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca %union.FV, align 16
  %13 = alloca %union.FV, align 16
  %14 = alloca %union.FV, align 16
  %15 = alloca %union.FV, align 16
  %16 = alloca %union.DV, align 16
  %17 = alloca %union.DV, align 16
  %18 = alloca <4 x float>, align 16
  %19 = alloca <4 x float>, align 16
  %20 = alloca <4 x float>, align 16
  %21 = alloca <4 x float>, align 16
  %22 = alloca <2 x double>, align 16
  %23 = alloca <2 x double>, align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store float 0x3FF3BE76C0000000, float* %7, align 4
  store float 0x4023C08320000000, float* %8, align 4
  store float 0x3FF1C6A7E0000000, float* %9, align 4
  store double 0x408B49779A6B50B1, double* %10, align 8
  store double 0x409CCB9C779A6B51, double* %11, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 1123
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store float 0x40030E9A20000000, float* %7, align 4
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 1432
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store float 0x401EE0B780000000, float* %8, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 2123
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store double 3.282190e+01, double* %10, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 5123
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store double 7.779980e+01, double* %11, align 8
  br label %39

39:                                               ; preds = %38, %35
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %130, %39
  %41 = load i32, i32* %6, align 4
  %42 = icmp ult i32 %41, 500000
  br i1 %42, label %43, label %133

43:                                               ; preds = %40
  %44 = load float, float* %7, align 4
  %45 = insertelement <4 x float> undef, float %44, i32 0
  %46 = load float, float* %7, align 4
  %47 = insertelement <4 x float> %45, float %46, i32 1
  %48 = load float, float* %7, align 4
  %49 = insertelement <4 x float> %47, float %48, i32 2
  %50 = load float, float* %7, align 4
  %51 = insertelement <4 x float> %49, float %50, i32 3
  store <4 x float> %51, <4 x float>* %18, align 16
  %52 = load <4 x float>, <4 x float>* %18, align 16
  %53 = bitcast %union.FV* %12 to <4 x float>*
  store <4 x float> %52, <4 x float>* %53, align 16
  %54 = bitcast %union.FV* %12 to <4 x float>*
  %55 = load <4 x float>, <4 x float>* %54, align 16
  %56 = bitcast %union.FV* %12 to <4 x float>*
  %57 = load <4 x float>, <4 x float>* %56, align 16
  %58 = fmul <4 x float> %55, %57
  %59 = bitcast %union.FV* %12 to <4 x float>*
  store <4 x float> %58, <4 x float>* %59, align 16
  %60 = load float, float* %7, align 4
  %61 = insertelement <4 x float> undef, float %60, i32 0
  %62 = load float, float* %7, align 4
  %63 = insertelement <4 x float> %61, float %62, i32 1
  %64 = insertelement <4 x float> %63, float 0.000000e+00, i32 2
  %65 = insertelement <4 x float> %64, float 0.000000e+00, i32 3
  store <4 x float> %65, <4 x float>* %19, align 16
  %66 = load <4 x float>, <4 x float>* %19, align 16
  %67 = bitcast %union.FV* %13 to <4 x float>*
  store <4 x float> %66, <4 x float>* %67, align 16
  %68 = bitcast %union.FV* %13 to <4 x float>*
  %69 = load <4 x float>, <4 x float>* %68, align 16
  %70 = bitcast %union.FV* %13 to <4 x float>*
  %71 = load <4 x float>, <4 x float>* %70, align 16
  %72 = fadd <4 x float> %69, %71
  %73 = bitcast %union.FV* %13 to <4 x float>*
  store <4 x float> %72, <4 x float>* %73, align 16
  %74 = load float, float* %7, align 4
  %75 = insertelement <4 x float> undef, float %74, i32 0
  %76 = load float, float* %7, align 4
  %77 = insertelement <4 x float> %75, float %76, i32 1
  %78 = load float, float* %8, align 4
  %79 = insertelement <4 x float> %77, float %78, i32 2
  %80 = load float, float* %8, align 4
  %81 = insertelement <4 x float> %79, float %80, i32 3
  store <4 x float> %81, <4 x float>* %20, align 16
  %82 = load <4 x float>, <4 x float>* %20, align 16
  %83 = bitcast %union.FV* %14 to <4 x float>*
  store <4 x float> %82, <4 x float>* %83, align 16
  %84 = bitcast %union.FV* %14 to <4 x float>*
  %85 = load <4 x float>, <4 x float>* %84, align 16
  %86 = bitcast %union.FV* %14 to <4 x float>*
  %87 = load <4 x float>, <4 x float>* %86, align 16
  %88 = fadd <4 x float> %85, %87
  %89 = bitcast %union.FV* %14 to <4 x float>*
  store <4 x float> %88, <4 x float>* %89, align 16
  %90 = load float, float* %8, align 4
  %91 = insertelement <4 x float> undef, float %90, i32 0
  %92 = load float, float* %8, align 4
  %93 = insertelement <4 x float> %91, float %92, i32 1
  %94 = load float, float* %9, align 4
  %95 = insertelement <4 x float> %93, float %94, i32 2
  %96 = load float, float* %9, align 4
  %97 = insertelement <4 x float> %95, float %96, i32 3
  store <4 x float> %97, <4 x float>* %21, align 16
  %98 = load <4 x float>, <4 x float>* %21, align 16
  %99 = bitcast %union.FV* %15 to <4 x float>*
  store <4 x float> %98, <4 x float>* %99, align 16
  %100 = bitcast %union.FV* %15 to <4 x float>*
  %101 = load <4 x float>, <4 x float>* %100, align 16
  %102 = bitcast %union.FV* %15 to <4 x float>*
  %103 = load <4 x float>, <4 x float>* %102, align 16
  %104 = fadd <4 x float> %101, %103
  %105 = bitcast %union.FV* %15 to <4 x float>*
  store <4 x float> %104, <4 x float>* %105, align 16
  %106 = load double, double* %10, align 8
  %107 = insertelement <2 x double> undef, double %106, i32 0
  %108 = load double, double* %10, align 8
  %109 = insertelement <2 x double> %107, double %108, i32 1
  store <2 x double> %109, <2 x double>* %22, align 16
  %110 = load <2 x double>, <2 x double>* %22, align 16
  %111 = bitcast %union.DV* %16 to <2 x double>*
  store <2 x double> %110, <2 x double>* %111, align 16
  %112 = bitcast %union.DV* %16 to <2 x double>*
  %113 = load <2 x double>, <2 x double>* %112, align 16
  %114 = bitcast %union.DV* %16 to <2 x double>*
  %115 = load <2 x double>, <2 x double>* %114, align 16
  %116 = fadd <2 x double> %113, %115
  %117 = bitcast %union.DV* %16 to <2 x double>*
  store <2 x double> %116, <2 x double>* %117, align 16
  %118 = load double, double* %10, align 8
  %119 = insertelement <2 x double> undef, double %118, i32 0
  %120 = load double, double* %11, align 8
  %121 = insertelement <2 x double> %119, double %120, i32 1
  store <2 x double> %121, <2 x double>* %23, align 16
  %122 = load <2 x double>, <2 x double>* %23, align 16
  %123 = bitcast %union.DV* %17 to <2 x double>*
  store <2 x double> %122, <2 x double>* %123, align 16
  %124 = bitcast %union.DV* %17 to <2 x double>*
  %125 = load <2 x double>, <2 x double>* %124, align 16
  %126 = bitcast %union.DV* %17 to <2 x double>*
  %127 = load <2 x double>, <2 x double>* %126, align 16
  %128 = fadd <2 x double> %125, %127
  %129 = bitcast %union.DV* %17 to <2 x double>*
  store <2 x double> %128, <2 x double>* %129, align 16
  br label %130

130:                                              ; preds = %43
  %131 = load i32, i32* %6, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %40, !llvm.loop !4

133:                                              ; preds = %40
  call void @printFV(%union.FV* noundef %12)
  call void @printFV(%union.FV* noundef %13)
  call void @printFV(%union.FV* noundef %14)
  call void @printFV(%union.FV* noundef %15)
  call void @printDV(%union.DV* noundef %16)
  call void @printDV(%union.DV* noundef %17)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printFV(%union.FV* noundef %0) #0 {
  %2 = alloca %union.FV*, align 8
  store %union.FV* %0, %union.FV** %2, align 8
  %3 = load %union.FV*, %union.FV** %2, align 8
  %4 = bitcast %union.FV* %3 to [4 x float]*
  %5 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %6 = load float, float* %5, align 16
  %7 = fpext float %6 to double
  %8 = load %union.FV*, %union.FV** %2, align 8
  %9 = bitcast %union.FV* %8 to [4 x float]*
  %10 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = load %union.FV*, %union.FV** %2, align 8
  %14 = bitcast %union.FV* %13 to [4 x float]*
  %15 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 2
  %16 = load float, float* %15, align 8
  %17 = fpext float %16 to double
  %18 = load %union.FV*, %union.FV** %2, align 8
  %19 = bitcast %union.FV* %18 to [4 x float]*
  %20 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 3
  %21 = load float, float* %20, align 4
  %22 = fpext float %21 to double
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double noundef %7, double noundef %12, double noundef %17, double noundef %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @printDV(%union.DV* noundef %0) #0 {
  %2 = alloca %union.DV*, align 8
  store %union.DV* %0, %union.DV** %2, align 8
  %3 = load %union.DV*, %union.DV** %2, align 8
  %4 = bitcast %union.DV* %3 to [2 x double]*
  %5 = getelementptr inbounds [2 x double], [2 x double]* %4, i64 0, i64 0
  %6 = load double, double* %5, align 16
  %7 = load %union.DV*, %union.DV** %2, align 8
  %8 = bitcast %union.DV* %7 to [2 x double]*
  %9 = getelementptr inbounds [2 x double], [2 x double]* %8, i64 0, i64 1
  %10 = load double, double* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double noundef %6, double noundef %10)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
