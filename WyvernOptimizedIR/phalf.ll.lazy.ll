; ModuleID = './phalf.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/phalf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@ptwo = external dso_local global %struct.precisionType*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @phalf(%struct.precisionType* noundef %0) #0 {
  %2 = load %struct.precisionType*, %struct.precisionType** @ptwo, align 8
  %3 = call %struct.precisionType* @pdivmod(%struct.precisionType* noundef %0, %struct.precisionType* noundef %2, %struct.precisionType** noundef nonnull inttoptr (i64 -1 to %struct.precisionType**), %struct.precisionType** noundef null) #2
  ret %struct.precisionType* %3
}

declare dso_local %struct.precisionType* @pdivmod(%struct.precisionType* noundef, %struct.precisionType* noundef, %struct.precisionType** noundef, %struct.precisionType** noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
