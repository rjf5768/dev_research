; ModuleID = './assumed_rank_8_c.ll'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/assumed_rank_8_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i32* }
%struct.b = type { %struct.a }

; Function Attrs: noinline nounwind uwtable
define dso_local void @check_(%struct.a* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.a, %struct.a* %0, i64 0, i32 0
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 489
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @check2_(%struct.b* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.b, %struct.b* %0, i64 0, i32 0, i32 0
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 489
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
