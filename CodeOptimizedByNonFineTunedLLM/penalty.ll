; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/penalty.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/penalty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

; Function Attrs: noinline nounwind uwtable
define dso_local float @penalty(%struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %0, %struct.IndexEntry* noundef byval(%struct.IndexEntry) align 8 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.IndexKey, align 8
  %5 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %1, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* noundef %5, %struct.IndexKey* noundef %6, %struct.IndexKey* noundef %4)
  %7 = call float @volume(%struct.IndexKey* noundef byval(%struct.IndexKey) align 8 %4)
  %8 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %0, i32 0, i32 1
  %9 = call float @volume(%struct.IndexKey* noundef byval(%struct.IndexKey) align 8 %8)
  %10 = fsub float %7, %9
  store float %10, float* %3, align 4
  %11 = load float, float* %3, align 4
  ret float %11
}

declare dso_local void @keyUnion(%struct.IndexKey* noundef, %struct.IndexKey* noundef, %struct.IndexKey* noundef) #1

declare dso_local float @volume(%struct.IndexKey* noundef byval(%struct.IndexKey) align 8) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
