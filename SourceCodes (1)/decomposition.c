; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/decomposition.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/decomposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DomainSt = type { [3 x i32], [3 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }

@.str = private unnamed_addr constant [37 x i8] c"xproc * yproc * zproc == getNRanks()\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/decomposition.c\00", align 1
@__PRETTY_FUNCTION__.initDecomposition = private unnamed_addr constant [60 x i8] c"struct DomainSt *initDecomposition(int, int, int, real_t *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DomainSt* @initDecomposition(i32 noundef %0, i32 noundef %1, i32 noundef %2, double* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca %struct.DomainSt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call i32 @getNRanks()
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %22

21:                                               ; preds = %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 20, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.initDecomposition, i64 0, i64 0)) #5
  unreachable

22:                                               ; preds = %20
  %23 = call i8* @comdMalloc(i64 noundef 168)
  %24 = bitcast i8* %23 to %struct.DomainSt*
  store %struct.DomainSt* %24, %struct.DomainSt** %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %27 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %26, i32 0, i32 0
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %31 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %30, i32 0, i32 0
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0, i64 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %35 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %34, i32 0, i32 0
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 2
  store i32 %33, i32* %36, align 8
  %37 = call i32 @getMyRank()
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %40 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %39, i32 0, i32 0
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 0
  %42 = load i32, i32* %41, align 8
  %43 = srem i32 %38, %42
  %44 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %45 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %44, i32 0, i32 1
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %45, i64 0, i64 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %48 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %47, i32 0, i32 0
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %48, i64 0, i64 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sdiv i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %55 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %54, i32 0, i32 0
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %55, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %53, %57
  %59 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %60 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %59, i32 0, i32 1
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %60, i64 0, i64 1
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %64 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %63, i32 0, i32 0
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %64, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %62, %66
  %68 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %69 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %68, i32 0, i32 1
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %69, i64 0, i64 2
  store i32 %67, i32* %70, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %108, %22
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 3
  br i1 %73, label %74, label %111

74:                                               ; preds = %71
  %75 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %76 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %75, i32 0, i32 2
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x double], [3 x double]* %76, i64 0, i64 %78
  store double 0.000000e+00, double* %79, align 8
  %80 = load double*, double** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %80, i64 %82
  %84 = load double, double* %83, align 8
  %85 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %86 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %85, i32 0, i32 3
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x double], [3 x double]* %86, i64 0, i64 %88
  store double %84, double* %89, align 8
  %90 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %91 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %90, i32 0, i32 3
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x double], [3 x double]* %91, i64 0, i64 %93
  %95 = load double, double* %94, align 8
  %96 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %97 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %96, i32 0, i32 2
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x double], [3 x double]* %97, i64 0, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fsub double %95, %101
  %103 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %104 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %103, i32 0, i32 4
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [3 x double], [3 x double]* %104, i64 0, i64 %106
  store double %102, double* %107, align 8
  br label %108

108:                                              ; preds = %74
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %71, !llvm.loop !4

111:                                              ; preds = %71
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %186, %111
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %113, 3
  br i1 %114, label %115, label %189

115:                                              ; preds = %112
  %116 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %117 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %116, i32 0, i32 4
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [3 x double], [3 x double]* %117, i64 0, i64 %119
  %121 = load double, double* %120, align 8
  %122 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %123 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %122, i32 0, i32 0
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %123, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = sitofp i32 %127 to double
  %129 = fdiv double %121, %128
  %130 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %131 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %130, i32 0, i32 7
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [3 x double], [3 x double]* %131, i64 0, i64 %133
  store double %129, double* %134, align 8
  %135 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %136 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %135, i32 0, i32 2
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x double], [3 x double]* %136, i64 0, i64 %138
  %140 = load double, double* %139, align 8
  %141 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %142 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %141, i32 0, i32 1
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %142, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sitofp i32 %146 to double
  %148 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %149 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %148, i32 0, i32 7
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [3 x double], [3 x double]* %149, i64 0, i64 %151
  %153 = load double, double* %152, align 8
  %154 = call double @llvm.fmuladd.f64(double %147, double %153, double %140)
  %155 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %156 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %155, i32 0, i32 5
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [3 x double], [3 x double]* %156, i64 0, i64 %158
  store double %154, double* %159, align 8
  %160 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %161 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %160, i32 0, i32 2
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [3 x double], [3 x double]* %161, i64 0, i64 %163
  %165 = load double, double* %164, align 8
  %166 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %167 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %166, i32 0, i32 1
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [3 x i32], [3 x i32]* %167, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  %173 = sitofp i32 %172 to double
  %174 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %175 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %174, i32 0, i32 7
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x double], [3 x double]* %175, i64 0, i64 %177
  %179 = load double, double* %178, align 8
  %180 = call double @llvm.fmuladd.f64(double %173, double %179, double %165)
  %181 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  %182 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %181, i32 0, i32 6
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [3 x double], [3 x double]* %182, i64 0, i64 %184
  store double %180, double* %185, align 8
  br label %186

186:                                              ; preds = %115
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %112, !llvm.loop !6

189:                                              ; preds = %112
  %190 = load %struct.DomainSt*, %struct.DomainSt** %9, align 8
  ret %struct.DomainSt* %190
}

declare dso_local i32 @getNRanks() #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @comdMalloc(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef %3) #6
  ret i8* %4
}

declare dso_local i32 @getMyRank() #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @processorNum(%struct.DomainSt* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.DomainSt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.DomainSt* %0, %struct.DomainSt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.DomainSt*, %struct.DomainSt** %5, align 8
  %15 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %14, i32 0, i32 1
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  store i32* %16, i32** %9, align 8
  %17 = load %struct.DomainSt*, %struct.DomainSt** %5, align 8
  %18 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %17, i32 0, i32 0
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %28, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = srem i32 %41, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %54, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %63, %68
  %70 = mul nsw i32 %62, %69
  %71 = add nsw i32 %59, %70
  ret i32 %71
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
