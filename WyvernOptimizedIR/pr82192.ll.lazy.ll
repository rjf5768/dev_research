; ModuleID = './pr82192.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr82192.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, [2 x i8] }

@a = dso_local global i64 -7647888931715538206, align 8
@b = dso_local global %struct.S zeroinitializer, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @foo() #0 {
  %1 = load i64, i64* @a, align 8
  %2 = trunc i64 %1 to i32
  %3 = trunc i64 %1 to i32
  %4 = and i32 %3, 885760
  %5 = add nsw i32 %4, -262113
  %6 = lshr i32 %2, %5
  %7 = trunc i32 %6 to i16
  %8 = load i16, i16* getelementptr inbounds (%struct.S, %struct.S* @b, i64 0, i32 0), align 4
  %9 = and i16 %7, 8191
  %10 = and i16 %8, -8192
  %11 = or i16 %10, %9
  store i16 %11, i16* getelementptr inbounds (%struct.S, %struct.S* @b, i64 0, i32 0), align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @foo()
  %1 = load i16, i16* getelementptr inbounds (%struct.S, %struct.S* @b, i64 0, i32 0), align 4
  %2 = and i16 %1, 8191
  %.not = icmp eq i16 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %0
  call void @abort() #3
  unreachable

4:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
