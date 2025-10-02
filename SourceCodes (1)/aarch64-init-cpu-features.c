; ModuleID = '/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/aarch64-init-cpu-features.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/aarch64-init-cpu-features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64 }

@__aarch64_cpu_features = external dso_local global %struct.anon, align 8
@.str = private unnamed_addr constant [43 x i8] c"FAILED consistency test: 0x%llx != 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @RUNTIME_INIT()
  %4 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @__aarch64_cpu_features, i32 0, i32 0), align 8
  store i64 %4, i64* %2, align 8
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @__aarch64_cpu_features, i32 0, i32 0), align 8
  call void @RUNTIME_INIT()
  %5 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @__aarch64_cpu_features, i32 0, i32 0), align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @__aarch64_cpu_features, i32 0, i32 0), align 8
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 noundef %9, i64 noundef %10)
  store i32 1, i32* %1, align 4
  br label %20

12:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %17, %12
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 1000000
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @__aarch64_cpu_features, i32 0, i32 0), align 8
  call void @RUNTIME_INIT()
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %13, !llvm.loop !4

20:                                               ; preds = %8, %13
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local void @RUNTIME_INIT() #1

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
