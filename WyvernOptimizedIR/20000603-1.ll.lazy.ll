; ModuleID = './20000603-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000603-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s1 = type { double }
%struct.s2 = type { double }
%union.u = type { %struct.s1 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local double @f(%struct.s1* nocapture noundef writeonly %0, %struct.s2* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.s1, %struct.s1* %0, i64 0, i32 0
  store double 1.000000e+00, double* %3, align 8
  %4 = getelementptr inbounds %struct.s2, %struct.s2* %1, i64 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = fadd double %5, 1.000000e+00
  ret double %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = alloca %union.u, align 8
  %2 = getelementptr inbounds %union.u, %union.u* %1, i64 0, i32 0, i32 0
  store double 0.000000e+00, double* %2, align 8
  %3 = getelementptr inbounds %union.u, %union.u* %1, i64 0, i32 0
  %4 = bitcast %union.u* %1 to %struct.s2*
  %5 = call double @f(%struct.s1* noundef nonnull %3, %struct.s2* noundef nonnull %4)
  %6 = fcmp une double %5, 2.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
