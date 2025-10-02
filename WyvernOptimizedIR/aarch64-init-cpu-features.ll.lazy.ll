; ModuleID = './aarch64-init-cpu-features.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/aarch64-init-cpu-features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64 }

@__aarch64_cpu_features = external dso_local global %struct.anon, align 8
@.str = private unnamed_addr constant [43 x i8] c"FAILED consistency test: 0x%llx != 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @RUNTIME_INIT() #2
  %1 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @__aarch64_cpu_features, i64 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @__aarch64_cpu_features, i64 0, i32 0), align 8
  call void @RUNTIME_INIT() #2
  %2 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @__aarch64_cpu_features, i64 0, i32 0), align 8
  %.not = icmp eq i64 %2, %1
  br i1 %.not, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @__aarch64_cpu_features, i64 0, i32 0), align 8
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 noundef %1, i64 noundef %4) #2
  br label %12

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %10, %6
  %.01 = phi i32 [ 0, %6 ], [ %11, %10 ]
  %8 = icmp ult i32 %.01, 1000000
  br i1 %8, label %9, label %.loopexit

9:                                                ; preds = %7
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @__aarch64_cpu_features, i64 0, i32 0), align 8
  call void @RUNTIME_INIT() #2
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !4

.loopexit:                                        ; preds = %7
  br label %12

12:                                               ; preds = %.loopexit, %3
  %.0 = phi i32 [ 1, %3 ], [ 0, %.loopexit ]
  ret i32 %.0
}

declare dso_local void @RUNTIME_INIT() #1

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
