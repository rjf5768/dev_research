; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47538.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47538.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { double, double, double*, i64 }

@__const.main.c = private unnamed_addr constant [4 x double] [double 1.000000e+01, double 2.000000e+01, double 3.000000e+01, double 4.000000e+01], align 16
@__const.main.e = private unnamed_addr constant [4 x double] [double 1.180000e+02, double 1.180000e+02, double 1.180000e+02, double 1.180000e+02], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(%struct.S* noundef %0, %struct.S* noundef %1) #0 {
  %3 = alloca %struct.S*, align 8
  %4 = alloca %struct.S*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  store %struct.S* %0, %struct.S** %3, align 8
  store %struct.S* %1, %struct.S** %4, align 8
  %10 = load %struct.S*, %struct.S** %4, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %5, align 8
  %14 = load %struct.S*, %struct.S** %4, align 8
  %15 = getelementptr inbounds %struct.S, %struct.S* %14, i32 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = load %struct.S*, %struct.S** %4, align 8
  %18 = getelementptr inbounds %struct.S, %struct.S* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = fsub double %16, %19
  %21 = fmul double 2.500000e-01, %20
  store double %21, double* %6, align 8
  %22 = load %struct.S*, %struct.S** %4, align 8
  %23 = getelementptr inbounds %struct.S, %struct.S* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = load %struct.S*, %struct.S** %3, align 8
  %26 = getelementptr inbounds %struct.S, %struct.S* %25, i32 0, i32 0
  store double %24, double* %26, align 8
  %27 = load %struct.S*, %struct.S** %4, align 8
  %28 = getelementptr inbounds %struct.S, %struct.S* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = load %struct.S*, %struct.S** %3, align 8
  %31 = getelementptr inbounds %struct.S, %struct.S* %30, i32 0, i32 1
  store double %29, double* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.S*, %struct.S** %3, align 8
  %36 = getelementptr inbounds %struct.S, %struct.S* %35, i32 0, i32 2
  %37 = load double*, double** %36, align 8
  %38 = getelementptr inbounds double, double* %37, i64 0
  store double 0.000000e+00, double* %38, align 8
  br label %147

39:                                               ; preds = %2
  %40 = load i64, i64* %5, align 8
  %41 = icmp eq i64 %40, 2
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load double, double* %6, align 8
  %44 = load %struct.S*, %struct.S** %4, align 8
  %45 = getelementptr inbounds %struct.S, %struct.S* %44, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds double, double* %46, i64 0
  %48 = load double, double* %47, align 8
  %49 = fmul double %43, %48
  %50 = load %struct.S*, %struct.S** %3, align 8
  %51 = getelementptr inbounds %struct.S, %struct.S* %50, i32 0, i32 2
  %52 = load double*, double** %51, align 8
  %53 = getelementptr inbounds double, double* %52, i64 1
  store double %49, double* %53, align 8
  %54 = load %struct.S*, %struct.S** %3, align 8
  %55 = getelementptr inbounds %struct.S, %struct.S* %54, i32 0, i32 2
  %56 = load double*, double** %55, align 8
  %57 = getelementptr inbounds double, double* %56, i64 1
  %58 = load double, double* %57, align 8
  %59 = fmul double 2.000000e+00, %58
  %60 = load %struct.S*, %struct.S** %3, align 8
  %61 = getelementptr inbounds %struct.S, %struct.S* %60, i32 0, i32 2
  %62 = load double*, double** %61, align 8
  %63 = getelementptr inbounds double, double* %62, i64 0
  store double %59, double* %63, align 8
  br label %146

64:                                               ; preds = %39
  store double 0.000000e+00, double* %7, align 8
  store double 1.000000e+00, double* %8, align 8
  store i64 1, i64* %9, align 8
  br label %65

65:                                               ; preds = %107, %64
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %5, align 8
  %68 = sub i64 %67, 2
  %69 = icmp ule i64 %66, %68
  br i1 %69, label %70, label %110

70:                                               ; preds = %65
  %71 = load double, double* %6, align 8
  %72 = load %struct.S*, %struct.S** %4, align 8
  %73 = getelementptr inbounds %struct.S, %struct.S* %72, i32 0, i32 2
  %74 = load double*, double** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds double, double* %74, i64 %76
  %78 = load double, double* %77, align 8
  %79 = load %struct.S*, %struct.S** %4, align 8
  %80 = getelementptr inbounds %struct.S, %struct.S* %79, i32 0, i32 2
  %81 = load double*, double** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, 1
  %84 = getelementptr inbounds double, double* %81, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fsub double %78, %85
  %87 = fmul double %71, %86
  %88 = load i64, i64* %9, align 8
  %89 = uitofp i64 %88 to double
  %90 = fdiv double %87, %89
  %91 = load %struct.S*, %struct.S** %3, align 8
  %92 = getelementptr inbounds %struct.S, %struct.S* %91, i32 0, i32 2
  %93 = load double*, double** %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds double, double* %93, i64 %94
  store double %90, double* %95, align 8
  %96 = load double, double* %8, align 8
  %97 = load %struct.S*, %struct.S** %3, align 8
  %98 = getelementptr inbounds %struct.S, %struct.S* %97, i32 0, i32 2
  %99 = load double*, double** %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds double, double* %99, i64 %100
  %102 = load double, double* %101, align 8
  %103 = load double, double* %7, align 8
  %104 = call double @llvm.fmuladd.f64(double %96, double %102, double %103)
  store double %104, double* %7, align 8
  %105 = load double, double* %8, align 8
  %106 = fneg double %105
  store double %106, double* %8, align 8
  br label %107

107:                                              ; preds = %70
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %9, align 8
  br label %65, !llvm.loop !4

110:                                              ; preds = %65
  %111 = load double, double* %6, align 8
  %112 = load %struct.S*, %struct.S** %4, align 8
  %113 = getelementptr inbounds %struct.S, %struct.S* %112, i32 0, i32 2
  %114 = load double*, double** %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = sub i64 %115, 2
  %117 = getelementptr inbounds double, double* %114, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fmul double %111, %118
  %120 = load i64, i64* %5, align 8
  %121 = uitofp i64 %120 to double
  %122 = fsub double %121, 1.000000e+00
  %123 = fdiv double %119, %122
  %124 = load %struct.S*, %struct.S** %3, align 8
  %125 = getelementptr inbounds %struct.S, %struct.S* %124, i32 0, i32 2
  %126 = load double*, double** %125, align 8
  %127 = load i64, i64* %5, align 8
  %128 = sub i64 %127, 1
  %129 = getelementptr inbounds double, double* %126, i64 %128
  store double %123, double* %129, align 8
  %130 = load double, double* %8, align 8
  %131 = load %struct.S*, %struct.S** %3, align 8
  %132 = getelementptr inbounds %struct.S, %struct.S* %131, i32 0, i32 2
  %133 = load double*, double** %132, align 8
  %134 = load i64, i64* %5, align 8
  %135 = sub i64 %134, 1
  %136 = getelementptr inbounds double, double* %133, i64 %135
  %137 = load double, double* %136, align 8
  %138 = load double, double* %7, align 8
  %139 = call double @llvm.fmuladd.f64(double %130, double %137, double %138)
  store double %139, double* %7, align 8
  %140 = load double, double* %7, align 8
  %141 = fmul double 2.000000e+00, %140
  %142 = load %struct.S*, %struct.S** %3, align 8
  %143 = getelementptr inbounds %struct.S, %struct.S* %142, i32 0, i32 2
  %144 = load double*, double** %143, align 8
  %145 = getelementptr inbounds double, double* %144, i64 0
  store double %141, double* %145, align 8
  br label %146

146:                                              ; preds = %110, %42
  br label %147

147:                                              ; preds = %146, %34
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 8
  %3 = alloca %struct.S, align 8
  %4 = alloca [4 x double], align 16
  %5 = alloca [4 x double], align 16
  %6 = alloca [4 x double], align 16
  store i32 0, i32* %1, align 4
  %7 = bitcast [4 x double]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x double]* @__const.main.c to i8*), i64 32, i1 false)
  %8 = bitcast [4 x double]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([4 x double]* @__const.main.e to i8*), i64 32, i1 false)
  %9 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  store double 1.000000e+01, double* %9, align 8
  %10 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 1
  store double 6.000000e+00, double* %10, align 8
  %11 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %12 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 2
  store double* %11, double** %12, align 8
  %13 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %14 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 2
  store double* %13, double** %14, align 8
  %15 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  store i64 3, i64* %15, align 8
  %16 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %17 = bitcast double* %16 to i8*
  %18 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 0
  %19 = bitcast double* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 %19, i64 32, i1 false)
  call void @foo(%struct.S* noundef %2, %struct.S* noundef %3)
  %20 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %21 = load double, double* %20, align 16
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %35, label %23

23:                                               ; preds = %0
  %24 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 1
  %25 = load double, double* %24, align 8
  %26 = fcmp une double %25, 2.000000e+01
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 2
  %29 = load double, double* %28, align 16
  %30 = fcmp une double %29, 1.000000e+01
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 3
  %33 = load double, double* %32, align 8
  %34 = fcmp une double %33, -1.000000e+01
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27, %23, %0
  call void @abort() #4
  unreachable

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  store i64 2, i64* %37, align 8
  %38 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %39 = bitcast double* %38 to i8*
  %40 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 0
  %41 = bitcast double* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %39, i8* align 16 %41, i64 32, i1 false)
  call void @foo(%struct.S* noundef %2, %struct.S* noundef %3)
  %42 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %43 = load double, double* %42, align 16
  %44 = fcmp une double %43, 6.000000e+01
  br i1 %44, label %57, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 1
  %47 = load double, double* %46, align 8
  %48 = fcmp une double %47, 2.000000e+01
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 2
  %51 = load double, double* %50, align 16
  %52 = fcmp une double %51, -1.000000e+01
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 3
  %55 = load double, double* %54, align 8
  %56 = fcmp une double %55, 1.180000e+02
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %49, %45, %36
  call void @abort() #4
  unreachable

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  store i64 1, i64* %59, align 8
  %60 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %61 = bitcast double* %60 to i8*
  %62 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 0
  %63 = bitcast double* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 16 %63, i64 32, i1 false)
  call void @foo(%struct.S* noundef %2, %struct.S* noundef %3)
  %64 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %65 = load double, double* %64, align 16
  %66 = fcmp une double %65, -2.000000e+01
  br i1 %66, label %79, label %67

67:                                               ; preds = %58
  %68 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 1
  %69 = load double, double* %68, align 8
  %70 = fcmp une double %69, -1.000000e+01
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 2
  %73 = load double, double* %72, align 16
  %74 = fcmp une double %73, 1.180000e+02
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 3
  %77 = load double, double* %76, align 8
  %78 = fcmp une double %77, 1.180000e+02
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %71, %67, %58
  call void @abort() #4
  unreachable

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %83 = bitcast double* %82 to i8*
  %84 = getelementptr inbounds [4 x double], [4 x double]* %6, i64 0, i64 0
  %85 = bitcast double* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %83, i8* align 16 %85, i64 32, i1 false)
  call void @foo(%struct.S* noundef %2, %struct.S* noundef %3)
  %86 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 0
  %87 = load double, double* %86, align 16
  %88 = fcmp une double %87, 0.000000e+00
  br i1 %88, label %101, label %89

89:                                               ; preds = %80
  %90 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 1
  %91 = load double, double* %90, align 8
  %92 = fcmp une double %91, 1.180000e+02
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 2
  %95 = load double, double* %94, align 16
  %96 = fcmp une double %95, 1.180000e+02
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds [4 x double], [4 x double]* %5, i64 0, i64 3
  %99 = load double, double* %98, align 8
  %100 = fcmp une double %99, 1.180000e+02
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %93, %89, %80
  call void @abort() #4
  unreachable

102:                                              ; preds = %97
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
