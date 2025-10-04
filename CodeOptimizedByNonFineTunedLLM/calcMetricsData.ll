; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/calcMetricsData.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/calcMetricsData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

@.str = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/calcMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.calcMetricsData = private unnamed_addr constant [32 x i8] c"void calcMetricsData(Metrics *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @calcMetricsData(%struct.Metrics* noundef %0) #0 {
  %2 = alloca %struct.Metrics*, align 8
  %3 = alloca double, align 8
  store %struct.Metrics* %0, %struct.Metrics** %2, align 8
  %4 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %5 = icmp ne %struct.Metrics* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.calcMetricsData, i64 0, i64 0)) #4
  unreachable

8:                                                ; preds = %6
  %9 = call i64 @getTime()
  %10 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %11 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %15 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %17 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %8
  %22 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %23 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %23, i32 0, i32 2
  %25 = load double, double* %24, align 8
  %26 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %27 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to double
  %31 = fdiv double %25, %30
  %32 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %33 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %33, i32 0, i32 6
  store double %31, double* %34, align 8
  %35 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %36 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %36, i32 0, i32 3
  %38 = load double, double* %37, align 8
  %39 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %40 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %40, i32 0, i32 2
  %42 = load double, double* %41, align 8
  %43 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %44 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = fmul double %42, %46
  %48 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %49 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sitofp i64 %51 to double
  %53 = fdiv double %47, %52
  %54 = fsub double %38, %53
  store double %54, double* %3, align 8
  %55 = load double, double* %3, align 8
  %56 = fcmp olt double %55, 0.000000e+00
  br i1 %56, label %57, label %64

57:                                               ; preds = %21
  %58 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %59 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %59, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %60, align 8
  %61 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %62 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %62, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %63, align 8
  br label %76

64:                                               ; preds = %21
  %65 = load double, double* %3, align 8
  %66 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %67 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to double
  %71 = fdiv double %65, %70
  %72 = call double @sqrt(double noundef %71) #5
  %73 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %74 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %74, i32 0, i32 7
  store double %72, double* %75, align 8
  br label %76

76:                                               ; preds = %64, %57
  br label %84

77:                                               ; preds = %8
  %78 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %79 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %79, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %80, align 8
  %81 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %82 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %82, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %83, align 8
  br label %84

84:                                               ; preds = %77, %76
  %85 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %86 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %146

90:                                               ; preds = %84
  %91 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %92 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %92, i32 0, i32 2
  %94 = load double, double* %93, align 8
  %95 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %96 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sitofp i64 %98 to double
  %100 = fdiv double %94, %99
  %101 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %102 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %102, i32 0, i32 6
  store double %100, double* %103, align 8
  %104 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %105 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %105, i32 0, i32 3
  %107 = load double, double* %106, align 8
  %108 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %109 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %109, i32 0, i32 2
  %111 = load double, double* %110, align 8
  %112 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %113 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %113, i32 0, i32 2
  %115 = load double, double* %114, align 8
  %116 = fmul double %111, %115
  %117 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %118 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = sitofp i64 %120 to double
  %122 = fdiv double %116, %121
  %123 = fsub double %107, %122
  store double %123, double* %3, align 8
  %124 = load double, double* %3, align 8
  %125 = fcmp olt double %124, 0.000000e+00
  br i1 %125, label %126, label %133

126:                                              ; preds = %90
  %127 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %128 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %128, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %129, align 8
  %130 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %131 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %131, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %132, align 8
  br label %145

133:                                              ; preds = %90
  %134 = load double, double* %3, align 8
  %135 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %136 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sitofp i64 %138 to double
  %140 = fdiv double %134, %139
  %141 = call double @sqrt(double noundef %140) #5
  %142 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %143 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %143, i32 0, i32 7
  store double %141, double* %144, align 8
  br label %145

145:                                              ; preds = %133, %126
  br label %153

146:                                              ; preds = %84
  %147 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %148 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %148, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %149, align 8
  %150 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %151 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %151, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %152, align 8
  br label %153

153:                                              ; preds = %146, %145
  %154 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %155 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %215

159:                                              ; preds = %153
  %160 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %161 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %161, i32 0, i32 2
  %163 = load double, double* %162, align 8
  %164 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %165 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = sitofp i64 %167 to double
  %169 = fdiv double %163, %168
  %170 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %171 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %171, i32 0, i32 6
  store double %169, double* %172, align 8
  %173 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %174 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %174, i32 0, i32 3
  %176 = load double, double* %175, align 8
  %177 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %178 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %178, i32 0, i32 2
  %180 = load double, double* %179, align 8
  %181 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %182 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %182, i32 0, i32 2
  %184 = load double, double* %183, align 8
  %185 = fmul double %180, %184
  %186 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %187 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = sitofp i64 %189 to double
  %191 = fdiv double %185, %190
  %192 = fsub double %176, %191
  store double %192, double* %3, align 8
  %193 = load double, double* %3, align 8
  %194 = fcmp olt double %193, 0.000000e+00
  br i1 %194, label %195, label %202

195:                                              ; preds = %159
  %196 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %197 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %197, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %198, align 8
  %199 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %200 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %200, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %201, align 8
  br label %214

202:                                              ; preds = %159
  %203 = load double, double* %3, align 8
  %204 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %205 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = sitofp i64 %207 to double
  %209 = fdiv double %203, %208
  %210 = call double @sqrt(double noundef %209) #5
  %211 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %212 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %212, i32 0, i32 7
  store double %210, double* %213, align 8
  br label %214

214:                                              ; preds = %202, %195
  br label %222

215:                                              ; preds = %153
  %216 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %217 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %217, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %218, align 8
  %219 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %220 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %220, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %221, align 8
  br label %222

222:                                              ; preds = %215, %214
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getTime() #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
